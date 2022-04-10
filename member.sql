-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2022 at 07:24 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `member`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `sno` int(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`sno`, `name`, `email`, `comment`, `dt`) VALUES
(1, 'codeguru173', 'harkhabhaivala@gmail.com', '', '2022-03-31 02:15:04'),
(2, 'codeguru173', 'harkhabhaivala@gmail.com', 'msg', '2022-03-31 02:16:27'),
(3, 'Codeguru173', 'pruthvigadhiya1604@gmail.com', 'cccccccc', '2022-03-31 10:57:17'),
(4, 'Dharmesh', 'dvala453@gmail.com', 'VV', '2022-04-07 15:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `msg` varchar(200) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp(),
  `sno` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `mobile`, `msg`, `dt`, `sno`) VALUES
('', '', 0, '', '2022-03-31 02:04:19', 1),
('Pruthvi Gadhiya', 'pruthvigadhiya1604@gmail.com', 9313817404, 'vvvv', '2022-03-31 02:04:41', 2),
('Pruthvi Gadhiya', 'pruthvigadhiya1604@gmail.com', 9313817404, 'vvvv', '2022-03-31 02:05:58', 3),
('manav', 'joshi', 9313817404, 'jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', '2022-03-31 02:09:12', 4),
('Dharmesh Vala', 'dvala453@gmail.com', 6354434661, 'SFG', '2022-04-07 15:12:33', 5);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `sno` int(4) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `confirm_email` varchar(50) NOT NULL,
  `visit_MNM` varchar(80) NOT NULL,
  `joining_date` date NOT NULL,
  `mobile` bigint(11) NOT NULL,
  `veterinary_skills` varchar(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  `time_spent` varchar(15) NOT NULL,
  `comment` varchar(250) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`sno`, `fname`, `lname`, `city`, `email`, `confirm_email`, `visit_MNM`, `joining_date`, `mobile`, `veterinary_skills`, `address`, `time_spent`, `comment`, `dt`) VALUES
(1, 'Dharmesh', 'Vala', 'Surat', 'dvala453@gmail.com', 'dvala453@gmail.com', 'YES VISITED FOR 1 MONTH', '2022-01-05', 6354478541, 'YES', 'SITARAM SOCIETY PUNAGAM', '4 HOUR+', 'NO COMMENT', '2022-03-30 23:33:47'),
(2, 'Dharmesh', 'Vala', 'Surat', 'dvala453@gmail.com', 'dvala453@gmail.com', 'YES ', '2022-01-05', 6354478541, 'YES', 'SITARAM SOCIETY', '4 HOUR+', 'NO COMMENT', '2022-03-30 23:35:47'),
(3, 'Dharmesh', 'Vala', 'Surat', 'harkhabhaivala@gmail.com', 'harkhabhaivala@gmail.com', 'Yes, I volunteered for more than a week ', '2022-04-09', 9313817404, 'on', 'B 37 Sitaram Socitey', '3 hour', 'ffff', '2022-03-31 00:54:38'),
(4, 'Pruthvi', 'Gadhiya', 'Bharuch', 'pruthvigadhiya1604@gmail.com', 'pruthvigadhiya1604@gmail.com', 'Yes, I volunteered for less than a week ', '2022-04-07', 9313817404, 'on', 'A. M. Naik house of scolars, Near birla vishvakarma Mahavidhyalay BVM', '3 hour', 'FFFF', '2022-03-31 01:29:34'),
(5, 'Pruthvi', 'Gadhiya', 'Gandhinagar', 'pruthvigadhiya1604@gmail.com', 'pruthvigadhiya1604@gmail.com', 'Yes, I visited ', '2022-04-07', 9313817404, 'on', 'A. M. Naik house of scolars, Near birla vishvakarma Mahavidhyalay BVM', '2 hour', 'vvvvvv', '2022-03-31 01:37:53'),
(6, 'SMIT', 'PATIWALA', 'vadodara', 'harkhabhaivala@gmail.com', 'harkhabhaivala@gmail.com', 'Yes, I volunteered for less than a week ', '2022-04-13', 6354434661, 'yes', 'B 37 Sitaram Socitey', '2 hour', 'FUCK SMEET CHARM', '2022-04-07 15:10:19'),
(7, 'Pruthvi', 'Gadhiya', 'Rajkot', 'pruthvigadhiya1604@gmail.com', 'pruthvigadhiya1604@gmail.com', 'Yes, I visited ', '2022-04-14', 9313817404, 'yes', 'A. M. Naik house of scolars, Near birla vishvakarma Mahavidhyalay BVM', '2 hour', 'ccccccccccccc', '2022-04-07 15:16:18'),
(8, 'Pruthvi', 'Gadhiya', 'Rajkot', 'pruthvigadhiya1604@gmail.com', 'pruthvigadhiya1604@gmail.com', 'Yes, I visited ', '2022-04-14', 9313817404, 'yes', 'A. M. Naik house of scolars, Near birla vishvakarma Mahavidhyalay BVM', '2 hour', 'ccccccccccccc', '2022-04-07 15:16:35');

-- --------------------------------------------------------

--
-- Table structure for table `volunteer`
--

CREATE TABLE `volunteer` (
  `sno` int(4) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `confirm_email` varchar(50) NOT NULL,
  `visit_MNM` varchar(30) NOT NULL,
  `joining_date` date NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `veterinary_skills` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `time_spent` varchar(60) NOT NULL,
  `comment` varchar(250) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `volunteer`
--

INSERT INTO `volunteer` (`sno`, `fname`, `lname`, `city`, `email`, `confirm_email`, `visit_MNM`, `joining_date`, `mobile`, `veterinary_skills`, `address`, `time_spent`, `comment`, `dt`) VALUES
(1, 'Pruthvi', 'Gadhiya', 'Gandhinagar', 'pruthvigadhiya1604@gmail.com', 'pruthvigadhiya1604@gmail.com', 'Yes, I visited ', '2022-04-08', 9313817404, 'yes', 'A. M. Naik house of scolars, Near birla vishvakarma Mahavidhyalay BVM', '1 hour', 'good to know about it', '2022-03-31 01:47:10'),
(2, 'Dharmesh', 'Vala', 'Surat', 'harkhabhaivala@gmail.com', 'harkhabhaivala@gmail.com', 'Yes, I volunteered for less th', '2022-04-06', 6354434661, 'yes', 'B 37 Sitaram Socitey', '2 hour', 'want to join ASAP', '2022-03-31 01:50:18'),
(3, 'Sitaram', 'Vala', 'vadodara', 'harkhabhaivala@gmail.com', 'harkhabhaivala@gmail.com', 'Yes, I volunteered for more th', '2022-04-21', 9313817404, 'yes', 'B 37 Sitaram Socitey', '3 hour', 'BBBBB', '2022-04-07 15:11:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `volunteer`
--
ALTER TABLE `volunteer`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `sno` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `sno` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `sno` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `volunteer`
--
ALTER TABLE `volunteer`
  MODIFY `sno` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
