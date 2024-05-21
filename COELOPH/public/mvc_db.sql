-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2024 at 07:46 AM
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
-- Database: `mvc_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(60) NOT NULL,
  `lastname` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `image` varchar(60) DEFAULT NULL,
  `role` varchar(60) DEFAULT NULL,
  `token` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `image`, `role`, `token`) VALUES
(90, 'John', 'Luna', 'Johnpeterluna@gmail.com', '$2y$10$1R55T4kX0SOJxI3tyrhfK.mL90n.IcO/cxCUKk9.jIXYL0PcqpTEC', 'assets/images/A3 DTF (9).png', 'Admin', 'VwIUtdAf9057nl1XLcn2h0n5tHcEXLj0wc8OAoB08UezdbX6sXUE7csc7OW5'),
(91, 'lucky', 'cruz', 'luckycruz@gmail.com', '$2y$10$h.2KX5Titu7ehWH4UCxUoOvYJXVwPyqSm0LjlLK70tIKmNXlUs4Ku', 'assets/images/download.jpg', 'Admin', 'jTnvfycU2oVQ09BE2bbvcqS5H5wr7VmpiDkomIfun2oRAo2lhsjSTmLXFpxs'),
(92, 'Robbie', 'Clerigo', 'Robbieclerigo@gmail.com', '$2y$10$Eaf6O2.Zt01vDwPTcKDR8e2oMUI5D6ypSYvfMibBIr1m/I5iteaSu', 'assets/images/A3 DTF (9).png', 'Staff', '0P8GKrmbrsq3HWt36j14jygDkv8dSBf3tbaEHyG5xVJdvf1KtysicFfz943f'),
(93, 'Aki', 'bacolod', 'akibacolod@gmail.com', '$2y$10$inKS0GRHNJB7C3OucrLMzuZ16nYs/5HcxJqmeyF6mfR4iKiDYamti', 'assets/images/442461173_471709135385835_1855407096893457404_', 'Admin', 'zaxVuoI5e53fA3fZ1NkPR4GXdgx7rmr8cebcTT8Ta9aFxpYWFVaTPt0r73t1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
