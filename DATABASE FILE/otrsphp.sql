-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2022 at 07:01 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `otrsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `booked`
--

CREATE TABLE `booked` (
  `id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `class` varchar(10) NOT NULL DEFAULT 'second',
  `no` int(11) NOT NULL DEFAULT 1,
  `seat` varchar(30) NOT NULL,
  `date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` varchar(400) NOT NULL,
  `response` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(40) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `loc` varchar(40) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`id`, `name`, `email`, `password`, `phone`, `address`, `loc`, `status`) VALUES
(9, 'Zunayed Rahman', 'demoaccount2@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '01777733685', 'Dhaka', '13e192f88e4937295829658d1995da05.png', 1),
(10, 'Apple Rashed', 'apple@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '01794582164', 'Dhaka', 'a7d1e4356575f6f186f061b87ef10316.jpg', 1),
(11, 'Kazi Sidratul', 'kazi@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '01963215789', 'Dhaka', '128586525cf3ac73db5593e94da4f630.jpg', 1),
(12, 'Tishme Hasan', 'tishme@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '01896321475', 'Dhaka', '91438572c360a7060a0aedc33905b473.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `ref` varchar(100) NOT NULL,
  `date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `id` int(11) NOT NULL,
  `start` varchar(100) NOT NULL,
  `stop` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`id`, `start`, `stop`) VALUES
(1, 'Uttara North', 'Uttara Center'),
(20, 'Uttara Center', 'Uttara South'),
(21, 'Uttara South', 'Pallabi'),
(22, 'Pallabi', 'Mirpur 11'),
(23, ' Mirpur 11', ' Mirpur 10'),
(24, 'Mirpur 10', 'Kazipara'),
(25, ' Kazipara', ' Shewrapara'),
(26, 'Shewrapara', 'Agargaon'),
(27, 'Agargaon', 'Bijoy Sarani'),
(28, 'Bijoy Sarani', 'Farmgate'),
(29, 'Farmgate', 'Karwan Bazar'),
(30, 'Karwan Bazar', 'Shahbag'),
(31, 'Shahbag', 'Dhaka University'),
(32, 'Dhaka University', 'Bangladesh Secretariat'),
(33, 'Bangladesh Secretariat', 'Motijheel');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `train_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(10) NOT NULL,
  `first_fee` float NOT NULL,
  `second_fee` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `train_id`, `route_id`, `date`, `time`, `first_fee`, `second_fee`) VALUES
(105, 14, 1, '12-12-2022', '10:00', 20, 10),
(114, 14, 20, '12-12-2022', '10:15', 20, 10),
(115, 14, 21, '12-12-2022', '10:30', 20, 10),
(116, 14, 22, '12-12-2022', '10:45', 20, 10),
(117, 14, 23, '12-12-2022', '11:00', 20, 10),
(118, 14, 24, '12-12-2022', '11:15', 20, 10),
(119, 14, 25, '12-12-2022', '11:30', 20, 10),
(120, 14, 26, '12-12-2022', '11:40', 20, 10),
(127, 14, 27, '12-12-2022', '23:50', 20, 10),
(128, 14, 28, '12-12-2022', '23:55', 20, 10),
(129, 14, 29, '12-12-2022', '13:00', 20, 10),
(130, 14, 30, '12-12-2022', '13:15', 20, 10),
(131, 14, 31, '12-12-2022', '13:30', 20, 10),
(132, 14, 32, '12-12-2022', '13:45', 20, 10),
(133, 14, 33, '12-12-2022', '14:00', 20, 10);

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `first_seat` int(11) NOT NULL,
  `second_seat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`id`, `name`, `first_seat`, `second_seat`) VALUES
(14, 'MRT6-A', 100, 100),
(15, 'MRT6-B', 100, 100),
(16, 'MRT6-C', 100, 100),
(17, 'MRT6-D', 100, 100),
(18, 'MRT6-E', 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'admin@admin.com', 'D00F5D5217896FB7FD601412CB890830');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked`
--
ALTER TABLE `booked`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `schedule_id` (`schedule_id`,`user_id`,`payment_id`) USING BTREE,
  ADD KEY `schedule_id_2` (`schedule_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `passenger_id` (`passenger_id`,`schedule_id`),
  ADD KEY `passenger_id_2` (`passenger_id`) USING BTREE,
  ADD KEY `schedule_id` (`schedule_id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `train_id` (`train_id`),
  ADD KEY `route_id` (`route_id`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
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
-- AUTO_INCREMENT for table `booked`
--
ALTER TABLE `booked`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `train`
--
ALTER TABLE `train`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booked`
--
ALTER TABLE `booked`
  ADD CONSTRAINT `booked_ibfk_1` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`),
  ADD CONSTRAINT `booked_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `passenger` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passenger` (`id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`);

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `train` (`id`),
  ADD CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`route_id`) REFERENCES `route` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
