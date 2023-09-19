-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2023 at 06:05 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kaliganj_tsc_jun`
--

-- --------------------------------------------------------

--
-- Table structure for table `additional_setting`
--

CREATE TABLE `additional_setting` (
  `id` int(11) NOT NULL,
  `post_type` varchar(255) NOT NULL,
  `post_title` varchar(1000) NOT NULL,
  `post_desc` varchar(5000) NOT NULL,
  `short_text` varchar(1000) NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `post_dated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `additional_setting`
--

INSERT INTO `additional_setting` (`id`, `post_type`, `post_title`, `post_desc`, `short_text`, `post_image`, `isActive`, `post_dated`) VALUES
(1, 'about_us', 'আমাদের সম্পর্কে', 'Kaliganj Technical School & College is a govt. College which is situated close to Kaliganj Sadar Upazila under Lalmonirhat District.', '', '', 1, '2023-02-06 12:47:25'),
(2, 'trade_of_ktsc', 'IT Support & IOT Basics', 'IT Support & IOT Basics Trade is too much important for the age of 2023\n\n', 'A Leading trade in the world.', 'assets/file/card/Card-001.jpg', 1, '2023-02-06 13:55:01'),
(3, 'trade_of_ktsc', 'General Electronics', 'General Electronics Trade is too much important for the age of 2023\n\n', 'A Leading trade in the world.', 'assets/file/card/Card-002.jpg', 1, '2023-02-06 13:55:01'),
(4, 'trade_of_ktsc', 'Automobile', 'Automobile Trade is too much important for the age of 2023', 'A Leading trade in the world.', 'assets/file/card/Card-003.jpg', 1, '2023-02-06 13:55:01'),
(5, 'trade_of_ktsc', 'Farm Machinary', 'Farm Machinary Trade is too much important for the age of 2023\n\n', 'A Leading trade in the world.', 'assets/file/card/Card-004.jpg', 1, '2023-02-06 13:55:01');

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE `admin_tbl` (
  `id` int(11) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminPass` varchar(255) NOT NULL,
  `regDate` datetime NOT NULL,
  `delDate` datetime NOT NULL,
  `isActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`id`, `adminUser`, `adminPass`, `regDate`, `delDate`, `isActive`) VALUES
