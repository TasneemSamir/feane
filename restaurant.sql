-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2024 at 12:05 AM
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
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(18) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `password`, `name`, `email`, `photo`) VALUES
('john_doe', '1234', 'John Doe', 'john123@gmail.com', 'images/img.jpg'),
('tasneem_samir', '6789', 'Tasneem Samir', 'tasneem6789@gmail.com', 'images/user.png'),
('mariam', '111', 'mariam', 'mariam12@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `num_persons` enum('2','3','4','5') DEFAULT NULL,
  `book_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`name`, `phone`, `email`, `num_persons`, `book_date`) VALUES
('tasneem samir', '4567890', 'tasneemsamirmohamed888@gmail.com', '2', '2024-09-25'),
('ahmed', '678990-09-76', 'ahmed123@gmail.com', '4', '2024-09-06'),
('noura ahmed', '472039904208', 'noura123@gmail.com', '4', '2024-09-17'),
('noura ahmed', '472039904208', 'noura123@gmail.com', '4', '2024-09-17'),
('rklmsdfowme', '293482-0384', 'dfsujbcz@gmail.com', '3', '2024-09-25'),
('tttttt', '034823948', 'ttt@gmail.com', '2', '2024-09-21'),
('tttttt', '034823948', 'ttt@gmail.com', '2', '2024-09-21'),
('tttttt', '034823948', 'ttt@gmail.com', '2', '2024-09-21');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(21, 'Burger'),
(17, 'Fries'),
(19, 'Pasta'),
(18, 'Pizza');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_date` date DEFAULT NULL,
  `item_name` varchar(20) DEFAULT NULL,
  `describtion` text DEFAULT NULL,
  `dimension` varchar(20) DEFAULT NULL,
  `format` varchar(20) DEFAULT NULL,
  `active` char(4) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `price` varchar(5) NOT NULL,
  `photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_date`, `item_name`, `describtion`, `dimension`, `format`, `active`, `tag`, `price`, `photo`) VALUES
(1, '2024-09-09', 'Delicious Pizza', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', '381 x 386', 'png', 'Yes', 'Pizza', '$20', './New folder/f1.png'),
(2, '2024-09-10', 'Delicious Burger', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', '255 x 188', 'png', 'Yes', 'Burger', '$17', './New folder/f8.png'),
(4, '2024-09-01', 'Delicious Pasta', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', '499 x 282', 'png', 'Yes', 'Pasta', '$15', './New folder/f9.png'),
(5, '2024-09-30', 'French Fries', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', '611 x 405', 'png', 'Yes', 'Fries', '$10', './New folder/f5.png'),
(6, '2024-09-19', 'Delicious Pizza', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', '339 x 339', 'png', 'Yes', 'Pizza', '$18', './New folder/f3.png'),
(7, '2024-08-14', 'Tasty Burger', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', '303 x 251', 'png', 'Yes', 'Burger', '$15', './New folder/f7.png'),
(8, '2024-07-16', 'Tasty Burger', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', '262 x 214', 'png', 'Yes', 'Burger', '$12', './New folder/f2.png'),
(9, '2024-07-31', 'Delicious Pasta', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', '414 x 333', 'png', 'Yes', 'Pasta', '$14', './New folder/f4.png'),
(11, '2024-10-02', 'pizza pizza', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', '381 x368', 'png', 'Yes', 'Pizza', '$10', './New folder/f6.png'),
(23, '2023-09-13', 'Delicious Pizza', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque\r\n\r\n', '255 x 188', 'png', 'Yes', 'Pizza', '$16', './New folder/f6.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `registration_date` date DEFAULT NULL,
  `fullname` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `active` char(5) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`registration_date`, `fullname`, `username`, `email`, `active`, `password`, `id`) VALUES
('2024-09-01', 'nour mohamed', 'nourrr', 'nourmohamed1234@gmail.com', 'No', '384-0191=-', 1),
('2024-09-01', 'tasneem samir', 'tasneem123', 'tasneem123@gmail.com', 'Yes', '84923980', 2),
('2024-09-02', 'mohamed', 'mohamed2222', 'mohamed720@gmail.com', 'Yes', '34567890-', 4),
('2024-09-02', 'mahmoud', 'mahmoud3446', 'mahmoud3446@gmail.com', 'No', '56769870980', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag` (`tag`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`tag`) REFERENCES `categories` (`category`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
