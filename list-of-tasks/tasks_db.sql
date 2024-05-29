-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2024 at 06:12 PM
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
-- Database: `tasks_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `quantity` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `price`, `image`, `quantity`) VALUES
(42, 'Sisig', '40.00', 'sisig.jpg', '1'),
(43, 'Water', '20.00', 'Watter.png', '1'),
(44, 'Munggo', '35.00', 'munggo.jpg', '1'),
(45, 'Adobo', '50.00', 'adobo.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `sID` varchar(200) NOT NULL,
  `course` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `Date` date NOT NULL,
  `Time` varchar(200) NOT NULL,
  `method` varchar(200) NOT NULL,
  `total_products` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `sID`, `course`, `number`, `email`, `Date`, `Time`, `method`, `total_products`, `total_price`) VALUES
(20, 'Matt', 'Ma 21345678', 'BSOM', '2147483647', 'Matt@gmail.com', '0000-00-00', '', 'Cash', 'Nilaga (1) , Munggo (3) , Sisig (1) ', '235'),
(21, 'raven', 'Ma 21345678', 'BSOM', '98671627', 'ravenvillena@gmail.com', '0000-00-00', '', 'Cash', 'Adobo (1) , Sinigang (1) ', '125'),
(22, 'Matt', 'Ma 21345678', 'BSIS', '2147483647', 'Matt@gmail.com', '0000-00-00', '', 'Cash', 'Adobo (4) , Sisig (2) , Sinigang (6) ', '710'),
(23, 'raven', 'Ma 21345678', 'BSIS', '2147483647', 'Matt@gmail.com', '0000-00-00', '', 'Gcash', 'Adobo (1) , Sisig (2) , Sinigang (1) , Munggo (1) , burger (1) , Nilaga (1) ', '360'),
(24, 'Matt', 'Ma 21345678', 'BSAIS', '12352345', 'Matt@gmail.com', '2024-05-29', '16:05', 'Cash', 'Adobo (2) ', '100'),
(25, 'raven', 'Ma 21345678', 'ACT', '345346346', 'admin@gmail.com', '2024-05-29', '16:12', 'Cash', 'Adobo (2) , Sisig (1) ', '160');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `sID` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `method` varchar(200) NOT NULL,
  `total_products` varchar(200) NOT NULL,
  `total_price` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `sID`, `course`, `number`, `email`, `Date`, `Time`, `method`, `total_products`, `total_price`) VALUES
(6, 'Adobo', 'Ma 21345678', 'BSIS', '09238998796', 'Matt@gmail.com', '2024-05-29', '22:13:00', 'Cash', 'fries (1) , Sisig (1) ', '80'),
(7, 'Matt', 'Ma 21345678', 'BSIS', '09238998796', 'Matt@gmail.com', '2024-05-29', '22:40:00', 'Cash', 'Sisig (1) , Water (1) ', '60');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(37, 'Nilaga', '70.00', 'nilaga.jpg'),
(38, 'Munggo', '35.00', 'munggo.jpg'),
(39, 'Sinigang', '65.00', 'sinigang.jpg'),
(50, 'burger', '20.00', 'burger.jpg'),
(51, 'fries', '20.00', 'fries.jpg'),
(52, 'Water', '20.00', 'Watter.png'),
(53, 'Adobo', '50.00', 'adobo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(255) NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `task_description` varchar(255) NOT NULL,
  `task_status` varchar(255) NOT NULL,
  `task_due` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `task_name`, `task_description`, `task_status`, `task_due`) VALUES
(1, 'Project', 'Hirap', 'Ongoing', 'May 02. 2024');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `role`, `token`) VALUES
(5, 'angela', 'cay', 'cay@gmail.com', '123456', 'Admin', NULL),
(6, 'Angela', 'Cay', 'Cay@gmail.com', '$2y$10$siF5xwN93x9Lq3fYRTY8ZeJADvIOTRH6WICdWPrLx8H7ZdLkI7fMm', 'User', NULL),
(8, 'Nevar', 'Villena', 'ravenvillena@gmail.com', 'admin123', 'Admin', NULL),
(9, 'Raven', 'Villena', 'admin@gmail.com', '$2y$10$aeLlDVsLmCizdoTDF9mysOJNvelUJ4PEFg51tKAvF2ia32H76s/..', 'Admin', NULL),
(10, 'Angela', 'Cay', 'Angela@gmail.com', '$2y$10$fMzZoTc3H0T2ODURpBl.PeNR66NqsxrhW6B5sVDvD0AkZvgEPGMl.', 'User', NULL),
(11, 'Carl', 'mendoza', 'carl@gmail.com', '$2y$10$OYteF1dfgMOVgMhgbWOUTe.0aagl9xIJfbU6HMytc.Bn7PGTZ3hy2', 'User', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
