-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2025 at 06:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Aid` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `password` text NOT NULL,
  `location` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Aid`, `name`, `email`, `password`, `location`, `address`) VALUES
(3, 'admin', 'kameshanbu13@gmail.com', '$2y$10$bxUhqg8anHAxC7AOw27SkOFcQDLVCbF.7mGT7TuxBdbiT/sHH4yWC', 'madurai', 'rererer'),
(4, '44111465', 'steveroger130427@gmail.com', '$2y$10$HJJ72lqnpuvV46xjhkjhZ.Pb0e76Y7xi0aBUSbNiV.h6PMaUmr1pi', 'madurai', 'dkvbv'),
(5, 'Kamesh_A', 'newqueentailorshop@gmail.com', '$2y$10$qZcifyeIjhWFTlMU5WrRYupXH8mqHaTZ7eyT0ySOa7KCJIXcdchT2', 'madurai', 'efwrre'),
(6, 'Admin One', 'admin1@example.com', '$2y$10$dummyhash1', 'CityA', 'Address 1'),
(7, 'Admin Two', 'admin2@example.com', '$2y$10$dummyhash2', 'CityB', 'Address 2'),
(8, 'Admin Three', 'admin3@example.com', '$2y$10$dummyhash3', 'CityC', 'Address 3'),
(12, 'sathish', 'sathish@gmail.com', '$2y$10$RvmaIBAivDhkNFzcQHTd1OdqJikTBEdE4w6zar1MYbZb75zuLkzqe', 'chennai', 'kajbsahc');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_persons`
--

CREATE TABLE `delivery_persons` (
  `Did` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `city` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_persons`
--

INSERT INTO `delivery_persons` (`Did`, `name`, `email`, `password`, `city`) VALUES
(5, 'kamesh_a', 'kameshanbu13@gmail.com', '$2y$10$zbGyBOgTBzexxaYfYss7n.BVVIUMq/2VKt7RfBsP9lni/un6lGGbu', 'madurai'),
(6, 'Delivery One', 'dp1@example.com', '$2y$10$dummyhash1', 'CityA'),
(7, 'Delivery Two', 'dp2@example.com', '$2y$10$dummyhash2', 'CityB'),
(8, 'Kamesh_A', 'kacvbn@gmail.com', '$2y$10$ezUr5ZLKSzaZOClGUeYF2OPNMA.lCgAOsWoLUi48WaLyZ8ZBNj56u', 'madurai');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` int(11) NOT NULL,
  `donor_id` int(11) DEFAULT NULL,
  `donor_name` varchar(150) NOT NULL,
  `donor_email` varchar(255) DEFAULT NULL,
  `donor_phone` varchar(50) DEFAULT NULL,
  `pickup_mode` enum('dropoff','pickup') NOT NULL DEFAULT 'dropoff',
  `pickup_date` date DEFAULT NULL,
  `pickup_time` time DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` enum('pending','accepted','rejected','scheduled','collected','cancelled') NOT NULL DEFAULT 'pending',
  `remarks` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `donor_id`, `donor_name`, `donor_email`, `donor_phone`, `pickup_mode`, `pickup_date`, `pickup_time`, `address`, `status`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 1, 'Donor One', 'donor1@example.com', '1234567890', 'dropoff', '2025-10-01', '10:00:00', 'Address 1', 'pending', 'No remarks', '2025-09-24 23:35:11', '2025-09-24 23:35:11'),
(2, 2, 'Donor Two', 'donor2@example.com', '1234567891', 'pickup', '2025-10-02', '12:00:00', 'Address 2', 'accepted', 'Handle carefully', '2025-09-24 23:35:11', '2025-09-24 23:35:11');

-- --------------------------------------------------------

--
-- Table structure for table `food_donations`
--

