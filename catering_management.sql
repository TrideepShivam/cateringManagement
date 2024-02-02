-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2024 at 10:22 AM
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
-- Database: `catering_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `NAME` varchar(30) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `CONTACT` varchar(10) NOT NULL,
  `PWD` varchar(20) NOT NULL,
  `BLOCKED` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`NAME`, `EMAIL`, `CONTACT`, `PWD`, `BLOCKED`) VALUES
('ARPAN SHARMA', 'arpansharma08112002@gmail.com', '8976543210', 'arpan@123', 0),
('DEEPANSHU CHAUHAN', 'deepanshuchauhan@gmail.com', '9876543210', 'deepanshu@123', 0),
('PRANOY K C', 'pranoy@gmail.com', '9876543210', 'pranoy@123', 0),
('SHIVAM KUMAR', 'trideepshivam@gmail.com', '9546747447', 'Shivam@123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `ID` int(4) NOT NULL,
  `asset_name` varchar(25) NOT NULL,
  `available` int(4) NOT NULL,
  `in_use` int(4) NOT NULL DEFAULT 0,
  `unit_price` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`ID`, `asset_name`, `available`, `in_use`, `unit_price`) VALUES
(1, 'Coffee Machine', 33, 0, 1300),
(8, 'Beverage Stands', 60, 0, 900),
(9, 'Cambro', 190, 0, 400),
(10, 'Beverage Ovens', 23, 0, 900);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `ID` int(3) NOT NULL,
  `DATE` varchar(10) NOT NULL,
  `EMAIL` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`ID`, `DATE`, `EMAIL`) VALUES
(1, '20-04-2023', 'golugupta@ymail.com'),
(2, '21-04-2023', 'arinkhan@ymail.com'),
(3, '21-04-2023', 'golugupta@ymail.com'),
(4, '21-04-2023', 'manafmishra@hotmail.com'),
(5, '21-04-2023', 'neerajkumar@gmail.com'),
(6, '21-04-2023', 'jamescamaron@pandora.com'),
(7, '22-04-2023', 'golugupta@ymail.com'),
(8, '23-04-2023', 'golugupta@ymail.com'),
(9, '23-04-2023', 'arinkhan@ymail.com'),
(10, '23-04-2023', 'neerajkumar@gmail.com'),
(11, '23-04-2023', 'nikitajoshi@gmail.com'),
(12, '24-04-2023', 'golugupta@ymail.com'),
(13, '24-04-2023', 'arinkhan@ymail.com'),
(14, '24-04-2023', 'manafmishra@hotmail.com'),
(15, '25-04-2023', 'golugupta@ymail.com'),
(16, '26-04-2023', 'golugupta@ymail.com'),
(17, '26-04-2023', 'jamescamaron@pandora.com'),
(18, '27-04-2023', 'golugupta@ymail.com'),
(19, '27-04-2023', 'ajithp@gmail.com'),
(20, '27-04-2023', 'jamescamaron@pandora.com'),
(21, '27-04-2023', 'sahil@gmail.com'),
(22, '27-04-2023', 'nikitakumari@gmail.com'),
(23, '28-04-2023', 'niraj@gmail.com'),
(24, '28-04-2023', 'gajanan@gmail.com'),
(25, '28-04-2023', 'ambrish@gmail.com'),
(26, '28-04-2023', 'utkarshsachan140@gmail.com'),
(27, '30-04-2023', 'shashwat@gmail.com'),
(28, '30-04-2023', 'golugupta@ymail.com'),
(29, '03-05-2023', 'nidhi@nonmuted.com'),
(30, '11-05-2023', 'golugupta@ymail.com'),
(31, '11-05-2023', 'arinkhan@ymail.com'),
(32, '11-05-2023', 'wednesday@netflix.com'),
(33, '11-05-2023', 'jamescamaron@pandora.com'),
(34, '11-05-2023', 'khan@gmail.com'),
(35, '12-05-2023', 'golugupta@ymail.com'),
(36, '12-05-2023', 'parween@gmail.com'),
(37, '16-05-2023', 'golugupta@ymail.com'),
(38, '16-05-2023', 'neerajkumar@gmail.com'),
(39, '16-05-2023', 'jamescamaron@pandora.com'),
(40, '16-05-2023', 'ambrish@gmail.com'),
(41, '16-05-2023', 'nidhi@nonmuted.com'),
(42, '17-05-2023', 'golugupta@ymail.com'),
(43, '17-05-2023', 'manafmishra@hotmail.com'),
(44, '17-05-2023', 'arinkhan@ymail.com'),
(45, '17-05-2023', 'nidhi@nonmuted.com'),
(46, '17-05-2023', 'vishalkumar@gmail.com'),
(47, '17-05-2023', 'ambrish@gmail.com'),
(48, '17-05-2023', 'jamescamaron@pandora.com'),
(49, '17-05-2023', 'neerajkumar@gmail.com'),
(50, '16-06-2023', 'golugupta@ymail.com'),
(51, '15-09-2023', 'golugupta@ymail.com'),
(52, '15-09-2023', 'arinkhan@ymail.com');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(5) NOT NULL,
  `Total` int(6) DEFAULT NULL,
  `pending` int(6) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `Total`, `pending`) VALUES
(2, 16500, 16500),
(3, 39700, 39700),
(4, 4600, 4600),
(5, 38400, 38400),
(6, 13200, 13200),
(7, 13200, 13200),
(8, 26400, 26400),
(9, 31500, 31500);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` int(5) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Contact` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID`, `Name`, `Contact`, `Email`, `Address`) VALUES
(1, 'Akash Kumar', '7004543946', 'akashmishra2820@gmail.com', 'rupauli, Muzaffarpur, Bihar 843106'),
(2, 'Hamid Raza', '8905672341', 'hamid@gmail.com', 'phulwari shareef,Patna'),
(11, 'Manish Singh', '9870678904', 'rsbisht@gmail.com', 'nainital, uttarakhand'),
(16, 'VIP', 'Dhananjay', 'vipdhananjay@gmail.com', 'VIP place, Bhagalpur, Bihar'),
(18, 'Girish kumar', '8790654321', 'girish@lpu.in', 'near railway colony,amritsar'),
(19, 'Atul kumar', '9876543210', 'atul@gmail.com', 'bangao road, hajipur, Bihar'),
(21, 'atul shriwastav', '9876543210', 'atulshrivastav@gmail.com', 'hajipur road vaishali');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `ID` int(5) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Venue` varchar(50) NOT NULL,
  `Start` varchar(10) NOT NULL,
  `End` varchar(10) NOT NULL,
  `Person` int(6) NOT NULL,
  `Service_Count` int(2) NOT NULL,
  `Cust_id` int(5) NOT NULL,
  `Bill_id` int(5) NOT NULL,
  `Asset_id` int(5) NOT NULL,
  `Status` varchar(10) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`ID`, `Name`, `Venue`, `Start`, `End`, `Person`, `Service_Count`, `Cust_id`, `Bill_id`, `Asset_id`, `Status`) VALUES
(1, 'Birthday', 'Shanti Devi Audit.', '20-05-2023', '20-05-2023', 500, 1, 11, 2, 2, 'pending'),
(2, 'Wedding', 'Bhupendra Narayan Mandal Stadium', '01-05-2023', '02-05-2023', 1100, 1, 1, 3, 3, 'completed'),
(3, 'Anniversery', 'Hotel Maheshwari', '16-05-2023', '16-05-2023', 100, 1, 2, 4, 4, 'completed'),
(4, 'Death Aniversary', 'VIP House, Bhagalpur', '16-05-2023', '16-05-2023', 1500, 1, 16, 5, 5, 'completed'),
(5, 'Weding Aniversery', 'Amritsar Town Hall', '17-05-2023', '17-05-2023', 400, 1, 18, 7, 7, 'completed'),
(6, 'Wedding', 'fullwari garden', '17-05-2023', '17-05-2023', 500, 1, 19, 8, 8, 'completed'),
(7, 'birthday', 'chandigadh hall', '15-09-2023', '15-09-2023', 1000, 1, 21, 9, 9, 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `event_assets`
--

CREATE TABLE `event_assets` (
  `ID` int(5) NOT NULL,
  `Coffee Machine` int(5) NOT NULL DEFAULT 0,
  `Beverage Stands` int(5) NOT NULL DEFAULT 0,
  `Cambro` int(5) NOT NULL DEFAULT 0,
  `Beverage Ovens` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_assets`
