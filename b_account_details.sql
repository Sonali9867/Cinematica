-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2024 at 09:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `b_account_details`
--

CREATE TABLE `b_account_details` (
  `u_id` int(11) NOT NULL,
  `balance` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `b_account_details`
--

INSERT INTO `b_account_details` (`u_id`, `balance`) VALUES
(4, 12000.00),
(5, 70000.00),
(6, 39901.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `b_account_details`
--
ALTER TABLE `b_account_details`
  ADD PRIMARY KEY (`u_id`,`balance`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `b_account_details`
--
ALTER TABLE `b_account_details`
  ADD CONSTRAINT `b_account_details_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user1` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
