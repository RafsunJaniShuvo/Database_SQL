-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2020 at 05:57 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurent_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `Date` varchar(15) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `phone_num` varchar(11) NOT NULL,
  `Type` varchar(10) DEFAULT NULL,
  `TABLE_no` int(11) DEFAULT NULL,
  `Time_` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ID`, `Name`, `address`, `Date`, `email`, `phone_num`, `Type`, `TABLE_no`, `Time_`) VALUES
(1, 'Aaa', 'abc', '20-09-21', 'abc@gmail.com', '01833XXXX', 'vegetable', 7, '12:30');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Shift` varchar(20) DEFAULT NULL,
  `Salary` decimal(6,2) DEFAULT NULL,
  `DOB` varchar(10) DEFAULT NULL,
  `Adrress` varchar(32) DEFAULT NULL,
  `Designation` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ID`, `Name`, `Gender`, `Shift`, `Salary`, `DOB`, `Adrress`, `Designation`) VALUES
(1, 'Rafsun', 'Male', 'Day', '9999.99', '10-04-1999', 'Badda', 'Engineer'),
(2, 'Nayeem', 'Male', 'Night', '9999.99', '11-05-1999', 'Ctg', 'Engineer'),
(3, 'Emon', 'Male', 'Night', '9999.99', '12-05-1999', 'Natore', 'Engineer'),
(4, 'Mishu', 'Male', 'Day ', '9999.99', '04-05-1999', 'Gaybandha', 'Engineer');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Cust_ID` int(11) NOT NULL,
  `service` varchar(20) DEFAULT NULL,
  `suggestion` varchar(250) DEFAULT NULL,
  `Cleannes` varchar(10) DEFAULT NULL,
  `Food_Quality` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`Cust_ID`, `service`, `suggestion`, `Cleannes`, `Food_Quality`) VALUES
(1, 'Good', 'xxxxx', 'xxxx', 'goood'),
(1, 'Bad', 'yyyy', 'yyyy', 'G');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `Dish_ID` int(11) NOT NULL,
  `Dish_name` varchar(15) DEFAULT NULL,
  `Cust_ID` int(11) NOT NULL,
  `price` decimal(6,0) DEFAULT NULL,
  `Type` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`Dish_ID`, `Dish_name`, `Cust_ID`, `price`, `Type`) VALUES
(1003, 'pasta', 1, '500', 'xxxx'),
(1005, 'Burger', 1, '200', 'xxyy');

-- --------------------------------------------------------

--
-- Table structure for table `order_`
--

CREATE TABLE `order_` (
  `Id` int(11) NOT NULL,
  `Dish_ID` int(11) NOT NULL,
  `Cooking_time` decimal(10,0) DEFAULT NULL,
  `Cust_ID` int(11) NOT NULL,
  `price` decimal(6,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_`
--

INSERT INTO `order_` (`Id`, `Dish_ID`, `Cooking_time`, `Cust_ID`, `price`) VALUES
(1, 1001, '10', 1, '500'),
(2, 1002, '10', 1, '200');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `Vendor_id` int(11) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Item_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`Vendor_id`, `Name`, `Item_id`, `status`) VALUES
(1, 'Rifat Ahmed', 1, 'sweet'),
(2, 'Nayeem Ahmed', 2, 'Ricw'),
(3, 'Rafsun Jani Shuvo', 3, 'Meet/Beef');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone_num` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`ID`, `name`, `address`, `phone_num`) VALUES
(1, 'Tasiful Alam', 'Feni ', '00000'),
(2, 'Rafsun Jani Shuvo', 'Magura ', '00033'),
(3, 'Nayeem Ahmed', 'ctg', '00550');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_num` (`phone_num`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD KEY `Cust_ID` (`Cust_ID`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`Dish_ID`),
  ADD KEY `Cust_ID` (`Cust_ID`);

--
-- Indexes for table `order_`
--
ALTER TABLE `order_`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Dish_ID` (`Dish_ID`),
  ADD KEY `Cust_ID` (`Cust_ID`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`Vendor_id`),
  ADD UNIQUE KEY `Item_id` (`Item_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`Cust_ID`) REFERENCES `customer` (`ID`);

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`Cust_ID`) REFERENCES `order_` (`Id`);

--
-- Constraints for table `order_`
--
ALTER TABLE `order_`
  ADD CONSTRAINT `order__ibfk_1` FOREIGN KEY (`Cust_ID`) REFERENCES `customer` (`ID`),
  ADD CONSTRAINT `order__ibfk_2` FOREIGN KEY (`Id`) REFERENCES `employee` (`ID`);

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `store_ibfk_1` FOREIGN KEY (`Item_id`) REFERENCES `employee` (`ID`),
  ADD CONSTRAINT `store_ibfk_2` FOREIGN KEY (`Vendor_id`) REFERENCES `vendor` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
