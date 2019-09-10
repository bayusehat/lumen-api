-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2019 at 08:41 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_09_10_031328_users_table', 1),
(2, '2019_09_10_032724_user_table', 2),
(3, '2019_09_10_041239_api_token', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `api_token`, `created_at`, `updated_at`) VALUES
(1, 'hJ7sb05xNL', 'QmrkPcYSzU@gmail.com', '$2y$10$XXM9tT73xGyf.TeDWf3WFeFJzEjFwbvO9yp/xWs15OSFeh5wxlEdy', NULL, '', NULL, NULL),
(2, 'jqg7FaO3x6', 'X3Ba8IdWqy@gmail.com', '$2y$10$On2pUgMCNzQ46cE.Rk1uyO.tBKUxiDQm.Sfvr064ug5L.jO6rnM/y', NULL, '', NULL, NULL),
(3, 'j7m6rDrt00', 'HkpDlwYoOX@gmail.com', '$2y$10$k4IhJIgGBJwi2VMllEAdN./WyLvB4DwF8jIe//xF.ch97fjOYS4OW', NULL, '', NULL, NULL),
(4, 'ZzUNAJ0KSp', '4sRzuMPoWl@gmail.com', '$2y$10$G0FAkTej0yeNOriHWAPQYuF7aSyPMpDN0mqAxcizhjm7E7WAOvNEC', NULL, '', NULL, NULL),
(5, 'mKnfiXhNyK', 'pAGwaa5zPl@gmail.com', '$2y$10$SkJiWPNNVQ5Emo9FxG/pLe.yAN70eYQ9aE..sStWVYvCFKEOICdA6', NULL, '', NULL, NULL),
(6, '5V8yfSIYFh', 'Frj10QxFdE@gmail.com', '$2y$10$OsNaaRxd8Yv7Cs3fFZmpIuoT7TXVrQ8lqIFWsoTYY9ScpUwopJgrG', NULL, '', NULL, NULL),
(7, 'WTCAv0lCWn', 'aE5BSQKBkM@gmail.com', '$2y$10$po2Ex809GE.2NYysvgGiTOwQFulidZ9W4D3QRFCoLVRH0rIGiFbE6', NULL, '', NULL, NULL),
(8, 'r1CrXnZn5d', '7ES5X1lCvW@gmail.com', '$2y$10$.yJF27wVnwdmzSNhbQU3bekMGXk.MHW/g037xSOsvRSnNb3HnRw4i', NULL, '', NULL, NULL),
(9, 'kKFRwASinz', 'k7j0JdN8Hg@gmail.com', '$2y$10$/6UGCY2rZrjIhNc2/HQFPe7VNVVxcdmvPjKtSN2WTVYVWfIIze59i', NULL, '', NULL, NULL),
(10, 'iLi04tiTzb', 'ejCTNcUw53@gmail.com', '$2y$10$s2IBb0xoADj4S3T8jHi3OOe9lQeuWRd4V5T0M4ojdKTEUIwlAlWty', NULL, '', NULL, NULL),
(11, 'CAwMlU8moC', 'fFKBbzwPLz@gmail.com', '$2y$10$.SWRdEnRrcZX49.D1ctjVOW.xE4tCY1FIuHevTQACGRDnsDhuerLO', NULL, '', NULL, NULL),
(12, 'uzMpRqezaH', 'tjfdB2x9MF@gmail.com', '$2y$10$iliQVKjgMFfLImFNtUQg9ujhtAQ0tJJw2wcDH9HHkxdH6owK4dmn6', NULL, '', NULL, NULL),
(13, 'Lv7ceGDkJ6', '3WdKgqQJ7W@gmail.com', '$2y$10$3tMx4UjEoci9FLDEuCn4cewRyh.zRAbwqr5em9rvktm6CZmXzdqvS', NULL, '', NULL, NULL),
(15, 'arya', 'aryabayu@gmail.com', '$2y$10$1wkTGfuc0kRcaTXlgwD1GOY65NdxdBmzMA32SXe5tYDojT0ZQ3w6q', NULL, '', NULL, NULL),
(16, 'Anjay', 'sukamto@gmail.com', '$2y$10$TyCPcDMnxVm/ukGFWqLxrO8SBzAl5QriLYdQYDNhX2K3XfKIkJcNa', NULL, '9k9mZwYMYmjjr5RmwLaA', NULL, NULL),
(17, 'Modeste', 'modeste@gmail.com', '$2y$10$cO1rJlqg4h1S1win1hiWFeVLeu/sSVD/IZUzzlxPEqlnI1d84XoUK', NULL, 'VjBQdGlHVEZlUXhCQmxNWmdJVVZWM1FmdmgzZFR2bjZ4Y2xyWG9HRmxadnV0R0tRUmppYVZqSDBjUjBu', NULL, NULL),
(18, 'Seno', 'seno@gmail.com', '$2y$10$TchXsz.JDawvr1wbPr0YeuxGL846BQPQ6hHxrHJDD/gwANpqPDDIq', NULL, 'RGhzYTRFTGI5anpvNHN5aVhvNTJudkNHUThHekNLQXJ5ZXg1bGpoY3VPT204VXdHanFyazRabUZzMW84', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