(1, 'admin', '25d55ad283aa400af464c76d713c07ad', '2023-01-21 14:29:48', '2023-01-21 14:29:48', 1),
(2, 'admin2', '25d55ad283aa400af464c76d713c07ad', '2023-01-21 14:29:48', '2023-01-21 14:29:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banner_tbl`
--

CREATE TABLE `banner_tbl` (
  `id` int(11) NOT NULL,
  `ban_name` varchar(255) NOT NULL,
  `isActive` int(11) NOT NULL,
  `dated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner_tbl`
--

INSERT INTO `banner_tbl` (`id`, `ban_name`, `isActive`, `dated`) VALUES
(1, 'sample001.jpg', 1, '2023-01-27 12:53:50'),
(2, 'sample002.jpg', 0, '2023-01-27 12:53:51');

-- --------------------------------------------------------

--
-- Table structure for table `employee_info`
--

CREATE TABLE `employee_info` (
  `id` int(11) NOT NULL,
  `empname` varchar(255) NOT NULL,
  `empType` varchar(255) NOT NULL,
  `motherName` varchar(255) NOT NULL,
  `emp_designation` varchar(255) NOT NULL,
  `dateOfBirth` varchar(25) NOT NULL,
  `phoneNo` varchar(15) NOT NULL,
  `TelephoneNo` varchar(25) NOT NULL,
  `email_Id` varchar(255) NOT NULL,
  `facebookId` varchar(255) NOT NULL,
  `emp_for_trade` varchar(255) NOT NULL,
  `emp_image` varchar(255) NOT NULL,
  `joiningDate` varchar(55) NOT NULL,
  `endDate` varchar(55) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `index_serial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_info`
--

INSERT INTO `employee_info` (`id`, `empname`, `empType`, `motherName`, `emp_designation`, `dateOfBirth`, `phoneNo`, `TelephoneNo`, `email_Id`, `facebookId`, `emp_for_trade`, `emp_image`, `joiningDate`, `endDate`, `isActive`, `index_serial`) VALUES
(19, 'Lutfor Rahman', 'Director General', '', 'Jr. Instructor', '2023-01-01', '025431', '56', '66@gmail.com', '0123', 'General Electronics', '506657241 - Manik Pic.jpg', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notice_tbl`
--

CREATE TABLE `notice_tbl` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `descrip` varchar(255) NOT NULL,
  `isActive` int(11) NOT NULL,
  `dated` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notice_tbl`
--

INSERT INTO `notice_tbl` (`id`, `title`, `file_name`, `descrip`, `isActive`, `dated`) VALUES
(16, 'SSC(Voc) & Dakhil(Voc) Class 9 Final Routine 2022', 'SSC Voc Class 9 -2022.pdf', 'SSC(Voc) Class 9 Final Routine 2022', 1, '2022-11-10'),
(17, 'SSC(Voc) & Dakhil(Voc) 2023 Final Routine', 'SSC-2023-Exam Routine - 4789.pdf', 'SSC(Voc) & Dakhil(Voc) 2023 Final Routine', 1, '2023-02-20'),
(21, 'à¦à¦¸ à¦à¦¸ à¦¸à¦¿ - à¦¨à¦¬à¦® à¦¶à§à¦°à§‡à¦¨à§€ à§¨à§¦à§¨à§¨ à¦¸à¦®à¦¾à¦ªà¦¨à§€ à¦ªà¦°à¦¿à¦•à§à¦·à¦¾à¦° à¦«à¦²à¦¾à¦«à¦²', 'SSC_IX_RESULT_22_Kaliganj TSC-457.pdf', 'à¦…à¦¨à§à¦—à§à¦°à¦¹ à¦•à¦°à§‡ à¦ªà§œà§à¦¨', 1, '2023-03-11'),
(23, 'à¦ªà§à¦¨: à¦­à¦°à§à¦¤à¦¿ à¦¨à¦¬à¦® à¦¶à§à¦°à§‡à¦£à§€-2023 à¦¨à§‹à¦Ÿà¦¿à¦¶', '656674019 - ReadmissionIX-2023.pdf', 'ablkflkj', 0, '2023-03-16'),
(24, 'à¦ªà§à¦¨: à¦­à¦°à§à¦¤à¦¿ à¦¨à¦¬à¦® à¦¶à§à¦°à§‡à¦£à§€-2023 à¦¨à§‹à¦Ÿà¦¿à¦¶', '506887101 - ReadmissionIX-2023.pdf', 'lakfkj', 1, '2023-03-16'),
(25, 'à¦®à¦¡à§‡à¦² à¦Ÿà§‡à¦¸à§à¦Ÿ à¦°à§à¦Ÿà¦¿à¦¨( à¦¦à¦¶à¦®)/2023', '388930752 - Routine-Class-X-2023 Modle test.pdf', '1254', 0, '2023-03-16'),
(26, 'Modle Test-2023', '554571211 - Modle test-2023.pdf', '123', 1, '2023-03-19'),
(27, 'Test/2023', '656376113 - modle test-X.pdf', '123', 0, '2023-03-20'),
(28, 'à¦­à¦°à§à¦¤à¦¿ à¦¦à¦¶à¦® à¦¶à§à¦°à§‡à¦£à§€-2023 à¦¨à§‹à¦Ÿà¦¿à¦¶', '648723622 - Admission- X .pdf', 'à¦Ÿà¦¿à¦à¦¸à¦¸à¦¿ à¦•à¦¾à¦²à§€à¦—à¦žà§à¦œ.à¦²à¦¾à¦²à¦®à¦¨à¦¿à¦°à¦¹à¦¾à¦Ÿ', 1, '2023-04-05'),
(29, 'à¦¸à§‡à¦¬à¦¾ à¦ªà§à¦°à¦¦à¦¾à¦¨ à¦ªà§à¦°à¦¤à¦¿à¦¶à§à¦°à§à¦¤à¦¿ à¦¸à¦‚à¦•à§à¦°à¦¾à¦¨à§à¦¤ à¦ªà¦°à¦¿à¦¬à§€à¦•à§à¦·à¦£ à¦•à¦®à¦¿à¦Ÿà¦¿', '751377366 - APA017.pdf', 'à¦ªà¦Ÿ', 1, '2023-04-11'),
(30, 'à¦œà¦¾à¦¤à§€à§Ÿ à¦¶à§à¦¦à§à¦§à¦¾à¦šà¦¾à¦° à¦•à¦°à§à¦® à¦ªà¦°à¦¿à¦•à¦²à§à¦ªà¦¨à¦¾', '502098854 - APA018.pdf', '11-04-2023', 1, '2023-04-11'),
(31, 'à¦¨à§‹à¦Ÿà¦¿à¦¶', '495496121 - Notice 030.pdf', 'à¦¬à¦¾à¦‚à¦²à¦¾ à¦¨à¦¬à¦¬à¦°à§à¦·-à§§à§ªà§©à§¦', 0, '2023-04-13'),
(32, 'à¦¨à§‹à¦Ÿà¦¿à¦¶', '778328283 - Notice 031.pdf', 'à¦¬à¦¾à¦‚à¦²à¦¾ à¦¨à¦¬à¦¬à¦°à§à¦·-à§§à§ªà§©à§¦', 0, '2023-04-13'),
(33, 'à¦¨à§‹à¦Ÿà¦¿à¦¶', '30958073 - Notice 032.pdf', 'à¦¬à¦¾à¦‚à¦² à¦¨à¦¬à¦¬à¦°à§à¦·-à§§à§ªà§©à§¦', 1, '2023-04-13'),
(34, 'à¦à¦¸à¦à¦¸à¦¸à¦¿ (à¦­à§‹à¦•à§‡à¦¶à¦¨à¦¾à¦²) à¦¨à¦¬à¦® à¦¶à§à¦°à§‡à¦£à¦¿ à¦°à§‡à¦œà¦¿à¦¸à§à¦Ÿà§à¦°à§‡à¦¶à¦¨ à¦¸à¦‚à¦•à§à¦°à¦¾à¦¨à§à¦¤ à¦¨à§‹à¦Ÿà¦¿à¦¶', '579802898 - Genaral005.pdf', 'à¦à¦¸à¦à¦¸à¦¸à¦¿ (à¦­à§‹à¦•à§‡à¦¶à¦¨à¦¾à¦²) à¦¨à¦¬à¦® à¦¶à§à¦°à§‡à¦£à¦¿ à¦°à§‡à¦œà¦¿à¦¸à§à¦Ÿà§à¦°à§‡à¦¶à¦¨ à¦¸à¦‚à¦•à§à¦°à¦¾à¦¨à§à¦¤ à¦¨à§‹à¦Ÿà¦¿à¦¶', 1, '2023-06-19'),
(35, 'à¦—à§à¦°à§€à¦·à§à¦®à¦•à¦¾à¦²à§€à¦¨ à¦›à§à¦Ÿà¦¿ à¦¬à¦¾à¦¤à¦¿à¦²à§‡à¦° à¦¨à§‹à¦Ÿà¦¿à¦¶', '420711407 - à¦›à§à¦Ÿà¦¿ à¦¬à¦¾à¦¤à¦¿à¦²-1.pdf', 'à¦—à§à¦°à§€à¦·à§à¦®à¦•à¦¾à¦²à§€à¦¨ à¦›à§à¦Ÿà¦¿ à¦¬à¦¾à¦¤à¦¿à¦²à§‡à¦° à¦¨à§‹à¦Ÿà¦¿à¦¶', 1, '2023-07-23');

-- --------------------------------------------------------

--
-- Table structure for table `photo_gallary`
--

CREATE TABLE `photo_gallary` (
  `id` int(11) NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `add_desc` varchar(255) NOT NULL,
  `p_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photo_gallary`
--

INSERT INTO `photo_gallary` (`id`, `photo_name`, `add_desc`, `p_date`) VALUES
(1, '753155666 - G001.jpeg', 'Gallary', '2023-06-18'),
(2, '863724194 - g2.jpeg', 'Gallary', '2023-06-18'),
(3, '830430444 - g3.jpeg', 'Gallary', '2023-06-18'),
(4, '814305302 - g4.jpeg', 'Gallary', '2023-06-18'),
(5, '775786159 - g5.jpeg', 'Gallary', '2023-06-18'),
(6, '322564284 - g6.jpeg', 'Gallary', '2023-06-18'),
(15, '539187596 - Citizen Charter_page-0001.jpg', 'Citizen Chartar', '2023-06-20'),
(16, '183491859 - Citizen Charter_page-0002.jpg', 'Citizen Chartar', '2023-06-20'),
(17, '76005224 - Citizen Charter_page-0003.jpg', 'Citizen Chartar', '2023-06-20'),
(18, '541648162 - Citizen Charter_page-0004.jpg', 'Citizen Chartar', '2023-06-20'),
(19, '16684881 - 1.jpeg', 'Gallary', '2023-06-20'),
(20, '735943587 - 24.jpeg', 'Gallary', '2023-06-20'),
(21, '189641200 - 23.jpeg', 'Gallary', '2023-06-20'),
(22, '176349511 - 22.jpeg', 'Gallary', '2023-06-20'),
(23, '937040538 - 21.jpeg', 'Gallary', '2023-06-20'),
(24, '198870234 - 20.jpeg', 'Gallary', '2023-06-20'),
(25, '31863628 - 19.jpeg', 'Gallary', '2023-06-20'),
(26, '728599308 - 18.jpeg', 'Gallary', '2023-06-20'),
(27, '745717870 - 16.jpeg', 'Gallary', '2023-06-20'),
(28, '564805400 - 17.jpeg', 'Gallary', '2023-06-20'),
(29, '293917362 - 15.jpeg', 'Gallary', '2023-06-20'),
(30, '483724978 - 14.jpeg', 'Gallary', '2023-06-20'),
(31, '27258447 - 13.jpeg', 'Gallary', '2023-06-20'),
(32, '158351762 - 12.jpeg', 'Gallary', '2023-06-20'),
(33, '851583901 - 11.jpeg', 'Gallary', '2023-06-20'),
(34, '663143782 - 10.jpeg', 'Gallary', '2023-06-20'),
(35, '328453918 - 9.jpeg', 'Gallary', '2023-06-20'),
(36, '702845842 - 8.jpeg', 'Gallary', '2023-06-20'),
(37, '969967840 - 7.jpeg', 'Gallary', '2023-06-20'),
(38, '894935558 - 6.jpeg', 'Gallary', '2023-06-20'),
(39, '528308361 - 5.jpeg', 'Gallary', '2023-06-20'),
(40, '323736442 - 4.jpeg', 'Gallary', '2023-06-20'),
(41, '406464369 - 3.jpeg', 'Gallary', '2023-06-20'),
(42, '747874479 - 2.jpeg', 'Gallary', '2023-06-20'),
(43, '145505977 - 1.jpeg', 'Gallary', '2023-06-20');

-- --------------------------------------------------------

--
-- Table structure for table `trade_tbl`
--

CREATE TABLE `trade_tbl` (
  `id` int(11) NOT NULL,
  `Trade_Code` varchar(255) NOT NULL,
  `Trade_Name` varchar(255) NOT NULL,
  `Sections` varchar(255) NOT NULL,
  `Total_Batches` int(11) NOT NULL,
  `Total_Student` int(11) NOT NULL,
  `Trade_Photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trade_tbl`
--

INSERT INTO `trade_tbl` (`id`, `Trade_Code`, `Trade_Name`, `Sections`, `Total_Batches`, `Total_Student`, `Trade_Photo`) VALUES
(1, '88', 'IT Support & IOT Basics', 'SSC & HSC', 4, 110, 'IT.jpg'),
(2, '86', 'General Electronics', 'SSC & HSC', 2, 60, 'GE.jpg'),
(3, '86', 'Automobile', 'SSC & HSC', 1, 30, 'Auto.jpg'),
(4, '86', 'Farm Machinary', 'SSC & HSC', 0, 0, 'Farm.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `youtube_links`
--

CREATE TABLE `youtube_links` (
  `id` int(11) NOT NULL,
  `Topics` varchar(255) NOT NULL,
  `Youtube_Links` varchar(1000) NOT NULL,
  `Post_By` varchar(255) NOT NULL,
  `post_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `youtube_links`
--

INSERT INTO `youtube_links` (`id`, `Topics`, `Youtube_Links`, `Post_By`, `post_date`) VALUES
(1, 'suva', 'https://www.youtube.com/embed/4hKy3-MRs_s', 'Manik Sir', '2023-06-18'),
(2, 'কপতাক্ষ ণদ', 'https://www.youtube.com/embed/Vkj1LFGQOqE', 'Manik Sir', '2023-06-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additional_setting`
--
ALTER TABLE `additional_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_tbl`
--
ALTER TABLE `banner_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_info`
--
ALTER TABLE `employee_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_tbl`
--
ALTER TABLE `notice_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo_gallary`
--
ALTER TABLE `photo_gallary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trade_tbl`
--
ALTER TABLE `trade_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `youtube_links`
--
ALTER TABLE `youtube_links`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additional_setting`
--
ALTER TABLE `additional_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banner_tbl`
--
ALTER TABLE `banner_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_info`
--
ALTER TABLE `employee_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `notice_tbl`
--
ALTER TABLE `notice_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `photo_gallary`
--
ALTER TABLE `photo_gallary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `trade_tbl`
--
ALTER TABLE `trade_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `youtube_links`
--
ALTER TABLE `youtube_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
