-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2016 at 12:38 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zimtrain`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
`user_id` bigint(20) NOT NULL,
  `user_name` text NOT NULL,
  `user_pin` tinytext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`user_id`, `user_name`, `user_pin`) VALUES
(1, 'mdabuko', '1994'),
(2, 'ingwani', 'lyton');

-- --------------------------------------------------------

--
-- Table structure for table `class_info`
--

CREATE TABLE IF NOT EXISTS `class_info` (
  `class_id` varchar(3) NOT NULL DEFAULT '',
  `class_name` tinytext,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_info`
--

INSERT INTO `class_info` (`class_id`, `class_name`, `description`) VALUES
('ECO', 'Economy', 'The Economy Class is the final offering available for this reservations system.\r\nEconomy Class is the most affordable of all the classes and offers up to 100 seats per compartment without bed facilities for the night time. Passengers are not restricted to same sex compartments and therefore provides for great social mingling during trips.'),
('SLP', 'Sleeper', 'The first class offering is out premium offering for this reservations system. The class has up to 10 separate compartments each of which can accomodate up to 6 people. That means a total of 60 seats are availble for each First Class coach. Beds are available for sleeping at night time.\r\n2 of the class’ compartments are reserved for couples, where all couples booked in the first class will share the compartment.\r\n*With the execption of the couples compartment, other bookings made for the First Class will be assinged to coaches with passengrers of the same sex.'),
('STN', 'Standard', 'The Standard Class is the second most premium offering for this reservations system.\r\nThe class offers up to 100 seats per compartment without bed facilities for the night time. The class also has excellent security features to keep you safe at night or all throughout your trips. Socials mingling is permitted without the restriction of passengers being bound to same sex arrangements.');

-- --------------------------------------------------------

--
-- Table structure for table `ticketing_memory`
--

