-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2024 at 11:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `messagein`
--

CREATE TABLE `messagein` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `SMSC` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messagein`
--

INSERT INTO `messagein` (`Id`, `SendTime`, `ReceiveTime`, `MessageFrom`, `MessageTo`, `SMSC`, `MessageText`, `MessageType`, `MessageParts`, `MessagePDU`, `Gateway`, `UserId`) VALUES
(1, '2017-11-02 05:19:29', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0302,870906890101C651018715060350524F585932000187070603534D415254204D4D530001C65201872F060350524F5859325F3100018720060331302E3130322E36312E343600018721068501872206034E4150475052535F320001C6530187230603383038300001010101C600015501873606037734000187070603534D4152', NULL, NULL, NULL, NULL, NULL),
(2, '2017-11-02 05:19:34', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0303,54204D4D5300018739060350524F585932000187340603687474703A2F2F31302E3130322E36312E3233383A383030322F00010101', NULL, NULL, NULL, NULL, NULL),
(3, '2017-11-02 05:19:14', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FA0201,6C062F1F2DB69180923646443032463643313042394231363544354242413143304143413232424334343239453236423600030B6A00C54503312E310001C6560187070603534D41525420494E5445524E4554000101C65501871106034E4150475052535F330001871006AB0187070603534D41525420494E5445524E455400', NULL, NULL, NULL, NULL, NULL),
(4, '2017-11-02 05:19:19', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FA0202,0187140187080603696E7465726E65740001870906890101C600015501873606037732000187070603534D41525420494E5445524E45540001872206034E4150475052535F330001C65901873A0603687474703A2F2F6D2E736D6172742E636F6D2E7068000187070603484F4D450001871C01010101', NULL, NULL, NULL, NULL, NULL),
(5, '2017-11-02 05:19:24', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0301,6D062F1F2DB69180923432373832413042464145313131463335303137323744303141433530304134373930423843334500030B6A00C54503312E310001C6560187070603534D415254204D4D53000101C65501871106034E4150475052535F320001871006AB0187070603534D415254204D4D530001870806036D6D730001', NULL, NULL, NULL, NULL, NULL),
(6, '2017-11-02 05:19:29', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0302,870906890101C651018715060350524F585932000187070603534D415254204D4D530001C65201872F060350524F5859325F3100018720060331302E3130322E36312E343600018721068501872206034E4150475052535F320001C6530187230603383038300001010101C600015501873606037734000187070603534D4152', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messagelog`
--

CREATE TABLE `messagelog` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `StatusCode` int(11) DEFAULT NULL,
  `StatusText` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageId` varchar(80) DEFAULT NULL,
  `ErrorCode` varchar(80) DEFAULT NULL,
  `ErrorText` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text DEFAULT NULL,
  `Connector` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messagelog`
--

