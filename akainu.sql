-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2017 at 03:56 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akainu`
--

-- --------------------------------------------------------

--
-- Table structure for table `subnet_ip`
--

CREATE TABLE `subnet_ip` (
  `subnet_ip_id` int(11) NOT NULL,
  `subnetID` int(11) NOT NULL,
  `CIDR` int(11) NOT NULL,
  `subnetStart` int(11) NOT NULL,
  `subnetEnd` int(11) NOT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `subnetRange` int(11) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subnet_map`
--

CREATE TABLE `subnet_map` (
  `submap_id` int(11) NOT NULL,
  `subnet_ip_id` int(11) NOT NULL,
  `range_ip_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subnet_range`
--

CREATE TABLE `subnet_range` (
  `range_id` int(11) NOT NULL,
  `ipAddress` int(11) NOT NULL,
  `subnetMask` int(11) NOT NULL,
  `details` text NOT NULL,
  `device` int(11) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subnet_ip`
--
ALTER TABLE `subnet_ip`
  ADD PRIMARY KEY (`subnet_ip_id`);

--
-- Indexes for table `subnet_map`
--
ALTER TABLE `subnet_map`
  ADD PRIMARY KEY (`submap_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subnet_ip`
--
ALTER TABLE `subnet_ip`
  MODIFY `subnet_ip_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subnet_map`
--
ALTER TABLE `subnet_map`
  MODIFY `submap_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
