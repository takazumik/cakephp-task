-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 30, 2020 at 07:59 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidinfo`
--

CREATE TABLE `bidinfo` (
  `id` int(11) NOT NULL,
  `biditem_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bidinfo`
--

INSERT INTO `bidinfo` (`id`, `biditem_id`, `user_id`, `price`, `created`) VALUES
(1, 4, 1, 89990, '2020-04-27 20:13:26');

-- --------------------------------------------------------

--
-- Table structure for table `biditems`
--

CREATE TABLE `biditems` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `finished` tinyint(1) NOT NULL,
  `endtime` datetime NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biditems`
--

INSERT INTO `biditems` (`id`, `user_id`, `name`, `finished`, `endtime`, `created`) VALUES
(1, 1, 'iphone XS', 0, '2020-05-27 10:14:00', '2020-04-27 10:14:31'),
(2, 1, 'amazarashi', 0, '2020-04-30 10:14:00', '2020-04-27 10:14:48'),
(3, 1, 'くそごみ', 1, '2020-04-27 10:45:00', '2020-04-27 10:46:07'),
(4, 1, 'カス教材', 1, '2020-04-27 19:47:00', '2020-04-27 10:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `bidmessages`
--

CREATE TABLE `bidmessages` (
  `id` int(11) NOT NULL,
  `bidinfo_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bidrequests`
--

CREATE TABLE `bidrequests` (
  `id` int(11) NOT NULL,
  `biditem_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bidrequests`
--

INSERT INTO `bidrequests` (`id`, `biditem_id`, `user_id`, `price`, `created`) VALUES
(1, 1, 1, 30000, '2020-04-27 10:45:02'),
(2, 4, 1, 45, '2020-04-27 10:46:49'),
(3, 4, 1, 89990, '2020-04-27 10:47:05');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `stars` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `content`, `stars`, `created`) VALUES
(1, '元彼に誕生日', 'fsgfsggsd', 4, '2020-04-27 06:19:05');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `name`, `mail`, `age`) VALUES
(2, 'アユ二', 'test2@test', 22),
(3, 'アイナ', 'test3@test', 34),
(4, 'メガネ', 'test4@test', 48);

-- --------------------------------------------------------

--
-- Table structure for table `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20200427050634, 'CreateMovies', '2020-04-26 21:08:11', '2020-04-26 21:08:11', 0),
(20200427071353, 'CreateUsers', '2020-04-26 22:28:18', '2020-04-26 22:28:18', 0),
(20200427072333, 'CreateBiditems', '2020-04-26 22:28:18', '2020-04-26 22:28:18', 0),
(20200427072519, 'CreateBidinfo', '2020-04-26 22:28:18', '2020-04-26 22:28:18', 0),
(20200427072650, 'CreateBidrequests', '2020-04-26 22:28:18', '2020-04-26 22:28:18', 0),
(20200427072740, 'CreateBidmessages', '2020-04-26 22:28:18', '2020-04-26 22:28:18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '$2y$10$DZQ4jTjrNG58yMtbehwzT.VHaw.PAMCs30fE4IUCtHxMzH/GL90vW', 'admin'),
(2, 'user1', '$2y$10$MYarSxQmE4bLd5usBIJENuDm0BGhNIxS1kGk62koK3VQXkT9lo0bS', 'user'),
(3, 'user2', '$2y$10$uTOgWsAXAukQeU7PAikd5.yETlJIF.ee9W/zxG5ZPrIPlQlTkRj8G', 'user'),
(4, 'user3', '$2y$10$ebb1fb0kQRDB7xktBWNpPua6o1pohfUb.6cm85FMD/zcq4RTGpnrW', 'user'),
(5, 'unko', '$2y$10$bNl3/bSK9Bft.1oEAyzV5.KJxz6atFuVdGP84k79aBHL85lsJ5KSy', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidinfo`
--
ALTER TABLE `bidinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biditems`
--
ALTER TABLE `biditems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bidmessages`
--
ALTER TABLE `bidmessages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bidrequests`
--
ALTER TABLE `bidrequests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidinfo`
--
ALTER TABLE `bidinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `biditems`
--
ALTER TABLE `biditems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bidmessages`
--
ALTER TABLE `bidmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bidrequests`
--
ALTER TABLE `bidrequests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