CREATE TABLE `food_donations` (
  `Fid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `food` varchar(50) NOT NULL,
  `type` text NOT NULL,
  `category` text NOT NULL,
  `quantity` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `address` text NOT NULL,
  `location` varchar(50) NOT NULL,
  `phoneno` varchar(25) NOT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `delivery_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_donations`
--

INSERT INTO `food_donations` (`Fid`, `name`, `email`, `food`, `type`, `category`, `quantity`, `date`, `address`, `location`, `phoneno`, `assigned_to`, `delivery_by`) VALUES
(26, 'Kamesh A', 'kameshanbu13@gmail.com', 'food', 'veg', 'cooked-food', '10kg', '2025-09-25 03:00:25', 'anna nagar', 'madurai', '9894738057', 5, 5),
(27, 'Food Donor 1', 'food1@example.com', 'Rice', 'Veg', 'Cooked', '5kg', '2025-09-24 23:35:11', 'Address 1', 'CityA', '1111111111', NULL, NULL),
(28, 'Food Donor 2', 'food2@example.com', 'Bread', 'Non-Veg', 'Cooked', '3kg', '2025-09-24 23:35:11', 'Address 2', 'CityB', '2222222222', NULL, NULL),
(29, 'Kamesh A', 'kameshanbu13@gmail.com', 'food', 'Non-veg', 'cooked-food', '10', '2025-09-25 10:49:53', 'anna nagar', 'chennai', '9894738057', NULL, NULL),
(30, 'kammu', 'gaajithaoyoli@gmail.com', 'idly', 'veg', 'cooked-food', '2000000000000000000000', '2025-09-25 16:00:51', 'fvn fdjk,', 'thoothukkudi', '9514786252', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `funding_donations`
--

CREATE TABLE `funding_donations` (
  `donation_id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `donor_name` varchar(100) NOT NULL,
  `donor_email` varchar(100) NOT NULL,
  `donor_phone` varchar(15) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `donated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `funding_donations`
--

INSERT INTO `funding_donations` (`donation_id`, `request_id`, `donor_name`, `donor_email`, `donor_phone`, `amount`, `admin_name`, `admin_email`, `donated_at`) VALUES
(1, 1, 'thrgtfnrf', 'tbfbf@gmail.copm', 'bffnff', 333.00, 'admin', 'kameshanbu13@gmail.com', '2025-09-24 19:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `help_requests`
--

CREATE TABLE `help_requests` (
  `request_id` int(11) NOT NULL,
  `requester_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `type` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `amount_needed` decimal(10,2) DEFAULT NULL,
  `status` enum('Pending','Verified','Rejected') DEFAULT 'Pending',
  `admin_verifier` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `verified_at` timestamp NULL DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `urgency` enum('High','Medium','Low') DEFAULT 'Medium'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `help_requests`
--

INSERT INTO `help_requests` (`request_id`, `requester_name`, `email`, `phone`, `type`, `description`, `amount_needed`, `status`, `admin_verifier`, `created_at`, `verified_at`, `quantity`, `urgency`) VALUES
(1, 'Kamesh A', 'kameshanbu13@gmail.com', '8610248607', 'Medical Aid', 'rtortnirth98gh', 99999999.99, 'Verified', 'admin', '2025-09-24 17:28:01', '2025-09-24 18:00:22', NULL, 'Medium'),
(2, 'dcjwcds', 'steveroger130427@gmail.com', '9894738057', 'sjhcvwvc', 'djhcvwyicv', 7373.00, 'Pending', NULL, '2025-09-24 23:00:22', NULL, NULL, 'Medium'),
(3, 'Kamesh A', 'steveroger130427@gmail.com', '8610248607', 'sjhcvwvc', 'flvb', 3333.00, 'Pending', NULL, '2025-09-24 23:00:36', NULL, NULL, 'Medium'),
(4, 'Kamesh A', 'steveroger130427@gmail.com', '9894738057', 'Education', 'lgfherof', NULL, 'Pending', NULL, '2025-09-24 23:07:34', NULL, NULL, 'Medium'),
(5, 'Kamesh A', 'steveroger130427@gmail.com', '9894738057', 'Education', 'lgfherof', NULL, 'Pending', NULL, '2025-09-24 23:09:20', NULL, NULL, 'Medium'),
(6, 'Requester 1', 'req1@example.com', '9999999991', 'Medical', 'Need medicines', 500.00, 'Pending', NULL, '2025-09-24 23:35:11', NULL, NULL, 'Medium'),
(7, 'Requester 2', 'req2@example.com', '9999999992', 'Education', 'Need books', 200.00, 'Verified', NULL, '2025-09-24 23:35:11', NULL, NULL, 'Medium'),
(8, 'dcjwcds', 'wdnqwif@gmail.com', '8610248607', 'Health', 'coihioh', 100000.00, 'Pending', NULL, '2025-09-25 04:30:36', NULL, NULL, 'Medium');

-- --------------------------------------------------------

--
-- Table structure for table `item_donations`
--

CREATE TABLE `item_donations` (
  `Id` int(11) NOT NULL,
  `donor_name` varchar(100) NOT NULL,
  `donor_email` varchar(100) NOT NULL,
  `donor_phone` varchar(25) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `category` enum('clothes','books','toys','shoes','other') NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `condition` enum('new','good','usable','repair_needed') DEFAULT 'good',
  `address` text NOT NULL,
  `location` varchar(50) NOT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `delivery_by` int(11) DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item_donations`
--

INSERT INTO `item_donations` (`Id`, `donor_name`, `donor_email`, `donor_phone`, `item_name`, `category`, `quantity`, `condition`, `address`, `location`, `assigned_to`, `delivery_by`, `date`) VALUES
(1, 'scjbsdovbsd', 'kameshanbu13@gmail.com', '4873498498', 'ashweihfwef', 'books', 1, 'good', 'ferwgfer', 'rgerg', NULL, NULL, '2025-09-24 21:47:47');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` text NOT NULL,
  `gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`, `gender`) VALUES
(21, 'kammu', 'gaajithaoyoli@gmail.com', '$2y$10$G70IuShB27tt73NVl0vrbut/o.Z.SJzXeRVQrBw5AEOdMtdOPGELm', 'female'),
(20, 'gaarneesh S', 'gaarni986@gmail.com', '$2y$10$WzgR2zGj3kXjrn.niQphmOFIAcoQz75WCi91xeELhh5xZ3oaqg6Py', 'male'),
(17, 'Kamesh A', 'kameshanbu13@gmail.com', '$2y$10$3JhRXcy4uEKJ/pq8qQlJDea395qhSCdvK5LzQQGmEPEtB/p0BXhN.', 'male'),
(18, 'Kamesh A', 'pushpa2k24fire@gmail.com', '$2y$10$ZiBmj0rAXyOPPD2vUkL.9eJTdbMzTomYeMxdCAaLJ9/LvsaeWrfRK', 'male'),
(19, 'SATHISH', 'sathish@gmail.com', '$2y$10$f0ugLTiETKYPVO6BxsLvKOsEMQkh9BAxMGTxB3HjHYTR0aiHcCefS', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `user_feedback`
--

CREATE TABLE `user_feedback` (
  `feedback_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_feedback`
--

INSERT INTO `user_feedback` (`feedback_id`, `name`, `email`, `message`) VALUES
(1, 'John Smith', 'john@example.com', 'I really enjoyed using your product!');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Aid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `delivery_persons`
--
ALTER TABLE `delivery_persons`
  ADD PRIMARY KEY (`Did`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donor_id` (`donor_id`),
  ADD KEY `status` (`status`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `food_donations`
--
ALTER TABLE `food_donations`
  ADD PRIMARY KEY (`Fid`);

--
-- Indexes for table `funding_donations`
--
ALTER TABLE `funding_donations`
  ADD PRIMARY KEY (`donation_id`),
  ADD KEY `request_id` (`request_id`);

--
-- Indexes for table `help_requests`
--
ALTER TABLE `help_requests`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `item_donations`
--
ALTER TABLE `item_donations`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `assigned_to` (`assigned_to`),
  ADD KEY `delivery_by` (`delivery_by`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_feedback`
--
ALTER TABLE `user_feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `delivery_persons`
--
ALTER TABLE `delivery_persons`
  MODIFY `Did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `food_donations`
--
ALTER TABLE `food_donations`
  MODIFY `Fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `funding_donations`
--
ALTER TABLE `funding_donations`
  MODIFY `donation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `help_requests`
--
ALTER TABLE `help_requests`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `item_donations`
--
ALTER TABLE `item_donations`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_feedback`
--
ALTER TABLE `user_feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `funding_donations`
--
ALTER TABLE `funding_donations`
  ADD CONSTRAINT `funding_donations_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `help_requests` (`request_id`) ON DELETE CASCADE;

--
-- Constraints for table `item_donations`
--
ALTER TABLE `item_donations`
  ADD CONSTRAINT `item_donations_ibfk_1` FOREIGN KEY (`assigned_to`) REFERENCES `admin` (`Aid`) ON DELETE SET NULL,
  ADD CONSTRAINT `item_donations_ibfk_2` FOREIGN KEY (`delivery_by`) REFERENCES `delivery_persons` (`Did`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
