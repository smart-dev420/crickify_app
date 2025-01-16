import 'package:audioplayers/audioplayers.dart';
import 'package:crickify/gen/assets.gen.dart';
import 'package:crickify/pages/ellipse_widget.dart';
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

  static final List<Map<String, dynamic>> matches = [
    {
      "team1": "Pakistan",
      "sTeam1": "PAK",
      "team2": "Nepal",
      "sTeam2": "NEP",
      "date": "30.02",
      "time": "12:00",
    },
    {
      "team1": "Bangladesh",
      "sTeam1": "BAN",
      "team2": "Sri Lanka",
      "sTeam2": "SRI",
      "date": "30.02",
      "time": "10:30",
    },
    {
      "team1": "Pakistan",
      "sTeam1": "PAK",
      "team2": "India",
      "sTeam2": "IND",
      "date": "30.02",
      "time": "09:00",
    },
    {
      "team1": "Pakistan",
      "sTeam1": "PAK",
      "team2": "India",
      "sTeam2": "IND",
      "date": "03.03",
      "time": "11:00",
    },
    {
      "team1": "Bangladesh",
      "sTeam1": "BAN",
      "team2": "Afghanistan",
      "sTeam2": "AFG",
      "date": "03.03",
      "time": "12:00",
    },
    {
      "team1": "Bangladesh",
      "sTeam1": "BAN",
      "team2": "Sri Lanka",
      "sTeam2": "SRI",
      "date": "05.03",
      "time": "12:00",
    },
    {
      "team1": "Nepal",
      "sTeam1": "NEP",
      "team2": "India",
      "sTeam2": "IND",
      "date": "05.03",
      "time": "12:00",
    },
  ];

  static final Map<String, dynamic> flags = {
    "Nepal": Assets.items.c1.image(),
    "Bangladesh": Assets.items.c2.image(),
    "Sri Lanka": Assets.items.c3.image(),
    "India": Assets.items.c4.image(),
    "Pakistan": Assets.items.c5.image(),
    "Afghanistan": Assets.items.c6.image()
  };

  static final matchResults = [
    {
      "t1": [0, 0, 1, 1, 0],
      "t2": [0, 1, 0, 0, 1],
      "content":
          "Cricket fans are in for an exciting clash as Pakistan takes on Nepal in what promises to be a thrilling encounter. Pakistan, known for its formidable pace attack and explosive batting lineup, enters the match as favorites. Players like Babar Azam and Shaheen Afridi are expected to lead the charge with their exceptional skills. \n \n Nepal, on the other hand, is eager to prove its mettle on the big stage. With young talents like Rohit Paudel and Sandeep Lamichhane, the team is looking to make an impact against a top-tier opponent. \n \n The key battle to watch will be between Pakistan’s bowlers and Nepal’s resilient batting order. Can Nepal handle the pressure and surprise the cricketing world, or will Pakistan’s experience and depth prevail?"
    },
    {
      "t1": [0, 1, 1, 1, 1],
      "t2": [1, 1, 1, 0, 1],
      "content":
          "Two Asian cricketing giants, Bangladesh and Sri Lanka, are set to face off in what promises to be a highly competitive match. Both teams are coming into this game with a mix of seasoned players and emerging talents, making the contest even more intriguing. \n \n Bangladesh will rely on their experienced stars like Shakib Al Hasan and Mushfiqur Rahim to anchor the innings, while young talents bring energy and flair. Their bowling attack, led by Mustafizur Rahman, could be key in restricting Sri Lanka’s power-packed batting lineup. \n \n Sri Lanka, with their rich cricketing heritage, will look to players like Kusal Mendis and Wanindu Hasaranga to deliver match-winning performances. Their spinners could pose a significant challenge on a surface that might favor turn."
    },
    {
      "t1": [0, 0, 1, 1, 0],
      "t2": [0, 0, 0, 0, 1],
      "content":
          "The stage is set for one of cricket’s most iconic rivalries as Pakistan takes on India in a high-stakes clash. This encounter is more than just a game; it’s a battle of pride, passion, and fierce competition that captivates millions of fans worldwide. \n \n Pakistan, with their lethal bowling attack led by Shaheen Afridi and the batting brilliance of Babar Azam, will look to assert dominance early. Their recent form and team depth make them a formidable opponent. \n \n India, on the other hand, boasts a well-rounded squad with superstars like Virat Kohli and Jasprit Bumrah at the helm. Known for their composure in big games, India’s balance of experience and young talent could tip the scales in their favor."
    },
    {
      "t1": [0, 0, 1, 1, 0],
      "t2": [0, 0, 0, 0, 1],
      "content":
          "The stage is set for one of the most anticipated clashes in cricket – Pakistan vs. India. This historic rivalry transcends sport, drawing millions of fans to witness a battle of skill, strategy, and national pride. \n \n Pakistan comes into the game with a strong squad led by the in-form Babar Azam. Their lethal bowling attack, spearheaded by Shaheen Afridi, will look to exploit any weaknesses in India’s batting lineup. \n \n India, under the leadership of Rohit Sharma, boasts a formidable side with stars like Virat Kohli and Jasprit Bumrah. Their balanced combination of experience and young talent makes them a force to be reckoned with."
    },
    {
      "t1": [0, 1, 1, 1, 1],
      "t2": [0, 0, 0, 0, 1],
      "content":
          "Cricket fans are set for an exciting contest as Bangladesh takes on Afghanistan in a match that promises intense competition. Both teams are known for their fighting spirit and will be eager to secure a victory. \n \n Bangladesh will look to their experienced players like Shakib Al Hasan and Litton Das to anchor the batting and deliver under pressure. Their bowlers, especially Mustafizur Rahman, will aim to contain Afghanistan’s aggressive batting approach. \n \n Afghanistan, on the other hand, comes with a dangerous spin arsenal led by Rashid Khan, who could pose a significant challenge to Bangladesh’s lineup. Batters like Rahmanullah Gurbaz and Ibrahim Zadran will be key to putting up a strong total."
    },
    {
      "t1": [0, 1, 1, 1, 1],
      "t2": [1, 1, 1, 0, 1],
      "content":
          "An exciting contest awaits as Bangladesh faces Sri Lanka in a battle of two determined sides. Both teams are eager to establish dominance and gain momentum in their campaign. \n \n Bangladesh will lean on the experience of Shakib Al Hasan and Mushfiqur Rahim to anchor their batting, while Mustafizur Rahman leads the charge with the ball. The team’s ability to handle pressure in key moments could be the deciding factor. \n \n Sri Lanka, known for their dynamic cricket, will look to players like Kusal Mendis and Wanindu Hasaranga to shine. Their bowling attack, especially the spinners, might play a pivotal role on a track that could offer turn."
    },
    {
      "t1": [0, 1, 0, 0, 1],
      "t2": [0, 0, 0, 0, 1],
      "content": "The highly anticipated cricket match between Nepal and India is set to bring intense action to the field. Both teams are ready to showcase their skills in what promises to be a thrilling contest. Nepal, with their rising star players, will look to prove their mettle against the cricket powerhouse that is India. On the other hand, India, known for their strong lineup and tactical brilliance, will aim to dominate the game and secure a vital victory. Fans from both nations are eagerly awaiting this clash, as the stakes are high and the atmosphere promises to be electric!"
    },
  ];

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
    final text = matchResults[widget.index]['content'] as String? ??
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
                      SizedBox(width: 50, child: Assets.images.setting.image()),
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
                            flags[matches[widget.index]['team1']] as Widget,
                            const SizedBox(width: 8),
                            Text(
                              matches[widget.index]['team1'],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              matches[widget.index]['date'],
                              style: Utils.textStyle(fontSize: 18),
                            )
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            flags[matches[widget.index]['team2']] as Widget,
                            const SizedBox(width: 8),
                            Text(
                              matches[widget.index]['team2'],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              matches[widget.index]['time'],
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
                        child: flags[matches[widget.index]['team1']] as Widget,
                      ),
                      const SizedBox(width: 20),
                      Text(
                        matches[widget.index]['sTeam1'],
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
                      (matchResults[widget.index]['t1'] as List).length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: EllipseWidget(
                          width: 35, // Adjust width for ellipse
                          height: 28, // Adjust height for ellipse
                          color: (matchResults[widget.index]['t1']
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
                        child: flags[matches[widget.index]['team2']] as Widget,
                      ),
                      const SizedBox(width: 20),
                      Text(
                        matches[widget.index]['sTeam2'],
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
                      (matchResults[widget.index]['t2'] as List).length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: EllipseWidget(
                          width: 35, // Adjust width for ellipse
                          height: 28, // Adjust height for ellipse
                          color: (matchResults[widget.index]['t2']
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
