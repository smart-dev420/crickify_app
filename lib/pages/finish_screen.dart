import 'package:audioplayers/audioplayers.dart';
import 'package:crickify/gen/assets.gen.dart';
import 'package:crickify/pages/game_screen.dart';
import 'package:crickify/pages/home_screen.dart';
import 'package:crickify/pages/setting_screen.dart';
import 'package:crickify/pages/utils.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FinishScreen extends StatefulWidget {
  const FinishScreen({required this.mark, super.key});
  final int mark;

  @override
  FinishScreenState createState() => FinishScreenState();
}

class FinishScreenState extends State<FinishScreen> {
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
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 243,
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "SCORE: \n\n ${widget.mark}/10",
                        style: Utils.textStyle(fontSize: 25),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 150,
              left: (MediaQuery.of(context).size.width - 140) / 2,
              child: GestureDetector(
                onTap: () {
                  _playClickSound();
                  _stopBackgroundMusic();
                  Navigator.pushReplacement<void, void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const GameScreen(),
                    ),
                  );
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'RETRY',
                    style: Utils.textStyle(
                        fontSize: 16, color: const Color(0xff1D5C49)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