CREATE TABLE IF NOT EXISTS `ticketing_memory` (
  `class_name` tinytext NOT NULL,
  `coach_no` int(11) NOT NULL,
  `compartment` varchar(1) NOT NULL,
  `seat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticketing_memory`
--

INSERT INTO `ticketing_memory` (`class_name`, `coach_no`, `compartment`, `seat`) VALUES
('Sleeper', 3, 'A', 1),
('Standard', 1, 'A', 2),
('Economy', 1, 'A', 1),
('SleeperM', 1, 'C', 1),
('SleeperF', 1, 'G', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_details`
--

CREATE TABLE IF NOT EXISTS `ticket_details` (
`ticket_count` bigint(20) NOT NULL,
  `ticket_no` varchar(10) NOT NULL,
  `class_name` tinytext NOT NULL,
  `passenger_name` text,
  `nat_id` varchar(14) NOT NULL,
  `travel_date` date DEFAULT NULL,
  `passenger_sex` varchar(1) DEFAULT NULL,
  `trip` tinytext,
  `start_point` tinytext,
  `end_point` tinytext,
  `cost` decimal(10,0) NOT NULL,
  `booking_date` date NOT NULL,
  `payment` varchar(8) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_details`
--

INSERT INTO `ticket_details` (`ticket_count`, `ticket_no`, `class_name`, `passenger_name`, `nat_id`, `travel_date`, `passenger_sex`, `trip`, `start_point`, `end_point`, `cost`, `booking_date`, `payment`) VALUES
(1, '1-G-1', 'Sleeper', 'mary', '3445t67', '2016-03-16', 'F', 'RT', 'Harare', 'Macheke/Headlands', '8', '2016-02-17', 'paid'),
(2, '1-C-1', 'Sleeper', 'laiton ingwani', '14-112813 n 12', '2016-03-06', 'M', 'RT', 'Harare', 'Mutare', '20', '2016-02-17', ' Paid'),
(3, '1-A-1', 'Standard', 'samson', '123643t56', '2016-03-01', 'M', 'RT', 'Harare', 'Macheke/Headlands', '6', '2016-02-17', 'Paid'),
(4, '1-A-2', 'Standard', 'miner drude', '11234r56', '2016-03-01', 'M', 'ST', 'Harare', 'Macheke/Headlands', '3', '2016-02-17', 'Not Paid'),
(5, '1-G-1', 'Sleeper', 'navela shuvai', '112324t45', '2016-03-01', 'F', 'RT', 'Harare', 'Rusape', '12', '2016-02-17', ' Paid'),
(6, '1-C-1', 'Sleeper', 'henry muchena', '234344m78', '2016-03-01', 'M', 'RT', 'Harare', 'Rusape', '12', '2016-02-17', ' Paid'),
(7, '1-C-2', 'Sleeper', 'Trust Marime', '12 344n 57', '2016-03-06', 'M', 'RT', 'Harare', 'Mutare', '20', '2016-02-17', 'Paid'),
(8, '1-C-3', 'Sleeper', 'Trust Marime', '12 344n 57', '2016-03-06', 'M', 'RT', 'Harare', 'Mutare', '20', '2016-02-17', 'Not Paid'),
(9, '1-C-4', 'Sleeper', 'Trust Marime', '12 344n 57', '2016-03-06', 'M', 'RT', 'Harare', 'Mutare', '20', '2016-02-17', 'Not Paid'),
(10, '1-A-1', 'Economy', 'yugenia stole', '12344u89', '2016-03-03', 'M', 'RT', 'Harare', 'Macheke/Headlands', '4', '2016-02-18', 'Not Paid'),
(11, '1-D-3', 'Sleeper', 'maria', '4863582u78', '2016-03-05', 'M', 'RT', 'Harare', 'Mutare', '20', '2016-02-18', 'paid'),
(12, '1-D-4', 'Sleeper', 'gofrey chimuti', '23451263441l98', '2016-03-04', 'M', 'RT', 'Harare', 'Mutare', '20', '2016-02-18', 'paid'),
(13, '1-D-5', 'Sleeper', 'Stephen Kamera', '12 345267 Y14', '2016-03-02', 'M', 'RT', 'Harare', 'Rusape', '12', '2016-02-18', 'paid'),
(14, '1-D-6', 'Sleeper', 'herry henry', '476647u78', '2016-03-01', 'M', 'RT', 'Harare', 'Macheke/Headlands', '8', '2016-02-18', 'Not Paid'),
(15, '1-E-1', 'Sleeper', 'SEDDIE NYAHATHO', '234356O98', '2016-03-09', 'M', 'RT', 'Harare', 'Rusape', '12', '2016-02-18', 'paid'),
(16, '1-E-2', 'Sleeper', 'tsandukwa', '157471352n90', '2016-03-10', 'M', 'RT', 'Harare', 'Mutare', '20', '2016-02-18', 'Not Paid'),
(19, '1-A-8', 'Economy', 'grey', '234324j798k', '2016-03-01', 'M', 'RT', 'Harare', 'Macheke/Headlands', '4', '2016-02-18', 'Not Paid'),
(20, '1-A-3', 'Standard', 'dobbie gray', '123466o 78', '2016-03-08', 'M', 'RT', 'Harare', 'Rusape', '8', '2016-02-18', 'Not Paid'),
(21, '1-A-4', 'Standard', 'dobbie gray', '123466o 78', '2016-03-08', 'M', 'RT', 'Harare', 'Rusape', '8', '2016-02-18', 'Not Paid'),
(22, '1-A-5', 'Standard', 'dobbie gray', '123466o 78', '2016-03-08', 'M', 'RT', 'Harare', 'Rusape', '8', '2016-02-18', 'Not Paid'),
(23, '1-A-6', 'Standard', 'dobbie gray', '123466o 78', '2016-03-08', 'M', 'RT', 'Harare', 'Rusape', '8', '2016-02-18', 'Not Paid'),
(24, '1-A-1', 'Sleeper', 'naison nenerai', '345666o89', '2016-03-01', 'C', 'RT', 'Harare', 'Mutare', '40', '2016-02-18', 'Not Paid'),
(25, '1-A-2', 'Sleeper', 'naison nenerai', '345666o89', '2016-03-01', 'C', 'RT', 'Harare', 'Mutare', '40', '2016-02-18', 'Not Paid'),
(26, '1-A-3', 'Sleeper', 'naison nenerai', '345666o89', '2016-03-01', 'C', 'RT', 'Harare', 'Mutare', '40', '2016-02-18', 'Not Paid'),
(27, '1-A-4', 'Sleeper', 'naison nenerai', '345666o89', '2016-03-01', 'C', 'RT', 'Harare', 'Mutare', '40', '2016-02-18', 'Not Paid'),
(28, '1-A-5', 'Sleeper', 'naison nenerai', '345666o89', '2016-03-01', 'C', 'RT', 'Harare', 'Mutare', '40', '2016-02-18', 'Not Paid'),
(29, '1-A-6', 'Sleeper', 'naison nenerai', '345666o89', '2016-03-01', 'C', 'RT', 'Harare', 'Mutare', '40', '2016-02-18', 'Not Paid'),
(30, '2-A-1', 'Sleeper', 'naison nenerai', '345666o89', '2016-03-01', 'C', 'RT', 'Harare', 'Mutare', '40', '2016-02-18', 'Not Paid'),
(31, '2-A-2', 'Sleeper', 'naison nenerai', '345666o89', '2016-03-01', 'C', 'RT', 'Harare', 'Mutare', '40', '2016-02-18', 'Not Paid'),
(32, '2-A-3', 'Sleeper', 'naison nenerai', '345666o89', '2016-03-01', 'C', 'RT', 'Harare', 'Mutare', '40', '2016-02-18', 'Not Paid'),
(33, '2-A-4', 'Sleeper', 'naison nenerai', '345666o89', '2016-03-01', 'C', 'RT', 'Harare', 'Mutare', '40', '2016-02-18', 'Not Paid'),
(34, '2-A-5', 'Sleeper', 'naison nenerai', '345666o89', '2016-03-01', 'C', 'RT', 'Harare', 'Mutare', '40', '2016-02-18', 'Not Paid'),
(35, '2-A-6', 'Sleeper', 'naison nenerai', '345666o89', '2016-03-01', 'C', 'RT', 'Harare', 'Mutare', '40', '2016-02-18', 'Not Paid'),
(36, '1-A-1', 'Sleeper', 'dfghdhg', '12344i78', '2016-03-18', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-18', 'Not Paid'),
(37, '1-A-2', 'Sleeper', 'dfghdhg', '12344i78', '2016-03-18', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-18', 'Not Paid'),
(38, '1-A-3', 'Sleeper', 'dfghdhg', '12344i78', '2016-03-18', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-18', 'Not Paid'),
(39, '1-A-4', 'Sleeper', 'dfghdhg', '12344i78', '2016-03-18', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-18', 'Not Paid'),
(40, '1-A-5', 'Sleeper', 'dfghdhg', '12344i78', '2016-03-18', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-18', 'Not Paid'),
(41, '1-A-6', 'Sleeper', 'dfghdhg', '12344i78', '2016-03-18', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-18', 'Not Paid'),
(42, '2-A-1', 'Sleeper', 'dfghdhg', '12344i78', '2016-03-18', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-18', 'Not Paid'),
(43, '2-A-2', 'Sleeper', 'dfghdhg', '12344i78', '2016-03-18', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-18', 'Not Paid'),
(44, '2-A-3', 'Sleeper', 'dfghdhg', '12344i78', '2016-03-18', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-18', 'Not Paid'),
(45, '2-A-4', 'Sleeper', 'dfghdhg', '12344i78', '2016-03-18', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-18', 'Not Paid'),
(46, '2-A-5', 'Sleeper', 'dfghdhg', '12344i78', '2016-03-18', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-18', 'Not Paid'),
(47, '2-A-6', 'Sleeper', 'dfghdhg', '12344i78', '2016-03-18', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-18', 'Not Paid'),
(48, '1-A-1', 'Sleeper', 'yuge mrt', '13124k89', '2016-03-10', 'C', 'RT', 'Harare', 'Rusape', '24', '2016-02-19', 'Not Paid'),
(49, '1-A-1', 'Sleeper', 'yuge mrt', '13124k89', '2016-03-10', 'C', 'RT', 'Harare', 'Rusape', '24', '2016-02-19', 'Not Paid'),
(50, '1-A-1', 'Sleeper', 'yuge mrt', '13124k89', '2016-03-10', 'C', 'RT', 'Harare', 'Rusape', '24', '2016-02-19', 'Not Paid'),
(51, '1-A-1', 'Sleeper', 'yuge mrt', '13124k89', '2016-03-10', 'C', 'RT', 'Harare', 'Rusape', '24', '2016-02-19', 'Not Paid'),
(52, '1-A-1', 'Sleeper', 'yuge mrt', '13124k89', '2016-03-10', 'C', 'RT', 'Harare', 'Rusape', '24', '2016-02-19', 'Not Paid'),
(54, '1-A-1', 'Sleeper', 'yuge mrt', '13124k89', '2016-03-10', 'C', 'RT', 'Harare', 'Rusape', '24', '2016-02-19', 'Not Paid'),
(57, '1-A-1', 'Sleeper', 'ytertyeww', '1231233l78', '2016-03-10', 'C', 'RT', 'Harare', 'Rusape', '24', '2016-02-19', 'Not Paid'),
(63, '1-A-1', 'Sleeper', 'ilo', '56t7', '2016-03-10', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(64, '1-A-1', 'Sleeper', 'ilo', '56t7', '2016-03-10', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(65, '1-A-1', 'Sleeper', 'ioi', '789u79', '2016-03-10', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(66, '1-A-1', 'Sleeper', 'harare mars', '4536b87', '2016-03-06', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(67, '1-A-1', 'Sleeper', 'friday', '57644j98', '2016-03-07', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(68, '1-A-1', 'Sleeper', 'nhy', '567t57', '2016-03-07', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(69, '1-A-1', 'Sleeper', 'nhy', '567t57', '2016-03-07', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(70, '1-A-1', 'Sleeper', 'nhy', '567t57', '2016-03-07', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(71, '1-A-1', 'Sleeper', 'nhy', '567t57', '2016-03-07', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(72, '1-A-1', 'Sleeper', 'ght', '467u87', '2016-03-06', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(73, '1-A-1', 'Sleeper', 'ght', '467u87', '2016-03-06', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(74, '1-A-1', 'Sleeper', 'ght', '467u87', '2016-03-06', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(75, '1-A-1', 'Sleeper', 'taps3', '898u7', '2016-03-08', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(76, '1-A-1', 'Sleeper', 'taps3', '898u7', '2016-03-08', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(77, '1-A-1', 'Sleeper', 'taps', '897u7', '2016-03-08', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(78, '1-A-1', 'Sleeper', 'gaga', '7876h90', '2016-03-10', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(79, '1-A-1', 'Sleeper', 'gagas', '6554t5', '2016-03-10', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(80, '1-A-1', 'Sleeper', 'gagas', '6554t5', '2016-03-10', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(81, '1-A-1', 'Sleeper', 'gagas', '6554t5', '2016-03-10', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(82, '1-A-1', 'Sleeper', 'gagas', '6554t5', '2016-03-10', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(83, '1-A-1', 'Sleeper', 'gagas', '6554t5', '2016-03-10', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(84, '1-A-2', 'Sleeper', 'gagas', '6554t5', '2016-03-10', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(85, '', 'Sleeper', 'gagas', '6554t5', '2016-03-10', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(86, '', 'Sleeper', 'gagas', '6554t5', '2016-03-10', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(87, '', 'Sleeper', 'gagas', '6554t5', '2016-03-10', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(88, '', 'Sleeper', 'gagas', '5656565', '2016-03-13', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(89, '', 'Sleeper', 'gagas', '5656565', '2016-03-13', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(90, '', 'Sleeper', 'gagas', '5656565', '2016-03-13', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(91, '2-A-1', 'Sleeper', 'gagas', '5656565', '2016-03-13', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(92, '2-A-2', 'Sleeper', 'gagas', '5656565', '2016-03-13', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(93, '1-C-1', 'Sleeper', 'moyo', '8987u7', '2016-03-14', 'M', 'RT', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(94, '1-A-1', 'Sleeper', 'moyo', '6554t5', '2016-03-14', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(95, '1-A-2', 'Sleeper', 'moyo', '6554t5', '2016-03-14', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(96, '2-A-1', 'Sleeper', 'moyo', '6554t5', '2016-03-14', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(97, '2-A-2', 'Sleeper', 'moyo', '6554t5', '2016-03-14', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(98, '1-A-1', 'Sleeper', 'dee', '2334e4', '2016-03-15', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(99, '1-A-2', 'Sleeper', 'dee', '2334e4', '2016-03-15', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(100, '1-A-3', 'Sleeper', 'dee', '2334e4', '2016-03-15', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(101, '1-A-4', 'Sleeper', 'dee', '2334e4', '2016-03-15', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(102, '1-A-5', 'Sleeper', 'dee', '2334e4', '2016-03-15', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(103, '1-A-6', 'Sleeper', 'dee', '2334e4', '2016-03-15', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(104, '2-A-1', 'Sleeper', 'dee', '2334e4', '2016-03-15', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(105, '2-A-2', 'Sleeper', 'dee', '2334e4', '2016-03-15', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(106, '1-A-1', 'Sleeper', 'moyow', '878773o0', '2016-03-15', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(107, '', 'Sleeper', 'moyow', '878773o0', '2016-03-15', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(108, '', 'Sleeper', 'moyow', '878773o0', '2016-03-15', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(109, '', 'Sleeper', 'moyow', '878773o0', '2016-03-15', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(110, '2-B-2', 'Sleeper', 'moyow', '878773o0', '2016-03-15', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(111, '1-A-1', 'Sleeper', 'Mdabuko Magadlela', '23ghhk', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(112, '2-B-2', 'Sleeper', 'Mdabuko Magadlela', '23ghhk', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(113, '1-A-1', 'Sleeper', 'nigeria', '77u', '2016-03-15', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(114, '2-A-1', 'Sleeper', 'nigeria', '77u', '2016-03-15', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(115, '1-A-1', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(116, '1-A-1', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(117, '1-A-1', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(118, '1-A-1', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(119, '1-A-1', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(120, '1-A-1', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(121, '1-A-1', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(122, '1-A-1', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(123, '1-A-1', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(124, '1-A-1', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(125, '1-A-1', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(126, '1-A-1', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(127, '1-A-2', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(128, '1-A-3', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(129, '1-A-4', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(130, '1-A-5', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(131, '1-A-6', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(132, '', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(133, '', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(134, '2-A-1', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(135, '2-A-2', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(136, '2-A-3', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(137, '2-A-4', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(138, '2-A-5', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(139, '2-A-6', 'Sleeper', 'Mdabuko Magadlela', '4513 hjashd', '2016-03-16', 'C', 'RT', 'Harare', 'Macheke/Headlands', '16', '2016-02-19', 'Not Paid'),
(140, '1-A-1', 'Sleeper', 'gagas', '6554t5', '2016-03-01', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(141, '1-B-1', 'Sleeper', 'gagas', '6554t5', '2016-03-01', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(142, '2-A-1', 'Sleeper', 'gagas', '6554t5', '2016-03-01', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid'),
(143, '2-B-1', 'Sleeper', 'gagas', '6554t5', '2016-03-01', 'C', 'ST', 'Harare', 'Macheke/Headlands', '8', '2016-02-19', 'Not Paid');

-- --------------------------------------------------------

--
-- Table structure for table `trip_details`
--

CREATE TABLE IF NOT EXISTS `trip_details` (
`route_no` bigint(20) NOT NULL,
  `start_point` tinytext,
  `end_point` tinytext,
  `sleeper` decimal(3,0) DEFAULT NULL,
  `standard` decimal(3,0) DEFAULT NULL,
  `economy` decimal(3,0) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trip_details`
--

INSERT INTO `trip_details` (`route_no`, `start_point`, `end_point`, `sleeper`, `standard`, `economy`) VALUES
(1, 'Harare', 'Marondera', '3', '2', '1'),
(2, 'Harare', 'Macheke/Headlands', '4', '3', '2'),
(3, 'Harare', 'Rusape', '6', '4', '3'),
(4, 'Harare', 'Nyazura', '8', '6', '4'),
(5, 'Harare', 'Mutare', '10', '8', '6'),
(6, 'Marondera', 'Macheke/Headlands', '3', '2', '1'),
(7, 'Marondera', 'Rusape', '4', '3', '2'),
(8, 'Marondera', 'Nyazura', '6', '4', '3'),
(9, 'Marondera', 'Mutare', '8', '6', '4'),
(10, 'Macheke/Headlands', 'Rusape', '3', '2', '1'),
(11, 'Macheke/Headlands', 'Mutare', '6', '4', '3'),
(12, 'Rusape', 'Nyazura', '3', '2', '1'),
(13, 'Rusape', 'Mutare', '4', '3', '2'),
(14, 'Nyazura', 'Mutare', '3', '2', '1'),
(15, 'Macheke/Headlands', 'Nyazura', '4', '3', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `class_info`
--
ALTER TABLE `class_info`
 ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `ticket_details`
--
ALTER TABLE `ticket_details`
 ADD PRIMARY KEY (`ticket_count`);

--
-- Indexes for table `trip_details`
--
ALTER TABLE `trip_details`
 ADD PRIMARY KEY (`route_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ticket_details`
--
ALTER TABLE `ticket_details`
MODIFY `ticket_count` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `trip_details`
--
ALTER TABLE `trip_details`
MODIFY `route_no` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
