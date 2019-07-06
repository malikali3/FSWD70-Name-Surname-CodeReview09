-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2019 at 06:02 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr09_malik_ali_carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `pk_car_num` int(10) NOT NULL,
  `fk_client_num` int(10) DEFAULT NULL,
  `manufacturer` char(40) DEFAULT NULL,
  `model` char(30) DEFAULT NULL,
  `colour` char(20) DEFAULT NULL,
  `reg_num` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`pk_car_num`, `fk_client_num`, `manufacturer`, `model`, `colour`, `reg_num`) VALUES
(20, 1, 'BMW', 'hybrid', 'black', 6754),
(21, 2, 'volvo', 'prime', 'red', 6755),
(22, 3, 'honda', 'reborn', 'white', 6756);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `pk_client_num` int(10) NOT NULL,
  `fk_ac_num` int(10) DEFAULT NULL,
  `first_name` char(40) DEFAULT NULL,
  `last_name` char(30) DEFAULT NULL,
  `contact_num` int(10) DEFAULT NULL,
  `nationality` char(30) DEFAULT NULL,
  `residence_addr` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`pk_client_num`, `fk_ac_num`, `first_name`, `last_name`, `contact_num`, `nationality`, `residence_addr`) VALUES
(1, 123, 'james', 'kim', 2345, 'poland', 'street3'),
(2, 124, 'adam', 'jhon', 2346, 'belgium', 'street4'),
(3, 125, 'eve', 'filix', 2347, 'austria', 'street5');

-- --------------------------------------------------------

--
-- Table structure for table `damages_if_no`
--

