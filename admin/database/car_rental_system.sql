-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2024 at 08:09 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_rental_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_specifications`
--

CREATE TABLE `add_specifications` (
  `id` int(11) NOT NULL,
  `icon` varchar(150) NOT NULL,
  `specifications_name` varchar(200) NOT NULL,
  `specifications_value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(1, 'Car_Rental_Admin', 'carrental@123 ');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `car_name` varchar(150) NOT NULL,
  `car_company` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `total_pay` int(11) NOT NULL,
  `car_no` varchar(150) DEFAULT NULL,
  `user_name` varchar(150) NOT NULL,
  `phone_no` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`sr_no`, `booking_id`, `car_name`, `car_company`, `price`, `total_pay`, `car_no`, `user_name`, `phone_no`, `address`) VALUES
(5, 5, 'xl-6', 'ms', 3000, 3000, NULL, 'Krish', '9499672148', 'HMT , 383001'),
(6, 6, 'xl-6', 'ms', 3000, 3000, NULL, 'Krish Soni', '9499672148', 'hmt , 383001'),
(29, 29, 'xl-6', 'ms', 3000, 3000, '6084', 'Krish Soni', '9499672148', 'hmt , 383001'),
(31, 31, 'Tiago', 'Tata', 5000, 5000, NULL, 'Krish Soni', '9499672148', 'hmt , 383001'),
(32, 32, 'Tiago', 'Tata', 5000, 15000, '8216', 'Krish Soni', '9499672148', 'hmt , 383001'),
(34, 34, 'Harrier', 'TATA', 3000, 3000, NULL, 'Krish Soni', '9499672148', 'hmt , 383001'),
(35, 35, 'Harrier', 'TATA', 3000, 6000, '0791', 'Krish Soni', '9499672148', 'hmt , 383001'),
(36, 36, 'Tiago', 'Tata', 5000, 5000, 'GJ 09 AC 3871', 'Krish Soni', '9499672148', 'hmt , 383001'),
(37, 37, 'Harrier', 'TATA', 3000, 15000, 'gj 09 ac 3871', 'Yash Patel', '9408246860', '20,rajicity banglows hadiyol road,himmatnagar , 383001'),
(38, 38, 'Tiago', 'Tata', 5000, 5000, NULL, 'Krish', '635100879', 'HMT , 383301'),
(39, 39, 'Tiago', 'Tata', 5000, 50000, NULL, 'Krish Soni', '9499672148', 'hmt , 383001');

-- --------------------------------------------------------

--
-- Table structure for table `booking_order`
--

