-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2019 at 06:04 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `damages_if_no`
--
ALTER TABLE `damages_if_no`
  ADD PRIMARY KEY (`pk_car_num`),
  ADD KEY `fk_client_num` (`fk_client_num`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `damages_if_no`
--
ALTER TABLE `damages_if_no`
  ADD CONSTRAINT `damages_if_no_ibfk_1` FOREIGN KEY (`fk_client_num`) REFERENCES `customer` (`pk_client_num`),
  ADD CONSTRAINT `damages_if_no_ibfk_2` FOREIGN KEY (`fk_client_num`) REFERENCES `final_inspection` (`fk_client_num`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
