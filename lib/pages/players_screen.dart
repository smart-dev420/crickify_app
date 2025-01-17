import 'package:audioplayers/audioplayers.dart';
import 'package:crickify/gen/assets.gen.dart';
import 'package:crickify/pages/data.dart';
import 'package:crickify/pages/player_detail_screen.dart';
import 'package:crickify/pages/setting_screen.dart';
import 'package:crickify/pages/utils.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PlayersScreen extends StatefulWidget {
  const PlayersScreen({super.key});

  @override
  PlayersScreenState createState() => PlayersScreenState();
}

class PlayersScreenState extends State<PlayersScreen> {
  bool isMusicOn = false;
  bool isSoundOn = false;
  late AudioPlayer _backgroundAudioPlayer;
  late AudioPlayer _clickAudioPlayer;

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
                          _playClickSound();
                          _stopBackgroundMusic();
                          Navigator.pop(context);
                        },
                        child: SizedBox(
                          width: 50,
                          child: Assets.images.back.image(scale: 1.2),
                        ),
                      ),
                      Text(
                        "PLAYERS",
                        style: Utils.textStyle(),
                        textAlign: TextAlign.center,
                      ),
                      InkWell(
                        onTap: () {
                          _playClickSound();
                          _stopBackgroundMusic();
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (context) => const SettingScreen(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: 50,
                          child: Assets.images.setting.image(),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: Data.playData.length,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      final match = Data.playData[index];
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
                        child: Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 10),
                              child: SizedBox(
                                width: 180,
                                height: 190,
                                child: Data.playersPicture[index],
                              ),
                            ),
                            Positioned(
                              top: 40,
                              left: 220,
                              child: Text(
                                match['name']!,
                                style: Utils.textStyle(fontSize: 25),
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left:
                                  (MediaQuery.of(context).size.width - 120) / 2,
                              child: GestureDetector(
                                onTap: () {
                                  _playClickSound();
                                  _stopBackgroundMusic();
                                  Navigator.push<void>(
                                    context,
                                    MaterialPageRoute<void>(
                                        builder: (context) =>
                                            PlayerDetailScreen(index: index)),
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
                                    style: Utils.textStyle(
                                        fontSize: 16,
                                        color: const Color(0xff1D5C49)),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ],
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