CREATE TABLE `booking_order` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `booking_date` date NOT NULL,
  `dropout_date` date NOT NULL,
  `arrival` int(11) NOT NULL DEFAULT 0,
  `refund` int(11) DEFAULT NULL,
  `booking_status` varchar(100) DEFAULT 'pending',
  `order_id` varchar(150) NOT NULL,
  `trans_id` varchar(200) DEFAULT NULL,
  `trans_amt` int(11) NOT NULL,
  `trans_status` varchar(100) NOT NULL DEFAULT 'pending',
  `trans_resp_msg` varchar(200) DEFAULT NULL,
  `rate_review` varchar(200) DEFAULT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_order`
--

INSERT INTO `booking_order` (`booking_id`, `user_id`, `car_id`, `booking_date`, `dropout_date`, `arrival`, `refund`, `booking_status`, `order_id`, `trans_id`, `trans_amt`, `trans_status`, `trans_resp_msg`, `rate_review`, `datentime`) VALUES
(5, 5, 17, '2023-11-25', '2023-11-26', 1, NULL, 'booked', 'ORD556850', NULL, 3000, 'TXN_SUCCESS', NULL, NULL, '2023-11-24 21:49:31'),
(6, 5, 17, '2023-11-27', '2023-11-29', 0, 1, 'cancelled', 'ORD583530', NULL, 2000, 'TXN_SUCCESS', NULL, NULL, '2023-11-26 16:39:32'),
(26, 5, 16, '2023-12-08', '2023-12-09', 0, 1, 'cancelled', 'ORD539817', NULL, 4500, 'PAYMENT_SUCCESS', '0', NULL, '2023-12-07 20:57:04'),
(29, 5, 17, '2023-12-09', '2023-12-10', 1, NULL, 'booked', 'ORD566391', NULL, 3000, 'PAYMENT_SUCCESS', '0', '5', '2023-12-07 21:06:47'),
(31, 5, 18, '2023-12-10', '2023-12-11', 0, NULL, 'pending', 'ORD585331', NULL, 5000, 'PAYMENT_FAILED', '0', NULL, '2023-12-08 18:34:40'),
(32, 5, 18, '2023-12-10', '2023-12-13', 1, NULL, 'booked', 'ORD559061', NULL, 15000, 'PAYMENT_FAILED', '0', '0', '2023-12-08 18:40:31'),
(33, 5, 18, '2023-12-10', '2023-12-13', 0, 1, 'cancelled', 'ORD577098', NULL, 15000, 'PAYMENT_FAILED', '0', NULL, '2023-12-08 18:40:33'),
(34, 5, 15, '2023-12-09', '2023-12-10', 0, 0, 'cancelled', 'ORD578998', NULL, 3000, 'PAYMENT_FAILED', '0', NULL, '2023-12-08 18:47:33'),
(35, 5, 15, '2023-12-09', '2023-12-11', 1, NULL, 'booked', 'ORD597393', NULL, 6000, 'PAYMENT_FAILED', '0', '0', '2023-12-08 18:59:03'),
(36, 5, 18, '2023-12-10', '2023-12-11', 1, NULL, 'booked', 'ORD580036', NULL, 5000, 'PAYMENT_FAILED', '0', '0', '2023-12-09 09:17:25'),
(37, 7, 15, '2023-12-10', '2023-12-15', 1, NULL, 'booked', 'ORD736613', NULL, 15000, 'PAYMENT_FAILED', '0', '0', '2023-12-09 09:47:21'),
(38, 6, 18, '2023-12-10', '2023-12-11', 0, 1, 'cancelled', 'ORD645772', NULL, 5000, 'PAYMENT_FAILED', '0', NULL, '2023-12-09 10:42:17'),
(39, 5, 18, '2023-12-10', '2023-12-20', 0, NULL, 'booked', 'ORD587846', NULL, 50000, 'PAYMENT_FAILED', '0', NULL, '2023-12-09 14:38:21');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `company` varchar(150) NOT NULL,
  `sit` int(11) NOT NULL,
  `price_day` int(11) NOT NULL,
  `price_hour` int(11) NOT NULL,
  `fuel_type` varchar(50) NOT NULL,
  `model` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `removed` int(11) NOT NULL DEFAULT 0,
  `car_type` varchar(100) NOT NULL,
  `air_bags` int(11) NOT NULL,
  `boot_capacity` int(100) NOT NULL,
  `displacement` int(11) NOT NULL,
  `fuel_tank_capacity` int(11) NOT NULL,
  `cng_capacity` int(11) NOT NULL,
  `transmission_types` varchar(100) NOT NULL,
  `mileage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `name`, `company`, `sit`, `price_day`, `price_hour`, `fuel_type`, `model`, `description`, `status`, `removed`, `car_type`, `air_bags`, `boot_capacity`, `displacement`, `fuel_tank_capacity`, `cng_capacity`, `transmission_types`, `mileage`) VALUES