--

INSERT INTO `event_assets` (`ID`, `Coffee Machine`, `Beverage Stands`, `Cambro`, `Beverage Ovens`) VALUES
(2, 5, 0, 0, 0),
(3, 5, 8, 10, 0),
(4, 2, 0, 0, 0),
(5, 3, 5, 0, 0),
(6, 4, 0, 0, 0),
(7, 4, 0, 0, 0),
(8, 5, 6, 0, 5),
(9, 5, 0, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `NAME` varchar(30) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `CONTACT` varchar(10) NOT NULL,
  `GENDER` varchar(6) NOT NULL,
  `PWD` varchar(20) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `JOINING` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`NAME`, `EMAIL`, `CONTACT`, `GENDER`, `PWD`, `ADDRESS`, `JOINING`, `status`) VALUES
('AJITH KUMAR', 'ajithp@gmail.com', '9876543210', 'Male', 'ajith@123', 'delhi, dwarka, delhi', '24-04-2023', 1),
('AMBRISH MISHRA', 'ambrish@gmail.com', '1233456789', 'Male', 'ambrish@123', 'lpu', '28-04-2023', 0),
('ARIN KUMAR', 'arinkhan@ymail.com', '9879879870', 'Male', 'arin@123', 'saharanpur,Uttar Pradesh', '21-04-2023', 1),
('GAJANAN KUMAR', 'gajanan@gmail.com', '9195598305', 'Male', 'Gkp@123', 'punjab', '28-04-2023', 1),
('GOLU GUPTA', 'golugupta@ymail.com', '8976543210', 'Female', 'golu@123', 'mirzapur, uttar pradesh', '21-04-2023', 1),
('JAMES CAMARON', 'jamescamaron@pandora.com', '9807654321', 'Male', 'james@123', 'pandora planet, far from earth', '21-04-2023', 1),
('MANAF KHAN', 'khan@gmail.com', '9090906745', 'Others', '12345678', 'LPU FROM MUMBAI', '11-05-2023', 1),
('MANAF MISHRA', 'manafmishra@hotmail.com', '8978976540', 'Male', 'manaf@123', 'bori vali, mumbai', '21-04-2023', 1),
('NIRAJ KUMAR', 'neerajkumar@gmail.com', '1234567890', 'Male', 'neeraj@123', 'MUZAFFARPUR, BIHAR, INDIA', '24-04-2023', 1),
('NIDHI KRI', 'nidhi@nonmuted.com', '9876543210', 'Male', 'nidhi@123', 'mdhepura, bihar', '03-05-2023', 1),
('NIKITA JOSHI', 'nikitajoshi@gmail.com', '9876543210', 'Female', 'nikita@123', 'lpu ground, Phagwara', '22-04-2023', 1),
('NIKITA KUMARI', 'nikitakumari@gmail.com', '8709401625', 'Female', 'nikita@123', 'Co-hub PG, Kanhai gali, Sector 45, Gurugram, Haryana 122003', '27-04-2023', 1),
('NIRAJ KUMAR', 'niraj@gmail.com', '9113466120', 'Male', '12345', 'muzaffarpur', '28-04-2023', 1),
('PARWEEN KUMAR', 'parween@gmail.com', '9876543210', 'Male', 'parween@123', 'champaran, bihar', '12-05-2023', 1),
('KUMAR SAHIL', 'sahil@gmail.com', '1234567890', 'Male', 'sahil@123', 'up', '27-04-2023', 1),
('SHASHWAT TEJASWI', 'shashwat@gmail.com', '7654321890', 'Male', 'shashwat@123', 'Station, madhepura, bihar', '30-04-2023', 1),
('STAR LORD', 'star@lord.com', '0123456789', 'Male', 'star@123', 'second earth of universe', '21-04-2023', 1),
('STRANGER THINGS', 'strangerthings@gmail.com', '8769543216', 'Others', 'stranger@123', 'netflix inc, california, USA', '21-04-2023', 1),
('UJJWAL GUPTA', 'ujjwalgupta@hotmail.com', '6213457895', 'Male', 'ujjwal@123', 'madhepura, bihar', '21-04-2023', 1),
('UTKARSH  SACHAN', 'utkarshsachan140@gmail.com', '7571068565', 'Male', '12345', 'kanpur', '28-04-2023', 1),
('VISHAL KUMAR', 'vishalkumar@gmail.com', '9876543210', 'Male', 'vishal@123', 'LPU, Appartment, phagwara', '22-04-2023', 1),
('WEDNESDAY  ', 'wednesday@netflix.com', '9807806701', 'Female', 'wednesday@123', 'netflix inc, california, USA', '21-04-2023', 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff_assignment`
--

CREATE TABLE `staff_assignment` (
  `ID` int(5) NOT NULL,
  `event_id` int(5) NOT NULL,
  `staff_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff_assignment`
--

INSERT INTO `staff_assignment` (`ID`, `event_id`, `staff_id`) VALUES
(1, 2, 'ajithp@gmail.com'),
(2, 2, 'arinkhan@ymail.com'),
(3, 2, 'golugupta@ymail.com'),
(4, 2, 'sahil@gmail.com'),
(8, 3, 'jamescamaron@pandora.com'),
(11, 3, 'golugupta@ymail.com'),
(12, 3, 'neerajkumar@gmail.com'),
(13, 4, 'golugupta@ymail.com'),
(14, 4, 'neerajkumar@gmail.com'),
(15, 4, 'jamescamaron@pandora.com'),
(16, 4, 'ambrish@gmail.com'),
(18, 5, 'manafmishra@hotmail.com'),
(19, 7, 'golugupta@ymail.com'),
(20, 7, 'arinkhan@ymail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`EMAIL`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EMAIL` (`EMAIL`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Unique` (`Email`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `cust_fk` (`Cust_id`),
  ADD KEY `bill_fk` (`Bill_id`),
  ADD KEY `asset_fk` (`Asset_id`);

--
-- Indexes for table `event_assets`
--
ALTER TABLE `event_assets`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`EMAIL`);

--
-- Indexes for table `staff_assignment`
--
ALTER TABLE `staff_assignment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `event_fk` (`event_id`),
  ADD KEY `staff_fk` (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `event_assets`
--
ALTER TABLE `event_assets`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `staff_assignment`
--
ALTER TABLE `staff_assignment`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`EMAIL`) REFERENCES `staffs` (`EMAIL`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `asset_fk` FOREIGN KEY (`Asset_id`) REFERENCES `event_assets` (`ID`),
  ADD CONSTRAINT `bill_fk` FOREIGN KEY (`Bill_id`) REFERENCES `bill` (`id`),
  ADD CONSTRAINT `cust_fk` FOREIGN KEY (`Cust_id`) REFERENCES `customers` (`ID`);

--
-- Constraints for table `staff_assignment`
--
ALTER TABLE `staff_assignment`
  ADD CONSTRAINT `event_fk` FOREIGN KEY (`event_id`) REFERENCES `events` (`ID`),
  ADD CONSTRAINT `staff_fk` FOREIGN KEY (`staff_id`) REFERENCES `staffs` (`EMAIL`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
