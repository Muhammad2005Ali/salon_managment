-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2024 at 03:25 PM
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
-- Database: `salon`
--

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(255) DEFAULT NULL,
  `prod_price` int(11) DEFAULT 0,
  `prod_stock` int(11) DEFAULT 0,
  `prod_img` varchar(255) DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`prod_id`, `prod_name`, `prod_price`, `prod_stock`, `prod_img`, `added_by`, `update_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Apple', 12000, 10, 'prod_image/image-removebg-preview.png', 1, NULL, 1, '2024-06-28 15:10:37', NULL),
(2, 'Vivo', 4500, 450, 'prod_image/image-removebg-preview.png', 1, NULL, 1, '2024-06-28 15:10:59', NULL),
(3, 'Samsang', 600, 120, 'prod_image/image-removebg-preview.png', 1, NULL, 1, '2024-06-28 15:11:17', NULL),
(5, 'TCL Updated latest', 45, 5, 'prod_image/image-removebg-preview.png', 1, 1, 1, '2024-06-28 15:25:43', '2024-07-01 14:24:37'),
(6, 'VGA', 450, 7800, 'prod_image/image-removebg-preview.png', 1, NULL, 1, '2024-06-28 15:42:44', NULL),
(7, 'Smart Watch', 45600, 2, 'prod_image/image-removebg-preview.png', 2, NULL, 1, '2024-06-28 15:43:54', NULL),
(8, 'Shoes', 1111, 222, 'prod_image/image-removebg-preview.png', 1, NULL, 1, '2024-07-01 14:44:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `user_role`) VALUES
(1, 'Khalid', 'admin@ecom.com', 'Abc@1234', 0),
(2, 'Murtaza', 'm@gmail.com', 'Abc@1234', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
