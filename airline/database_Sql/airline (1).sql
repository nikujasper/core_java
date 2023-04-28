-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2023 at 06:55 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `firstname`, `lastname`, `address`, `dob`, `gender`, `contact`) VALUES
('CS001', 'ps1', 'ps1', 'ad1', '2021-06-11', 'Male', 1111111111),
('CS002', 'ps2', 'ps2', 'ad2', '2009-06-18', 'Male', 1234565432),
('CS003', 'Aryan', 'Kumar', 'Gorakhpur', '2022-08-02', 'Male', 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `id` varchar(255) NOT NULL,
  `flightname` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `depart` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `deptime` varchar(255) NOT NULL,
  `arrtime` varchar(255) NOT NULL,
  `flightcharge` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`id`, `flightname`, `source`, `depart`, `date`, `deptime`, `arrtime`, `flightcharge`) VALUES
('FID001', 'flight01', 'Patna', 'Delhi', '2021-06-09', '9pm', '11pm', '4000'),
('', 'flight02', 'Delhi', 'Lucknow', '2021-06-01', '6pm', '8pm', '5000'),
('', 'flight03', 'Chandigarh', 'Delhi', '2021-06-01', '4am', '5am', '3000');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` varchar(255) NOT NULL,
  `flightid` varchar(255) NOT NULL,
  `custid` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `seats` int(11) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `flightid`, `custid`, `class`, `price`, `seats`, `date`) VALUES
('TN001', 'FO001', 'cs001', 'Economy', 8000, 2, '2021-02-03'),
('TN002', 'FID002', 'cs003', 'Business', 5000, 3, '2021-02-17'),
('TN001', 'FO001', 'cs001', 'Economy', 8000, 2, '2021-02-03'),
('TN002', 'FID002', 'cs003', 'Business', 5000, 3, '2021-02-17'),
('TN003', 'FID002', 'cs001', 'Business', 4000, 2, '2021-06-10'),
('TN004', 'FID001', 'cs002', 'Business', 4000, 3, '2021-06-15'),
('TN005', 'FID001', 'cs001', 'Economy', 4000, 1, '2022-06-14'),
('TN006', 'FID001', 'cs003', 'Economy', 4000, 1, '2022-08-02');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `username`, `password`) VALUES
('UID002', 'user', 'user', 'user', '123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
