-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2018 at 07:48 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism`
--
CREATE DATABASE IF NOT EXISTS `tourism` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tourism`;

DELIMITER $$
--
-- Procedures
--
DROP PROCEDURE IF EXISTS `getdata`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getdata` ()  NO SQL
SELECT * FROM events$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `accomodation`
--
-- Creation: Nov 30, 2018 at 05:34 AM
--

DROP TABLE IF EXISTS `accomodation`;
CREATE TABLE IF NOT EXISTS `accomodation` (
  `AccID` int(10) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `Status` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `MinCost` int(11) NOT NULL,
  `MaxCost` int(10) NOT NULL,
  `Offer` varchar(20) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `UserID` varchar(10) NOT NULL,
  PRIMARY KEY (`AccID`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `accomodation`:
--   `UserID`
--       `touruser` -> `Userid`
--

--
-- Dumping data for table `accomodation`
--

INSERT DELAYED IGNORE INTO `accomodation` (`AccID`, `StartDate`, `EndDate`, `Status`, `location`, `MinCost`, `MaxCost`, `Offer`, `Type`, `UserID`) VALUES
(103, '2018-11-07', '2018-11-09', 'Not Available', 'Mysore', 1500, 2000, '10% off', 'hill station', 'vicky1998'),
(104, '2018-11-01', '2018-11-06', 'Not confirmed', 'Manali', 9000, 15000, '25% cashback', 'hill station', 'nafis007'),
(105, '2018-11-03', '2018-11-09', 'Available for 2 peop', 'J & K', 15000, 25000, '5% cashback +10% dis', 'touristplace+ hill s', 'satyam01'),
(108, '2018-11-15', '2018-11-29', 'Not Available', 'kerela', 2500, 5000, '25% Discount', 'TouristPlace', 'vicky1998'),
(113, '2019-02-13', '2019-02-15', 'Not ready', 'Ladhak', 7000, 10000, '15% cashback', 'Desert', 'vicky1998'),
(116, '2018-12-10', '2018-12-15', 'Available', 'pondicherry', 1500, 1900, '35% coupon', 'beaches', 'vicky1998'),
(119, '2018-12-16', '2018-12-20', ' not Available', 'Indore', 1800, 3000, '50% coupon', 'techcity', 'vicky1998'),
(120, '2018-11-22', '2018-11-25', 'Available', 'Manali', 4800, 6800, '20% discount', 'touristplace+ hill s', 'nafis007');

-- --------------------------------------------------------

--
-- Table structure for table `emergency`
--
-- Creation: Nov 11, 2018 at 07:38 AM
--

DROP TABLE IF EXISTS `emergency`;
CREATE TABLE IF NOT EXISTS `emergency` (
  `EmergencyID` int(10) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Contact` int(10) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `PlaceID` int(10) NOT NULL,
  PRIMARY KEY (`EmergencyID`),
  KEY `PlaceID` (`PlaceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `emergency`:
--   `PlaceID`
--       `touristplace` -> `PlaceID`
--

--
-- Dumping data for table `emergency`
--

INSERT DELAYED IGNORE INTO `emergency` (`EmergencyID`, `Type`, `Contact`, `Address`, `PlaceID`) VALUES
(1232, 'car repair', 789456123, 'channasandra', 1004),
(1233, 'accident', 845678956, 'munnar-station', 1005),
(1234, 'Fire', 789456214, 'Chandani chawk', 1002),
(1235, 'Fire', 745856214, 'Chandani chawk', 1006),
(1239, 'Fall from hill', 789456896, 'charminar', 1010),
(1244, 'car repair', 756456214, 'A K nagar', 1008),
(1245, 'bike repair', 787856214, 'Dubai', 1021);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--
-- Creation: Nov 11, 2018 at 01:18 PM
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `EventID` int(10) NOT NULL,
  `EventType` varchar(20) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `Name` varchar(20) NOT NULL,
  `PlaceID` int(10) NOT NULL,
  PRIMARY KEY (`EventID`),
  KEY `PlaceID1` (`PlaceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `events`:
--   `PlaceID`
--       `touristplace` -> `PlaceID`
--

--
-- Dumping data for table `events`
--

INSERT DELAYED IGNORE INTO `events` (`EventID`, `EventType`, `StartDate`, `EndDate`, `Name`, `PlaceID`) VALUES
(84, 'Sky tour', '2018-12-01', '2018-12-05', 'sky diving', 1014),
(85, 'trekking', '2018-11-15', '2018-11-22', 'Mountains', 1004),
(86, 'camping', '2019-01-03', '2019-01-11', 'Forest', 1005),
(87, 'jungle tour', '2019-02-15', '2019-02-18', 'Forest', 1005),
(88, 'trekking', '2018-11-12', '2018-11-14', 'Hills', 1004),
(93, 'camping', '2019-05-18', '2019-05-19', 'camp', 1004),
(94, 'hill climbing', '2018-12-20', '2018-12-22', 'mountains', 1005),
(96, 'hill climbing', '2019-05-15', '2019-05-22', 'trekking', 1005),
(98, 'deep sea dive', '2019-08-10', '2019-08-20', 'scubadiving', 1014),
(99, 'RoadTrip', '2018-12-16', '2018-12-26', 'Trip', 1010),
(100, 'RoadTrip', '2018-11-19', '2018-11-20', 'Trip', 1008);

-- --------------------------------------------------------

--
-- Table structure for table `photoalbum`
--
-- Creation: Nov 11, 2018 at 01:19 PM
--

DROP TABLE IF EXISTS `photoalbum`;
CREATE TABLE IF NOT EXISTS `photoalbum` (
  `AlbumID` int(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `PlaceID` int(10) NOT NULL,
  PRIMARY KEY (`AlbumID`),
  KEY `PlaceID2` (`PlaceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `photoalbum`:
--   `PlaceID`
--       `touristplace` -> `PlaceID`
--

--
-- Dumping data for table `photoalbum`
--

INSERT DELAYED IGNORE INTO `photoalbum` (`AlbumID`, `Name`, `PlaceID`) VALUES
(112, 'mangaloretrip', 1022),
(113, 'mangaloretrip', 1022),
(114, 'dubaitour', 1021),
(115, 'Agratrip', 1008),
(116, 'Hyderabadtrip', 1010),
(117, 'varanasitrip', 1019),
(118, 'lakshadweeptrip', 1014),
(119, 'bhubaneshwar', 1006),
(121, 'munnar visit', 1005),
(122, 'Kodaikanal', 1004);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--
-- Creation: Nov 29, 2018 at 07:02 PM
--

DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE IF NOT EXISTS `restaurant` (
  `RestID` int(10) NOT NULL,
  `Name1` varchar(20) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `ContactInfo` varchar(30) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `PlaceID` int(10) NOT NULL,
  PRIMARY KEY (`RestID`),
  KEY `PlaceID3` (`PlaceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `restaurant`:
--   `PlaceID`
--       `touristplace` -> `PlaceID`
--

--
-- Dumping data for table `restaurant`
--

INSERT DELAYED IGNORE INTO `restaurant` (`RestID`, `Name1`, `Location`, `ContactInfo`, `Type`, `PlaceID`) VALUES
(994, 'Black pearl', 'agra', '998596458', 'Ship type', 1008),
(996, 'Rock ANd Roll', 'KOdaikanal', '974596398', 'simple', 1004),
(997, 'Barbeque', 'Mangalore', '997459698', 'Ambience', 1002),
(998, 'Barbeque', 'Hyderabad', '991546398', 'Ambience', 1010),
(1002, 'Biryani house', 'Hyderabad', '8874596987', 'Biryani', 1010),
(1003, 'Chicken specialist', 'Agra', '887459458', 'Non veg', 1008),
(1004, 'Museum', 'munnar', '985459698', 'museum ambience', 1005),
(1005, 'Ship Theme', 'kodaikanal', '758459698', 'ship ambience', 1004);

-- --------------------------------------------------------

--
-- Table structure for table `shopping`
--
-- Creation: Nov 11, 2018 at 01:21 PM
--

DROP TABLE IF EXISTS `shopping`;
CREATE TABLE IF NOT EXISTS `shopping` (
  `ShoppingID` int(10) NOT NULL,
  `Category` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `PlaceID` int(10) NOT NULL,
  PRIMARY KEY (`ShoppingID`),
  KEY `PlaceID4` (`PlaceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `shopping`:
--   `PlaceID`
--       `touristplace` -> `PlaceID`
--

--
-- Dumping data for table `shopping`
--

INSERT DELAYED IGNORE INTO `shopping` (`ShoppingID`, `Category`, `Name`, `Location`, `PlaceID`) VALUES
(441, 'makeup', 'shop', 'Near hina market', 1019),
(442, 'makeup', 'shop', 'Near hina market', 1019),
(443, 'makeup', 'shop', 's k nagar', 1005),
(444, 'sports', 'shop', 'chatauni', 1006),
(445, 'bangles', 'bangle shop', 'k r market', 1008),
(446, 'Vegetables', 'supermarket', 'jl nagar', 1008),
(447, 'vegetables', 'cart', 'uttrahalli', 1010),
(448, 'sweet', 'sweet shop', 'wakad', 1014),
(449, 'makeup', 'shop', 'dadar', 1019),
(450, 'vegetables', 'cart', 'frazer road', 1021),
(451, 'chicken', 'chicken shop', 'boaring road', 1022),
(452, 'egg', 'egg shop', 'Near khetan market', 1021),
(453, 'art gallary', 'gallary', 'market', 1019),
(454, 'grocery', 'supermarket', 'khetan market', 1019),
(455, 'makeup', 'shop', 'Near hina market', 1006),
(456, 'makeup', 'shop', 'Near hina market', 1005);

-- --------------------------------------------------------

--
-- Table structure for table `touristplace`
--
-- Creation: Nov 11, 2018 at 07:27 AM
--

DROP TABLE IF EXISTS `touristplace`;
CREATE TABLE IF NOT EXISTS `touristplace` (
  `PlaceID` int(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Description` varchar(30) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `AccID` int(10) NOT NULL,
  PRIMARY KEY (`PlaceID`),
  KEY `AccID` (`AccID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `touristplace`:
--   `AccID`
--       `accomodation` -> `AccID`
--

--
-- Dumping data for table `touristplace`
--

INSERT DELAYED IGNORE INTO `touristplace` (`PlaceID`, `Name`, `Description`, `Type`, `AccID`) VALUES
(1002, 'mangalore', 'beautiful infrastructure', 'hill station', 116),
(1004, 'Kodaikanal', 'Natural beauty', 'visit', 103),
(1005, 'Munnar', 'Natural beauty', 'Trekking', 105),
(1006, 'Bhubaneshwar', 'beautiful temples', 'temple city', 119),
(1008, 'Agra', 'Tourist place', 'Monuments', 104),
(1010, 'Hyderabad', 'Beautiful city', 'City view', 105),
(1014, 'Lakshadweep', 'beautiful Beaches', 'beaches', 113),
(1019, 'Varanasi', 'beautiful temples', 'temple city', 116),
(1021, 'Dubai', 'beautiful infrastructure', 'hill station', 116),
(1022, 'mangalore', 'beautiful infrastructure', 'hill station', 116);

-- --------------------------------------------------------

--
-- Table structure for table `touruser`
--
-- Creation: Nov 11, 2018 at 01:22 PM
--

DROP TABLE IF EXISTS `touruser`;
CREATE TABLE IF NOT EXISTS `touruser` (
  `Userid` varchar(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`Userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `touruser`:
--

--
-- Dumping data for table `touruser`
--

INSERT DELAYED IGNORE INTO `touruser` (`Userid`, `Name`, `Password`) VALUES
('', '', ''),
('nafis007', 'nafis', 'nafis123'),
('satyam01', 'satyam', 'satyam123'),
('suyagya', 'SETU', 'Setu12345'),
('vicky1998', 'vicky', 'vicky123');

--
-- Triggers `touruser`
--
DROP TRIGGER IF EXISTS `tri`;
DELIMITER $$
CREATE TRIGGER `tri` BEFORE INSERT ON `touruser` FOR EACH ROW BEGIN 
SET NEW.Name =UPPER(NEW.Name);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `transportation`
--
-- Creation: Nov 11, 2018 at 01:23 PM
--

DROP TABLE IF EXISTS `transportation`;
CREATE TABLE IF NOT EXISTS `transportation` (
  `TransID` int(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Area` varchar(20) NOT NULL,
  `ContactInfo` varchar(20) NOT NULL,
  `Category` varchar(20) NOT NULL,
  `PlaceID` int(10) NOT NULL,
  PRIMARY KEY (`TransID`),
  KEY `PlaceID5` (`PlaceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `transportation`:
--   `PlaceID`
--       `touristplace` -> `PlaceID`
--

--
-- Dumping data for table `transportation`
--

INSERT DELAYED IGNORE INTO `transportation` (`TransID`, `Name`, `Area`, `ContactInfo`, `Category`, `PlaceID`) VALUES
(1, 'mangalore', 'majestic', '879546987', 'cab', 1002),
(2, 'munnar', 'railway station', '879588987', 'train', 1005),
(3, 'Train', 'Munnar Station', '8956895236', 'Train', 1005),
(4, 'KODAIKANAL', 'bus stand', '879544567', 'bus', 1004),
(5, 'Train', 'Agra Station', '8787895236', 'Train', 1008),
(6, 'agra', 'station', '999546987', 'train', 1008),
(7, 'Train', 'Hyderabad Station', '9956895236', 'Train', 1010),
(8, 'hyderabad', 'airport', '989546987', 'flight', 1010),
(9, 'dubai', 'airport', '779546987', 'flight', 1021),
(10, 'varanasi', 'station', '789546987', 'train', 1019);

-- --------------------------------------------------------

--
-- Table structure for table `weather`
--
-- Creation: Nov 29, 2018 at 07:10 PM
--

DROP TABLE IF EXISTS `weather`;
CREATE TABLE IF NOT EXISTS `weather` (
  `WeatherID` int(10) NOT NULL,
  `MinTemp` int(5) NOT NULL,
  `MaxTemp` int(5) NOT NULL,
  `WebLink` varchar(20) NOT NULL,
  `PlaceID` int(10) NOT NULL,
  PRIMARY KEY (`WeatherID`),
  KEY `PlaceID7` (`PlaceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `weather`:
--   `PlaceID`
--       `touristplace` -> `PlaceID`
--

--
-- Dumping data for table `weather`
--

INSERT DELAYED IGNORE INTO `weather` (`WeatherID`, `MinTemp`, `MaxTemp`, `WebLink`, `PlaceID`) VALUES
(202, -4, 15, 'www.ucweather.com', 1005),
(203, 4, 15, 'www.ucweather.com', 1005),
(204, 4, 25, 'www.weather.com', 1005),
(205, 14, 35, 'www.weather.com', 1004),
(206, 19, 45, 'www.weather.com', 1008),
(210, 5, 30, 'www.ucweather.com', 1008),
(213, 22, 42, 'www.ucweather.com', 1022),
(215, 13, 30, 'www.ucweather.com', 1014),
(216, 18, 36, 'www.ucweather.com', 1010),
(217, 25, 55, 'www.ucweather.com', 1006),
(219, 12, 39, 'www.ucweather.com', 1021),
(220, 45, 60, 'www.ucweather.com', 1022);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accomodation`
--
ALTER TABLE `accomodation`
  ADD CONSTRAINT `UserID` FOREIGN KEY (`UserID`) REFERENCES `touruser` (`Userid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `emergency`
--
ALTER TABLE `emergency`
  ADD CONSTRAINT `PlaceID` FOREIGN KEY (`PlaceID`) REFERENCES `touristplace` (`PlaceID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `PlaceID1` FOREIGN KEY (`PlaceID`) REFERENCES `touristplace` (`PlaceID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `photoalbum`
--
ALTER TABLE `photoalbum`
  ADD CONSTRAINT `PlaceID2` FOREIGN KEY (`PlaceID`) REFERENCES `touristplace` (`PlaceID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD CONSTRAINT `PlaceID3` FOREIGN KEY (`PlaceID`) REFERENCES `touristplace` (`PlaceID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `shopping`
--
ALTER TABLE `shopping`
  ADD CONSTRAINT `PlaceID4` FOREIGN KEY (`PlaceID`) REFERENCES `touristplace` (`PlaceID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `touristplace`
--
ALTER TABLE `touristplace`
  ADD CONSTRAINT `AccID` FOREIGN KEY (`AccID`) REFERENCES `accomodation` (`AccID`) ON DELETE CASCADE;

--
-- Constraints for table `transportation`
--
ALTER TABLE `transportation`
  ADD CONSTRAINT `PlaceID5` FOREIGN KEY (`PlaceID`) REFERENCES `touristplace` (`PlaceID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `weather`
--
ALTER TABLE `weather`
  ADD CONSTRAINT `PlaceID7` FOREIGN KEY (`PlaceID`) REFERENCES `touristplace` (`PlaceID`) ON DELETE CASCADE ON UPDATE NO ACTION;


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for table accomodation
--
-- Error reading data for table phpmyadmin.pma__column_info: #1100 - Table 'pma__column_info' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__table_uiprefs: #1100 - Table 'pma__table_uiprefs' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__tracking: #1100 - Table 'pma__tracking' was not locked with LOCK TABLES

--
-- Metadata for table emergency
--
-- Error reading data for table phpmyadmin.pma__column_info: #1100 - Table 'pma__column_info' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__table_uiprefs: #1100 - Table 'pma__table_uiprefs' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__tracking: #1100 - Table 'pma__tracking' was not locked with LOCK TABLES

--
-- Metadata for table events
--
-- Error reading data for table phpmyadmin.pma__column_info: #1100 - Table 'pma__column_info' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__table_uiprefs: #1100 - Table 'pma__table_uiprefs' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__tracking: #1100 - Table 'pma__tracking' was not locked with LOCK TABLES

--
-- Metadata for table photoalbum
--
-- Error reading data for table phpmyadmin.pma__column_info: #1100 - Table 'pma__column_info' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__table_uiprefs: #1100 - Table 'pma__table_uiprefs' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__tracking: #1100 - Table 'pma__tracking' was not locked with LOCK TABLES

--
-- Metadata for table restaurant
--
-- Error reading data for table phpmyadmin.pma__column_info: #1100 - Table 'pma__column_info' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__table_uiprefs: #1100 - Table 'pma__table_uiprefs' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__tracking: #1100 - Table 'pma__tracking' was not locked with LOCK TABLES

--
-- Metadata for table shopping
--
-- Error reading data for table phpmyadmin.pma__column_info: #1100 - Table 'pma__column_info' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__table_uiprefs: #1100 - Table 'pma__table_uiprefs' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__tracking: #1100 - Table 'pma__tracking' was not locked with LOCK TABLES

--
-- Metadata for table touristplace
--
-- Error reading data for table phpmyadmin.pma__column_info: #1100 - Table 'pma__column_info' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__table_uiprefs: #1100 - Table 'pma__table_uiprefs' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__tracking: #1100 - Table 'pma__tracking' was not locked with LOCK TABLES

--
-- Metadata for table touruser
--
-- Error reading data for table phpmyadmin.pma__column_info: #1100 - Table 'pma__column_info' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__table_uiprefs: #1100 - Table 'pma__table_uiprefs' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__tracking: #1100 - Table 'pma__tracking' was not locked with LOCK TABLES

--
-- Metadata for table transportation
--
-- Error reading data for table phpmyadmin.pma__column_info: #1100 - Table 'pma__column_info' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__table_uiprefs: #1100 - Table 'pma__table_uiprefs' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__tracking: #1100 - Table 'pma__tracking' was not locked with LOCK TABLES

--
-- Metadata for table weather
--
-- Error reading data for table phpmyadmin.pma__column_info: #1100 - Table 'pma__column_info' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__table_uiprefs: #1100 - Table 'pma__table_uiprefs' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__tracking: #1100 - Table 'pma__tracking' was not locked with LOCK TABLES

--
-- Metadata for database tourism
--
-- Error reading data for table phpmyadmin.pma__bookmark: #1100 - Table 'pma__bookmark' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__relation: #1100 - Table 'pma__relation' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__savedsearches: #1100 - Table 'pma__savedsearches' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__central_columns: #1100 - Table 'pma__central_columns' was not locked with LOCK TABLES
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
