-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2018 at 01:19 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `mid` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `rdate` varchar(5) NOT NULL,
  `runtime` varchar(4) NOT NULL,
  `decription` varchar(100) NOT NULL,
  `viewers` int(10) DEFAULT '1',
  `imgpath` varchar(50) NOT NULL,
  `videopath` varchar(50) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`mid`, `name`, `genre`, `rdate`, `runtime`, `decription`, `viewers`, `imgpath`, `videopath`) VALUES
(1, 'rampage', 'fiction', '2017', '120', 'animals', 8, 'rampage.png', 'rampagetrailer.mp4'),
(2, 'black panther', 'fiction', '2017', '140', 'super hero movie', 13, 'blackpanther.png', 'blackpanthertrailer.mp4'),
(3, 'spiderman homecoming', 'fiction', '2018', '110', 'super hero movie', 5, 'spiderman.png', 'spidermantrailer.mp4'),
(4, 'jumanji', 'adventure', '2017', '130', '4 kids stuck in video game', 11, 'jumanji.png', 'jumanjitrailer.mp4'),
(5, 'the conjuring', 'horror', '2013', '120', 'ghost house', 1, 'conjuring.png', 'conjuringtrailer.mp4'),
(6, 'the conjuring 2', 'horror', '2015', '115', 'cursed family', 1, 'conjuring2.png', 'conjuring2trailer.mp4'),
(7, 'infinity wars ', 'fiction', '2018', '123', 'collaboration of all marvel characters', 3, 'infinitywars.png', 'infinitywarstrailer.mp4'),
(8,  'Dhoom','action','2004','169','Gang of bikers on robbing spree',0,'dhoom.png','dhoomtrailer.png');
update movies set videopath='dhoomtrailer.mp4' where mid=8;

alter table movies add lang varchar(20);
update movies set lang='english' where mid>0 and mid<8;
update movies set lang='hindi' where mid=8;
insert into movies values(9,  'Die Hard','action','1988','131','Hostage situation in office building',5,'diehard.png','diehardtrailer.mp4','english'),
(10,  'Mankatha','action','2011','149','Suspended inspector promises to help looters for a share in the loot',7,'mankatha.png','mankathatrailer.mp4','tamil'),
(11,  'Baahubali: The Beginning','action','2015','158','In the kingdom of Mahishmati, Shivudu falls in love with a young warrior woman.',5,'baahubali.png','baahubalitrailer.mp4','telugu'),
(12,  'Pulimurugan','action','2016','158','Murugan protects the villagers from deadly tiger attacks',5,'pulimurigan.png','pulimurugantrailer.mp4','malayalam'),
(13,  'Hera Pheri','comedy','2000','156','Three unemployed men look for answers to all their money problems',3,'herapheri.png','herapheritrailer.mp4','hindi'),
(14,  'Superbad','comedy','2007','113','Two high school best friends decide to have a memorable party before bidding farewell',1,'superbad.png','superbadtrailer.mp4','english'),
(15,  'Mundasupatti','comedy','2014','148',' in a remote village and the villagers thought of taking a photograph will lead to eventual death and a bad omen.',7,'mundasupatti.png','mundasupattitrailer.mp4','tamil'),
(16,  'F2: Fun and Frustration','comedy','2019','148','After Venky, Varun also gets married thinking he can keep the wife in control but both of them get frustrated with marital life',1,'f2.png','f2trailer.mp4','telugu'),
(17,  'Punyalan Private Limited','comedy','2017','129','After a failed business, Joy, discovers a brilliant idea which involves the use of elephant urine.',0,'punyalan.png','punyalantrailer.mp4','malayalam');

