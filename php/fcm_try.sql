-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2018 at 01:51 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fcm_try`
--

-- --------------------------------------------------------

--
-- Table structure for table `fcm_info`
--

CREATE TABLE `fcm_info` (
  `id` int(11) NOT NULL,
  `fcm_token` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fcm_info`
--

INSERT INTO `fcm_info` (`id`, `fcm_token`) VALUES
(3, 'cIMrU7r4sLE:APA91bHLPjGQUrFSFXI3uLzgbulleQxUXd59sy83u4THs83Q-JAipcb1H1wcJZZpU5qJmpm91N77ONdXX3bvPVMbidB3ZQ9EFMy_dhDHwDIUTZXGubwfPksUxZKfR-_dbGHh5CJWwX0K'),
(5, 'com.google.firebase.iid.FirebaseInstanceId@1cf80105'),
(6, 'cIMrU7r4sLE:APA91bHLPjGQUrFSFXI3uLzgbulleQxUXd59sy83u4THs83Q-JAipcb1H1wcJZZpU5qJmpm91N77ONdXX3bvPVMbidB3ZQ9EFMy_dhDHwDIUTZXGubwfPksUxZKfR-_dbGHh5CJWwX0K');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fcm_info`
--
ALTER TABLE `fcm_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fcm_info`
--
ALTER TABLE `fcm_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
