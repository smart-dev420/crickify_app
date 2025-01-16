import 'package:audioplayers/audioplayers.dart';
import 'package:crickify/gen/assets.gen.dart';
import 'package:crickify/pages/home_screen.dart';
import 'package:crickify/pages/match_detail_screen.dart';
import 'package:crickify/pages/utils.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MatchesScreen extends StatefulWidget {
  const MatchesScreen({super.key});

  @override
  MatchesScreenState createState() => MatchesScreenState();
}

class MatchesScreenState extends State<MatchesScreen> {
  bool isMusicOn = false;
  bool isSoundOn = false;
  late AudioPlayer _backgroundAudioPlayer;
  late AudioPlayer _clickAudioPlayer;

  final List<Map<String, dynamic>> matches = [
    {
      "team1": "Pakistan",
      "team2": "Nepal",
      "date": "30.02",
      "time": "12:00",
    },
    {
      "team1": "Bangladesh",
      "team2": "Sri Lanka",
      "date": "30.02",
      "time": "10:30",
    },
    {
      "team1": "Pakistan",
      "team2": "India",
      "date": "30.02",
      "time": "09:00",
    },
    {
      "team1": "Pakistan",
      "team2": "India",
      "date": "03.03",
      "time": "11:00",
    },
    {
      "team1": "Bangladesh",
      "team2": "Afghanistan",
      "date": "03.03",
      "time": "12:00",
    },
    {
      "team1": "Bangladesh",
      "team2": "Sri Lanka",
      "date": "05.03",
      "time": "12:00",
    },
    {
      "team1": "Nepal",
      "team2": "India",
      "date": "05.03",
      "time": "12:00",
    },
  ];

  final Map<String, dynamic> flags = {
    "Nepal": Assets.items.c1.image(),
    "Bangladesh": Assets.items.c2.image(),
    "Sri Lanka": Assets.items.c3.image(),
    "India": Assets.items.c4.image(),
    "Pakistan": Assets.items.c5.image(),
    "Afghanistan": Assets.items.c6.image()
  };

  @override
  void initState() {
    super.initState();
    _clickAudioPlayer = AudioPlayer();
    _backgroundAudioPlayer = AudioPlayer();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _loadMusicPreference();
  }

  Future<void> _loadMusicPreference() async {
    final prefs = await SharedPreferences.getInstance();
    final musicOn = prefs.getBool('music') ?? false;
    final soundOn = prefs.getBool('sound') ?? false;
    setState(() {
      isMusicOn = musicOn;
      isSoundOn = soundOn;
    });
    musicOn ? await _stopBackgroundMusic() : await _playBackgroundMusic();
  }

  Future<void> _playBackgroundMusic() async {
    await _backgroundAudioPlayer.setReleaseMode(ReleaseMode.loop);
    await _backgroundAudioPlayer.play(AssetSource('music.mp3'));
  }

  Future<void> _stopBackgroundMusic() async {
    await _backgroundAudioPlayer.stop();
  }

  Future<void> _playClickSound() async {
    if (isSoundOn) return;
    await _clickAudioPlayer.play(AssetSource('click.mp3'));
  }

  @override
  void dispose() {
    _stopBackgroundMusic();
    _clickAudioPlayer.dispose();
    _backgroundAudioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Linear gradient background
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff6D6E79), // Start color
              Color(0xFF343440), // End color
            ],
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement<void, void>(
                            context,
                            MaterialPageRoute<void>(
                                builder: (context) => const HomeScreen()),
                          );
                        },
                        child: SizedBox(
                          width: 50,
                          child: Assets.images.back.image(scale: 1.2),
                        ),
                      ),
                      Text(
                        "MATCHES",
                        style: Utils.textStyle(),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(width: 50, child: Assets.images.setting.image()),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: matches.length,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      final match = matches[index];
                      return Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xff1C2025),
                          border: Border.all(
                            color: const Color(0xff878787),
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 15),
                          child: Column(
                            children: [
                              Text(
                                'Cricket / Asia Cup',
                                style: Utils.textStyle(fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  flags[match['team1']] as Widget,
                                  const SizedBox(width: 8),
                                  Text(
                                    match['team1'],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    match['date'],
                                    style: Utils.textStyle(fontSize: 18),
                                  )
                                ],
                              ),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  flags[match['team2']] as Widget,
                                  const SizedBox(width: 8),
                                  Text(
                                    match['team2'],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    match['time'],
                                    style: Utils.textStyle(fontSize: 18),
                                  )
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  _playClickSound();
                                  Navigator.push<void>(
                                    context,
                                    MaterialPageRoute<void>(
                                        builder: (context) =>
                                            MatchDetailScreen(index: index)),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 20),
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(20)),
                                  width: 120,
                                  height: 30,
                                  child: Text(
                                    'Open',
                                    style: Utils.textStyle(fontSize: 16),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