(14, 'Innova', 'Toyota', 7, 10000, 500, 'Diesel', 'Hycross -G', 'The overall built quality is first-rate and it will probably take 6-digit figures on the odometer for the cabin plastics to start rattling or squeaking. And because everything inside the cabin and the mechanical bits are hardwearing, the Innova has turned out to be immensely reliable on the long run', 1, 0, 'MPV', 7, 300, 1987, 52, 0, 'Automatic', 23),
(15, 'Harrier', 'TATA', 5, 3000, 300, 'PETROL', 'Fearless Plus Dark', 'Tata Harrier is a 5 Seater seater car, Ex-showroom price starting from Rs. 15,49,000 in India. It is available in 25 variants, 1956.0 cc engine available in and 2 transmission option: Manual,Automatic . ₹15.49 - 26.44 Lakhs', 1, 0, 'SUV', 5, 445, 1956, 50, 0, 'Manual', 15),
(16, 'Slavia', 'Skoda', 5, 4500, 100, 'Petrol', 'Ambition Plus', 'Depending upon the variant and fuel type the Slavia has a mileage of 18.07 to 20.32 kmpl &amp; Ground clearance of Slavia is 179mm. The Slavia is a 5 seater 4 cylinder car and has length of 4541mm, width of 1752mm and a wheelbase of 2651mm.', 1, 0, 'sedan', 2, 521, 1498, 45, 0, 'Manual', 20),
(17, 'xl-6', 'ms', 6, 3000, 300, 'CNG', '2023', 'best car', 1, 0, 'SUV', 5, 0, 0, 0, 0, 'auto', 15),
(18, 'Tiago', 'Tata', 5, 5000, 400, 'CNG', 'XM', 'Tigor XZ CNG has Multi-function Steering Wheel, Power Adjustable Exterior Rear View Mirror, Touch Screen, Automatic Climate Control, Engine Start Stop Button, Anti Lock Braking System, Alloy Wheels, Fog Lights - Front, Power Windows Rear, Power Windows Front.', 1, 0, 'cds', 0, 316, 1199, 35, 10, 'Manual', 25);

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `sr_no` int(11) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`sr_no`, `image`) VALUES
(8, 'IMG_59015.jpg'),
(10, 'IMG_37175.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `car_features`
--

CREATE TABLE `car_features` (
  `sr_no` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_features`
--

INSERT INTO `car_features` (`sr_no`, `car_id`, `features_id`) VALUES
(243, 17, 9),
(244, 17, 10),
(245, 17, 11),
(246, 17, 12),
(247, 17, 14),
(248, 17, 15),
(249, 17, 16),
(250, 14, 9),
(251, 14, 11),
(252, 14, 12),
(253, 14, 14),
(254, 14, 15),
(255, 14, 18),
(261, 15, 8),
(262, 15, 9),
(263, 15, 12),
(264, 15, 15),
(265, 15, 16),
(274, 16, 8),
(275, 16, 9),
(276, 16, 15),
(277, 16, 18),
(278, 18, 9),
(279, 18, 10),
(280, 18, 12),
(281, 18, 14),
(282, 18, 15),
(283, 18, 18);

-- --------------------------------------------------------

--
-- Table structure for table `car_image`
--

CREATE TABLE `car_image` (
  `sr_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_image`
--

INSERT INTO `car_image` (`sr_id`, `car_id`, `image`, `thumb`) VALUES
(29, 17, 'IMG_45924.jpg', 1),
(39, 14, 'IMG_71778.webp', 1),
(40, 14, 'IMG_87166.jpg', 0),
(41, 14, 'IMG_42715.jpg', 0),
(42, 14, 'IMG_84951.jpg', 0),
(43, 15, 'IMG_93727.jpg', 0),
(44, 15, 'IMG_20870.jpg', 0),
(45, 15, 'IMG_56112.jpg', 0),
(47, 16, 'IMG_59598.jpg', 1),
(48, 16, 'IMG_95781.webp', 0),
(49, 16, 'IMG_78495.jpg', 0),
(50, 16, 'IMG_34441.jpg', 0),
(51, 18, 'IMG_29720.jpg', 1),
(52, 18, 'IMG_58218.jpg', 0),
(53, 18, 'IMG_43545.jpg', 0),
(54, 18, 'IMG_37269.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `car_specifications`
--

CREATE TABLE `car_specifications` (
  `sr_no` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `specification_id` int(11) NOT NULL,
  `specification_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gmap` varchar(100) NOT NULL,
  `pn1` bigint(20) NOT NULL,
  `pn2` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `iframe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `twitter`, `iframe`) VALUES
(1, 'B23,sales india,Sahakari Jin,himmatnagar', 'https://maps.app.goo.gl/LiD6QvarzdTYRwUN8', 919466672484, 919488672149, 'carrental@gmail.com', 'https://www.facebook.com/', 'https://www.instagram.com/yashu_patel1500/?igshid=NzZlODBkYWE4Ng==', 'https://x.com/yashpatel1500?t=ax9T8peGFRviJPdLfT8xqw', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d116991.29683611669!2d72.968059!3d23.605121!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395db8e92b638e41:0x688e3d55d247a6c1!2sHimatnagar, Gujarat!5e0!3m2!1sen!2sin!4v1697118979552!5m2!1sen!2sin');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(5, 'IMG_56165.svg', '24 / 7 Available', '24x7 means &quot;24 hours a day, 7 days a week&quot; and is used to describe a service, such as computer server monitoring'),
(7, 'IMG_14525.svg', 'Roadside Assistance', 'oadside assistance is a service provided by car rental companies to help customers in the event of a breakdown or emergency while using the rented vehicle'),
(8, 'IMG_73206.svg', 'Payment Options', 'Multiple payment methods, including credit cards and online payments.'),
(9, 'IMG_82542.svg', 'Flexible Rental Periods', 'Options for hourly, daily, weekly, or monthly rentals.');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(8, 'Sunroof'),
(9, 'Navigation system'),
(10, 'Backup camera'),
(11, 'Push Start Button.'),
(12, 'Height Adjustable Seats'),
(14, 'Air Conditioner'),
(15, 'Power Steering'),
(16, 'Air Pump'),
(18, 'Music System');

-- --------------------------------------------------------

--
-- Table structure for table `rating_review`
--

CREATE TABLE `rating_review` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(200) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(300) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'Car Rental', 'Welcome to Car Rental System - your trusted partner for convenient and affordable car rentals.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `specifications`
--

CREATE TABLE `specifications` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `specifications`
--

INSERT INTO `specifications` (`id`, `icon`, `name`) VALUES
(4, 'IMG_22845.svg', 'Airbag'),
(5, 'IMG_79462.svg', 'displacement');

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`sr_no`, `name`, `picture`) VALUES
(16, 'Krish', 'IMG_84145.png'),
(17, 'Yash', 'IMG_61817.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `phone_no` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` date NOT NULL,
  `profile` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `token` varchar(200) DEFAULT NULL,
  `t_expire` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phone_no`, `pincode`, `dob`, `profile`, `password`, `is_verified`, `token`, `t_expire`, `status`, `datentime`) VALUES
(5, 'Krish Soni', 'krishsoni784@gmail.com', 'hmt', '9499672148', 383001, '2002-12-05', 'IMG_42363.jpeg', '$2y$10$7qTG7JJ1ijhhdfXvhlsffu.W9CMi257rDYBsRsmQRauVggCEIhDG.', 1, '86e081d7e8eaac2587851ba27ca03bde', NULL, 1, '2023-11-19 17:41:14'),
(6, 'Krish', 'krishsoni20@gnu.ac.in', 'HMT', '635100879', 383301, '2002-12-05', 'IMG_65196.jpeg', '$2y$10$XE7zXI3SLAVj.3Xjk0KeN.WX1egAtv5oU2B3M0bQTO0si0Milah.m', 1, 'dcba4279dacab49c086067a5aacc17e5', NULL, 1, '2023-11-29 17:56:13'),
(7, 'Yash Patel', 'yashkpatel20@gnu.ac.in', '20,rajicity banglows hadiyol road,himmatnagar', '9408246860', 383001, '2001-09-23', 'IMG_19055.jpeg', '$2y$10$23MQmX6idcbRahfCqLyd1uvMxAzZ9tnLcT5ZU8hjZhoIVRdo8muzS', 1, 'a6235cb7923dd0f8615202cad5457128', '2023-12-09', 1, '2023-12-09 09:27:02');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `datentime`, `seen`) VALUES
(13, 'yash', 'yash@gmail.com', 'Car Availability', 'Car Availability', '2023-11-02 09:48:51', 1),
(14, 'Krish', 'krishsoni20@gnu.ac.in', 'xyz', 'csdfaf', '2023-11-29 17:59:22', 1),
(16, 'Krish', 'krishsoni784@gmail.com', 'sfdsgdhd', 'fsdgzdhdghb', '2023-11-30 19:07:52', 1),
(17, 'YASH PATEL', 'yashkpatel20@gnu.ac.in', 'concern about air bags', 'i am concerning is about sefty', '2023-12-09 09:32:56', 1),
(18, 'krish', 'krish@gmail.com', 'asd', 'casda', '2023-12-09 10:22:30', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_specifications`
--
ALTER TABLE `add_specifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `car_id` (`car_id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `car_features`
--
ALTER TABLE `car_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `car id` (`car_id`),
  ADD KEY `features id` (`features_id`);

--
-- Indexes for table `car_image`
--
ALTER TABLE `car_image`
  ADD PRIMARY KEY (`sr_id`),
  ADD KEY `car_image` (`car_id`);

--
-- Indexes for table `car_specifications`
--
ALTER TABLE `car_specifications`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `specifications id` (`specification_id`),
  ADD KEY ` car id` (`car_id`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `specifications`
--
ALTER TABLE `specifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_specifications`
--
ALTER TABLE `add_specifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `car_features`
--
ALTER TABLE `car_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT for table `car_image`
--
ALTER TABLE `car_image`
  MODIFY `sr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `car_specifications`
--
ALTER TABLE `car_specifications`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rating_review`
--
ALTER TABLE `rating_review`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `specifications`
--
ALTER TABLE `specifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`);

--
-- Constraints for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD CONSTRAINT `booking_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`),
  ADD CONSTRAINT `booking_order_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `car` (`id`);

--
-- Constraints for table `car_features`
--
ALTER TABLE `car_features`
  ADD CONSTRAINT `car id` FOREIGN KEY (`car_id`) REFERENCES `car` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `features id` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `car_image`
--
ALTER TABLE `car_image`
  ADD CONSTRAINT `car_image` FOREIGN KEY (`car_id`) REFERENCES `car` (`id`);

--
-- Constraints for table `car_specifications`
--
ALTER TABLE `car_specifications`
  ADD CONSTRAINT ` car id` FOREIGN KEY (`car_id`) REFERENCES `car` (`id`),
  ADD CONSTRAINT `specifications id` FOREIGN KEY (`specification_id`) REFERENCES `specifications` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD CONSTRAINT `rating_review_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`),
  ADD CONSTRAINT `rating_review_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `car` (`id`),
  ADD CONSTRAINT `rating_review_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
