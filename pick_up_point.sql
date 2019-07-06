-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2019 at 06:05 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pick_up_point`
--
ALTER TABLE `pick_up_point`
  ADD PRIMARY KEY (`pk_car_num`),
  ADD KEY `fk_client_num` (`fk_client_num`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pick_up_point`
--
ALTER TABLE `pick_up_point`
  ADD CONSTRAINT `pick_up_point_ibfk_1` FOREIGN KEY (`fk_client_num`) REFERENCES `customer` (`pk_client_num`),
  ADD CONSTRAINT `pick_up_point_ibfk_2` FOREIGN KEY (`fk_client_num`) REFERENCES `tracking` (`fk_client_num`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
