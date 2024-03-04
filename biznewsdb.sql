-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2024 at 10:47 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biznewsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`) VALUES
(4, 'Buisness'),
(3, 'Health'),
(5, 'Movie'),
(6, 'Science'),
(2, 'Sport'),
(1, 'Travel');

-- --------------------------------------------------------

--
-- Table structure for table `category_users`
--

CREATE TABLE `category_users` (
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_users`
--

INSERT INTO `category_users` (`user_id`, `category_id`) VALUES
(1, 1),
(1, 4),
(4, 4),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(13, 6),
(14, 1),
(14, 2),
(14, 3),
(14, 4),
(14, 5),
(14, 6),
(15, 1),
(15, 6),
(16, 3),
(16, 5),
(17, 2),
(17, 4),
(18, 2),
(18, 4),
(19, 1),
(19, 2),
(19, 3),
(19, 4),
(19, 5),
(19, 6),
(20, 3),
(20, 5),
(21, 1),
(21, 6),
(22, 4),
(22, 5);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comm_id` int(11) NOT NULL,
  `author` varchar(50) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `dislikes` int(11) NOT NULL DEFAULT 0,
  `content` varchar(200) NOT NULL,
  `comment_date` datetime NOT NULL DEFAULT current_timestamp(),
  `news_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comm_id`, `author`, `likes`, `dislikes`, `content`, `comment_date`, `news_id`) VALUES
(8, 'Alisa', 3, 1, 'Exciting!', '2024-01-11 09:35:32', 35),
(9, 'Pesa', 8, 1, 'Thief!!!', '2024-01-12 08:50:09', 36),
(10, 'Sope', 6, 2, 'They will pay the bail.', '2024-01-13 18:51:24', 36),
(13, 'Vange', 4, 1, 'Ohh...', '2024-01-15 16:34:22', 42),
(15, 'Dorsi', 6, 2, 'Well done!', '2024-01-17 11:17:09', 42),
(16, 'Dankan', 7, 1, 'He is totally out of tennis for a long time...', '2024-01-16 10:58:31', 60),
(18, 'Dajan', 8, 1, '\r\nGood luck boss', '2024-01-28 20:06:27', 62),
(19, 'Enis', 13, 3, 'One of the best players in the world', '2024-01-31 11:20:04', 64),
(20, 'Zani', 6, 1, 'Great!', '2024-02-10 11:24:15', 65),
(21, 'Ingls', 11, 0, 'Missing you Kobe :(', '2024-02-09 19:24:53', 65),
(22, 'Jann', 5, 1, 'Good move :)', '2024-01-27 13:31:22', 66),
(23, 'Kenan', 4, 1, 'HAMZAH SHEERAZ is an excellent fighter', '2024-01-21 19:00:34', 67),
(24, 'Kvinsi', 3, 1, 'Useful information.', '2024-01-13 08:13:12', 68),
(25, 'Jelis', 6, 1, 'You should definitely read this!', '2024-01-23 22:13:41', 69),
(26, 'Irving', 6, 1, 'I work from home and I really enjoy it :)', '2024-01-30 09:21:58', 70),
(27, 'Dominika', 9, 2, 'I have a problem with sleep', '2024-02-05 11:23:40', 71),
(28, 'Vestbrook', 5, 3, 'This is not true', '2024-01-25 15:33:05', 72),
(29, 'Bruks', 6, 2, 'Thanks for advices', '2024-01-26 09:09:03', 72),
(30, 'Reynolds', 8, 1, 'Well done, well deserved!', '2024-02-01 08:02:44', 73),
(31, 'Lisa', 4, 0, 'Great', '2024-01-31 16:17:33', 73),
(32, 'Arian', 6, 1, 'The movie is incredibly exciting', '2024-01-25 07:46:34', 74),
(33, 'Evans', 9, 2, 'I can\'t wait to see this movie!', '2024-02-06 12:20:40', 75),
(34, 'Kyle', 6, 1, 'Impressive!', '2024-02-05 10:24:31', 75),
(35, 'Gerson', 2, 9, 'POOR THINGS is a much better film...', '2024-01-19 09:39:09', 76),
(36, 'Sadik', 12, 0, 'Brilliant movies', '2024-01-18 20:39:22', 76),
(37, 'Olinik', 5, 1, 'Still my favorite movie after so many years', '2024-01-15 11:03:24', 77),
(40, 'Markanen', 7, 1, 'I can\'t wait to go', '2024-01-09 23:54:24', 79),
(41, 'Wiliams', 8, 2, 'This is a beautiful experience!', '2024-01-10 09:02:36', 79),
(42, 'Osino', 7, 1, 'Very interesting, thank you.', '2024-01-27 19:30:51', 80),
(43, 'Veke', 2, 10, 'I do not like', '2024-01-28 14:05:34', 80),
(44, 'Gilespi', 5, 1, 'Wow, that\'s the first time I\'ve heard of 2-D material', '2024-01-23 17:24:49', 81),
(45, 'Sexton', 14, 1, 'This makes me so sad.', '2024-01-17 19:49:35', 82),
(46, 'Petersen', 7, 2, 'Very interesting news', '2024-02-11 07:18:16', 83),
(47, 'Sabalenka', 8, 3, 'I\'m afraid of all this', '2024-02-08 11:48:18', 84),
(48, 'Yan', 5, 1, 'Good for the news.', '2024-02-09 14:04:12', 84),
(49, 'Guse', 32, 6, 'Guse Let\'s go to victory! ', '2024-02-07 16:03:40', 85),
(50, 'Hains', 6, 1, 'Thank you. I like to travel and this news helped me a lot.', '2024-02-07 08:35:56', 87),
(53, 'Zion', 5, 3, 'I think it is too expensive.', '2024-01-22 00:40:48', 89),
(54, 'Entony', 6, 2, 'I visited this beach and I hope to go again, it is really beautiful.', '2024-01-16 18:48:13', 90),
(55, 'Kerber', 4, 1, 'Great news!', '2024-01-17 01:52:08', 90);

-- --------------------------------------------------------

--
-- Table structure for table `img`
--

CREATE TABLE `img` (
  `img_id` int(11) NOT NULL,
  `alt` varchar(100) NOT NULL,
  `src` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `img`
--

INSERT INTO `img` (`img_id`, `alt`, `src`) VALUES
(5, 'This is small new 2', 'news-700x435-2.jpg'),
(8, 'default new picture', 'default-new.jpg'),
(16, '1707432615-new', '1707432615_IMG_8292.jpg'),
(17, '1708126728-new', '1708126728_kola.jpg'),
(18, '1708127248-new', '1708127248_bu2.jpg'),
(20, '1708129750-new', '1708129750_amazon.jpg'),
(24, '1708131819-new', '1708131819_micr.jpg'),
(33, '1708137340-new', '1708137340_musk.jpg'),
(35, '1708275108-new', '1708275108_31tennis-zverev-zwmh-superJumbo.jpg'),
(36, '1708275698-new', '1708275698_formukla.jpg'),
(37, '1708275960-new', '1708275960_formukla.jpg'),
(39, '1708276453-new', '1708276453_robertson.jpg'),
(40, '1708277006-new', '1708277006_kobe.jpg'),
(41, '1708277346-new', '1708277346_musk.jpg'),
(42, '1708279049-new', '1708279049_boks.jpg'),
(43, '1708281248-new', '1708281248_scientis.jpg'),
(44, '1708281674-new', '1708281674_genska.jpg'),
(45, '1708281998-new', '1708281998_guard3.jpg'),
(46, '1708282642-new', '1708282642_zene.jpg'),
(47, '1708283683-new', '1708283683_misici.jpg'),
(48, '1708286128-new', '1708286128_spider.jpg'),
(49, '1708286811-new', '1708286811_Johan Rock.jpg'),
(50, '1708287384-new', '1708287384_emurade.jpg'),
(51, '1708287826-new', '1708287826_bafta.jpg'),
(52, '1708288578-new', '1708288578_5ti.png'),
(54, '1708293214-new', '1708293214_brodj11.png'),
(55, '1708295059-new', '1708295059_stoteneghe.jpg'),
(56, '1708295591-new', '1708295591_1440_SS_2-D_material.jpg'),
(57, '1708296018-new', '1708296018_TROPSKE.jpg'),
(58, '1708296446-new', '1708296446_astron.jpg'),
(59, '1708297011-new', '1708297011_teleport.jpg'),
(60, '1708300963-new', '1708300963_trump11.jpg'),
(61, '1708301839-new', '1708301839_maldd.jpg'),
(63, '1708302954-new', '1708302954_golf.png'),
(64, '1708303680-new', '1708303680_baby.jpg'),
(65, '1708374771-new', '1708374771_dortmund.jpg'),
(66, '1708374971-new', '1708374971_lilard.jpg'),
(67, '1708376027-new', '1708376027_movie.jpg'),
(68, '1708376280-new', '1708376280_movie1.jpg'),
(69, '1708377287-new', '1708377287_lek.jpg'),
(70, '1708377656-new', '1708377656_scien1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(3) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `message_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `name`, `email`, `message`, `message_date`) VALUES
(16, 'Marko', 'marko@gmail.com', 'Pozdrav. Bio sam na razgovoru za posao saljem vam svoj email na koji cete mi proslediti sifru. Urednik Marko.', '2024-01-19 17:21:54'),
(17, 'Slavica', 'slavka@gmail.com', 'U poslednja tri dana sam odobrila tri vesti koje imaju veliku posecenost.', '2024-01-25 09:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `nav`
--

CREATE TABLE `nav` (
  `nav_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `href` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nav`
--

INSERT INTO `nav` (`nav_id`, `title`, `href`) VALUES
(1, 'home', 'index.php'),
(2, 'category', 'category.php'),
(3, 'all news', 'all-news.php'),
(4, 'contact', 'contact.php');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  `dislikes` int(11) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 3,
  `img_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `title`, `content`, `date`, `likes`, `dislikes`, `active`, `img_id`, `category_id`, `user_id`) VALUES
(35, 'Coca-Cola Stock Has Gone Flat. Is It Time to Buy?', 'Coca-Cola -0.02 percent decrease has been an unexciting stock to hold lately. That might not be such a bad thing. \n\nThe global beverage company on Tuesday reported solid results that underscored its appeal in investor portfolios as a steady performer. In the fourth quarter, the company increased organic sales which strip out the impact of mergers and currency fluctuations 12 percent  from a year earlier. Price rises accounted for much of that but, encouragingly, underlying case volume rose 2 percent  from a year earlier. \n\nThis suggests consumers around the world are unperturbed by the companys price increases. Unit case volumes fell 1 percent  in North America, but were positive in all other regions. Coca-Cola stock was up slightly in early trading Tuesday, even as the wider market was down sharply on a higher-than-expected reading for U.S. inflation.\n', '2024-01-10 09:38:48', 25, 7, 1, 17, 4, 18),
(36, 'Former Stericycle Executive Faces Foreign Bribery Charges', 'Mauricio Gomez Baez, formerly of the companys Latin American division, was allegedly involved in making 10.5 million dollars in illicit payments. A former Stericycle senior executive has been charged by U.S. prosecutors over his alleged role in a foreign bribery scheme at the medical waste management company that involved 10.5 million dollars in illicit payments to officials in Mexico, Brazil and Argentina.\n\nMauricio Gomez Baez, the onetime senior vice president of Stericycles Latin American division, faces a single charge of conspiracy to violate the Foreign Corrupt Practices Act. Gomez Baez appeared Thursday in Miami federal court and was released on a 1 million dollars bond.\n\nThe charges against Gomez Baez were issued without the involvement of a grand jury and a judge has scheduled a change-of-plea hearing for later this month, both indications that Gomez Baez will likely plead guilty. His lawyer declined to comment.', '2024-01-11 12:47:28', 33, 10, 1, 18, 4, 18),
(42, 'Amazon joins companies arguing US labor board is unconstitutional', 'Feb 16 (Reuters) - Amazon.com (AMZN.O), opens new tab has joined rocket maker SpaceX and grocery chain Trader Joes in claiming that a U.S. labor agencys in-house enforcement proceedings violate the U.S. Constitution, as the retail giant faces scores of cases claiming it interfered with workers rights to organize.\nAmazon in a filing made with the National Labor Relations Board (NLRB) on Thursday said it plans to argue that the agencys unique structure violates the companys right to a jury trial.The company also said that limits on the removal of administrative judges and the boards five members, who are appointed by the president, are unconstitutional.\nThe filing came in a pending case accusing Amazon of illegally retaliating against workers at a warehouse in the New York City borough of Staten Island, where employees voted to unionize in 2022. Amazon, which has faced more than 250 NLRB complaints alleging unlawful labor practices across the country in recent years, has denied wrongdoing.SpaceX is making similar claims against the board in a lawsuit filed last month, one day after the labor board accused the company of firing eight engineers for criticizing CEO Elon Musk in a letter to company executives.Trader Joes raised the arguments later in January at a hearing in an NLRB case, and two Starbucks baristas seeking to dissolve their unions have challenged the boards structure in separate lawsuits.An NLRB spokeswoman declined to comment.The boards general counsel issues complaints against employers alleging violations of federal labor law. Those cases are heard first by administrative judges and then the five-member board, whose decisions can be appealed in federal court.The growing number of challenges to the labor board make it more likely the issue will reach the U.S. Supreme Court, whose conservative majority has signaled its skepticism of other U.S. agencies in-house proceedings, said Seth Goldstein, a lawyer who represents unions in the Amazon and Trader Joes cases.Goldstein said the pending cases also could embolden other employers to refuse to bargain with unions on the belief that courts will strip the NLRB of its enforcement powers. Im very concerned that this is going to cause real problems in collective bargaining for both new and established unions,  said Goldstein, a partner at law firm Julien Mirer Singla and Goldstein in New York.', '2024-01-13 11:29:10', 17, 5, 1, 20, 4, 18),
(60, 'Alexander Zverev domestic abuse allegations are messy cloud for tennis', 'Had Alexander Zverev booked his place in the Australian Open final, an already difficult situation would have got even more uncomfortable.\n\nThe German is facing a trial over domestic abuse allegations that he denies. And while there has been increasing focus on the matter in the past fortnight since a court date was set, he would have been even more under the spotlight had he been competing for one of tennis biggest prizes on Sunday.\n\nQuestions over whether he should be playing and whether he should be in a leadership role on the ATP Players Council while the case is ongoing have been posed to him and his fellow players at various news conferences in Melbourne.\n\nAnd those questions have been getting louder.\nIts been very uncomfortable for a lot of people in the tournament - organisers, players and fans included - to have Zverev be such a prominent figure in this tournament, tennis journalist Ben Rothenberg told BBC Radio 5 Sports Extra.\nIts been a messy cloud over Zverev. Its come into focus really like never before during this tournament, added Rothenberg, who first reported on separate abuse accusations against Zverev three and a half years ago. The German also denies these allegations.\n\nIts gained traction during this Australian Open,he added. Something about the combination of Zverev being featured on the Netflix show his election to the Player Council and the concreteness of having this court date set for late May. Olympic champion Zverev lost to Daniil Medvedev in the semi-finals on Friday, missing out on the chance to face Italian Jannik Sinner for the biggest title of his career.\n\nAfter the defeat, he was asked if it had been more difficult to concentrate at the tournament following the announcement of the court date last week.\n\nHe said: No, because I have said it before: Anyone who has a semi-decent IQ level understands whats going on. I hope that most of you guys do. Im fine with it.\n', '2024-01-15 13:51:48', 47, 11, 1, 35, 2, 18),
(62, 'Formula 1 launches: Williams boss \'didn\'t sleep for days\' developing car', 'Williams team principal James Vowles says he \"didn\'t sleep for days\" developing the new car ahead of the new Formula 1 season.\r\n\r\nSpeaking at the team\'s livery launch in New York, Vowles said: \"I wasn\'t sleeping for days - the weight of 1,000 people falls on your shoulders.\"\r\n\r\nThe team finished an improved seventh in the constructors\' title last year following a fallow period in the sport.\r\n\r\nThe FW46 car will be unveiled at testing in Bahrain on 21 February.\r\n\r\nThai-British driver Alex Albon said they must \"make good steps\" after tweaking the design of their car.\r\n\r\n\"We\'re hoping to build on our progress,\" said Albon, 27. \"We\'ve asked a lot of the team and we\'ve slightly changed the philosophy of the car.\"\r\n\r\nThe once-dominant Williams showed signs of recovery in 2023 after years racing one of the slowest cars on grid as costs soared in the sport.\r\n\r\nAlbon finished a season\'s best seventh at the Canadian and Italian Grands Prix in the FW45 car.\r\n\r\nHe added: \"We\'ve been working hard to make some good steps forward in performance.\r\n\r\n\"I\'m interested to see if we can improve some of the characteristics it has historically had. It will require an adjustment in driving style but I\'m confident it will be a change for the better.\"', '2024-01-28 18:36:03', 40, 5, 1, 37, 2, 18),
(64, 'Neil Robertson vows to return to brutal best after resounding second-round win', 'Neil Robertson says he is determined to return to his \"brutal\" best after thrashing Jimmy Robertson 5-0 in the second round of the German Masters.\nAustralia\'s 2010 world champion is in the midst of one of his worst seasons, having suffered five first-round exits from ranking events.\nHowever, runs of 87, 78, 135 and 86 helped the 41-year-old whitewash world number 36 Jimmy in Berlin.\n\"I want the worst for my opponent on the table,\" Neil said.\n\"I need to get back to being brutal and burying opponents. There are no more happy, smiley handshakes anymore. Away from it  fine, but on the table I want them to suffer.\"\nWhile he is currently ranked seventh in the world, the Australian\'s dismal campaign to date means he is projected to lose his spot in the top eight and miss out on the lucrative Riyadh Season World Masters of Snooker in Saudi Arabia.\nHe is also on course to drop out of the top 16 and is likely to have to qualify to reach the World Championship at the Crucible in April.\n\"I\'m just really focussed on getting the best out of my performances and doing the best that I can do,\" said Neil, who will face Joe Perry in the third round.\n\n\"That is super hard work, eating well, sleeping well, diet and physical exercise. There is absolutely no stone which is going to be unturned from now until the rest of the season.\"\nIn Tuesday\'s other matches, China\'s He Guoqiang claimed a shock 5-1 win over three-time world champion Mark Williams, while 26-time ranking event winner Judd Trump beat Matthew Stevens 5-3.\nMark Allen defeated Louis Heathcote 5-2, defending champion Ali Carter cruised to a 5-1 win over Peng Yisong, John Higgins won 5-0 against Martin Gould and Thepchaiya Un-Nooh edged past Zhang Anda 5-4.\n', '2024-01-30 18:14:13', 52, 10, 1, 39, 2, 18),
(65, 'Kobe Bryant: Los Angeles Lakers unveil statue of NBA legend', 'Five-time NBA champion Bryant died aged 41 in a helicopter crash, alongside his 13-year-old daughter Gianna and seven others, in 2020.\n\nHis bronze statue, standing at 19ft and weighing 4,000lb, is situated outside the Lakers\' home, the Crypto.com Arena.\n\nIt shows Bryant, who played for the Lakers his entire career, in his famous number eight jersey.\n\n\"This statue may look like Kobe, but really, it\'s what excellence looks like,\" said Kareem Abdul-Jabbar, who was joined at the unveiling by fellow Lakers legends Magic Johnson, Jerry West and Derek Fisher.\n\nFormer head coach Phil Jackson and Bryant\'s widow, Vanessa, were also in attendance.\n\n\"As I see today\'s current generation of star players follow in Kobe\'s footsteps with huge scoring games, I know he would take pride in knowing that he is still pouring inspiration into the game that was so special to him,\" Vanessa Bryant said.\n\n\"I leave you with one of my husband\'s amazing quotes,\" she added. \"\'Leave the game better than you found it and when it comes time for you to leave, leave a legend.\' And that he did.\"\n\nThe statue is the first of three that will honour Bryant, with another set to feature him in his number 24 jersey, while the third will depict Bryant and Gianna.', '2024-02-09 11:23:26', 64, 3, 1, 40, 2, 18),
(66, 'Elon Musk says SpaceX\'s legal home moved from Delaware to Texas', 'Elon Musk says he has moved the legal home of his rocket company SpaceX from the US state of Delaware to Texas.\n\nTwo weeks ago, Mr Musk said electric carmaker Teslas shareholders will vote on making the same move. His brain-chip implant firm, Neuralink, has also relocated its legal home to Nevada.\n\nLast month, a judge in Delaware annulled his 55.8bn dollars pay package from Tesla.\n\nMr Musk has also recommended that other firms move away from Delaware.\n\n\n\n\n\nIn a post on on his social media platform X, formerly Twitter, the multi-billionaire said: SpaceX has moved its state of incorporation from Delaware to Texas!\n\nIf your company is still incorporated in Delaware, I recommend moving to another state as soon as possible, he added.\n\nMany big US corporations, including Amazon, are registered in Delaware, which is known for having light taxation.\n\nOn 30 January, Judge Kathaleen McCormick found that Tesla directors, who negotiated Mr Musk\'s pay package in 2018, were perhaps starry eyed due to his superstar appeal and did not fully inform shareholders.\n\n\n\nShe said the deal was unfathomable and ruled it should be cancelled.\n\nThe pay deal was the biggest to date in US corporate history, helping to make Mr Musk the richest person in the world.\n\nMr Musk currently has an estimated net worth of around 200bn dollars.', '2024-01-26 11:29:06', 28, 5, 1, 41, 4, 18),
(67, 'Hamzah Sheeraz stops Liam Williams in one round in London', 'Middleweight Hamzah Sheeraz defeated Liam Williams in one round in an unstoppable performance in London.\n\nThe Briton extended his unbeaten record to 19 fights, dropping Williams twice thanks to his blistering speed.\n\nSheeraz, 24, delivered on a promise to make a statement by stopping Williams, a former world title challenger.\n\"I had a lot of doubters going into this fight thought I wasn\'t able to keep up with this calibre of fighter,\" Sheeraz said.\n\"I do my talking in the ring. When I get in here, I entertain.\"\n\nWilliams had cut a confident figure all through fight week, suggesting Sheeraz\'s team had made a serious mistake in accepting the bout, but that bravado was quickly wiped out.\nSheeraz\'s stiff jab and power shots were too much for the Welshman, who went down just after the first minute and crashed to the floor again moments later from a brilliant counter uppercut.\n\nPromoter Frank Warren celebrated with Sheeraz at ringside as one of his brightest young stars produced a career-best performance against his most dangerous opponent to date.\nWarren suggested fellow Englishman Chris Eubank Jr as Sheeraz\'s next opponent, heaping praise on his fighter.\n\n\"He reminds me of Tommy Hearns in a big way with that jab. He takes you out with it. The power he has with it is unbelievable,\" Warren said.\n\n\"I genuinely believe a star is born and I genuinely believe he will win a world title and hold that title for as long as he likes.\"', '2024-01-20 16:21:29', 26, 6, 1, 42, 2, 18),
(68, 'Scientists grow \'meaty\' rice hybrid food for protein kick', 'Scientists have created a new type of hybrid food - a \"meaty\" rice that they say could offer an affordable and eco-friendly source of protein.\n\nThe porous grains are packed with beef muscle and fat cells, grown in the lab.\n\nThe rice was first coated in fish gelatine to help the beef cells latch on, and the grains were left in a petri dish to culture for up to 11 days.\n\nThe researchers say the food may serve as \"relief for famine, military ration, or even space food\" in the future.\nIt remains to be seen whether consumers would take to it if it gets to market.\n\nThe hybrid rice is apparently a bit firmer and brittler than regular rice, but packs more protein, Matter journal reports.\n\nAccording to the team at Yonsei University in South Korea, it has 8 percent more protein and 7 percent more fat.\n\nAnd, compared to regular beef, it has a smaller carbon footprint, since the production method eliminates the need to raise and farm lots of animals.\n\nFor every 100g (3.5oz) of protein produced, hybrid rice is estimated to release under 6.27kg (13.8lb) of carbon dioxide, while beef production releases eight times more at 49.89kg, they say.\n\nResearcher Sohyeon Park explained: \"We usually obtain the protein we need from livestock, but livestock production consumes a lot of resources and water and releases a lot of greenhouse gas.\n\n\"Imagine obtaining all the nutrients we need from cell-cultured protein rice.\n\n\n\"Rice already has a high nutrient level, but adding cells from livestock can further boost it.\"\n\nShe said: \"I didn\'t expect the cells to grow so well in the rice. Now I see a world of possibilities for this grain-based hybrid food.\"\n\n', '2024-01-12 10:34:08', 27, 4, 1, 43, 3, 20),
(69, 'Gene therapy blocks painful hereditary disorder', 'Gene therapy has transformed the lives of people with a genetic disorder that causes painful and unpredictable swelling attacks.\n\nAngiodema, thought to affect 50,000 people worldwide, can be seriously debilitating, affect airways, and occasionally prove fatal.\n\nPatients treated with a single dose of gene therapy Crispr-Cas9 showed little sign of further symptoms.\n\nThe therapy also has big potential as a treatment for other genetic conditions.\n\n\"It looks as if the single-dose treatment will provide a permanent cure for my hereditary angioedema patients\' very disabling symptoms,\" principal investigator Dr Hilary Longhurst, from the University of Auckland said.\nAngiodema causes swelling in the soft tissues and can affect many parts of the body.\nCleveland Firman, from Suffolk, who received the treatment in the UK said: \"The randomness, unpredictability and potential severity of the attacks has made trying to live my life almost impossible. I spent my life constantly wondering if my next attack would be severe.\n\n\"The swellings are painful and disfiguring. I was embarrassed to go out in case of an attack. I\'ve been hospitalised with swellings on my neck and throat that have affected my ability to breathe.\n\n\"Since the treatment, I\'ve not had a single attack. I\'ve had a radical improvement in my physical and mental wellbeing.\n\n\"I am very positive about the future. I am now volunteering where I can meet like-minded people. The freedom has opened up my world and improved my self-confidence.\"', '2024-01-23 16:41:14', 36, 2, 1, 44, 3, 20),
(70, ' Working from home can bring big health benefits, study finds', 'Late last year, Danish pharmaceutical company Novo Nordisk became Europe\'s most valuable company, for a short time at least.\nWell-known in business circles, but hardly a household name, Novo Nordisk had not previously been seen as a big player in the drugs industry, let alone a titan of the European stock market.\nBut it leapt to the top of the league table and was valued at 428bn dollars because it has discovered the Holy Grail of all drugs. One that millions of people want and need across the Western World and beyond.\nCalled Wegovy, its active ingredient was designed to tackle type 2 diabetes, but as a side effect was found to almost guarantee to make people lose weight.\nLike Viagra, which was originally supposed to treat high blood pressure, unrealised but popular side effects have made Wegovy a must-have drug.\nIt is knocking at an open door - Goldman Sachs research predicts that the anti-obesity drugs market is worth some 6bn dollars this year. But by 2030, it could grow by more than 16 times to 100bn dollars.\nIt almost sounds too good to be true, but what are the long-term prospects and consequences for a pharmaceutical company that discovers a sure-fire winner? Is it really the Midas touch or more of a poisoned chalice?\nWell for a start, having discovered a drug that suddenly dominates the market is just the start of the process. You have to make it, market it and negotiate the price with a whole host of health companies and national health services.\nSome like the NHS in the UK are so large they can force down the cost and therefore the profitability of even the most popular drugs.\nAt the moment Wegovy is available on the NHS for weight management in specific circumstances.\n\nClaire Machin is executive director for international policy and UK competitiveness at the ABPI, the body that represents pharmaceutical companies in the UK.\nShe told me that the UK not only forces down prices for drugs using a value-for-money standard set 20 years ago, but then the NHS will negotiate even lower prices, followed by a further requirement for cash rebates from companies when the NHS exceeds its medicines budget.\n\n\"Because of that, the UK spends comparatively less on medicines than similar countries, spending about 9 percent of its total health budget on medicines, compared to around 14 percent in Australia, 15 percent in France, and 17 percent in Germany.\"\nThen there are operational problems, In 2022 Novo Nordisk had trouble meeting the huge demand for Wegovy. In December 2023 its shares were marked down because of worries about its ability to produce the drug in enough quantity again, and at a high enough quality, to satisfy the industry\'s regulators.\n', '2024-01-29 19:46:38', 37, 16, 1, 45, 3, 20),
(71, 'Not getting enough sleep increases heart disease in women by 75 percent', 'The sleep habits you develop in the middle of your life can have a profound impact on your future heart health, according to new research.\n\nThe study, recently published in the journal Circulation, found that regularly sleeping fewer than seven hours a night and waking up too early or throughout the night can increase a persons future risk of stroke, heart attack, and myocardial infarction.\n\nCardiovascular disease (CVD) is the leading cause of death in women, and poor sleep is a major health issue for women, especially in midlife.\n\n\nWhile previous studies have looked at how a poor nights sleep is related to the development of heart disease, its been unclear how long-term sleep problems impact the risk of heart disease.\n\n\nThe new findings suggest that long-term sleep issues and heart disease are closely linked and underscore the need to improve heart disease prevention efforts in women.\n\nMore women will die from cardiac disease than from cancer. With control of risk factors we can actually prevent heart disease in women, Dr. Eleanor Levin, a cardiologist with Stanford Medicine, told Healthline.\n\nThe researchers evaluated the sleep habits and health outcomes of 2,964 women between 42 and 52 years of age.\n\nThe participants were premenopausal or early perimenopausal, not using hormone therapy, and did not have heart disease.\n\n\nOver 22 years, the participants completed up to 16 visits where they completed questionnaires about their sleep habits, including whether they have insomnia symptoms and how long they typically sleep, along with mental health issues, like depression, and vasomotor symptoms, such as hot flashes.\n\nThe questionnaire also included questions about their anthropometric measurements, such as their height and weight, blood draws, and heart events, such as myocardial infarction, stroke or heart failure.\n\n\n\n\n\n\nRoughly one in four of the women regularly experienced insomnia symptoms, such as trouble falling asleep, waking up in the night, or waking up earlier than planned, and 14 percent frequently dealt with short sleep duration.\n\nAbout 7 perecent reported habitual insomnia symptoms and short sleep duration.\n\nThe researchers discovered that those who had chronically high insomnia symptoms had a higher risk of developing CVD later in life.\n\nIn addition, women who regularly slept less than five hours a night had a slightly higher risk of heart disease.\n\nIndividuals who persistently had high insomnia symptoms and slept less than five hours a night had a 75 perecent higher risk of heart disease, even when the researchers adjusted for CVD risk factors.\n\nAccording to the researchers, the findings highlight the impact long-term sleep problems can have on womens heart health.\n\n', '2024-02-04 10:57:22', 51, 9, 1, 46, 3, 20),
(72, '6 Foods to Avoid If You Want to Build Muscle', 'Were not far removed from the new year and the health and fitness resolutions that often come with it.\nYou may be well into a new or improved workout routine with a goal of muscle building in mind.\n\nYou may even have considered your diet by introducing foods that help promote muscle gain.\nWhen you have a goal to improve your body composition, muscle strength, and even heal and recover from surgery without experiencing muscle loss from bed rest, then you should consider a nutrition plan that includes protein, carbohydrates, fats, vitamins, and minerals, Reema Kanda, RDN, a Clinical Dietitian at Hoag Orthopedic Institute in Irvine, CA, told Healthline.\n\nBut in this instance, a little muscular addition can require a certain amount of dietary subtraction.\n\n\nIt is important to be mindful of the foods you should limit that may prevent you from reaching your body composition goals, Kanda said.\n\nIn fact, health experts suggest avoiding the following six foods if youre trying to increase your muscle mass. Foods to avoid are: Processed meats, Trans fats, Added sugars, Alcohol, Sauces, condiments, and dressings.\n', '2024-01-25 13:14:43', 38, 11, 1, 47, 3, 20),
(73, '\'ACROSS THE SPIDER-VERSE\' LEADS WITH 7 WINS, INCLUDING BEST FEATURE', 'On the TV side, \'Blue Eye Samurai\' took home six prizes at the ceremony celebrating animation.\nSpider-Man: Across the Spider-Verse was the big winner at the 2024 Annie Awards.\nThe Sony Pictures Animation film won seven awards at Saturday nights Annies, including the top prize of best feature.\n\nOther features that won multiple awards from the International Animated Film Society ASIFA-Hollywood, which presents the prizes recognizing the years best in animation, include two-time winners Nimona and The Boy and the Heron, which were nominated for nine and seven awards apiece, respectively.\n\n\nAcross the Spider-Verse, Nimona and The Boy and the Heron are all nominated for the Oscar for best animated feature, alongside Elemental and Robot Dreams, which won best feature  independent. Pixars Elemental went home empty-handed, despite being nominated for six awards.\n\nOscar-nominated animated short War Is Over! Inspired by the Music of John and Yoko won the Annie award for best short subject. Guardians of the Galaxy Vol. 3, Oscar nominated for best visual effects, won the Annie award for best character animation - live action.\n\n\nOn the TV side, Blue Eye Samurai was the top winner with six awards, followed by Moon Girl and Devil Dinosaur, which won three prizes, and Star Wars: Visions, which took home two.\n\nThe 51st Annie Awards were held at UCLAs Royce Hall. Winsor McCay Awards for career achievement were presented to animator-director Charlotte Lotte Reiniger (posthumous), Studio Ghibli composer Joe Hisaishi and National Film Board animator and producer Marcy Page. \n\nAdditionally, the Artists of Walt Disney Animation were honored with a special achievement award; the June Foray Award for charitable impact was given to BRIC Foundation co-founders Alison Mann and Nicole Hendrix; the Ub lwerks Award for technical achievement went to John Oxberry (posthumous).\n', '2024-01-31 13:25:28', 61, 7, 1, 48, 5, 20),
(74, 'Johan Renck on Sending Adam Sandler Into Orbit for Netflix \"Spaceman\"', 'The Swedish helmer talks about the film, premiering at the Berlin Film Festival, the key role Vince Giligan played in his career and why Sandler is \"the best human being on the planet.\"\n\nIn Spaceman, Adam Sandler joins a long line of lonely men lost in space, a proud cinematic tradition going back past Ryan Goslings First Man, Brad Pitt in Ad Astra, Sam Rockwell in Moon, and Matthew McConaughey in Interstellar to the crew in Andrei Tarkovskys Solaris.\n\nThe latest in this sci-fi linage, adapted from Jaroslav Kalfars novel Spaceman of Bohemia, is set in an alternative future where the Czechs are frontrunners in the space race and their national hero is Jakub (Sandler), a cosmonaut on a solo mission to investigate a mysterious dust cloud on the edge of Jupiter that might just hold the secrets of the universe.\n\nRenck spoke to The Hollywood Reporter ahead of Spacemans world premiere in the Berlinale Special program of the Berlin International Film Festival.\n\n\n\n\nBut millions of miles away from home, and from his pregnant wife, Lenka (Carey Mulligan), Jakub is consumed by loneliness and existential angst. Enter a huge, telepathic and empathetic space spider, voiced by Paul Dano, who promises to help the cosmological explorer on his emotional voyage inward.\n\n\nSpaceman is the only the second feature film from Swedish director Johan Renck (his first was the 2008 drama Downloading Nancy), who is better known for his TV work, including the Emmy-winning Chernobyl, and music videos for the likes of Beyonce, Madonna and David Bowie. But with his new production company Sinestra, set up with Spaceman producer Michael Parets, Renck is set to explore new cinematic horizons. The company, which has a first-look deal with Fremantle, will be a vehicle for Rencks new movie projects, including an in-development feature on the final days of Saddam Hussein.', '2024-01-24 21:16:51', 31, 3, 1, 49, 5, 20),
(75, 'Emeraude Toubias Horror Film \"Rosario\" Sells to Key World Markets', 'Felipe Vargas directorial debut also stars \"Oppenheimer\" actor David Dastmalchian and Jose Zuniga.\n\nHighland Film Group has sold the horror film Rosario to a slew of international territories as the Berlin Film Festival and its market kicked into gear.\nFelipe Vargas directorial debut from a script by Alan Trezza, which recently wrapped production, stars Emeraude Toubia, Oppenheimer actor David Dastmalchian, Jose Zuniga, Emilia Faucher and Paul Ben-Victor.\n\n\nHighland Film Group on the weekend unveiled rights deals with Splendid Film for Germany and the Benelux, Galapagos Films for Poland, Spentzos Film for Greece, MovieCloud for Taiwan and Vietnam and MVP for Malaysia. There are also sales to Silverline Multimedia for the Philippines,  PT Prima Cinema Multimedia for Indonesia, PictureWorks for India and Falcon Films for the Middle East.\n\nRosario stars Toubia in the titular role as a successful Wall Street stockbroker forced to spend the night with the body of her estranged grandmother Griselda after she abruptly dies. While waiting for the ambulance and her father Oscar, played by Zuniga, twisted and menacing supernatural forces possessing Griseldas corpse begin their assault on Rosario as she becomes the target of a deadly family curse that spans generations.\n\n\nRosario is produced by Silk Mass Jon Silk and Mucho Mas Javier Chapa and Phillip Braun. The film is executive produced by Highland Film Groups Arianne Fraser and Delphine Perrier, as well as Toubia, Bruce Barshop, Vincent Cordero, Simon Wise and Kristopher Wynne.\n\nMucho Mas Media financed and produced the film, which began production in Bogota, Colombia and included additional camera work in New York City.\n\nWith the help of our terrific international partners, we look forward to introducing this smart and chilling film to audiences around the world, said Highland Film Group COO Delphine Perrier.\n\n\n', '2024-02-05 09:19:24', 41, 5, 1, 50, 5, 20),
(76, 'BAFTA Film Awards: \'Oppenheimer\' Wins Seven Honors, \'Poor Things\' Gets Five', 'The ceremony in London, hosted by Scottish actor David Tennant, also honored \'The Zone of Interest\' and other films, while \'Barbie,\' \'Killers of the Flower Moon\' and \'Maestro\' were shut out.\n\nAnd the BAFTA goes to Oppenheimer Those words were on BAFTA Film Awards ceremony presenters lips a total of seven times in London on Sunday at the ceremony, hosted by Scottish actor David Tennant (Doctor Who, Inside Man) at the Southbank Centres Royal Festival Hall in the British capital.\n\nThose included the lips of Michael J. Fox, who unveiled the best film award for Oppenheimer after coming on stage to a huge welcome and standing ovation.\n\nThe wins for Oppenheimer included the best actor award for Cillian Murphy, best supporting actor nod for Robert Downey Jr., director award for Christopher Nolan and best film, for Nolan and other members of the film team. The two BAFTAs for Nolan mean that third time was the charm for the big-name British export who had previously never won a British Academy award.\n\n\nOppenheimer had led the pack coming into the night with 13 nominations. However, the BAFTA record winner remains Butch Cassidy and the Sundance Kid, the 1969 film directed by George Roy Hill and starring Paul Newman and Robert Redford, with nine BAFTAs.\n\nYorgos Lanthimos black-comedy science fantasy Poor Things, which had been nominated 11 times, also had a strong BAFTA evening, winning five of the famous BAFTA mask trophies, including one for Emma Stone as best actress. Jonathan Glazers The Zone of Interest was honored three times out of nine noms. \n\n\nBut Martin Scorseses Western crime drama Killers of the Flower Moon, which had also reached nine nods, ended up winless, as did Barbie and Maestro.\n\n\nGerman star Sandra Huller also left without a trophy after having been nominated for The Zone of Interest in the best supporting actress category and as best leading actress for her role in Anatomy of a Fall. In the end, the best supporting actress trophy went to DaVine Joy Randolph for The Holdovers, while Stone was honored with the best actress BAFTA. The latters win in a very competitive field of nominees, which included Fantasia Barrino (The Color Purple) and Vivian Oparah (Rye Lane) means that BAFTA viewers continue to have to wait for the first-ever Black best actress winner. \nOne of the memorable moments of the night was the best animation film win for The Boy and The Heron from Japanese anime legend Hayao Miyazaki and Toshio Suzuki.\n\n', '2024-01-18 16:53:46', 47, 3, 1, 51, 5, 20),
(77, '\"When Harry Met Sally\" Director Reveals How Meeting Wife Changed Films Ending', 'When Harry Met Sally almost had quite a different ending. (Spoilers ahead!)\nDuring an interview with CNNs Chris Wallace, the classic films director and co-writer Rob Reiner revealed that he and Nora Ephrons script originally had a sadder ending for Harry (Billy Crystal) and Sally (Meg Ryan).\nIt was going to be the two of them seeing each other after years, talking and then walking away from each other, Reiner told Wallace. I had been married for 10 years. Id been single for 10 years, and I couldnt figure out how I was ever going to be with anybody, and that gave birth to When Harry Met Sally.\n\n\nHe continued, I met my wife Michele, who Ive been married to now 35 years. I met her while we were making the film, and I changed the ending.When Wallace asked if fans have Michele to thank for the tear-jerker finale, Reiner said, Thats right.\n\nSince When Harry Met Sally was released in 1989, the final moments of the film have gone down in rom-com history as some of the most iconic ever.\n\n\nAfter years of their relationship, Billy crashes a New Years Eve party that Sally is at and delivers a memorable monologue about how he loves everything about her  from how her nose crinkles when she looks at him a certain way to how it takes her an hour and a half to order a sandwich.\n\n\nHe tells her, I came here tonight because when you realize you want to spend the rest of your life with somebody, you want the rest of your life to start as soon as possible.\n\n\nTo this day, When Harry Met Sally is still a beloved rom-com, and Crystal thinks the reason why is because its the truth.\n\n\nIts an amazing movie, I have to say, because theres no plot, he told The Hollywood Reporter when celebrating the films 30th anniversary in 2019. In typical romantic comedies, they go through so much: their adversity, he had to move, he got drafted, hes in the Army, he came back, they found each other again  no. The obstacle in this movie is themselves.\n', '2024-01-14 11:36:18', 28, 3, 1, 52, 5, 20),
(79, 'HOW TENSIONS IN THE RED SEA ARE DISRUPTING CRUISE VOYAGES', 'Cruise companies are being forced to cancel or reroute voyages as tensions in the Red Sea escalate. Royal Caribbean, Carnival Corporation and MSC Cruises are among those whove made the decision to adjust their itineraries, or pull voyages completely, to avoid passing through the Red Sea due to attacks by the Iran-backed Houthi militia in Yemen. Carnival Corporation has become the latest to announce changes to itineraries, confirming that it will reroute 12 ships across seven of its brands in May in order to avoid passing through the Red Sea. In a statement released on Tuesday, the cruise operator stressed that it was committed to the safety and well-being of its guests and crew and had been actively monitoring the situation in the Red Sea and surrounding region. It did not indicate which sailings were likely to be affected. Given recent developments on the security environment and future uncertainties in the area, working in close consultation with global security experts and government authorities, we have made the difficult decision to cancel the cruise that was originally planned, Costa said in a statement sent to those due to travel on the 19-night cruise from United Arab Emirates to Italy. Meanwhile, Princess Cruises, another Carnival Corporation brand, has confirmed that its made the difficult decision to reroute world cruises aboard two of its ships, Island Princess and Coral Princess. Regrettably Island Princess World Cruise, which departed from Los Angeles on January 18, 2024, will no longer visit the Middle East (including Dubai) or Asia, reads a statement from Princess Cruises. Instead, the itinerary has been revised to visit ports of call in Australia and will then travel to South Africa and sail to the west coast of Africa. From there the ship will proceed north to Western Europe and the Mediterranean, after which it will continue with its scheduled Atlantic crossing. The statement goes on to state that the itinerary for its upcoming world cruise on Coral Princess, scheduled to depart in April, is being re-worked. Earlier this month, MSC Cruises canceled at least three repositioning voyages due to depart in April, including a 24-night cruise on board MSC Splendida from Durban, South Africa to Genoa, Italy as a result of the situation in the Red Sea. Silversea also confirmed that it had canceled two upcoming voyages on board Silver Moon and amended the itinerary of a sailing between Aqaba, Jordan and Muscat, Oman to allow guests to disembark in Piraeus, Athens. We took care of arranging guests onward journeys from the new port of disembarkation, a spokesperson for Silversea confirmed to CNN. The adjustments come after a series of attacks by Houthi rebels on vessels transiting through the Red Sea and the Suez Canal, which resulted in US and UK military strikes against Houthi targets earlier this month.', '2024-01-09 22:53:34', 47, 5, 1, 54, 1, 21),
(80, 'Stonehenges Altar Stone has mysterious origins', 'Stonehenge is hiding a secret: the source of one of its stones.\n\nResearchers know that the prehistoric circles outer stones come from nearby areas in England. But even after a century of sleuthing, the Altar Stone near the center of Stonehenge remains shrouded in mystery.\n\nThe Altar Stone belongs to a group of Stonehenge building blocks known as the bluestones, which came from areas far from Stonehenge. Researchers have found that some of the bluestones come from as far as 225 kilometers (140 miles) away.\nIts a massive feat of transport, says Richard Bevins. Hes an earth scientist at Aberystwyth University in Wales. His team is looking for the source of the Altar Stone. Uncovering the stones origins could hint at which ancient groups of people contributed to the monument. Excavations at the stone source locations could also reveal clues about the people living in the Neolithic Period when Stonehenge was built.\n\n\nThe Altar Stone is a flat, rectangular block nearly 5 meters (16.4 feet) long. Its a big lump of rock, really is, and its much bigger than any of the other bluestones, Bevins says. Scientists have been chasing the rocks origins since 1923. An analysis of the Altar Stones minerals back then suggested it might have come from a set of rocks in Wales near where other bluestones came from. Bevins and his colleagues decided to revisit the rocks riddle with modern techniques.\n\n\nIn 2021, the team analyzed the Altar Stones chemical makeup using X-rays. The X-ray method revealed that the Altar Stone has high levels of the element barium. But the stones ingredients didnt seem to match the rocks in Wales.\n\n\nIn the new study, the team collected 58 samples from a wider area in England and Wales. Of the 58 sample stones, four had high barium levels similar to the Altar Stone. The team then compared the overall mineral makeup of those four stones with the Altar Stone. But none were a match. The team shared its findings in October 2023 in the Journal of Archaeological Science: Reports.\n\n\nMaybe weve been looking in the wrong area, and maybe weve possibly been looking at rocks of the wrong age, Bevins says. Its not clear exactly how old the Altar Stone is. So scientists may need to consider stone sources that are younger than the ones they have looked at so far.', '2024-01-27 16:43:19', 52, 3, 1, 55, 6, 21),
(81, 'Scientists Say: 2-D Material', 'So-called two-dimensional, or 2-D, materials are super flat. These materials are not literally two-dimensional. They have length, width and height. But theyre just one or two atoms thick. So their height is practically zero. Hence: 2-D material.\n\nGraphene is the most famous of these materials. But there are many other 2-D materials with a wide range of useful properties.\nGraphene is a single layer of carbon atoms bonded together. Its super strong, lightweight and flexible. That could make it useful for making small, bendy electronics. Or it could be help strengthen cement, shield against mosquito bites and much more.\n\n\nPhosphorene is much like graphene. But instead of carbon atoms, its made of phosphorus atoms. This gives the material different electrical properties. Graphene is a conductor. That is, electricity flows through it easily. But phosphorene is a semiconductor. Electrical current flowing through it can be turned on or off. This could make phosphorene useful for building next-generation electronics.\n\n\nHexagonal boron nitride is another 2-D material. But its made with boron and nitrogen atoms. It reflects ultraviolet light and is good at shedding heat. That recently made it the key ingredient for a thermal cloak that can help control the temperatures inside cars.\n\n\nGraphitic carbon nitride is a 2-D material made up of carbon and nitrogen. Under light, it releases chemicals that destroy germs to purify water. And a class of 2-D materials called MXenes are great at snatching carbon dioxide out of the air. In the future, they could help pull climate-warming CO2 out of the atmosphere.\n\n\nStill other 2-D materials contain different types of atoms arranged in many different ways - giving rise to a whole range of properties useful for a wide range of applications.', '2024-01-22 18:33:11', 31, 2, 1, 56, 6, 21),
(82, ' Tropical forests have gotten patchier', 'Fires, roads and logging all slice through swaths of forest, chopping them into fragments. Such forest fragmentation can harm the ability of these ecosystems to sustain their animal inhabitants. Now, a study reveals that the worlds tropical forests may face the greatest risk of this damage.\n\nEven if a forests total area doesnt change much, breaking it up can drastically reduce its function, says Jun Ma. An ecologist, Ma works at Fudan University in Shanghai, China. Think of what happens when a glass cup breaks, he says. The same amount of glass remains, but the cup no longer holds water. Forest fragmentation is similar. Some forest-dwelling creatures require a lot of space. For example, a panda needs around 4 to 6 square kilometers (1.5 to 2.3 square miles) to support its normal life in the wild. A lot of small patches of forest that add up to that area wont do.\n\nMa and his colleagues analyzed maps of forest cover around the world from 2000 and 2020. They created a forest fragmentation index - a number that captures forests patchiness. The researchers calculated this value for segments of forest that were 25 square kilometers (6,178 acres).\n\nThe index for each area was based on the size of forested spots, how closely such areas were packed together and the length of the forests edges. Carving up a large area of forest cuts it into more pieces. The average area of each piece shrinks while the average length of the edges grows, Ma explains. The team compared each areas index from 2020 with the one from 2000.\n\nAbout 75 percent of Earths forests decreased in fragmentation between 2000 and 2020, the team found. Thats good news. But tropical forests - those found near Earths equator - became more fragmented. Thats worrisome because the tropics harbor much of Earths plant and animal diversity, Ma says. The researchers shared their findings July 11 in Nature Communications.\n\n\nReducing the amount of logging in the tropics would help some of these forests, Ma says. People can also plant trees in previously unforested areas. But, he says, adding new forests should make forested areas bigger, not create more small patches.\n', '2024-01-17 10:25:18', 21, 52, 1, 57, 6, 21),
(83, 'Astronomers spot the aftermath of an exoplanet smashup', 'Two Neptune-sized planets orbiting a distant star appear to have vaporized each other\nAstronomers may have just spotted two planets smack into and vaporize each other. This smashup took place some 1,800 light-years from Earth.\nTelescopes saw a surge of infrared light emerge from a star at that distance. The light appears to come from a glowing blob of broken-up planet. Debris surrounding the star would also explain why visible light from the star later dimmed.\nResearchers reported these findings October 11 in Nature.\nScientists had glimpsed planetary debris around other stars before. But until now, no one has seen the smoldering remains of a collision between exoplanets.\nThe possible detection of the remains of colliding distant planets is really exciting, says Philip Carter. As far as Im aware, he says, no ones claimed this before. An astrophysicist, Carter works at the University of Bristol in England. He did not take part in the new study.\nDetecting the aftermath of this cosmic smackdown involved more than a little luck.\n\n\nMatthew Kenworthy, who made the discovery, wasnt hunting for giant impacts. I was looking for rings around exoplanets, he says. Kenworthy is an astronomer at Leiden Observatory in the Netherlands.\nHe scoured telescope data for stars that flicker or dim in strange ways. Such flickering could happen when rings block out light from a star.\n\n\n\n\nHe found what he was looking for in data from the ASAS-SN survey. (This is an ongoing project where telescopes watch the sky for exploding stars.) That survey had captured visible light from a sunlike star called ASASSN-21qj. The stars visible light dimmed repeatedly. I immediately jumped on it, Kenworthy says.\nWhile studying the varying light, he stumbled upon another clue. This one came through social media. Kenworthy had posted on Twitter (now called X) about ASASSN-21qjs weird dimming. That post caught the eye of citizen scientist Arttu Sainio.\n\n\nI tweeted out saying: Oh, this is amazing. This star is fading! Kenworthy says. Then he added: By the way, did you realize the star had brightened up?\nSainio pointed to data from NASAs WISE telescope. It orbits Earth. WISE had tracked infrared light from ASASSN-21qj. Those data showed a strong uptick in this light about 900 days before the stars visible light started dimming.\nKenworthys team had hoped to spot exoplanet rings. They didnt. But they may have found something just as cool.\nIt just totally changed the story, Kenworthy now says.\n\n\n', '2024-02-10 13:25:26', 46, 7, 1, 58, 6, 21);
INSERT INTO `news` (`news_id`, `title`, `content`, `date`, `likes`, `dislikes`, `active`, `img_id`, `category_id`, `user_id`) VALUES
(84, 'Human teleportation? This century were stuck doing it virtually', 'Science fiction has inspired plenty of todays technologies. But one that many of us would really like access to remains elusive: teleportation.\nIts what the folks in Star Trek do, for instance, as they routinely beam themselves to and from distant sites. The process appears to break down peoples bodies into their constituent atoms, then stream them to some destination where they reassemble perfectly.\n\nThat type of teleportation is a long way off, scientists say. At least right now, says Paul Weaver, theres no reason to believe we could do that. Youd need a beam receiver at one site that could then remotely in another place. Thats still science fiction, says Weaver, who trained in computer science (and claims to be a card-carrying sci-fi nerd).\nIf, however, we define teleportation as getting somewhere very quickly, he says, then there are a few ways to do it. One is faster-than-light (FTL) travel. Like Doctor Whos TARDIS, zipping across space and time. Or like the starships of Earth emigrants in The Ark (a show that debuted on the SYFY channel in early 2023). The rub: Humans havent truly managed this yet.\nHowever, Weaver notes, We do have 3-D printing.\n\nA 3-D printer that is advanced enough, he says, might be able to print a human at some distant destination. Presumably, we could teleport that way. The real challenge, he adds, would be sending the information that defines us.\nWhat would that information consist of? How much data would it take to define someone? What bandwidth would we need to transfer those data wirelessly?\n\n\nIn 2013, physicists at the University of Leicester, in England, tried to come up with some numbers. They calculated the time, energy and data needed to teleport someone from Earth to space. At data transfer speeds available 10 years ago, they found, it would have taken at least 4.8 trillion years. Thats 350 times longer than the age of the universe! Even with todays improved data speeds, that type of teleportation remains totally unrealistic.\nHowever, other types of teleportation are quite real. For instance, quantum teleportation has been demonstrated at the subatomic level. Its related to a phenomenon known as quantum entanglement. (Its something Albert Einstein described as spooky action at a distance. And for demonstrating its existence, two physicists took home a 2022 Nobel prize.)\n\n\nIn quantum teleportation, two subatomic particles are considered entangled when some aspects of one of those particles depend on aspects of the other - no matter how far apart they are or what may lie between them. To teleport an entire human being, however, is a different matter. Its not just because bodies are much larger. The basic physics also changes dramatically. So thats ruled out for transferring humans.\nFortunately, another type - virtual teleportation - is already here.\n\n', '2024-02-08 09:56:51', 55, 12, 1, 59, 6, 21),
(85, 'JUDGE ORDERS TRUMP TO PAY 355 MILLION DOLLARS IN NEW YORK CIVIL FRAUD CASE', 'NEW YORK (AP) A New York judge ordered Donald Trump and his companies on Friday to pay 355 million dollars in penalties, finding they engaged in a yearslong scheme to dupe banks and others with financial statements that inflated his wealth. Trump wont have to pay out the money immediately as an appeals process plays out, but the verdict still is a stunning setback for the former president. If hes ultimately forced to pay, the magnitude of the penalty, on top of earlier judgments, could dramatically diminish his financial resources. And it undermines the image of a successful businessman that hes carefully tailored to power his unlikely rise from a reality television star to a onetime and perhaps future president. Judge Arthur Engoron concluded that Trump and his company were likely to continue their fraudulent ways without the financial penalties and other controls he imposed. Engoron concluded that Trump and his co-defendants failed to accept responsibility and that experts who testified on his behalf simply denied reality.', '2024-02-07 12:32:43', 18, 54, 1, 60, 4, 18),
(87, 'These Are the Cheapest Months to Travel to Popular Destinations Around the World', 'Lets be blunt: travel is expensive. According to a 2023 study by Bankrate, the average cost for a one-week vacation in the U.S. for one person is 1,984 dollars. That same vacation for two people jumps all the way to 3,969 dollars. However, travel is also a worthwhile investment in ourselves, with study after study showing that travel can improve our overall health. And luckily, there are ways to get out and see the world without overspending. \nIn late 2023, Bounce, a luggage storage company, revealed the results of its study looking into the cheapest times to visit some of the worlds most popular travel destinations. To find the exact dates, Bounce began with a seed list of 70 popular tourist destinations. It then used Kayak to find the average daily hotel cost by month of the year and day of the week (correct as of Nov. 16, 2023). Then, it used that data to calculate the difference in average price between a nightly stay at a 3-star hotel in the cheapest and most expensive months of the year. \n\n\nAfter digging into the data, Bounce found that there are clear seasonal trends when it comes to travel costs, noting that January is the cheapest month in 15 different cities. That includes popular spots like London, Amsterdam, and Berlin. \nAccording to Bounce, off-season travel in February is close behind, as its the cheapest time to travel to 12 different cities, including New York, Paris, and Milan. \nThen there are notoriously expensive destinations like the Maldives. Travelers who opt to go to Male, the capital of the archipelago, can save up to 85 percent if they visit from January to August.\nAs for which days are the cheapest to travel on, Bounce found a bit of a surprise. It noted that contrary to popular belief, the data shows that Saturday is the cheapest day to stay in 17 cities, including visiting places like Las Vegas, Dublin, and Milan. This could be due to various factors, including lower demand for weekend business travel. This was also the most common cheapest day when we analyzed 2022. \nSunday, Friday, and Monday all tied for second place as the cheapest days to travel for 10 different cities, including major destinations like Prague, Barcelona, Rome, Singapore, and Miami.\n\nOn the flip side, Bounce found that winter and autumn travel tend to come with the most expensive pricing for many destinations, including Asian cities like Chaing Mai and Phuket in Thailand, which see the highest rates in December. Spots like Athens, Lisbon, and Barcelona hit their peak pricing in September. \n\n\n\n', '2024-02-06 11:56:19', 48, 6, 1, 61, 1, 21),
(89, 'These Are the Top Airbnbs for Golf Lovers - and Each Has Its Own Private Course', 'Love to golf but hate getting stuck behind others? At these Airbnbs, crowds won\'t be a problem, because they have private courses.\nHoney Pond in Middletown Springs, Vermont, isnt just a vacation home - its a full-blown recreational retreat. Its USGA-rated golf course includes three greens, multiple fairways, and 26 tees, not to mention a halfway house for mid-round drinks and snacks and eight golf carts to zip you around. It also has a driving range to help you perfect your swing.\nOf course, thats far from the only amenity here. The house itself impresses with eight bedrooms, a gym, a wine cellar, a patio with a wood-burning pizza oven, and a game room with a pool table, shuffleboard, and pinball. And then there are the 545-acre grounds, which are home to much more than the golf course. There are 10 miles of hiking, biking, and cross-country skiing trails to explore, plus resort sports like croquet, corn hole, bocce, horseshoes, and tennis (with equipment included!). \nThen across the country, in Scottsdale, Arizona, theres Saguaro Point. The property itself is a touch smaller than Honey Pond - just 5.1 acres - but it includes a private golf complex with three greens with multiple hole configurations plus a putting green (and three golf carts, too). With sunshine all year long in Scottsdale, you can take advantage of this synthetic course no matter when you visit.\nAs for the house, its an eight-bedroom stunner with a four-car garage converted into a game room with a golf simulator, pool table, and ping pong, as well as a bar and a TV for all the games. Other highlights include indoor-outdoor living spaces, a pool, and a wet sauna in the master suite.\nPerhaps unsurprisingly, the cost of these Airbnbs is, well, not cheap. Golf can be a very expensive sport, after all! Honey Pond starts at 4,143 dollars per night, and Saguaro Point starts at 3,900 dollars per night.\n\n', '2024-01-21 14:39:54', 33, 4, 1, 63, 1, 21),
(90, 'This Stunning U.S. Beach Has the Calmest Waters on Earth, New Report Finds', 'We all know that being around water is usually a pleasant and peaceful experience. Its even scientifically proven to make us feel happier. But for those who want to take things a step further, HawaiianIslands.com has compiled a list of the calmest waters on Earth so every traveler can find their zen.\n\nTo find out which beaches offer the calmest waters, the team analyzed millions of publicly available reviews on Tripadvisor, assessing 500 beaches in America and the top 100 beaches in every country around the globe. After identifying the beaches, the team calculated which spots had the highest proportion of reviews that included the phrase calm waters. (The team notes it only assessed English-language reviews and sense-checked all reviews to ensure the phrase calm water was used correctly.)\nAfter crunching the numbers, the researchers found that Baby Beach in Maui, Hawaii, holds the title for having the calmest water of any beach in the world, with more than 27 percent of reviews mentioning the phrase.\n\n\n\nIncredibly calm waters with ample coral areas, perfect for snorkeling in. We went to many of the beaches in Maui looking for snorkeling spots, and this was one of the best for beginners like us to try out snorkeling without worrying about the waves. Would be a good beach for children to swim as the waters are so calm, one reviewer wrote. (Its important to note that while it is safe to return to many parts of Maui, Baby Beach sits in an area that is not permitted to visitors at this time. Please check with Maui\'s official government website and its official travel website before your vacation to know where you can, and cannot go. And read these nine tips for traveling to the island responsibly).\n\nComing in at a close second is Ten Bay Beach in Eleuthera, the Bahamas, with nearly 23 percent of the reviews raving about its clear and calm waters. Loved this beach- beautiful calm waters - good for families with small kids. Would definitely visit again and spend the whole day there. There is shade from the trees nearby. One of my top picks for beaches on the island, a reviewer wrote about their experience at the beach.\n\nAs for where else in America you can find the calmest waters, youll likely have to go to Hawaii, as its home to eight out of the 10 calmest waters in the nation, with only Cape Charles, Virginia, and Lewes, Delaware, joining them. \nFor international waters, look to Greece, where youll find six out of the 10 calmest waters in Europe, with Marathi Beach in Crete taking the number one spot in that continent.\n\n\n', '2024-01-16 10:18:00', 54, 7, 1, 64, 1, 21),
(91, 'Why Bundesliga giants need Champions League success to save season', 'While Bayer Leverkusen, sensational under manager Xabi Alonso, are threatening to run away from Bayern Munich at the top of the Bundesliga, Borussia Dortmund have long been out of the race.\n\nDortmund are 17 points behind leaders Leverkusen, facing a battle to finish in the top four and qualify for the Champions League.\n\nIt is a far cry from last season, when Dortmund were one win from breaking Bayern\'s stranglehold on the German top flight, which has lasted more than a decade.\n\nDortmund led by two points going into the final day of the 2022-23 season, but a 2-2 draw at home to Mainz allowed Bayern, who won 2-1 at Cologne, to take an 11th successive Bundesliga crown on goal difference.\n\nListen to the latest Football Daily podcast\nThe sense of what might have been has haunted Dortmund all season - exacerbated by Leverkusen\'s form. Alonso\'s side are eight points clear and were hugely impressive3-0 winners over Bayern earlier this month.\n\nNow Dortmund, who hoped to build on last season\'s near miss of clinching a first Bundesliga title since 2012, are reliant on the Champions League to stop this campaign being a write-off.\n\nThe hangover from throwing away the title was not severe, as they went unbeaten in the league for the first three months of this campaign.\n\nBut as so often happens to modern-era Dortmund, they came unstuck against Bayern. A 4-0 home defeat on 4 November - in which Harry Kane scored a hat-trick - triggered a run of one win in seven league games going into the winter break, including failing to win in the Bundesliga during December.\n\nA 1-1 draw with Mainz left Dortmund 15 points off the pace over Christmas, and though they have found some form - they are unbeaten in eight league games - it is surely too big a gap to close.\nWhile this upturn has eased some pressure on manager Edin Terzic, questions remain for Dortmund - particularly regarding recruitment.\n\nIt is impossible to ignore how much Dortmund have missed Jude Bellingham following his departure to Real Madrid last summer, and how - perhaps predictably - they have struggled to replace him.', '2024-02-20 07:08:51', 0, 0, 2, 65, 2, 18),
(92, 'Damian Lillard named All-Star Game MVP in record East win over West', 'Damian Lillard was named the NBA All-Star Games Most Valuable Player after helping the Eastern Conference beat the Western Conference 211-186.\n\nThe Milwaukee Bucks guard scored 39 points, including 11 three-pointers, in Indianapolis.\n\nThe Easts points tally was a record in an All-Star Game, surpassing the 196 scored by the West in 2016.\n\nIts an honour, said 33-year-old Lillard on winning the Kobe Bryant MVP Trophy.\n\nIve been here quite a few times, so to have this kind of accomplishment is special.\n\nBoston Celtics forward Jaylen Brown contributed 36 points and Indiana Pacers guard Tyrese Haliburton 32 for the East, who were the home side.\n\nKarl-Anthony Towns of the Minnesota Timberwolves scored 50 for the West.\n\nThe total of 397 points in the 73rd All-Star Game broke the record of 374 set in 2017.\n\nLa Lakers LeBron James, 39, took part in a record 20th All-Star Game but, because of an ankle injury, played only 14 minutes for the West and scored eight points.\n\nIt was reported that the Golden State Warriors tried to acquire James, external before the trade deadline on 14 February.\n\nI am a Laker and I\'m happy and been very happy being a Laker the last six years and hopefully it stays that way, he before the game.\n\nBut I dont have the answer to how long it is or which uniform I\'ll be in. Hopefully is with the Lakers. It\'s a great organisation - so many greats. But well see.', '2024-02-20 07:16:11', 0, 0, 2, 66, 2, 18),
(93, 'Robert Downey Jr. Nearly Joined DC Before His Marvel Career', 'Batmans numerous big-screen iterations have brought a long list of different Bruce Waynes who have faced off with three Jokers (four if you count Joaquin Phoenix), three Catwomen, two Penguins, two Banes, two Riddlers, and two Harvey Dents. But, up to now, theres been only one big screen live-action interpretation of Jonathan Crane, also known as Scarecrow. Cillian Murphy - one of this years Best Actor Academy Award nominees - made the role his through a nuanced portrayal of the mystifying villain in Batman Begins and its sequels. But had things gone differently in a meeting preceding the production of the film, we might have gotten a very different Scarecrow.\nIn yet another tale for the multiverse, Robert Downey Jr. revealed in a QA session following an Oppenheimer screening that he once met with Christopher Nolan to talk about the part of Scarecrow in the Dark Knight trilogy. This wouldve brought him head-to-head with Christian Bales Bruce Wayne in a fight of epic proportions. Perhaps itd have been the closest wed be to getting a Tony Stark and Bruce Wayne showdown of sorts on the big screen. Now, we know Downey Jr. certainly didnt get the part - having the actor show up as part of DC Comics big screen multiverse is something we still have yet to see - but what exactly went down in his conversation with Nolan, and what were its repercussions?', '2024-02-20 07:25:47', 0, 0, 3, 67, 5, 20),
(94, 'This \'Suits\' Episode Changed the Course of the Series', 'With the impeccable popularity that Suits has achieved since its premiere on USA Network over a decade ago and a strong resurgence after Netflix and Peacock scooped it up, the series continues to hit the headlines. The show\'s recent moment in the spotlight had its stars reuniting in a fun Super Bowl commercial, featuring cast regulars Sarah Rafferty, Gina Torres, and Rick Hoffman. Now everything seems set for its LA-based spin-off, and fans of the Suits universe will be waiting with bated breath to see what LA has to offer. But aside from the strong performances that saw Suits become the most streamed TV show of 2023, what\'s the one episode that redefined the course of the show?\n\nFor a show where every episode left audiences craving more, the answer to this might be one for debate. One might argue that the pilot episode, with Mike Ross (Patrick J. Adams) running from the police and becoming Harvey\'s (Gabriel Macht) associate, was one of the most memorable and defining moments of the show. Or the episode that saw Jessica Pearson (Gina Torres) leave for Chicago, which triggered yet another spin-off with her as the titular protagonist in the murky politics of Chicago, leaving the New York law firm in hands other than the familiar Jessica\'s. But the one episode that defined the trajectory of the record-breaking legal drama is Season 4\'s Episode 10, \"This Is Rome.\"\n\n\"This is Rome\" is a Louis Litt (Rick Hoffman) episode. It showcases his acting range, displaying his vulnerability in a way unseen before, while also presenting his hateful character in an unrivaled manner. It is the episode in which the words \"He knows,\" which had been whispered throughout the series prior, ring true. It is the episode in which the secret, which started with Harvey and Donna (Sarah Rafferty), and was later known to Jessica and Rachel (Meghan Markle), found itself in the hands of Louis Litt, whom few at Jessica\'s New York law firm trusted. With the secret in Louis Litt\'s hands, everything in Suits changed.\n', '2024-02-20 07:31:00', 0, 0, 3, 68, 5, 20),
(95, 'Drug offers wonderful breakthrough in treatment of asbestos-linked cancer', 'Scientists have achieved a major breakthrough in the treatment of mesothelioma, a challenging cancer associated with asbestos exposure. In a groundbreaking international trial led by Queen Mary University of London across five countries, a new drug named ADI-PEG20 (pegargiminase) has shown remarkable results in combination with chemotherapy. The drug, which cuts off the tumors food supply, has quadrupled three-year survival rates for patients with pleural mesothelioma, a form of the disease affecting the lining of the lungs.\n\nMesothelioma is known for its aggressive and deadly nature, boasting one of the worlds lowest cancer survival rates. The new therapy marks a significant advancement, with experts emphasizing its importance as the first successful combination of a drug with chemotherapy for mesothelioma in two decades.\n\nThe ATOMIC-meso trial involved 249 patients from the UK, US, Australia, Italy, and Taiwan, with an average age of 70. Participants received chemotherapy every three weeks for up to six cycles, with half also receiving injections of the new drug, while the other half received a placebo for two years. The results, published in JAMA Oncology, revealed that those who received pegargiminase and chemotherapy survived for an average of 9.3 months, compared to 7.7 months for those who had the placebo and chemotherapy.\n\nThe breakthrough is particularly significant for an 80-year-old patient who, having been exposed to asbestos in the 1970s, was given four months to live but is still alive five years later, thanks to the trial. The drug works by depleting arginine levels in the bloodstream, hindering the growth of tumor cells that cannot manufacture their own arginine.\n\nProf Peter Szlosarek, who led the trial, expressed joy at seeing the research into arginine starvation of cancer cells come to fruition. The discovery builds on two decades of work following the original finding that mesothelioma cells lack a protein called ASS1, crucial for arginine production.\n\nThe success of the trial was funded by Cancer Research UK and the biotechnology company Polaris Group. Dr. Tayyaba Jiwani of Cancer Research UK highlighted the power of discovery research in targeting vulnerabilities in mesothelioma biology with the new drug.\n\nLiz Darlison, chief executive of Mesothelioma UK, expressed pride in the ATOMIC trial, considering it a much-needed treatment option and a source of hope for those living with mesothelioma. The expectation is that this treatment will become a standard option for all patients in the future.', '2024-02-20 07:44:47', 0, 0, 3, 69, 6, 21),
(96, 'Scientists finally discover the brain cells that make you unique', 'A new watershed study has mapped over 3,000 cell types in the human brain.\n\n\nScientists have long puzzled over the vast complexity of the human brain. Now, researchers from across the world have mapped its cellular make up and discovered that there are over 3,000 cell types in the human brain, including hundreds they didnt know existed.\n\nSpeaking to BBC Science Focus, Dr Ed Lein, senior investigator and neuroscientist at the Allen Institute for Brain Science, said: The brain is an astonishingly complex cellular organ and we can now really define and map these cell types across it.\n\n\nPrevious studies had only mapped the brain cell types of particular regions in the cortex (the outermost part of the brain). These studies found over 100 different brain cell types.\n\nThe new research has expanded that mapping to almost 100 regions across the entire human brain - and found thousands of different brain cells.\n\nFor many parts of the brain, no-one has ever seen this level of complexity and variety until now. The researchers were surprised to discover that even the oldest parts of the brain (in evolutionary terms), which were previously thought to be very simple, are in fact highly complex.\n\nIn the study, scientists at Allen Institute for Brain Science used a technique known as single-cell transcriptomics, which involves studying all the genes switched on in individual brain cells DNA. They analysed post-mortem tissues from brains donated to science, and healthy living tissue donated by brain surgery patients.\n\n\n\nThe study is part of a huge project to catalogue the size and complexity of the human brain, and is one of a suite of 21 papers released simultaneously in Science, Science Advances and Science Translational Medicine.\n\nOne of the other studies, also led by the Allen Institute, found that the connections between the 3,000 brain cell types are crucial to making us unique individuals. Although we all share a common blueprint and set of building blocks, said Lein, there is variation in how those blocks are put together and the properties of those blocks that make us unique as individuals.\n\nIn a press release, Lein described the joint discoveries as a pivotal moment in neuroscience. The findings will help to create more comprehensive atlases of the entire human brain, as well as for brains of other primates. These could improve our understanding of brain diseases and disorders, and our ability to treat them.\n\n', '2024-02-20 07:56:56', 0, 0, 3, 70, 6, 21),
(97, 'sadasdasdasdasdasdassadasdas', 'sadasdasdasdasdasdsadasdasdasdasdsasd dasdasdasdas', '2024-02-20 12:34:05', 0, 0, 2, 8, 4, 18);

-- --------------------------------------------------------

--
-- Table structure for table `profile_img`
--

CREATE TABLE `profile_img` (
  `profile_img_id` int(11) NOT NULL,
  `alt` varchar(100) NOT NULL,
  `src` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile_img`
--

INSERT INTO `profile_img` (`profile_img_id`, `alt`, `src`) VALUES
(1, 'default profile picture', 'default.png'),
(3, 'ita', 'itachi.jpg'),
(4, '1652685459_about.jpg', '../img/1652685459_about.jpg'),
(5, '1653852274_nemanja.jpg', '../img/1653852274_nemanja.jpg'),
(6, '1708122075_unnamed.jpg', '../img/1708122075_unnamed.jpg'),
(7, '1708122131_unnamed.jpg', '../img/1708122131_unnamed.jpg'),
(8, '1708122250_Screenshot_2024-02-16-23-23-16-845_com.android.chrome.jpg', '../img/1708122250_Screenshot_2024-02-16-'),
(9, '1708122311_aca.jpg', '../img/1708122311_aca.jpg'),
(10, '1708122355_aca.jpg', '../img/1708122355_aca.jpg'),
(11, '1708124516_istockphoto-451301213-612x612.jpg', '../img/1708124516_istockphoto-451301213-'),
(12, '1708124569_istockphoto-451301213-612x612.jpg', '../img/1708124569_istockphoto-451301213-'),
(13, '1708124616_mskk.jpg', '../img/1708124616_mskk.jpg'),
(14, '1708124710_sfsdgghgff.jpg', '../img/1708124710_sfsdgghgff.jpg'),
(15, '1708124805_sadasda.jpg', '../img/1708124805_sadasda.jpg'),
(16, '1708124925_sasa.jpg', '../img/1708124925_sasa.jpg'),
(17, '1708125076_laza.jpg', '../img/1708125076_laza.jpg'),
(18, '1708125179_iva.jpg', '../img/1708125179_iva.jpg'),
(19, '1708125232_News-Reporter.jpg', '../img/1708125232_News-Reporter.jpg'),
(20, '1708125352_slavka.jpg', '../img/1708125352_slavka.jpg'),
(21, '1708125783_aca.jpg', '../img/1708125783_aca.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role`) VALUES
(1, 'Admin'),
(2, 'Redactor'),
(3, 'Journalist');

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `href` varchar(150) NOT NULL,
  `class` varchar(100) NOT NULL,
  `background` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`id`, `name`, `href`, `class`, `background`) VALUES
(1, 'Facebook', 'https://www.facebook.com/', 'facebook-f', '39569E'),
(2, 'Twitter', 'https://twitter.com/', 'twitter', '52AAF4'),
(3, 'Linkedin', 'https://www.linkedin.com/', 'linkedin-in', '0185AE'),
(4, 'Instagram', 'https://www.instagram.com/', 'instagram', 'C8359D'),
(5, 'Reddit', 'https://www.reddit.com/', 'reddit', 'FF4500'),
(6, 'YouTube', 'https://www.youtube.com/', 'youtube', 'DC472E');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `profile_img_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `last_name`, `email`, `password`, `date`, `active`, `role_id`, `profile_img_id`) VALUES
(1, 'Journalist', 'Journalist', 'journalist@gmail.com', '3e2e3338b7d85581ecd0502cc342e7f6', '2024-02-08 17:56:00', 0, 3, 1),
(4, 'Novinar', 'Novinar', 'novinar@gmail.com', '120c9c7a7aa62d1e1f762a3250a4955c', '2024-02-08 18:29:41', 1, 3, 1),
(13, 'Aleksandar', 'Djordjevic', 'aca@gmail.com', 'ab71fa41ab7c8e34b447e9c4df5ab8ec', '2023-12-24 22:19:43', 0, 1, 21),
(14, 'Miodrag', 'Lazarevic', 'mija@gmail.com', 'be55516de88124e9ac2b684340805f74', '2023-12-24 22:24:13', 0, 2, 15),
(15, 'Sasa', 'Lazarevic', 'sasa@gmail.com', '78f7b0ccce9b89c1e8b44c4ca25c7454', '2023-12-25 08:14:58', 0, 2, 16),
(16, 'Slavica', 'Lazarevic', 'slavka@gmail.com', '8dedcc8d1deab2f7f7e03a89ba4efa0d', '2023-12-25 08:17:21', 0, 2, 20),
(17, 'Milos', 'Lazarevic', 'milos@gmail.com', '9891e578c9c77e9745ada0e773b98e81', '2023-12-25 08:23:07', 0, 2, 14),
(18, 'Vojin', 'Lazarevic', 'voja@gmail.com', '018016cb58ec2c367640a5689e7a2516', '2023-12-25 08:25:38', 0, 3, 13),
(19, 'Iva', 'Lazarevic', 'iva@gmail.com', '8a79ae8c062722dcb973068e7bdaf63a', '2023-12-25 08:29:31', 0, 3, 18),
(20, 'Tijana', 'Lazarevic', 'tina@gmail.com', '69cac4ee00a89948d8b9aa651dd5f752', '2023-12-25 08:31:45', 0, 3, 19),
(21, 'Lazar', 'Lazarevic', 'laza@gmail.com', 'f764c1ec9817c54b2d023607af46dbd1', '2023-12-25 08:33:53', 0, 3, 17),
(22, 'Lazar', 'Lazarevic', 'laza1@gmail.com', 'f764c1ec9817c54b2d023607af46dbd1', '2024-02-20 11:32:55', 0, 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `category_users`
--
ALTER TABLE `category_users`
  ADD PRIMARY KEY (`user_id`,`category_id`),
  ADD KEY `category_users_ibfk_2` (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comm_id`),
  ADD KEY `news_id` (`news_id`);

--
-- Indexes for table `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `nav`
--
ALTER TABLE `nav`
  ADD PRIMARY KEY (`nav_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `news_img` (`img_id`),
  ADD KEY `news_category` (`category_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `profile_img`
--
ALTER TABLE `profile_img`
  ADD PRIMARY KEY (`profile_img_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `profile_img_id` (`profile_img_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `img`
--
ALTER TABLE `img`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `nav`
--
ALTER TABLE `nav`
  MODIFY `nav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `profile_img`
--
ALTER TABLE `profile_img`
  MODIFY `profile_img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_users`
--
ALTER TABLE `category_users`
  ADD CONSTRAINT `category_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_users_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `news_img` FOREIGN KEY (`img_id`) REFERENCES `img` (`img_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`profile_img_id`) REFERENCES `profile_img` (`profile_img_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
