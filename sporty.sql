-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2016 at 12:48 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sporty`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sport_name` varchar(1024) NOT NULL,
  `event_title` varchar(1024) NOT NULL,
  `event_date` varchar(1024) NOT NULL,
  `event_time` varchar(1024) NOT NULL,
  `event_players` varchar(1024) NOT NULL,
  `event_going` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `user_id`, `sport_name`, `event_title`, `event_date`, `event_time`, `event_players`, `event_going`) VALUES
(1, 1, 'Football', 'Turnir u malom fudbalu, 4+1', '13.10.2016', '21h', '20', '1'),
(2, 2, 'Basketball', 'Basket 3 na 3', '21.11.2016', '16h', '6', '2'),
(3, 4, 'Basketball', 'Mali fudbal u sportskoj hali', '25.10.2016', '18:00h', '9', '1'),
(4, 4, 'Football', 'Mali fudbal u sportskoj hali', '25.10.2016', '17:00h', '15', '2');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `sport_id` int(11) NOT NULL,
  `sport_name` varchar(1024) NOT NULL,
  `sport_description` varchar(1024) NOT NULL,
  `sport_events` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`sport_id`, `sport_name`, `sport_description`, `sport_events`) VALUES
(1, 'Football', 'Two teams play against each other i try to score a goal, by kicking the ball.', 1),
(2, 'Basketball', 'Beautifull game played by hands, two teams try to put the ball in the hoops', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(1024) NOT NULL,
  `user_email` varchar(1024) NOT NULL,
  `user_password` varchar(1024) NOT NULL,
  `user_phone` varchar(1024) NOT NULL,
  `user_facebookUrl` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_phone`, `user_facebookUrl`) VALUES
(1, 'Nemanja', 'redhcp13@gmail.com', 'necacane123', '0644758285', 'facebook.com/mitic3'),
(2, 'Miksii', 'miski@gmail.com', 'miksiiix', '0629630657', 'facebook.com/milanmix'),
(3, 'necacane231', 'redhcp13@gmail.com', '', '', ''),
(4, 'necacane231', 'redhcp13@gmail.com', 'ronaldo98', '0644758285', 'www.facebook.com/mitic3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`sport_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `sport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
