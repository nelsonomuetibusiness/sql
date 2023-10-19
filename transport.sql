-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 19, 2023 at 10:29 AM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transport`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
CREATE TABLE IF NOT EXISTS `bookings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `bus_id` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `bus_id` (`bus_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `bus_id`, `date`, `time`) VALUES
(1, 1, 1, '2023-06-16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

DROP TABLE IF EXISTS `bus`;
CREATE TABLE IF NOT EXISTS `bus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bus_number` int NOT NULL,
  `trip` varchar(255) NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `bus_number`, `trip`, `price`) VALUES
(1, 1, 'Ikeja-Victoria Island', 700),
(2, 2, 'Victoria Island-Ikeja ', 700),
(3, 3, 'Oshodi-Ajah', 1000),
(4, 4, 'Ajah-Oshodi', 1000),
(5, 5, 'Ikorodu-Berger', 600),
(6, 7, 'Berger-Ikorodu', 600),
(7, 8, 'Alapere-TBS', 900),
(8, 0, 'TBS-Alapere', 900);

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

DROP TABLE IF EXISTS `buses`;
CREATE TABLE IF NOT EXISTS `buses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bus_name` varchar(100) NOT NULL,
  `boarding_station` varchar(250) NOT NULL,
  `destination` varchar(250) NOT NULL,
  `seats_available` int NOT NULL,
  `amount` int NOT NULL,
  `departure_time` datetime NOT NULL,
  `duration` int NOT NULL,
  `rating` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trip_history`
--

DROP TABLE IF EXISTS `trip_history`;
CREATE TABLE IF NOT EXISTS `trip_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(200) NOT NULL,
  `bus_number` int NOT NULL,
  `route` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `trip_history`
--

INSERT INTO `trip_history` (`id`, `user`, `bus_number`, `route`, `price`, `date`) VALUES
(1, 'reee', 8, 'Alapere-TBS', 900, '2023-07-21'),
(2, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-06'),
(3, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(4, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(5, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(6, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(7, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(8, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(9, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(10, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(11, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(12, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(13, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(14, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(15, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(16, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(17, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(18, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(19, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(20, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(21, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(22, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(23, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(24, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(25, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(26, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(27, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(28, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(29, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(30, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(31, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(32, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(33, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(34, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(35, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(36, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(37, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(38, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(39, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(40, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(41, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(42, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(43, 'reee', 1, 'Ikeja-Victoria Island', 700, '2023-07-07'),
(44, 'reee', 7, 'Berger-Ikorodu', 600, '2023-07-12'),
(45, 'reee', 4, 'Ajah-Oshodi', 1000, '2023-07-07'),
(46, 'reee', 5, 'Ikorodu-Berger', 600, '2023-07-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`) VALUES
(2, 'nellz', '12345', 'nellz@gmail.com'),
(4, 'reee', '$2y$10$tT7yKG7ZtCNqTY8OZNlqpeWvuCBY8kP68TWLcr12svhNmy8daNXLi', 'dgdgdg@gmail.com'),
(5, 'nellz1', '$2y$10$fg0ygr/f1f30yo.bLhkCIOtX9r0iXAQxCmoHMSkWTv319cnU7qJO6', 'nellz1@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