insert into movies values(18,  'Raaz','horror','2002','152','Sanjana is haunted by a spirit who reveals some dark secrets about her husband','0','raaz.png','raaztrailer.mp4','hindi'),
(19, 'Pizza','horror','2012','120','Pizza delivery boy, when delivering food,goes to a bungalow where mysterious events begin to take place.' ,'0','pizza.png','pizzatrailer.mp4','tamil'),
(20,  'Arundhati','horror','2009','132','Arundhati fights a black magician who wants to kill her.','0','arundhati.png','arundhati.mp4','telugu'),
(21,  'Ezra','horror','2017','150','Priya and Ranjan have paranormal experiences after she buys an antique box from a dealer','0','ezra.png','ezra.mp4','malayalam'),
(22,  'Kahaani','thriller','2012','122','Vidya Bagchi, a pregnant woman, travels to Kolkata from London to search for her missing husband','0','kahaani.png','kahaani.mp4','hindi'),
(23,  'Gone girl','thriller','2014','150','His marriage crumbling, Nick comes home one day to find his wife has vanished','0','gonegirl.png','gonegirl.mp4','english'),
(24,  'Vishwaroopam','thriller','2013','148','A nuclear oncologist hires a detective to keep watch on her husband, who is revealed to be working to prevent a terror attack','0','vishwaroopam.png','vishwaroopam.mp4','tamil'),
(25,  'Drishyam','thriller','2014','150','A gripping tale of an investigation and a family which is threatened by it','0','drishyam.png','drishyam.mp4','telugu'),
(26,  'Lucifer','thriller','2019','174','A major power struggle occurs when the leader of a political party passes away.','0','lucifer.png','lucifer.mp4','malayalam'),
(27,  'Dilwale Dulhania Le Jayenge','romance','1995','189','Raj and Simran meet during a trip across Europe and the two fall in love.','0','ddlj.png','ddlj.mp4','hindi'),
(28,  'Notebook','romance', '2004','123','Noah, a poor man, falls in love with Allie who comes from wealth.','0','notebook.png','notebook.mp4','english'),
(29,  'Minnale','romance','2001','150','A man falls in love with a woman and cons his way into her heart through lies','0','minnale.png','minnale.mp4','tamil'),
(30,  'Bommarillu','romance','2006','168','Siddhu has an overprotective father who decides to get him married to a rich girl','0','bommarillu.png','bommarillu.mp4','telugu'),
(31,  'Premam','romance','2015','156','While Georges first love turns out to be a disappointment, Malar, a college lecturer, rekindles his love interest.','0','premam.png','premam.mp4','malayalam'),
(32,  'Hanuman','animated','2005','150','Lord Hanuman is born to an apsara, Anjani, and leads a beautiful childhood that helps him become a mighty individual.','0','hanuman.png','hanuman.mp4','hindi'),
(33,  'Toy story','animated','1995','82','Andys favorite toy, Woody, worries that after Andy receives his birthday gift, a new toy named Buzz Lightyear, his importance may diminish','0','toystory.png','toystory.mp4','english'),
(34,  'Dhira','animated','2020','120','Determined to safeguard the royal treasures from foreign invaders, a saint seeks help from his disciples to conceal the wealth and establish a sovereign kingdom.','0','dhira.png','dhira.mp4','tamil'),
(35, 'Ghatothkach','animated','2008','90','Ghatothkach, the charming son of Bhima and Hidimba, is blessed with extraordinary powers.','0','ghatothkach.png','ghatothkach.mp4','telugu'),
(36,  'Swami Ayyappan','animated','2012','91','Manikandan, who is the son of Lord Shiva and Goddess Mohini, performs various miracles during his childhood','0','ayyapan.png','ayyapan.mp4','malayalam'),
(37, 'KGF: Chapter 1','action','2018','155','Rocky, a young man, seeks power and wealth in order to fulfil a promise to his dying mother','0','kgf.png','kgf.mp4','kannada'),
(38,  'Karvva','horror','2016','110','An NRI seeks the help of a television crew to sell his haunted ancestral property.','0','karvva.png','karvva.mp4','kannada'),
(39, 'Mungaru Male','romance','2006','143','Preetham loves Nandhini but gets heartbroken when he comes to know that her marriage is already fixed','0','mm.png','mm.mp4','kannada'),
(40, 'Kirik Party','comedy','2016','160','Karna, a first-year engineering student, falls in love with Saanvi, a final-year pupil from his college','0','kirikparty.png','kirikparty.mp4','kannada'),
(41, 'Alibaba','animated','2006','62','Alibaba and his brother Rakim are very different. While the former is a poor simpleton, the latter is a rich, mean person.','0','alibaba.png','alibaba.mp4','kannada'),
(42, 'U Turn','thriller','2023','60','Motorists who take an illegal U-turn on a flyover die mysteriously.','0','uturn.png','uturn.mp4','kannada');





--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`mid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `mid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