INSERT INTO `messagelog` (`Id`, `SendTime`, `ReceiveTime`, `StatusCode`, `StatusText`, `MessageTo`, `MessageFrom`, `MessageText`, `MessageType`, `MessageId`, `ErrorCode`, `ErrorText`, `Gateway`, `MessageParts`, `MessagePDU`, `Connector`, `UserId`, `UserInfo`) VALUES
(1, '2018-01-27 20:38:08', NULL, 300, NULL, '09305235027', 'Hello Poh', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2018-01-27 20:39:06', NULL, 300, NULL, '09305235027', 'Hello Poh', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2018-01-27 20:49:14', NULL, 300, NULL, '09305235027', 'hi poh', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2018-01-27 20:50:56', NULL, 300, NULL, '09508767867', 'hi poh', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2018-02-09 17:52:26', NULL, 300, NULL, '09486457414', 'Test to send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2018-02-09 17:54:27', NULL, 300, NULL, '09486457414', 'Test to send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2018-02-09 17:55:11', NULL, 300, NULL, '09486457414', 'Test to send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2018-02-09 17:59:11', NULL, 300, NULL, '09486457414', 'Test to send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2018-02-09 18:00:12', NULL, 200, NULL, '+639486457414', 'yes', NULL, NULL, '1:+639486457414:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2018-02-09 18:01:12', NULL, 200, NULL, '+639486457414', 'Test to send', NULL, NULL, '1:+639486457414:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2018-02-09 18:02:58', NULL, 200, NULL, '+639486457414', 'FROM JANNO : Confirmed', NULL, NULL, '1:+639486457414:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2018-02-09 18:05:22', NULL, 200, NULL, '+639486457414', 'FROM Bachelor of Science and Entrepreneurs : Your order has been .Confirmed', NULL, NULL, '1:+639486457414:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2018-02-09 18:08:14', NULL, 200, NULL, '+639486457414', 'FROM Bachelor of Science and Entrepreneurs : Your order has been .Confirmed', NULL, NULL, '1:+639486457414:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2018-02-09 18:21:41', NULL, 200, NULL, '+639486457414', 'FROM Bachelor of Science and Entrepreneurs : Your order has been .Confirmed', NULL, NULL, '1:+639486457414:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2018-04-01 22:17:34', NULL, 300, NULL, '09123586545', 'Your code is .6048', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2018-04-01 22:18:20', NULL, 300, NULL, '09123586545', 'Your code is .9305', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2018-04-01 22:20:15', NULL, 300, NULL, '09123586545', 'Your code is .2924', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2018-04-01 22:42:36', NULL, 300, NULL, '09123586545', 'Your code is .6938', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2018-04-02 00:40:53', NULL, 300, NULL, '9956112920', 'Your code is .7290', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2018-04-02 00:42:14', NULL, 300, NULL, '9956112920', 'Your code is .4506', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2018-04-02 00:43:46', NULL, 300, NULL, '9956112920', 'Your code is .4506', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2018-04-02 00:45:56', NULL, 300, NULL, '09956112920', 'Your code is .6988', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2018-04-02 00:47:17', NULL, 300, NULL, '09956112920', 'Your code is .4380', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '2018-04-02 00:48:53', NULL, 200, NULL, '639956112920', 'Your code is .5936', NULL, NULL, '1:639956112920:129', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '2018-04-02 00:50:29', NULL, 200, NULL, '639956112920', 'Your code is .5349', NULL, NULL, '1:639956112920:130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2018-04-02 00:53:32', NULL, 200, NULL, '639956112920', 'Your code is', NULL, NULL, '1:639956112920:131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2018-04-02 00:54:43', NULL, 200, NULL, '639956112920', 'Your code is 3407', NULL, NULL, '1:639956112920:132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messageout`
--

CREATE TABLE `messageout` (
  `Id` int(11) NOT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `Scheduled` datetime DEFAULT NULL,
  `ValidityPeriod` int(11) DEFAULT NULL,
  `IsSent` tinyint(1) NOT NULL DEFAULT 0,
  `IsRead` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `ID` int(11) NOT NULL,
  `AUTOSTART` varchar(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOKEY` varchar(12) NOT NULL,
  `AUTONUM` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblautonumber`
--

INSERT INTO `tblautonumber` (`ID`, `AUTOSTART`, `AUTOINC`, `AUTOEND`, `AUTOKEY`, `AUTONUM`) VALUES
(1, '2017', 1, 43, 'PROID', 10),
(2, '0', 1, 96, 'ordernumber', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CATEGID` int(11) NOT NULL,
  `CATEGORIES` varchar(255) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`CATEGID`, `CATEGORIES`, `USERID`) VALUES
(1, 'DOGS', 0),
(2, 'CATS', 0),
(3, 'RABBITS', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `CUSTOMERID` int(11) NOT NULL,
  `FNAME` varchar(30) NOT NULL,
  `LNAME` varchar(30) NOT NULL,
  `MNAME` varchar(30) NOT NULL,
  `STREETADD` text NOT NULL,
  `CITYADD` text NOT NULL,
  `PROVINCE` varchar(80) NOT NULL,
  `COUNTRY` varchar(30) NOT NULL,
  `DBIRTH` date NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `PHONE` varchar(20) NOT NULL,
  `EMAILADD` varchar(40) NOT NULL,
  `CUSUNAME` varchar(20) NOT NULL,
  `CUSPASS` varchar(90) NOT NULL,
  `CUSPHOTO` varchar(255) NOT NULL,
  `DATEJOIN` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`CUSTOMERID`, `FNAME`, `LNAME`, `MNAME`,`STREETADD`, `CITYADD`,`PROVINCE`, `COUNTRY`, `DBIRTH`, `GENDER`, `PHONE`, `EMAILADD`, `CUSUNAME`, `CUSPASS`, `CUSPHOTO`, `DATEJOIN`) VALUES
(1, 'james', 'baskota', '', 'Thapathali Street',  'Kathmandu City', 'Bagmati', 'Nepal', '0000-00-00', 'Female', '+9779845454545', '','ariyona', '1dd4efc811372cd1efe855981a8863d10ddde1ca', 'customer_image/a1157016c5d8272126380b27a59e2e7e.jpg', '2015-11-26'),
(2, 'Mahesh', 'Pradhan', '', 'Tinkune Street', 'ilog', 'Koshi', 'Nepal', '0000-00-00', 'Male', '091023333234', '', 'bboy', '0377588176145a8f0d837ff6e9bf0c1616268387', 'customer_image/10801930_959054964122877_391305007291646162_n.jpg','2015-11-26'),
(3, 'James', 'Sharma', '', 'Baneshwor',  'Kathmandu City', 'Koshi', 'Nepal', '0000-00-00', 'Male', '21312312312', '', 'jamess', '53199fa57fdf5676d03d89fbdd26e69a927766fc', 'customer_image/Tropical-Beach-Wallpaper.jpg', '2017-12-08'),
(4, 'Siera', 'Laveste', '', '', 'Kathmandu City', 'Bagmati', 'Nepal', '0000-00-00', 'Female', '362656556', '', 'siera', 'f144dcce05af4d40fa0aeba34b05f4472472a4de', 'customer_image/1351064148bpguarhW.jpg','2018-01-23'),
(5, 'Jerry', 'Palacios', '',  '',  'Pokhara City', 'Gandaki', 'Nepal', '0000-00-00', 'Male', '+639486457414', '', 'jerry', 'd079a1c06803587ea09bff3f44a567e19169e7b5', '', '2018-02-09'),
(6, 'Janry', 'Tan', '', '', 'Butwal City', 'Lumbini', 'Nepal', '0000-00-00', 'Male', '0234234', '', 'jan', '0271c5467994a9e88e01be5b7e1f5f43d0ab93d2', '', '2018-04-01'),
(7, 'Anushka', 'Basnet', '', 'School Road',  'Hetauda', 'Bagmati', 'Nepal', '0000-00-00', 'Female', '639305235027', '', 'anushkab', '403ba16f713c8371eef121530a922824be29b68a', '','2018-04-16'),
(8, 'Jake', 'Paul', '', '', 'Nepalgunj City', 'Lumbini', 'Nepal', '0000-00-00', 'Male', '021312312', '', 'j', '30e1fe53111f7e583c382596a32885fd27283970', '',  '2018-09-23'),
(9, 'Ariyona', 'Baskota', '', 'HID',  'Hetauda', 'Bagmati', 'Nepal', '0000-00-00', 'Female', '9806', '', 'arii', '21d6d16c3f75845c909e95f6cadd5d93109d1ec3', '', '2024-03-08'),
(10, 'Ariyona', 'Baskota', '', '','Kathmandu', 'Bagmati', 'Nepal', '0000-00-00', 'Female', '980685', '', 'aribaskota', '62c8678aedab9af6b9729e1a9f0b08e7bfa68ccc', '','2024-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `ORDERID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `ORDEREDQTY` int(11) NOT NULL,
  `ORDEREDPRICE` double NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`ORDERID`, `PROID`, `ORDEREDQTY`, `ORDEREDPRICE`, `ORDEREDNUM`, `USERID`) VALUES
(1, 201737, 4, 476, 93, 0),
(2, 201740, 3, 447, 93, 0),
(3, 201738, 1, 199, 94, 0),
(4, 201737, 1, 119, 95, 0),
(5, 201737, 1, 119, 96, 0),
(6, 201737, 1, 7000, 96, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `PROID` int(11) NOT NULL,
  `PRODESC` varchar(255) DEFAULT NULL,
  `PROQTY` int(11) DEFAULT NULL,
  `ORIGINALPRICE` double NOT NULL,
  `PROPRICE` double DEFAULT NULL,
  `CATEGID` int(11) DEFAULT NULL,
  `IMAGES` varchar(255) DEFAULT NULL,
  `PROSTATS` varchar(30) DEFAULT NULL,
  `OWNERNAME` varchar(90) NOT NULL,
  `OWNERPHONE` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`PROID`, `PRODESC`, `PROQTY`, `ORIGINALPRICE`, `PROPRICE`, `CATEGID`, `IMAGES`, `PROSTATS`, `OWNERNAME`, `OWNERPHONE`) VALUES
(201737, 'Breed: Pure husky. \r\nAge: 2 months', 4, 7000, 7000, 1, 'uploaded_photos/dog1husky.jpg', 'Available', 'ariyona', '980685'),
(201738, 'Breed: German Shepherd \r\nAge: 2.5 years old.\r\n', 3, 150, 6000, 1, 'uploaded_photos/dog2german.jpg', 'Available', 'ariyona', ''),
(201739, 'Breed: Bombay Cat\r\nAge: 1 year old',  5, 250, 289, 2, 'uploaded_photos/cat1bombay.jpg', 'Available', 'ariyona', ''),
(201740, 'Breed: Golden Retriever\r\nAge: 2 years old', 1, 100, 149, 1, 'uploaded_photos/golden.jpg', 'Available', 'ariyona', ''),
(201741, 'Breed: Netherland Dwarf Rabbit\r\nAge: 3 years old',  4, 50, 89, 3, 'uploaded_photos/rabbitgray.jpg', 'Available', 'ariyona', ''),
(201742, 'Breed: Welsh Corgi Dog\r\nAge: 1.5 years old.', 4, 250, 5000, 1, 'uploaded_photos/corgi.jpg', 'Available', 'ariyona', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblpromopro`
--

CREATE TABLE `tblpromopro` (
  `PROMOID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `PRODISCOUNT` double NOT NULL,
  `PRODISPRICE` double NOT NULL,
  `PROBANNER` tinyint(4) NOT NULL,
  `PRONEW` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpromopro`
--

INSERT INTO `tblpromopro` (`PROMOID`, `PROID`, `PRODISCOUNT`, `PRODISPRICE`, `PROBANNER`, `PRONEW`) VALUES
(1, 201737, 0, 119, 0, 0),
(2, 201738, 0, 199, 0, 0),
(3, 201739, 0, 289, 0, 0),
(4, 201740, 0, 149, 0, 0),
(5, 201741, 0, 89, 0, 0),
(6, 201742, 0, 287, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblsetting`
--

CREATE TABLE `tblsetting` (
  `SETTINGID` int(11) NOT NULL,
  `PLACE` text NOT NULL,
  `WARD` varchar(90) NOT NULL,
  `DELPRICE` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsetting`
--

INSERT INTO `tblsetting` (`SETTINGID`, `PLACE`, `WARD`, `DELPRICE`) VALUES
(1, 'Kathmandu City', 'Ward. 04', 50),
(2, 'Lalitpur City', 'Ward. 05', 70);

-- --------------------------------------------------------

--
-- Table structure for table `tblstockin`
--

CREATE TABLE `tblstockin` (
  `STOCKINID` int(11) NOT NULL,
  `STOCKDATE` datetime DEFAULT NULL,
  `PROID` int(11) DEFAULT NULL,
  `STOCKQTY` int(11) DEFAULT NULL,
  `STOCKPRICE` double DEFAULT NULL,
  `USERID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblsummary`
--

CREATE TABLE `tblsummary` (
  `SUMMARYID` int(11) NOT NULL,
  `ORDEREDDATE` datetime NOT NULL,
  `CUSTOMERID` int(11) NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `DELFEE` double NOT NULL,
  `PAYMENT` double NOT NULL,
  `PAYMENTMETHOD` varchar(30) NOT NULL,
  `ORDEREDSTATS` varchar(30) NOT NULL,
  `ORDEREDREMARKS` varchar(125) NOT NULL,
  `CLAIMEDADTE` datetime NOT NULL,
  `HVIEW` tinyint(4) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsummary`
--

INSERT INTO `tblsummary` (`SUMMARYID`, `ORDEREDDATE`, `CUSTOMERID`, `ORDEREDNUM`, `DELFEE`, `PAYMENT`, `PAYMENTMETHOD`, `ORDEREDSTATS`, `ORDEREDREMARKS`, `CLAIMEDADTE`, `HVIEW`, `USERID`) VALUES
(1, '2021-08-21 06:24:24', 9, 93, 0, 0, 'Cash on Delivery', 'Pending', 'Your order is on process.', '0000-00-00 00:00:00', 1, 0),
(3, '2021-08-21 06:27:09', 9, 94, 70, 269, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2021-08-21 00:00:00', 1, 0),
(4, '2024-03-08 01:23:54', 10, 95, 50, 119, 'Cash on Delivery', 'Pending', 'Your order is on process.', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `USERID` int(11) NOT NULL,
  `U_NAME` varchar(122) NOT NULL,
  `U_USERNAME` varchar(122) NOT NULL,
  `U_PASS` varchar(122) NOT NULL,
  `U_ROLE` varchar(30) NOT NULL,
  `USERIMAGE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`USERID`, `U_NAME`, `U_USERNAME`, `U_PASS`, `U_ROLE`, `USERIMAGE`) VALUES
(124, 'Anushka Sharma', 'anushka', '4752fe635442d048e8e8d2d1d845e6a578f30470', 'Administrator', 'photos/anushka.jpg'),
(126, 'Ariyona Baskota', 'ariyona', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 'photos/adminn.png'),
(127, 'R', 'craig', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblwishlist`
--

CREATE TABLE `tblwishlist` (
  `id` int(11) NOT NULL,
  `CUSID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `WISHDATE` date NOT NULL,
  `WISHSTATS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblwishlist`
--

INSERT INTO `tblwishlist` (`id`, `CUSID`, `PROID`, `WISHDATE`, `WISHSTATS`) VALUES
(2, 9, 201742, '2021-08-21', '0'),
(3, 11, 201742, '2024-05-03', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messagein`
--
ALTER TABLE `messagein`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `messagelog`
--
ALTER TABLE `messagelog`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_MessageId` (`MessageId`,`SendTime`);

--
-- Indexes for table `messageout`
--
ALTER TABLE `messageout`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_IsRead` (`IsRead`);

--
-- Indexes for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CATEGID`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`CUSTOMERID`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`ORDERID`),
  ADD KEY `USERID` (`USERID`),
  ADD KEY `PROID` (`PROID`),
  ADD KEY `ORDEREDNUM` (`ORDEREDNUM`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`PROID`),
  ADD KEY `CATEGID` (`CATEGID`);

--
-- Indexes for table `tblpromopro`
--
ALTER TABLE `tblpromopro`
  ADD PRIMARY KEY (`PROMOID`),
  ADD UNIQUE KEY `PROID` (`PROID`);

--
-- Indexes for table `tblsetting`
--
ALTER TABLE `tblsetting`
  ADD PRIMARY KEY (`SETTINGID`);

--
-- Indexes for table `tblstockin`
--
ALTER TABLE `tblstockin`
  ADD PRIMARY KEY (`STOCKINID`),
  ADD KEY `PROID` (`PROID`,`USERID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `tblsummary`
--
ALTER TABLE `tblsummary`
  ADD PRIMARY KEY (`SUMMARYID`),
  ADD UNIQUE KEY `ORDEREDNUM` (`ORDEREDNUM`),
  ADD KEY `CUSTOMERID` (`CUSTOMERID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`USERID`);

--
-- Indexes for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messagein`
--
ALTER TABLE `messagein`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messagelog`
--
ALTER TABLE `messagelog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `messageout`
--
ALTER TABLE `messageout`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CATEGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `CUSTOMERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `ORDERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblpromopro`
--
ALTER TABLE `tblpromopro`
  MODIFY `PROMOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblsetting`
--
ALTER TABLE `tblsetting`
  MODIFY `SETTINGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblstockin`
--
ALTER TABLE `tblstockin`
  MODIFY `STOCKINID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblsummary`
--
ALTER TABLE `tblsummary`
  MODIFY `SUMMARYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE TABLE missing_or_found (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pet_type VARCHAR(255),
    
    contact_name VARCHAR(255),
    contact_email VARCHAR(255),
    contact_phone VARCHAR(20),
    description TEXT
);
