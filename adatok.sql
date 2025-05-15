-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2025 at 01:36 PM
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
-- Database: `adatok`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabla`
--

CREATE TABLE `tabla` (
  `Sor` int(10) UNSIGNED NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Titkos` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabla`
--

INSERT INTO `tabla` (`Sor`, `Username`, `Titkos`) VALUES
(1, 'katika@gmail.com', 'red'),
(2, 'arpi40@freemail.hu', 'green'),
(3, 'zsanettka@hotmail.com', 'yellow'),
(4, 'hatizsak@protonmail.com', 'blue'),
(5, 'terpeszterez@citromail.hu', 'black'),
(6, 'nagysanyi@gmail.hu', 'white');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabla`
--
ALTER TABLE `tabla`
  ADD PRIMARY KEY (`Sor`),
  ADD UNIQUE KEY `Username_unique` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabla`
--
ALTER TABLE `tabla`
  MODIFY `Sor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
