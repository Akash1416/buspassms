-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2024 at 10:09 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buspassdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `queries` varchar(300) NOT NULL,
  `replies` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `queries`, `replies`) VALUES
(1, 'What are the types of bus passes available?', 'We offer monthly, quarterly, and yearly bus passes.'),
(2, 'How can I apply for a bus pass?', 'You can apply online through our website or visit our nearest service center.'),
(3, 'What documents are required for a bus pass?', 'You need a photo ID, address proof, and a passport-sized photograph.'),
(4, 'How much does a monthly pass cost?', 'A monthly pass costs INR 500.'),
(5, 'Can I renew my bus pass online?', 'Yes, you can renew your bus pass online through our website.'),
(6, 'What is the validity of a quarterly bus pass?', 'A quarterly bus pass is valid for 3 months.'),
(7, 'Do you offer any discounts on bus passes?', 'Yes, students and senior citizens are eligible for discounts.'),
(8, 'Where can I collect my bus pass after applying online?', 'You can collect your bus pass from our nearest service center.'),
(9, 'Can I transfer my bus pass to someone else?', 'No, bus passes are non-transferable.'),
(10, 'What should I do if I lose my bus pass?', 'You should report it immediately and apply for a duplicate pass.'),
(11, 'How long does it take to get a new bus pass?', 'It usually takes 3-5 working days to process a new bus pass.'),
(12, 'Can I cancel my bus pass and get a refund?', 'Refunds are not available for cancelled bus passes.'),
(13, 'Is there a customer care number I can call?', 'Yes, you can reach our customer care at 1800-123-4567.'),
(14, 'Can I use the bus pass on all bus routes in Mumbai?', 'Yes, the bus pass is valid on all bus routes within Mumbai.'),
(15, 'How can I check the status of my bus pass application?', 'You can check the status on our website using your application number.'),
(16, 'Do I need to carry a photo ID with my bus pass?', 'Yes, you must carry a valid photo ID along with your bus pass.'),
(17, 'Are there any penalties for using an expired bus pass?', 'Yes, using an expired bus pass can result in a fine.'),
(18, 'Can I upgrade my monthly pass to a yearly pass?', 'Yes, you can upgrade by paying the difference amount.'),
(19, 'What are the payment methods for a bus pass?', 'You can pay using credit/debit cards, net banking, or UPI.'),
(20, 'Do you offer group discounts on bus passes?', 'Currently, we do not offer group discounts.'),
(21, 'Can I change my personal details on the bus pass?', 'Yes, you can update your details by visiting our service center.'),
(22, 'Are bus passes available for tourists?', 'Yes, we offer special bus passes for tourists.'),
(23, 'How can I contact customer support?', 'You can contact us through our website or call our customer care.'),
(24, 'Is there an app for bus pass management?', 'Yes, you can download our app from the Google Play Store or Apple App Store.'),
(25, 'Can I track my bus pass delivery?', 'Yes, you can track your delivery status on our website.'),
(26, 'Do you provide corporate bus passes?', 'Yes, we provide corporate bus passes for companies.'),
(27, 'What is the procedure to get a student bus pass?', 'Students need to provide a valid student ID and a letter from their institution.'),
(28, 'Can I use my bus pass during holidays?', 'Yes, your bus pass is valid on holidays.'),
(29, 'What is the process for getting a senior citizen bus pass?', 'Senior citizens need to provide a valid age proof for the discount.'),
(30, 'Can I get an electronic version of my bus pass?', 'Yes, you can download an e-pass from our website or app.'),
(31, 'hi , Hello', 'Hi there! How can I assist you today?');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 1234567891, 'buspass123@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-07-14 06:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(8, 'AC Bus', '2023-08-04 14:27:53'),
(9, 'Non AC Bus', '2023-07-04 14:28:32'),
(10, 'Volvo Bus', '2023-08-04 14:28:47'),
(11, 'Delux Bus', '2024-09-04 14:29:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext,
  `EnquiryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `Name`, `Email`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(1, 'Kiran', 'kran@gmail.com', 'cost of volvo place pritampura to dwarka', '2024-03-05 07:26:24', 1),
(2, 'Anuj', 'AKKK@GMAIL.COM', 'This is for testing.', '2024-03-11 08:55:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', '<font color=\"#747474\" face=\"Roboto, sans-serif, arial\"><span style=\"font-size: 13px;\"><b>We envision a world where public transportation is easily accessible to everyone. By streamlining the bus pass management process, we strive to encourage the use of public transport, reduce traffic congestion, and promote environmental sustainability. Our vision is to be a key player in transforming public transportation into a more efficient, eco-friendly, and user-centric service.</b></span></font><br>', NULL, NULL, '2023-07-11 08:54:33'),
(2, 'contactus', 'Contact Us', '                #511 CFG Apartment, Shiv colony, Airoli, Navi Mumbai-400708.', 'buspass123@gmail.com', 4654789799, '2024-06-13 17:54:18');

-- --------------------------------------------------------

--
-- Table structure for table `tblpass`
--

CREATE TABLE `tblpass` (
  `ID` int(10) NOT NULL,
  `PassNumber` varchar(200) DEFAULT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `ProfileImage` varchar(200) DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `IdentityType` varchar(200) DEFAULT NULL,
  `IdentityCardno` varchar(200) DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `Source` varchar(200) DEFAULT NULL,
  `Destination` varchar(200) DEFAULT NULL,
  `FromDate` varchar(200) DEFAULT NULL,
  `ToDate` varchar(200) DEFAULT NULL,
  `Cost` decimal(10,0) DEFAULT NULL,
  `PasscreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpass`
--

INSERT INTO `tblpass` (`ID`, `PassNumber`, `FullName`, `ProfileImage`, `ContactNumber`, `Email`, `IdentityType`, `IdentityCardno`, `Category`, `Source`, `Destination`, `FromDate`, `ToDate`, `Cost`, `PasscreationDate`) VALUES
(1, '286529906', 'Yogesh Kumar', '779b7513263ef185b6d094af290ef5401625471444.png', 4654464646, 'yogi@gmail.com', 'Adhar Card', 'AD-122346', 'Delux Bus', 'dfg', 'kgf', '2024-04-14', '2024-04-15', '900', '2024-04-14 11:47:03'),
(2, '915773340', 'Suresh Khanna', '779b7513263ef185b6d094af290ef5401625471444.png', 9879878978, 'suresh@gmail.com', 'Any Other Govt Issued Doc', 'KTI-896567', 'Delux Bus', NULL, NULL, '2024-04-14', '2024-04-31', '900', '2024-04-13 11:50:15'),
(3, '884595667', 'Anuj kumar', '779b7513263ef185b6d094af290ef5401625471444.png', 1234567890, 'phpgurukulofficial@Gmail.com', 'Voter Card', '5235252', 'Delux Bus', 'Pritampura', 'Dwarka', '2024-04-16', '2024-04-19', '600', '2024-04-16 02:38:27'),
(4, '210712236', 'Abir Singh', 'e76de47f621d84adbab3266e3239baee1625460898.png', 4654646546, 'abir@gmail.com', 'Voter Card', '5646465', 'Non AC Bus', 'abc', 'dbc', '2024-07-05', '2024-07-16', '900', '2024-04-04 15:01:38'),
(5, '474965545', 'Augustya', '779b7513263ef185b6d094af290ef5401625471444.png', 6546465464, 'aug@gmail.com', 'Student Card', '789456', 'Delux Bus', 'Delhi', 'Meerut', '2023-07-05', '2023-07-31', '1800', '2023-07-05 07:50:44'),
(6, '681924385', 'Anuj kumar', 'ea3dc39ca0b2f6b5f17abddec1f0e9a41625993624.png', 1234569870, 'ak@test.com', 'Driving License', 'GGGGGGHGH2423423432', 'Delux Bus', 'Laxmi Nagar', 'Central Secretariat', '2023-07-15', '2023-07-30', '500', '2023-07-11 08:53:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpass`
--
ALTER TABLE `tblpass`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblpass`
--
ALTER TABLE `tblpass`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
