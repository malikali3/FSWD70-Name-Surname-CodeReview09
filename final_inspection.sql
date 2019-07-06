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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `final_inspection`
--
ALTER TABLE `final_inspection`
  ADD PRIMARY KEY (`pk_car_num`),
  ADD KEY `fk_client_num` (`fk_client_num`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `final_inspection`
--
ALTER TABLE `final_inspection`
  ADD CONSTRAINT `final_inspection_ibfk_1` FOREIGN KEY (`fk_client_num`) REFERENCES `customer` (`pk_client_num`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
