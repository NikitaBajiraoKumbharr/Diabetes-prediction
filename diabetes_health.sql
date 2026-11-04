-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2026 at 03:30 PM
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
-- Database: `diabetes_health`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `email`, `password`, `created_at`) VALUES
(1, 'Admin', 'admin@diabeteshealth.com', 'scrypt:32768:8:1$E1cEmky17yTYYHag$b0938af5c3944c1f8f6ae970ba2ea1465c6fcff4f87ced44a8ece93e0a225210f699ede8b10e5ba9d957451480686a9efdfe7e1a894a5d0d78dfa043804a9d62', '2026-09-28 12:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `assessments`
--

CREATE TABLE `assessments` (
  `assessment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `bmi` decimal(5,2) NOT NULL,
  `hba1c` decimal(5,2) NOT NULL,
  `blood_glucose` int(11) NOT NULL,
  `hypertension` tinyint(1) NOT NULL DEFAULT 0,
  `heart_disease` tinyint(1) NOT NULL DEFAULT 0,
  `smoking_history` varchar(30) NOT NULL,
  `prediction` tinyint(1) NOT NULL,
  `risk_probability` decimal(6,4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assessments`
--

INSERT INTO `assessments` (`assessment_id`, `user_id`, `member_id`, `age`, `gender`, `bmi`, `hba1c`, `blood_glucose`, `hypertension`, `heart_disease`, `smoking_history`, `prediction`, `risk_probability`, `created_at`) VALUES
(1, 2, NULL, 25, 'Male', 25.00, 5.50, 100, 0, 0, 'Never', 0, 2.8227, '2026-09-24 13:57:00'),
(2, 2, NULL, 25, 'Female', 25.00, 5.50, 100, 0, 0, 'Never', 0, 2.2485, '2026-09-24 14:00:21'),
(3, 2, NULL, 25, 'Female', 25.00, 5.50, 100, 0, 0, 'Never', 0, 2.2485, '2026-09-24 14:13:11'),
(4, 2, NULL, 25, 'Female', 25.00, 5.50, 100, 0, 0, 'Never', 0, 2.2485, '2026-09-24 14:13:15'),
(5, 2, NULL, 25, 'Male', 25.00, 5.50, 100, 0, 0, 'Never', 0, 2.8227, '2026-09-24 14:15:21'),
(6, 2, 1, 25, 'Male', 25.00, 5.50, 100, 0, 0, 'Never', 0, 2.8227, '2026-09-24 14:31:03'),
(7, 2, 1, 25, 'Male', 25.00, 5.50, 100, 0, 0, 'Never', 0, 2.8227, '2026-09-24 14:31:05'),
(8, 2, 1, 25, 'Male', 25.00, 5.50, 100, 0, 0, 'Never', 0, 2.8227, '2026-09-24 14:31:06'),
(9, 2, 2, 25, 'Male', 25.00, 5.50, 100, 0, 0, 'Never', 0, 2.8227, '2026-09-24 14:37:05'),
(10, 2, 2, 25, 'Male', 25.10, 5.50, 100, 0, 0, 'Never', 0, 2.8227, '2026-09-24 14:37:07'),
(11, 2, 2, 25, 'Male', 25.20, 5.50, 100, 0, 0, 'Never', 0, 2.8227, '2026-09-24 14:37:07'),
(12, 2, 2, 25, 'Male', 25.50, 5.50, 100, 0, 0, 'Never', 0, 2.8227, '2026-09-24 14:37:08'),
(13, 2, 2, 25, 'Male', 25.50, 5.60, 100, 0, 0, 'Never', 0, 2.8227, '2026-09-24 14:37:09'),
(14, 2, 2, 25, 'Male', 25.50, 5.70, 100, 0, 0, 'Never', 0, 2.8227, '2026-09-24 14:37:09'),
(15, 2, 2, 25, 'Male', 25.50, 5.80, 100, 0, 0, 'Never', 0, 3.0226, '2026-09-24 14:37:09'),
(16, 2, 2, 25, 'Male', 25.50, 6.20, 100, 0, 0, 'Never', 0, 3.0226, '2026-09-24 14:37:10'),
(17, 2, 2, 25, 'Male', 25.50, 6.30, 100, 0, 0, 'Never', 0, 3.0226, '2026-09-24 14:37:10'),
(18, 2, 2, 25, 'Male', 25.50, 6.30, 101, 0, 0, 'Never', 0, 3.0226, '2026-09-24 14:37:14'),
(19, 2, 2, 25, 'Male', 25.50, 6.30, 102, 0, 0, 'Never', 0, 3.0226, '2026-09-24 14:37:14'),
(20, 2, 2, 25, 'Male', 25.50, 6.30, 103, 0, 0, 'Never', 0, 3.0226, '2026-09-24 14:37:15'),
(21, 2, 2, 26, 'Male', 25.50, 6.30, 103, 0, 0, 'Never', 0, 3.0226, '2026-09-24 14:37:16'),
(22, 2, 2, 27, 'Male', 25.50, 6.30, 103, 0, 0, 'Never', 0, 3.1982, '2026-09-24 14:37:16'),
(23, 2, 2, 27, 'Male', 25.50, 6.30, 103, 0, 0, 'Never', 0, 3.1982, '2026-09-24 14:37:18'),
(24, 2, 3, 31, 'Female', 25.00, 5.50, 100, 0, 0, 'Never', 0, 3.8295, '2026-09-24 14:37:44'),
(25, 2, 3, 31, 'Female', 25.00, 5.60, 100, 0, 0, 'Never', 0, 3.8295, '2026-09-24 14:37:45'),
(26, 2, 3, 31, 'Female', 25.00, 5.70, 100, 0, 0, 'Never', 0, 3.8295, '2026-09-24 14:37:45'),
(27, 2, 3, 31, 'Female', 25.00, 5.80, 100, 0, 0, 'Never', 0, 3.8295, '2026-09-24 14:37:46'),
(28, 2, 3, 31, 'Female', 25.00, 5.90, 100, 0, 0, 'Never', 0, 3.8295, '2026-09-24 14:37:46'),
(29, 2, 3, 31, 'Female', 25.00, 5.90, 100, 1, 0, 'Never', 0, 8.3084, '2026-09-24 14:37:50'),
(30, 2, 3, 31, 'Female', 25.00, 5.90, 100, 1, 1, 'Never', 0, 12.9489, '2026-09-24 14:37:52'),
(31, 2, 3, 31, 'Female', 25.00, 5.90, 101, 1, 1, 'Never', 0, 12.9489, '2026-09-24 14:37:56'),
(32, 2, 3, 31, 'Female', 25.00, 5.90, 102, 1, 1, 'Never', 0, 12.9489, '2026-09-24 14:37:56'),
(33, 2, 3, 31, 'Female', 25.00, 5.90, 103, 1, 1, 'Never', 0, 12.9489, '2026-09-24 14:37:56'),
(34, 2, 3, 31, 'Female', 25.00, 5.90, 104, 1, 1, 'Never', 0, 12.9489, '2026-09-24 14:37:56'),
(35, 2, 3, 31, 'Female', 25.00, 5.90, 105, 1, 1, 'Never', 0, 12.9489, '2026-09-24 14:37:57'),
(36, 2, 3, 31, 'Female', 25.00, 5.90, 106, 1, 1, 'Never', 0, 12.9489, '2026-09-24 14:37:57'),
(37, 2, 3, 31, 'Female', 25.00, 5.90, 106, 1, 1, 'Never', 0, 12.9489, '2026-09-24 14:38:00'),
(38, 2, 3, 31, 'Female', 25.00, 5.90, 106, 1, 1, 'Never', 0, 12.9489, '2026-09-24 14:38:02'),
(39, 2, 3, 31, 'Female', 25.00, 5.90, 106, 1, 1, 'Never', 0, 12.9489, '2026-09-24 14:38:03'),
(40, 2, 3, 31, 'Female', 25.00, 5.90, 106, 1, 1, 'Never', 0, 12.9489, '2026-09-24 14:38:03'),
(41, 2, 3, 31, 'Female', 25.00, 5.90, 106, 1, 1, 'Never', 0, 12.9489, '2026-09-24 14:38:04'),
(42, 2, 3, 31, 'Female', 25.00, 5.90, 106, 1, 1, 'Never', 0, 12.9489, '2026-09-24 14:38:08'),
(43, 2, NULL, 25, 'Female', 29.20, 10.30, 111, 0, 0, 'Never', 1, 84.0000, '2026-09-25 01:39:33'),
(44, 2, NULL, 25, 'Male', 25.00, 5.50, 100, 0, 0, 'Never', 0, 2.8227, '2026-09-25 02:49:37'),
(45, 2, NULL, 25, 'Female', 25.00, 5.50, 100, 0, 0, 'Never', 0, 2.2485, '2026-09-25 14:46:30'),
(46, 2, 4, 25, 'Male', 26.00, 7.00, 128, 1, 0, 'Never', 1, 90.7484, '2026-09-27 06:29:28'),
(47, 4, NULL, 21, 'Female', 25.00, 5.50, 100, 1, 0, 'Never', 0, 5.5772, '2026-09-28 06:59:31'),
(48, 4, 5, 37, 'Female', 25.00, 5.50, 100, 0, 0, 'Never', 0, 3.6867, '2026-09-28 07:00:58'),
(49, 2, NULL, 25, 'Female', 25.00, 5.50, 100, 0, 0, 'Never', 0, 2.2485, '2026-09-28 07:12:17'),
(50, 2, 6, 25, 'Female', 25.00, 5.50, 100, 0, 0, 'Never', 0, 2.2485, '2026-09-28 07:13:37'),
(51, 5, NULL, 28, 'Female', 25.00, 5.50, 100, 0, 0, 'Never', 0, 3.3386, '2026-09-28 08:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `family_members`
--

CREATE TABLE `family_members` (
  `member_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `family_members`
--

INSERT INTO `family_members` (`member_id`, `user_id`, `name`, `created_at`) VALUES
(1, 2, 'Atharv', '2026-09-24 14:31:03'),
(2, 2, 'Vivek gharge', '2026-09-24 14:37:05'),
(3, 2, 'sakshi gharge', '2026-09-24 14:37:44'),
(4, 2, 'Sarthak gharge', '2026-09-27 06:29:28'),
(5, 4, 'maya dilip patil', '2026-09-28 07:00:58'),
(6, 2, 'Dipali gharge', '2026-09-28 07:13:37');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `reminder_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `reminder_type` varchar(50) NOT NULL,
  `reminder_date` date NOT NULL,
  `reminder_time` time NOT NULL,
  `notes` text DEFAULT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reminders`
--

INSERT INTO `reminders` (`reminder_id`, `user_id`, `title`, `reminder_type`, `reminder_date`, `reminder_time`, `notes`, `is_completed`, `created_at`) VALUES
(1, 2, 'Take a deep breath', 'Medication', '2026-09-25', '08:26:00', '', 1, '2026-09-25 02:57:37'),
(2, 2, 'Take a deep breath', 'Medication', '2026-09-25', '08:26:00', '', 1, '2026-09-25 03:00:56'),
(3, 2, 'take a breath', 'Medication', '2026-09-25', '08:40:00', '', 1, '2026-09-25 03:09:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `full_name`, `email`, `password`, `profile_photo`, `created_at`) VALUES
(1, 'Pratiksha gharge', 'ghargepratiksha2001@gmail.com', 'scrypt:32768:8:1$WgLEXq809B7halwM$0aae18d6ac3c41e8673a5e87875d00474435183b466f9918c55fc932bc35b5bd79f0ad168d0070701ae083d4629a25c5e964a55236e6b4ecf0d89c63a6772692', NULL, '2026-09-24 11:33:30'),
(2, 'Pratiksha gharge', 'ghargepratiksha2002@gmail.com', 'scrypt:32768:8:1$cMxeocMWesAmW6Ga$2938f9c54e4f933dfdcefd08ddc76fb1e0eeeaa5ecdd65f899866df9a434fb3914136982790fc80ab6e3719fde13d978d0a35489a8a748db37588e8368efd9d5', 'static/uploads/profile/user_2.jpg', '2026-09-24 11:43:14'),
(3, 'Sakshi', 'sakshi@gmail.com', 'scrypt:32768:8:1$OIk6vKOaPp5STVFr$e348e227f1df4492493221489c10430342bbf19f37068a99edb14a3afa36f207b68bc8f7d3348aaf832521816897e6725d5571fdc228c2d9c76c57423710e8cd', 'static/uploads/profile/user_3.jpg', '2026-09-27 08:13:04'),
(4, 'diksha dilip patil', 'dikshapatil0912@gmail.com', 'scrypt:32768:8:1$VHcdrSal9Tscl4wS$873c2c1e2f16fc66738f0e33c4baa2f03756413242328ae469d4e6dc477a7f03b275f0efd45ef792739167a5646f9ba2a31d0961afeb9191a247e44175588f49', NULL, '2026-09-28 06:58:36'),
(5, 'Runali', 'runali@gmail.com', 'scrypt:32768:8:1$VDBzgzAVz1TthCmJ$b39f9d013e2b94cf30d3830ad014291e3173a2e033952102cbe44f0622621cf73d0f49b4490f03102ef90ea6976edf0e48ad158992aa5054fba5d3233fb41536', NULL, '2026-09-28 08:45:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `assessments`
--
ALTER TABLE `assessments`
  ADD PRIMARY KEY (`assessment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `family_members`
--
ALTER TABLE `family_members`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`reminder_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assessments`
--
ALTER TABLE `assessments`
  MODIFY `assessment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `family_members`
--
ALTER TABLE `family_members`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `reminder_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assessments`
--
ALTER TABLE `assessments`
  ADD CONSTRAINT `assessments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assessments_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `family_members` (`member_id`) ON DELETE SET NULL;

--
-- Constraints for table `family_members`
--
ALTER TABLE `family_members`
  ADD CONSTRAINT `family_members_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `reminders`
--
ALTER TABLE `reminders`
  ADD CONSTRAINT `reminders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
