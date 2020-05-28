-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2018 at 06:03 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shpl`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(500) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `username`, `password`, `status`) VALUES
(1, 'admin@gmail.com', '$2y$10$5amP49EJBGCxuK3M9U0XKOA9vEKZl4dbaKxgzKE3m/JzwTPE11HWK', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ventures`
--

CREATE TABLE `tbl_ventures` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `venture_type` varchar(60) NOT NULL,
  `venture_status` varchar(30) NOT NULL,
  `MIM` varchar(30) NOT NULL,
  `ROI` varchar(20) NOT NULL,
  `venture_images` text NOT NULL,
  `location` varchar(30) NOT NULL,
  `highlights` text NOT NULL,
  `specifications` text NOT NULL,
  `terms` text NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ventures`
--

INSERT INTO `tbl_ventures` (`id`, `title`, `venture_type`, `venture_status`, `MIM`, `ROI`, `venture_images`, `location`, `highlights`, `specifications`, `terms`, `status`, `created_at`) VALUES
(1, 'Sample 123', 'Commercial', 'Completed', '2480000', '52000', '[\"15326370601.jpg\",\"15326370602.jpg\",\"15326370603.jpg\",\"15326370604.jpg\"]', '17.258647,78.2589247', '[{\"icon\":\"153263706011.jpg\",\"highlights\":\"Highlights1\"},{\"icon\":\"153263706022.jpg\",\"highlights\":\"Highleitd123\"}]', '[{\"icon\":\"153263706033.jpg\",\"specifications\":\"sdfsadf\"}]', 'dfsdfsfdsadf', 1, '2018-07-27 02:01:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ventures`
--
ALTER TABLE `tbl_ventures`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_ventures`
--
ALTER TABLE `tbl_ventures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
