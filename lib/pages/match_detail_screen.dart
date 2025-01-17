import 'package:audioplayers/audioplayers.dart';
import 'package:crickify/gen/assets.gen.dart';
import 'package:crickify/pages/data.dart';
import 'package:crickify/pages/ellipse_widget.dart';
import 'package:crickify/pages/setting_screen.dart';
import 'package:crickify/pages/utils.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MatchDetailScreen extends StatefulWidget {
  const MatchDetailScreen({required this.index, super.key});
  final int index;

  @override
  MatchDetailScreenState createState() => MatchDetailScreenState();
}

class MatchDetailScreenState extends State<MatchDetailScreen> {
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
    final text = Data.matchResults[widget.index]['content'] as String? ??
        'Details will be updated soon.';
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
                          Navigator.pop(context);
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
                            width: 50, child: Assets.images.setting.image()),
                      )
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
                            Data.flags[Data.matches[widget.index]['team1']]
                                as Widget,
                            const SizedBox(width: 8),
                            Text(
                              Data.matches[widget.index]['team1'],
                              style: Utils.textStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            Text(
                              Data.matches[widget.index]['date'],
                              style: Utils.textStyle(fontSize: 18),
                            )
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Data.flags[Data.matches[widget.index]['team2']]
                                as Widget,
                            const SizedBox(width: 8),
                            Text(
                              Data.matches[widget.index]['team2'],
                              style: Utils.textStyle(fontSize: 16),
                            ),
                            const Spacer(),
                            Text(
                              Data.matches[widget.index]['time'],
                              style: Utils.textStyle(fontSize: 18),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'RECENT FORM',
                  style: Utils.textStyle(fontSize: 20),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: 1.5,
                        child: Data.flags[Data.matches[widget.index]['team1']]
                            as Widget,
                      ),
                      const SizedBox(width: 20),
                      Text(
                        Data.matches[widget.index]['sTeam1'],
                        style: Utils.textStyle(
                            fontSize: 22, fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60, top: 5),
                  child: Row(
                    children: List.generate(
                      (Data.matchResults[widget.index]['t1'] as List).length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: EllipseWidget(
                          width: 35, // Adjust width for ellipse
                          height: 28, // Adjust height for ellipse
                          color: (Data.matchResults[widget.index]['t1']
                                      as List)[index] ==
                                  1
                              ? const Color(0xff2BD299) // Green for "1"
                              : const Color(0xffF33C59), // Red for "0"
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: 1.5,
                        child: Data.flags[Data.matches[widget.index]['team2']]
                            as Widget,
                      ),
                      const SizedBox(width: 20),
                      Text(
                        Data.matches[widget.index]['sTeam2'],
                        style: Utils.textStyle(
                            fontSize: 22, fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60, top: 5),
                  child: Row(
                    children: List.generate(
                      (Data.matchResults[widget.index]['t2'] as List).length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: EllipseWidget(
                          width: 35, // Adjust width for ellipse
                          height: 28, // Adjust height for ellipse
                          color: (Data.matchResults[widget.index]['t2']
                                      as List)[index] ==
                                  1
                              ? const Color(0xff2BD299) // Green for "1"
                              : const Color(0xffF33C59), // Red for "0"
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 30, 15, 10),
                    child: SingleChildScrollView(
                      child: Text(
                        text,
                        style: Utils.textStyle(fontSize: 16),
                      ),
                    ),
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
