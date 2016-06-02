-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2016 at 05:55 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportsclub_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ms_categories`
--

CREATE TABLE `tbl_ms_categories` (
  `id` char(32) NOT NULL,
  `name` varchar(45) NOT NULL,
  `dscp` text NOT NULL,
  `status` char(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `created_by` varchar(45) NOT NULL,
  `udpated_dt` datetime NOT NULL,
  `updated_by` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ms_groups`
--

CREATE TABLE `tbl_ms_groups` (
  `id` char(32) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `dscp` text NOT NULL,
  `category_id` char(32) NOT NULL,
  `created_dt` datetime NOT NULL,
  `created_by` varchar(45) NOT NULL,
  `updated_dt` datetime NOT NULL,
  `updated_by` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ms_locations`
--

CREATE TABLE `tbl_ms_locations` (
  `id` char(32) NOT NULL,
  `location_name` varchar(45) NOT NULL,
  `dscp` text NOT NULL,
  `area` varchar(45) NOT NULL,
  `longtitude` text NOT NULL,
  `latitude` text NOT NULL,
  `created_dt` datetime NOT NULL,
  `created_by` varchar(45) NOT NULL,
  `updated_dt` datetime NOT NULL,
  `updated_by` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ms_loc_galleries`
--

CREATE TABLE `tbl_ms_loc_galleries` (
  `id` char(32) NOT NULL,
  `pic` text NOT NULL,
  `status` char(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `created_by` varchar(45) NOT NULL,
  `updated_dt` datetime NOT NULL,
  `updated_by` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ms_users`
--

CREATE TABLE `tbl_ms_users` (
  `id` char(32) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` char(32) NOT NULL,
  `email` varchar(45) NOT NULL,
  `status` char(1) NOT NULL,
  `name` varchar(45) NOT NULL,
  `bio` text NOT NULL,
  `pick` text NOT NULL,
  `created_dt` datetime NOT NULL,
  `created_by` varchar(45) NOT NULL,
  `updated_dt` datetime NOT NULL,
  `updated_by` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ms_users`
--

INSERT INTO `tbl_ms_users` (`id`, `username`, `password`, `email`, `status`, `name`, `bio`, `pick`, `created_dt`, `created_by`, `updated_dt`, `updated_by`) VALUES
('c4ca4238a0b923820dcc509a6f75849b', 'wildananugrah', '232cd96b26cde348ecd708fa58a3dab9', 'wildananugrah@gmail.com', 'A', 'Wildan Anugrah', 'Hi!', '', '2016-06-01 00:00:00', 'SYSTEM', '2016-06-01 00:00:00', 'SYSTEM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tx_friends`
--

CREATE TABLE `tbl_tx_friends` (
  `id` char(32) NOT NULL,
  `user_id` char(32) NOT NULL,
  `friend_id` char(32) NOT NULL,
  `status` char(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `created_by` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tx_grp_friends`
--

CREATE TABLE `tbl_tx_grp_friends` (
  `id` char(32) NOT NULL,
  `group_id` char(32) NOT NULL,
  `user_id` char(32) NOT NULL,
  `created_dt` datetime NOT NULL,
  `created_by` varchar(45) NOT NULL,
  `updated_dt` datetime NOT NULL,
  `updated_by` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_ms_categories`
--
ALTER TABLE `tbl_ms_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ms_groups`
--
ALTER TABLE `tbl_ms_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ms_locations`
--
ALTER TABLE `tbl_ms_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ms_users`
--
ALTER TABLE `tbl_ms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tx_friends`
--
ALTER TABLE `tbl_tx_friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tx_grp_friends`
--
ALTER TABLE `tbl_tx_grp_friends`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
