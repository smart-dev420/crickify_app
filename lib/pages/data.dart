import 'package:crickify/gen/assets.gen.dart';

class Data {
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
      "content":
          "The highly anticipated cricket match between Nepal and India is set to bring intense action to the field. Both teams are ready to showcase their skills in what promises to be a thrilling contest. Nepal, with their rising star players, will look to prove their mettle against the cricket powerhouse that is India. On the other hand, India, known for their strong lineup and tactical brilliance, will aim to dominate the game and secure a vital victory. Fans from both nations are eagerly awaiting this clash, as the stakes are high and the atmosphere promises to be electric!"
    },
  ];

  static final playData = [
    {
      "name": "Rohit\nSharma",
      "performance":
          "He played 45 Test matches and scored 3137 runs.\nHe played 233 ODI matches and scored 9376 runs.\nHe played 148 T20I matches and scored 3,853 runs.\nHe played 106 FC matches and scored 8,033 runs.",
      "information":
          "Religion: Hinduism\nMarital status: Married\nFavourite cricketer: Sachin Tendulkar\nBatting style: Right-hand bat\nFavourite shot: Pull shot\nNet worth: 227 Crore\nHobbies: Travelling and table tennis",
      "description":
          "His full name is Rohit Gurunath Sharma. He was born on April 30, 1987, in Nagpur, and his grandparents brought him up in Mumbai. He is also referred to as \"Hit Man\". Rohit is a right-arm off-break bowler and a batsman, and he is the captain of the Indian cricket team. Sharma is a powerful batter who plays with elegance and style.\n\nHe is the only player to have recorded three double centuries and holds the record for the highest individual score in ODI games. Nowadays, Rohit Sharma ranks among the all-time greatest cricketers of India. He typically bats first in limited-overs matches; his ODI and T20I jersey numbers are 45."
    },
    {
      "name": "Virat\nKohli",
      "performance":
          "He played 104 Test matches and scored 8,119 runs.\nHe played 265 ODI matches and scored 12,471 runs.\nHe played 115 T20I matches and scored 4,008 runs.\nHe played 135 FC matches and scored 10,343 runs.",
      "information":
          "Religion: Hinduism\nMarital status: Married\nFavourite cricketer: Sachin Tendulkar\nBatting style: Right-hand bat\nFavourite shot: Cover Drive\nHobbies: Travelling, dancing\nNet worth: \$ 112 Million",
      "description":
          "He is the most well-liked cricketer from India. He is also well-known as a \"Run Machine.\" His nickname is \"Cheeku\". He was born on November 5, 1988, in Delhi. He is the first player who records four double centuries in four successive Test series.\n\nHe is the fastest batsman who reached the milestone of 1,000 runs in T20I in less time. His ODI and T20I jersey numbers are 18. He is now considered one of the wealthiest cricket players in the world."
    },
    {
      "name": "M.S.\nDhoni",
      "performance":
          "He played 90 Test matches and scored 4,876 runs.\nHe played 350 ODI matches and scored 10,773 runs.\nHe played 98 T20I matches and scored 1,617 runs.\nHe played 358 T20 matches and scored 7,098 runs.",
      "information":
          "Nationality: Indian\nZodiac sign: Cancer\nHobbies: Biking and playing football\nReligion: Hinduism\nMarital status: Married\nNet worth: \$ 100 Million",
      "description":
          "His full name is Mahendra Singh Dhoni. He is one of the best batsmen and captains in Indian history. His nickname is \"Mahi\" He was born on July 7, 1981, in Ranchi. He is a right-handed batsman. He owns several records, including the most victories by an Indian captain across all three international formats. He won the record for the most ODI stumpings, i.e. 107 stumps in 318 matches. His ODI and T20I jersey numbers are 7. He is among the most successful cricketers from India because of his sustained success in the game."
    },
    {
      "name": "Virender\nSehwag",
      "performance":
          "He played 104 Test matches and scored 8,586 runs. He bowled 3,731 balls and took 40 wickets.\nHe played 251 ODI matches and scored 8,273 runs. He bowled 4,392 balls and took 96 wickets.\nHe played 194 FC matches and scored 14,683 runs. He bowled 8,614 balls and took 105 wickets.\nHe played 332 LA matches and scored 10,454 runs. He bowled 6,009 balls and took 142 wickets.",
      "information":
          "Nickname: Viru, Nawab of Najafgarh, Sultan of Multan\nNationality: Indian\nReligion: Hinduism\nZodiac sign: Libra\nHobbies: listening to old Hindi songs",
      "description":
          "He is one of India's most destructive cricketers and a professional batsman. His nickname is \"Viru\". He was born on October 20, 1978, in Najafgarh. He is a right-handed batsman, and he is regarded as one of India's greatest cricketers of all time. His ODI and T20I jersey is number 44."
    },
    {
      "name": "Sachin\nTendulkar",
      "performance":
          "He played 200 Test matches and scored 15,921 runs.\nHe played 463 ODI matches and scored 18,426 runs.\nHe played 310 FC matches and scored 25,396 runs.\nHe played 551 LA matches and scored 21,999 runs.",
      "information":
          "Nationality: Indian\nReligion: Hinduism\nZodiac sign: Taurus\nNet worth: \$ 160 million\nHobbies: Collecting perfume, watches & CDs and listening to music\nFavorite actor: Amitabh Bachchan, and Nana Patekar\nFavourite actress: Madhuri Dixit",
      "description":
          "He is one of the greatest cricketers in history. His nickname is \"Master Blaster\". He was born on April 24, 1973, in Bombay. He has scored more than 18000 runs overall, and 15000 runs total in the ODI and Test formats, respectively. He is a right-handed batsman. His amazing collection of records includes the most centuries (49) and fifties (96). Tendulkar began playing cricket at age eleven. He is considered one of the wealthiest cricket players in the world. He is the cricketer who helped the Indian cricket team establish a strong reputation in international competition."
    },
    {
      "name": "Rahul\nDravid",
      "performance":
          "He played 164 Test matches and scored 13,288 runs.\nHe played 344 ODI matches and scored 10,889 runs.\nHe played 296 FC matches and scored 23,794 runs.\nHe played 449 LA matches and scored 15,271 runs.",
      "information":
          "Nationality: Indian\nZodiac sign: Capricorn\nFavourite shot: Square cut\nNet worth: \$ 23 million\nMarital status: Married\nHobbies: listening to music and reading books",
      "description":
          "He is a professional cricketer who played for India. His full name is Rahul Sharad Dravid, and his nickname is \"The Wall\". He was born on January 11, 1973, in Indore. He began playing cricket when he was 12 years old and later played for Karnataka.\n\nHe is the only batsman in ODI history to participate in two partnerships of 300 runs or more. Rahul Dravid owns the record for the most consecutive ODI innings. He also owns the record for being the oldest Indian to participate in a T20 cricket match. His ODI and T20I jersey numbers are 19."
    },
    {
      "name": "Saurav\nGanguly",
      "performance":
          "He played 113 Test matches and scored 7,212 runs.\nHe played 311 ODI matches and scored 11,363 runs.\nHe played 254 FC matches and scored 15,687 runs.\nHe played 437 LA matches and scored 15,622 runs.",
      "information":
          "Nationality: Indian\nZodiac sign: Cancer\nNet worth: \$ 55.5 million\nMarital status: Married\nHobbies: listening to music, playing soccer",
      "description":
          "His full name is Sourav Chandidas Ganguly. His nickname is \"Dada\". He was born on July 8, 1972, in Behala. He is a left-handed batsman. He began his career by participating in state and school teams. Because of his graceful use of the wicket square and covers, he earned the title \"God of the Off Side.\" Saurav Ganguly became the third batter in history to reach the 10,000-run milestone."
    },
    {
      "name": "Anil\nKumble",
      "performance":
          "He played 132 Test matches in which he bowled 40,850 balls and took 619 wickets.\nHe played 271 ODI matches in which he bowled 14,496 balls and took 337 wickets.\nHe played 244 FC matches in which he bowled 66,931 balls and took 1136 wickets.\nHe played 380 LA matches in which he bowled 20,247 balls and took 514 wickets.",
      "information":
          "Nationality: Indian\nReligion: Hinduism\nZodiac sign: Libra\nNet worth: \$ 11 million\nMarital status: Married\nHobbies: Wildlife photography",
      "description":
          "He is ranked amongst the top leg spinners in Test cricket history. He was born on October 17, 1970, in Bangalore. His monikers are \"Apple\" and \"Jumbo\". Anil is the fourth-highest wicket-taker in history, who took 619 wickets in test cricket. Kumble received the Padma Shri award in 2005. Kumble didn't have a sharp ball-turning style, but he primarily relied on speed, bounce, and accuracy."
    },
  ];

  static final playersPicture = [
    Assets.items.p1.image(),
    Assets.items.p2.image(),
    Assets.items.p3.image(),
    Assets.items.p4.image(),
    Assets.items.p5.image(),
    Assets.items.p6.image(),
    Assets.items.p7.image(),
    Assets.items.p8.image(),
  ];

  static final events = [
    {
      "title":
          "PCB shifts tri-series with \nNew Zealand and South \nAfrica to Lahore and Karachi",
      "description":
          "The PCB has relocated its ODI tri-series with New Zealand and South Africa to Lahore and Karachi, as it readies the two venues to host the Champions Trophy from February 19.\n\nThe four-match tri-series, due to start on February 8, was originally scheduled to be played in Multan. But the PCB has decided to move it to the Gaddafi Stadium in Lahore and the National Stadium in Karachi, a move the board said \"reflects the PCB's confidence in the readiness of these upgraded venues\".\n\nThe board said in a statement: \"Given the advanced stage of preparations at the Gaddafi Stadium and the National Bank Stadium, the PCB has decided to relocate the upcoming tri-nation ODI series to these two venues. The series, featuring New Zealand and South Africa alongside Pakistan, was originally scheduled to be held in Multan.\"\n\nBoth stadiums have been undergoing significant upgrade and renovation work this season. It has caused some disruption to the calendar, with neither the Gaddafi Stadium nor the National Stadium hosting any of the seven Tests this season. Karachi was scheduled to host one Test against England, but that was moved to Multan. Multan is also hosting two Tests against West Indies this month."
    },
    {
      "title":
          "Afghanistan sign up Younis \nKhan as mentor for \nChampions Trophy",
      "description":
          "Former Pakistan captain Younis Khan will return to the Afghanistan set-up as mentor for the Champions Trophy 2025. Younis had worked with Afghanistan in 2022, at a 15-day training camp in Abu Dhabi with an expanded squad of 25.\n\nThe Afghanistan Cricket Board (ACB) said in a statement that Younis will join the team in Pakistan for a conditioning camp ahead of the Champions Trophy, which is set to begin on February 19 in Karachi, and stay with the team till the end of the tournament.\n\nThis is the third global tournament in a row where the ACB has appointed a mentor for the team from the host country: they had Ajay Jadeja as mentor for the 2023 ODI World Cup in India, and Dwayne Bravo as bowling consultant for the 2024 T20 World Cup in the West Indies and USA. In the first of those, they finished sixth - with wins against England, Pakistan and Sri Lanka, and a near-upset of Australia - to seal automatic qualification for the Champions Trophy. In the T20 World Cup, they made it all the way to the semi-finals for their best-ever showing in a global tournament.\n\nACB chief executive Naseeb Khan said of Younis' appointment: \"Since the Champions Trophy is being held in Pakistan, it was required to assign a talented and experienced player as mentor from the hosting country. \""
    },
    {
      "title":
          "SCG pitch for final Australia \nvs India Test earns \n'satisfactory' rating",
      "description":
          "The SCG pitch for the final Test of the Border-Gavaskar Trophy series against India, which was dominated by pace bowlers who gained lavish seam movement and some uneven bounce, has been rated \"satisfactory\" by the ICC match referee, and Cricket Australia has termed it a \"step in the right direction\" for surfaces at the venue.\nThe groundsman used a new variety of grass for this season's Test pitch, having trialled it during last summer's Sheffield Shield, and it resulted in the third-shortest Sydney Test of all time - with an outright result - based on deliveries bowled. Only two half-centuries were scored, one from debutant Beau Webster and the other a stunning 33-ball counterattack by Rishabh Pant.\n\nAustralia opener Usman Khawaja called the pitch a \"stinker\" after the game, but his captain Pat Cummins said he would rather conditions tilt towards helping the bowlers, even though his team only needed a draw to win the series, while India coach Gautam Gambhir went further and said such pitches were important for the future of Test cricket. However, former Australia captain Michael Clarke was highly critical of the surface. \"The SCG is my favourite ground in the world, it is my home ground, and I hate saying this out loud, but that's the worst pitch I've ever seen in Sydney,\" he told ESPN's Around The Wicket. \"I didn't think it was a good cricket wicket, balls not just going up off the surface but shooting low at the end of day two.\""
    },
    {
      "title": "Fakhar Zaman aims for \nChampions Trophy \ncomeback",
      "description":
          "Fakhar Zaman is \"100% certain\" he will play for Pakistan again and is gearing up for the 2025 Champions Trophy, which begins on February 19 and will be hosted in Pakistan and Dubai.\n\n\"A 100%, I will play for Pakistan (again),\" Fakhar, 34, told the Vipers Voices podcast. \"Actually, many people do not know about that, but after the T20 World Cup I got sick and because of the medical condition I was not fit, so I was not a part of the team.\"\n\n\"But now I [have] recovered 100%, and you will see me in the next white-ball series which Pakistan play.\"\n\nFakhar, once an integral part of the Pakistan white-ball setup, has not played international cricket since the 2024 T20 World Cup last June in the USA and West Indies, where Pakistan were eliminated in the group stage. He last played an ODI in the 2023 ODI World Cup but is hopeful of returning for the Champions Trophy at home.\n\nIncidentally, it was in the 2017 Champions Trophy that Fakhar shot to prominence with a title-winning 114 against India in the final at The Oval in London. \"My plan has been around the Champions Trophy,\" he said. \"I did not play in the Australia tour or in the South Africa tour, so my whole plan was just to play in the Champions Trophy, to make myself available and to be fully fit for the tournament.\"",
    },
    {
      "title": "Rangpur Riders win five out \nof five; no joy for Dhaka yet",
      "description":
          "Rangpur Riders have taken a four-point lead at the top of the table after winning their first five games in the 2024-25 BPL season.\n\nTheir victories include two each against new franchise Dhaka Capital and Sylhet Strikers but their big gain was the win against defending champions Fortune Barishal. It was an early warning to their opponents of Rangpur's strength, having come into the tournament after winning the Global Super League title in Guyana.\n\nBarishal, who are also strong contenders for the BPL title, will view the defeat to Rangpur as a major setback. They have won their other three matches: one against Sylhet and two against Durbar Rajshahi. Sylhet and Dhaka are the winless teams, having lost three and four matches respectively. \n\nBest batters: Three centurions\n\nChittagong Kings' Usman Khan scored the first century of the season - a match-winning 123 off 62 balls against Rajshahi. Hours later, Thisara Perera made 103 not out off 60 balls for Dhaka in their defeat to Khulna. Alex Hales' unbeaten 113 off 56 balls helped Rangpur chase down 206 against Sylhet. He added 186 runs for the second wicket with Saif Hassan, who started the BPL with two half-centuries in three innings."
    },
    {
      "title": "Clarke lauds Bumrah as 'the \nbest ever' all-format quick",
      "description":
          "Former Australia captain Michael Clarke has termed Jasprit Bumrah the best all-format quick bowler, ever after his Player-of-the-Series performance in the Border-Gavaskar Trophy.\n\nBumrah took 32 wickets at 13.06 before pulling up injured midway through Australia's first innings at the SCG in the final Test. India's other quicks were able to secure a four-run lead, but in Bumrah's absence, Australia chased down 162 on the third day to win the series 3-1.\n\nIt meant Bumrah finished two short of equaling Sydney Barnes' 1911-12 record of 34 wickets in a series by a touring pace bowler to Australia.\n\n\"The thing I've thought about Bumrah, after the series finished and I was sitting and thinking about his performances, I actually think he's the best fast bowler ever across all three formats,\" Clarke told ESPN's Around The Wicket.\n\n\"I know a lot of great fast bowlers, Curtly Ambrose, Glenn McGrath, didn't get to play T20 cricket, so I'm not talking about those guys, but in regards to anyone who has played all three formats, I think he might be the best ever. He's actually that good in any conditions, that's what makes him great; any conditions, any format, this guy's a freak.\""
    },
    {
      "title":
          "Prasidh, Abhimanyu, \nPadikkal available for Vijay \nHazare Trophy knockouts",
      "description":
          "Devdutt Padikkal, Prasidh Krishna and Abhimanyu Easwaran will all turn out for their respective sides' fixtures in the knockout phase of the 2024-25 Vijay Hazare Trophy from January 9 in Vadodara. KL Rahul has requested for a break, while Washington Sundar may be available semi-finals onwards if Tamil Nadu get to that stage.\n\nWhile Padikkal and Prasidh will fly out with a majority of the Indian contingent from Sydney on Wednesday, Abhimanyu was granted permission to fly out a day in advance. He was subsequently booked on an earlier flight by the Cricket Association of Bengal to be able to link up with the state squad in Vadodara, after stops in Singapore and Ahmedabad.\n\nOn Wednesday, Abhimanyu will train with the rest of the Bengal squad ahead of their pre-quarter-final fixture against Haryana. Akash Deep, the other Bengal player in the India squad, has been ruled out because of a back niggle, which kept him out of the final Test in Australia, and will instead head to the Centre of Excellence (earlier the National Cricket Academy) in Bengaluru.\n\nPrasidh and Padikkal are expected to join the Karnataka squad by January 10, ahead of their quarter-final game against Baroda a day later. ",
    },
    {
      "title":
          "Andre Coley hopes West \nIndies batters back up the \ngood work of the bowlers",
      "description":
          "\"It's a new series, a new opportunity,\" West Indies Test coach Andre Coley said ahead of the two-match series in Pakistan.\n\nThe last series between the two sides, in Kingston in 2021, was drawn 1-1, but West Indies have not won a Test in Pakistan since November 1990. It's also true that there haven't been too many of these - only seven since that game - but the best West Indies have done since that 1990 series is a draw, in Multan in November 2006.\n\nAs such, the series is part of the World Test Championship cycle, but doesn't mean much for either team in terms of context: South Africa and Australia have qualified for the final, while Pakistan and West Indies bring up the rear, eighth and ninth respectively on the nine-team table. It's also a chance for Coley to sign off on a positive note before Daren Sammy takes over.\n\n\"Once you play a series or a match there's an opportunity in itself,\" Coley said at a press interaction on Tuesday. \"It's not about us creating history, it's about using the learnings from 2024 and that consistency that was inserted for the last 12 months, being more set around the brand of cricket we want to play.\""
    },
    {
      "title":
          "New Zealand breeze past Sri \nLanka despite Theekshana \nhat-trick",
      "description":
          "New Zealand strode to 255 for 9 in their 37 overs, with a 112-run second wicket stand between Rachin Ravindra and Mark Chapman the bedrock of that innings. And then Sri Lanka's top order crashed and burned again. They were 4 for 22 inside the first five overs, their hopes of levelling the series almost completely dashed.\n\nKamindu Mendis attempted to revive the innings, but his 64 was not nearly enough to revive this innings. Sri Lanka slipped to a 113-run defeat, having also lost heavily to New Zealand in the first ODI. New Zealand take the series despite being significantly depleted by absences and injuries. Sri Lanka are essentially at full strength, but the failure of their top five continues to dog them, even in a rain-reduced match such as this.\n\nNew Zealand had some stutters too. They were modest at the death, as Maheesh Theekshana in particular was effective, taking a hat-trick across his last two overs, as New Zealand mustered no more than 63 in the last 10 overs, losing five wickets in that period. But they did not stumble so spectacularly as to undo the work of the Ravindra-Chapman stand. They had contributions through the middle, with Daryl Mitchell, Glenn Phillips, and Mitchell Santner chipping in.",
    },
    {
      "title":
          "'Bionic Man' Ben Stokes \nembarks on rehabilitation \nafter hamstring surgery",
      "description":
          "Ben Stokes, England's Test captain, has described himself as \"the Bionic Man\" after undergoing scheduled surgery on his torn left hamstring.\n\nStokes, 33, suffered a recurrence of the injury while bowling during England's third Test against New Zealand in December, having first torn his hamstring while batting for Northern Superchargers against Manchester Originals in the men's Hundred in August.\n\nThat initial injury kept him out of action for two months, meaning that he missed England's home Test series against Sri Lanka. He later admitted that his race to get fit in time for the team's winter assignments in Pakistan and New Zealand had led him to \"physically drain and ruin himself\".\n\nHowever, with England not set to play a Test until the visit of Zimbabwe in May, Stokes has committed to three months on the sidelines, including his omission from next month's ICC Champions Trophy.\n\nAt the time of his diagnosis, he vowed that he still has \"blood, sweat and tears\" left to give to the team, ahead of a defining 12 months that will feature five-Test series against India at home and Australia away. Now, he has posted a picture on Instagram, showing him lying on the back seat of a car in the aftermath of his surgery, wearing a large leg brace and supported by pillows.",
    },
    {
      "title":
          "Pakistan docked five WTC \npoints for slow over rate \nduring Cape Town Test",
      "description":
          "Pakistan have been docked five World Test Championship (WTC) points and fined 25% of their match fee for maintaining a slow over rate during their 10-wicket defeat in the second Test against South Africa in Cape Town. They were ruled to be five overs short of their target after time allowances were taken into consideration.\n\nMatch referee Richie Richardson imposed the sanction, which Pakistan captain Shan Masood accepted after pleading guilty to the charge - levelled by on-field umpires Kumar Dharmasena and Nitin Menon, third umpire Alex Wharf and fourth umpire Stephen Harris - which meant that was no need for a formal hearing.\n\nTeams are deducted one point for every over by which they fall short of their target. This is Pakistan's third points deduction in the 2023-25 WTC cycle. They were docked two points after the first Test against Australia in Perth in December 2023, and six points following the first Test against Bangladesh in Rawalpindi in August 2024.\n\nAs a consequence, Pakistan now have 35 points - instead of a possible 48 - from 12 Tests in the 2023-25 cycle. The latest deduction has brought their percentage of points contested - the number that determines a team's position on the WTC table - down from 27.78 to 24.31. ",
    }
  ];

  static final eventPicture = [
    Assets.items.e1.image(),
    Assets.items.e2.image(),
    Assets.items.e3.image(),
    Assets.items.e4.image(),
    Assets.items.e5.image(),
    Assets.items.e6.image(),
    Assets.items.e7.image(),
    Assets.items.e8.image(),
    Assets.items.e9.image(),
    Assets.items.e10.image(),
    Assets.items.e11.image(),
  ];

  static List<Map<String, dynamic>> gameData = [
    {
      "question":
          "1. Who holds the record for the most runs in a single Test match innings?",
      "answers": [
        "Sachin Tendulkar",
        "Brian Lara",
        "Ricky Ponting",
        "Jack Hobbs"
      ],
      "correct": 0
    },
    {
      "question":
          "2. Which country won the first-ever Cricket World Cup in 1975?",
      "answers": ["Australia", "West Indies", "England", "Pakistan"],
      "correct": 1
    },
    {
      "question": "3. Who is known as the \"Master Blaster\" of cricket?",
      "answers": [
        "Virat Kohli",
        "Ricky Ponting",
        "Shane Warne",
        "Sachin Tendulkar"
      ],
      "correct": 3
    },
    {
      "question": "4. How many players are there on a cricket team?",
      "answers": ["10", "11", "12", "9"],
      "correct": 1
    },
    {
      "question":
          "5. What is the maximum number of overs in a One Day International (ODI) match?",
      "answers": ["20", "30", "50", "60"],
      "correct": 2
    },
    {
      "question":
          "6. Which bowler holds the record for the most wickets in ODI cricket?",
      "answers": [
        "Muttiah Muralitharan",
        "Shane Warne",
        "Wasim Akram",
        "Chaminda Vaas"
      ],
      "correct": 0
    },
    {
      "question":
          "7. In which year did India win their first ICC T20 World Cup?",
      "answers": ["2005", "2007", "2011", "2013"],
      "correct": 1
    },
    {
      "question":
          "8. Who is the first cricketer to score 200 runs in a single ODI match?",
      "answers": [
        "Virender Sehwag",
        "Chris Gayle",
        "Sachin Tendulkar",
        "Martin Guptill"
      ],
      "correct": 2
    },
    {
      "question": "9. What is the term for a score of zero in cricket?",
      "answers": ["Duck", "Goose", "Gander", "Turkey"],
      "correct": 0
    },
    {
      "question":
          "10. Which cricket ground is known as the \"Home of Cricket\"?",
      "answers": [
        "Lord's Cricket Ground",
        "Melbourne Cricket Ground",
        "Eden Gardens",
        "Sydney Cricket Ground"
      ],
      "correct": 0
    }
  ];
}
