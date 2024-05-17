-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 17, 2024 at 01:42 AM
-- Server version: 8.0.31
-- PHP Version: 8.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrhotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `resid` int NOT NULL,
  `adults` int NOT NULL,
  `children` int DEFAULT NULL,
  `cidate` varchar(20) NOT NULL,
  `codate` varchar(20) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `ptype` varchar(10) NOT NULL,
  `uid` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`resid`, `adults`, `children`, `cidate`, `codate`, `amount`, `ptype`, `uid`) VALUES
(25, 1, 4, '2024-05-01', '2024-05-28', '1650', 'OFFLINE', 15),
(26, 3, 1, '2024-05-30', '2024-06-03', '1925', 'OFFLINE', 15),
(27, 1, 2, '2024-05-30', '2024-06-01', '1100', 'OFFLINE', 18),
(28, 1, 2, '2024-05-01', '2024-05-03', '1100', 'OFFLINE', 19),
(29, 1, 2, '2024-05-01', '2024-05-03', '1100', 'OFFLINE', 19),
(30, 1, 2, '2024-05-25', '2024-05-31', '1100', 'OFFLINE', 13);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `adults` int NOT NULL,
  `children` int NOT NULL,
  `cidate` varchar(20) NOT NULL,
  `codate` varchar(20) NOT NULL,
  `total` int NOT NULL,
  `uid` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `adults`, `children`, `cidate`, `codate`, `total`, `uid`) VALUES
(14, 1, 2, '2024-05-01', '2024-05-23', 1100, 12),
(15, 1, 4, '2024-05-01', '2024-05-28', 1650, 15),
(16, 3, 1, '2024-05-30', '2024-06-03', 1925, 15),
(17, 1, 2, '2024-05-01', '2024-05-03', 1100, 19);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `mid` int NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`mid`, `name`, `email`, `message`) VALUES
(1, 'aimad', 'aimad.scm@gmail.com', 'bonjour'),
(2, 'mehdi', 'mehdi@gmail.com', 'hi'),
(3, 'ayoub', 'ayoubm@gmail.com', 'cv'),
(4, 'adil', 'adil@gmail.com', '?????'),
(5, 'ilyas', 'ilyass@gmail.Com', 'bojour'),
(6, 'aimad', 'aimad.boulaadam02@gmail.com', 'bonjour!!'),
(7, 'zakarya', 'zakarya@contact.com', 'disponible!!!!');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(256) NOT NULL,
  `role` varchar(10) NOT NULL DEFAULT 'customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fname`, `lname`, `mobile`, `email`, `pwd`, `role`) VALUES
(12, 'AIMAD', 'BOULAADAM', '78654345678654', 'aimad@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'admin'),
(13, 'ADIL', 'CHARAHIL', '776545467', 'user2@contact.com', 'e10adc3949ba59abbe56e057f20f883e', 'customer'),
(14, 'AAA', 'JJKHK', '5678756467', 'admin@KKK.com', '9e1e06ec8e02f0a0074f2fcc6b26303b', 'customer'),
(15, 'hamid', 'hin', '1234565432', 'hamid@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'customer'),
(16, 'yasser', 'yasser', '09876543', 'yasser@gmail.com', '6531401f9a6807306651b87e44c05751', 'customer'),
(18, 'yasser', 'JJKHK', '5765432456', 'user33@contact.com', '12344', 'customer'),
(19, 'zakarya', 'BOULAADAM', '2124567654', 'zakarya@contact.com', '4a7d1ed414474e4033ac29ccb8653d9b', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`resid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `resid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `mid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