CREATE TABLE `damages_if_no` (
  `pk_car_num` int(10) NOT NULL,
  `fk_client_num` int(10) DEFAULT NULL,
  `release_doc` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `damages_if_no`
--

INSERT INTO `damages_if_no` (`pk_car_num`, `fk_client_num`, `release_doc`) VALUES
(20, 1, 'yes'),
(21, 2, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `damages_if_yes`
--

CREATE TABLE `damages_if_yes` (
  `pk_car_num` int(10) NOT NULL,
  `fk_client_num` int(10) DEFAULT NULL,
  `damages` char(40) DEFAULT NULL,
  `damage_details` char(40) DEFAULT NULL,
  `release_doc` char(40) DEFAULT NULL,
  `extra_invoice` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `damages_if_yes`
--

INSERT INTO `damages_if_yes` (`pk_car_num`, `fk_client_num`, `damages`, `damage_details`, `release_doc`, `extra_invoice`) VALUES
(22, 3, 'yes', 'light broken', 'no untill extra invoice paid', '300 euro extra');

-- --------------------------------------------------------

--
-- Table structure for table `final_inspection`
--

CREATE TABLE `final_inspection` (
  `pk_car_num` int(10) NOT NULL,
  `fk_client_num` int(10) DEFAULT NULL,
  `check_damages` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `final_inspection`
--

INSERT INTO `final_inspection` (`pk_car_num`, `fk_client_num`, `check_damages`) VALUES
(20, 1, 'no'),
(21, 2, 'no'),
(22, 3, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `pick_up_point`
--

CREATE TABLE `pick_up_point` (
  `pk_car_num` int(10) NOT NULL,
  `fk_client_num` int(10) DEFAULT NULL,
  `address` char(50) DEFAULT NULL,
  `pick_up_date` date DEFAULT NULL,
  `pick_up_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pick_up_point`
--

INSERT INTO `pick_up_point` (`pk_car_num`, `fk_client_num`, `address`, `pick_up_date`, `pick_up_time`) VALUES
(20, 1, 'meidling', '2012-12-12', '12:00:00'),
(21, 2, 'meidling', '2012-12-12', '12:00:00'),
(22, 3, 'meidling', '2012-12-12', '12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `pk_invoice_num` int(10) NOT NULL,
  `fk_client_num` int(10) DEFAULT NULL,
  `reservation_date` date DEFAULT NULL,
  `order_num` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`pk_invoice_num`, `fk_client_num`, `reservation_date`, `order_num`) VALUES
(12, 1, '2019-07-06', 100),
(13, 2, '2019-07-06', 101),
(14, 3, '2019-07-06', 102);

-- --------------------------------------------------------

--
-- Table structure for table `return_point`
--

CREATE TABLE `return_point` (
  `pk_car_num` int(10) NOT NULL,
  `fk_client_num` int(10) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `return_addr` char(40) DEFAULT NULL,
  `return_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_point`
--

INSERT INTO `return_point` (`pk_car_num`, `fk_client_num`, `return_date`, `return_addr`, `return_time`) VALUES
(20, 1, '2019-07-06', 'street7', '17:15:40'),
(21, 2, '2019-07-06', 'stree6', '17:17:24'),
(22, 3, '2019-07-06', 'stree8', '17:17:24');

-- --------------------------------------------------------

--
-- Table structure for table `tracking`
--

CREATE TABLE `tracking` (
  `pk_car_num` int(10) NOT NULL,
  `fk_client_num` int(10) DEFAULT NULL,
  `current_location` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracking`
--

INSERT INTO `tracking` (`pk_car_num`, `fk_client_num`, `current_location`) VALUES
(20, 1, 'stree5'),
(21, 2, 'stree6'),
(22, 3, 'stree7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`pk_car_num`),
  ADD KEY `fk_client_num` (`fk_client_num`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`pk_client_num`);

--
-- Indexes for table `damages_if_no`
--
ALTER TABLE `damages_if_no`
  ADD PRIMARY KEY (`pk_car_num`),
  ADD KEY `fk_client_num` (`fk_client_num`);

--
-- Indexes for table `damages_if_yes`
--
ALTER TABLE `damages_if_yes`
  ADD PRIMARY KEY (`pk_car_num`),
  ADD KEY `fk_client_num` (`fk_client_num`);

--
-- Indexes for table `final_inspection`
--
ALTER TABLE `final_inspection`
  ADD PRIMARY KEY (`pk_car_num`),
  ADD KEY `fk_client_num` (`fk_client_num`);

--
-- Indexes for table `pick_up_point`
--
ALTER TABLE `pick_up_point`
  ADD PRIMARY KEY (`pk_car_num`),
  ADD KEY `fk_client_num` (`fk_client_num`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`pk_invoice_num`),
  ADD KEY `fk_client_num` (`fk_client_num`);

--
-- Indexes for table `return_point`
--
ALTER TABLE `return_point`
  ADD PRIMARY KEY (`pk_car_num`),
  ADD KEY `fk_client_num` (`fk_client_num`);

--
-- Indexes for table `tracking`
--
ALTER TABLE `tracking`
  ADD PRIMARY KEY (`pk_car_num`),
  ADD KEY `fk_client_num` (`fk_client_num`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`fk_client_num`) REFERENCES `customer` (`pk_client_num`);

--
-- Constraints for table `damages_if_no`
--
ALTER TABLE `damages_if_no`
  ADD CONSTRAINT `damages_if_no_ibfk_1` FOREIGN KEY (`fk_client_num`) REFERENCES `customer` (`pk_client_num`),
  ADD CONSTRAINT `damages_if_no_ibfk_2` FOREIGN KEY (`fk_client_num`) REFERENCES `final_inspection` (`fk_client_num`);

--
-- Constraints for table `damages_if_yes`
--
ALTER TABLE `damages_if_yes`
  ADD CONSTRAINT `damages_if_yes_ibfk_1` FOREIGN KEY (`fk_client_num`) REFERENCES `customer` (`pk_client_num`),
  ADD CONSTRAINT `damages_if_yes_ibfk_2` FOREIGN KEY (`fk_client_num`) REFERENCES `final_inspection` (`fk_client_num`);

--
-- Constraints for table `final_inspection`
--
ALTER TABLE `final_inspection`
  ADD CONSTRAINT `final_inspection_ibfk_1` FOREIGN KEY (`fk_client_num`) REFERENCES `customer` (`pk_client_num`);

--
-- Constraints for table `pick_up_point`
--
ALTER TABLE `pick_up_point`
  ADD CONSTRAINT `pick_up_point_ibfk_1` FOREIGN KEY (`fk_client_num`) REFERENCES `customer` (`pk_client_num`),
  ADD CONSTRAINT `pick_up_point_ibfk_2` FOREIGN KEY (`fk_client_num`) REFERENCES `tracking` (`fk_client_num`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`fk_client_num`) REFERENCES `customer` (`pk_client_num`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`fk_client_num`) REFERENCES `car` (`fk_client_num`);

--
-- Constraints for table `return_point`
--
ALTER TABLE `return_point`
  ADD CONSTRAINT `return_point_ibfk_1` FOREIGN KEY (`fk_client_num`) REFERENCES `customer` (`pk_client_num`),
  ADD CONSTRAINT `return_point_ibfk_2` FOREIGN KEY (`fk_client_num`) REFERENCES `final_inspection` (`fk_client_num`);

--
-- Constraints for table `tracking`
--
ALTER TABLE `tracking`
  ADD CONSTRAINT `tracking_ibfk_1` FOREIGN KEY (`fk_client_num`) REFERENCES `customer` (`pk_client_num`),
  ADD CONSTRAINT `tracking_ibfk_2` FOREIGN KEY (`fk_client_num`) REFERENCES `customer` (`pk_client_num`),
  ADD CONSTRAINT `tracking_ibfk_3` FOREIGN KEY (`fk_client_num`) REFERENCES `pick_up_point` (`fk_client_num`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
