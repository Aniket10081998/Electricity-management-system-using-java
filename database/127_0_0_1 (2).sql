-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 14, 2019 at 03:11 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `project`;

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE IF NOT EXISTS `bill` (
  `meter_number` varchar(10) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `units` varchar(5) DEFAULT NULL,
  `amount` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`meter_number`, `month`, `units`, `amount`) VALUES
('1001', 'January', '90', '864'),
('1001', 'January', '34', '472');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
CREATE TABLE IF NOT EXISTS `emp` (
  `name` varchar(20) DEFAULT NULL,
  `meter_number` varchar(10) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`name`, `meter_number`, `address`, `state`, `city`, `email`, `phone`) VALUES
('Edward', '1001', 'Lodhi Road', 'Delhi', 'Delhi', 'xyz@gmail.com', '5478963215'),
('John', '1002', 'Gandhi Road', 'xyz state', 'xyz city', 'abcd@gmail.com', '5248789654'),
('Rahul drawid', '1003', 'Nehru Road', 'mno state', 'mno city', 'mno@gmail.com', '258745693'),
('Virat Kohli', '1004', 'vallahbhai patel road', 'vbn state', 'vbn city', 'vbn@gmail.com', '1478523697'),
('ANIKET', '1', 'KSMKMD', 'KKSMKSM', 'KXSMKMA', 'MSXKMU887', '998988'),
('tina', '123', 'ahgsyqg', 'up', 'dakjsdk', 'nkas', '54678');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', '12345'),
('manager', '123');

-- --------------------------------------------------------

--
-- Table structure for table `loginn`
--

DROP TABLE IF EXISTS `loginn`;
CREATE TABLE IF NOT EXISTS `loginn` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

DROP TABLE IF EXISTS `tax`;
CREATE TABLE IF NOT EXISTS `tax` (
  `meter_location` varchar(10) DEFAULT NULL,
  `meter_type` varchar(15) DEFAULT NULL,
  `phase_code` varchar(5) DEFAULT NULL,
  `bill_type` varchar(10) DEFAULT NULL,
  `days` varchar(5) DEFAULT NULL,
  `meter_rent` varchar(5) DEFAULT NULL,
  `mcb_rent` varchar(5) DEFAULT NULL,
  `service_rent` varchar(5) DEFAULT NULL,
  `gst` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`meter_location`, `meter_type`, `phase_code`, `bill_type`, `days`, `meter_rent`, `mcb_rent`, `service_rent`, `gst`) VALUES
('INSIDE', 'ELECTRONIC', '1', 'NORMAL', '30', '98', '42', '112', '48');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
