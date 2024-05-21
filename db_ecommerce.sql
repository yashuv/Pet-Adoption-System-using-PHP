-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2024 at 08:02 PM
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
-- Table structure for table `missing_or_found`
--

CREATE TABLE `missing_or_found` (
  `id` int(11) NOT NULL,
  `pet_type` varchar(255) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(20) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `customer_id` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pet_type` varchar(50) NOT NULL,
  `pet_description` text NOT NULL,
  `pet_image` varchar(255) NOT NULL,
  `service_date` date DEFAULT NULL,
  `service_duration` varchar(50) DEFAULT NULL,
  `additional_info` text DEFAULT NULL
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
(1, '2017', 1, 53, 'PROID', 10),
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

INSERT INTO `tblcustomer` (`CUSTOMERID`, `FNAME`, `LNAME`, `MNAME`, `STREETADD`, `CITYADD`, `PROVINCE`, `COUNTRY`, `DBIRTH`, `GENDER`, `PHONE`, `EMAILADD`, `CUSUNAME`, `CUSPASS`, `CUSPHOTO`, `DATEJOIN`) VALUES
(1, 'james', 'hugh', '', 'Thapathali Street', 'Kathmandu City', 'Bagmati', 'Nepal', '0000-00-00', 'Female', '+9779845454545', '', 'ariyona', '1dd4efc811372cd1efe855981a8863d10ddde1ca', 'customer_image/a1157016c5d8272126380b27a59e2e7e.jpg', '2015-11-26');

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
(4, 201737, 1, 119, 95, 0);

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
(201737, 'Breed: Pure husky. \r\nAge: 2 months\r\nGender: Male', 1, 7000, 7000, 1, 'uploaded_photos/dog1husky.jpg', 'Available', 'Ariyona', '+9779806850000'),
(201738, 'Breed: German Shepherd \r\nAge: 2.5 years old.\r\nGender: Female\r\n                      ', 1, 5500, 5500, 1, 'uploaded_photos/dog2german.jpg', 'Available', 'ariyona', '977987444200'),
(201739, 'Breed: Bombay Cat\r\nAge: 1 year old   \r\nGender: Male                   ', 1, 3000, 3000, 2, 'uploaded_photos/cat1bombay.jpg', 'Available', 'ariyona', '97798451515844'),
(201740, 'Breed: Golden Retriever\r\nAge: 2 years old       \r\nGender: Female               ', 1, 5800, 5800, 1, 'uploaded_photos/golden.jpg', 'Available', 'ariyona', ''),
(201742, 'Breed: Welsh Corgi Dog\r\nAge: 1.5 years old.\r\nGender: Male                      ', 1, 5000, 5000, 1, 'uploaded_photos/corgi.jpg', 'Available', 'ariyona', '977984512220'),
(201743, 'Breed: Mix Breed - Bernedoodle\r\nAge: 3 months.\r\nGender: Male', 1, 6200, 6200, 1, 'uploaded_photos/bernedoodle.jpg', 'Available', 'Gita', '97798754511525'),
(201744, 'Breed: Netherland Dwarf Rabbit\r\nAge: 1 year old.\r\nGender: Female\r\n', 1, 4500, 4500, 3, 'uploaded_photos/nrabbit.jpg', 'Available', 'Gita', '97798451201'),
(201745, 'Breed: Siberian Cat\r\nAge: 3 years old\r\nBreed: Male', 1, 5800, 5800, 2, 'uploaded_photos/pexels-deklansor-432236846-15257069.jpg', 'Available', 'Yashuv', '9779845200000'),
(201746, 'Breed: Birman Cat.\r\nAge: 1.5 years old.\r\nGender: Female', 1, 6000, 6000, 2, 'uploaded_photos/Birman.jpg', 'Available', 'Ari', '977984511100'),
(201747, 'Breed: Mix Rex Rabbit\r\nAge: 3 years old', 1, 3500, 3500, 3, 'uploaded_photos/rabbit2.jpg', 'Available', 'Ari', '977987441000'),
(201748, 'Breed: Labrador Retriever Pup\r\nAge: 4 months\r\nGender: Male\r\n', 1, 5000, 5000, 1, 'uploaded_photos/labrador.jpg', 'Available', 'Ari', '977984501110'),
(201749, 'Breed: Shorthair British Orange Cat\r\nAge: 3 months\r\nGender: Male', 1, 4500, 4500, 2, 'uploaded_photos/orangecat.jpg', 'Available', 'Ari', '977984511000'),
(201750, 'Breed: Cocker Spaniel\r\nAge: 2.5 years old\r\nGender: Female', 1, 5000, 5000, 1, 'uploaded_photos/cocker.jpg', 'Available', 'Gita', '9779845028400'),
(201751, 'Breed: White Polish Rabbit\r\nAge: 8 months\r\nGender: Male', 1, 3000, 3000, 3, 'uploaded_photos/polish.jpg', 'Available', 'Yashuv', '977984511100'),
(201752, 'Breed: Poodle Dog\r\nAge: 7 months\r\nGender: Female', 1, 5500, 5500, 1, 'uploaded_photos/poodle.jpg', 'Available', 'Ari', '977980654111');

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
(6, 201742, 0, 287, 0, 0),
(7, 201743, 0, 0, 0, 0),
(8, 201744, 0, 0, 0, 0),
(9, 201745, 0, 0, 0, 0),
(10, 201746, 0, 0, 0, 0),
(11, 201747, 0, 0, 0, 0),
(12, 201748, 0, 0, 0, 0),
(13, 201749, 0, 0, 0, 0),
(14, 201750, 0, 0, 0, 0),
(15, 201751, 0, 0, 0, 0),
(16, 201752, 0, 0, 0, 0);

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
(126, 'Ariyona Baskota', 'ariyona', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 'photos/ariyona.jpg');

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
-- Indexes for table `missing_or_found`
--
ALTER TABLE `missing_or_found`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD KEY `customer_id` (`customer_id`);

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
-- AUTO_INCREMENT for table `missing_or_found`
--
ALTER TABLE `missing_or_found`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `CUSTOMERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `ORDERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblpromopro`
--
ALTER TABLE `tblpromopro`
  MODIFY `PROMOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tblcustomer` (`CUSTOMERID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;