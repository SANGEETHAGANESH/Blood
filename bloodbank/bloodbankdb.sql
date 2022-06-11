-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2022 at 06:05 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbankdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `adminid` int(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`adminid`, `username`, `password`) VALUES
(1, 'sangeetha', '123');

-- --------------------------------------------------------

--
-- Table structure for table `blood_donation`
--

CREATE TABLE `blood_donation` (
  `unit` int(20) NOT NULL,
  `diseases` varchar(30) NOT NULL,
  `usertype` varchar(30) NOT NULL,
  `request_date` date NOT NULL,
  `donor_id` int(20) NOT NULL,
  `donation_id` int(20) NOT NULL,
  `admin_id` int(20) NOT NULL,
  `status` varchar(40) NOT NULL,
  `action` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_donation`
--

INSERT INTO `blood_donation` (`unit`, `diseases`, `usertype`, `request_date`, `donor_id`, `donation_id`, `admin_id`, `status`, `action`) VALUES
(9, 'nothing', 'Emergency user', '2022-05-15', 123, 62809, 1, 'pending', 'none'),
(9, 'nothing', 'Regular user', '2022-05-15', 201, 2147483647, 0, 'rejected', 'rejected'),
(9, 'nothing', 'Emergency user', '2022-05-15', 234, 6280, 1, 'pending', 'none'),
(9, 'nothing', 'Regular user', '2022-05-16', 456, 6281, 0, 'approved', 'added 9 units'),
(8, 'nothing', 'Regular user', '2022-05-15', 501, 628090918, 0, 'approved', 'added 8 units'),
(9, 'nothing', 'Regular user', '2022-05-15', 601, 62808, 0, 'approved', 'added 9 units'),
(8, 'nothing', 'Regular user', '2022-05-16', 2023, 6281, 0, 'approved', 'added 9 units');

-- --------------------------------------------------------

--
-- Table structure for table `blood_request`
--

CREATE TABLE `blood_request` (
  `unit` int(10) NOT NULL,
  `reason` varchar(50) NOT NULL,
  `location` varchar(100) NOT NULL,
  `bloodtype` varchar(20) NOT NULL,
  `request_date` date NOT NULL,
  `requestor_id` int(10) NOT NULL,
  `request_id` int(20) NOT NULL,
  `admin_id` int(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `action` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_request`
--

INSERT INTO `blood_request` (`unit`, `reason`, `location`, `bloodtype`, `request_date`, `requestor_id`, `request_id`, `admin_id`, `status`, `action`) VALUES
(627, '201', '', '', '0000-00-00', 2022, 0, 0, 'Stock Low', '1'),
(627, '201', '', '', '0000-00-00', 2022, 0, 0, 'Stock Low', '1'),
(1, 'fever', '', '', '2022-05-15', 601, 62808, 0, 'approved', 'removed 2 units'),
(1, 'fever', '', '', '2022-05-15', 601, 62808, 0, 'approved', 'removed 2 units'),
(2, 'fever', '', '', '2022-05-15', 601, 62808, 0, 'approved', 'removed 2 units'),
(2, 'fever', '', '', '2022-05-15', 501, 628090, 0, 'approved', 'removed 2 units'),
(1, 'fever', '', '', '2022-05-15', 501, 6280910, 0, 'approved', 'removed 1 units'),
(1, 'fever', '', '', '2022-05-15', 501, 628094, 0, 'rejected', 'rejected'),
(2, 'fever', '', '', '2022-05-16', 456, 6281, 0, 'rejected', 'rejected'),
(2, 'fever', '', '', '2022-05-16', 501, 6281, 0, 'rejected', 'rejected'),
(2, 'fever', 'Dindigul', 'A-', '2022-05-16', 501, 628212, 0, 'rejected', 'rejected'),
(20, 'fever', 'Dindigul', 'A-', '2022-05-16', 501, 628212, 0, 'rejected', 'rejected'),
(2, 'fever', 'Dindigul', 'O-', '2022-05-16', 601, 6282145, 1, 'pending', 'none'),
(1, 'fever', 'Dindigul', 'O-', '2022-05-16', 601, 62822699, 1, 'pending', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `blood_stock`
--

CREATE TABLE `blood_stock` (
  `unit` int(20) NOT NULL,
  `admin_id` int(20) NOT NULL,
  `blood_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_stock`
--

INSERT INTO `blood_stock` (`unit`, `admin_id`, `blood_type`) VALUES
(0, 1, 'A+'),
(8, 0, 'A-'),
(0, 1, 'AB+'),
(0, 1, 'AB-'),
(0, 1, 'B+'),
(0, 1, 'B-'),
(16, 0, 'O+'),
(0, 1, 'O-');

-- --------------------------------------------------------

--
-- Table structure for table `camps`
--

CREATE TABLE `camps` (
  `Id` int(20) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL,
  `location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `camps`
--

INSERT INTO `camps` (`Id`, `date`, `time`, `location`) VALUES
(1, '10-06-2022', '10.00Am', 'Pungamuthur,Udumalai'),
(2, '21-06-2022', '10.00Am', 'Dharapuram, Tirupur.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `blood_type` varchar(30) NOT NULL,
  `age` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `password`, `first_name`, `last_name`, `phone_number`, `gender`, `blood_type`, `age`) VALUES
('501', '1234', 'Thulasi', 'G', '9943828149', 'f', 'A-', 29),
('301', '12345', 'Abinaya', 'A', '9943828140', 'f', 'A+', 29),
('601', '123456', 'Vivek', 'S', '9894954617', 'f', 'O+', 29),
('123', '123', 'Hari', 'G', '9943828140', 'f', 'AB+', 25),
('234', '234', 'priya', 'A', '7604888381', 'f', 'A+', 29),
('456', '456', 'srinithi', 's', '9943828145', 'f', 'O+', 29);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `email`, `contact`, `address`, `message`) VALUES
('', '', '', '', ''),
('sangeetha', 'sangeetha@gmail.com', '9943828146', 'dindigul', 'i have it'),
('', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_donation`
--
ALTER TABLE `blood_donation`
  ADD PRIMARY KEY (`donor_id`);

--
-- Indexes for table `camps`
--
ALTER TABLE `camps`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_donation`
--
ALTER TABLE `blood_donation`
  MODIFY `donor_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2025;

--
-- AUTO_INCREMENT for table `camps`
--
ALTER TABLE `camps`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
