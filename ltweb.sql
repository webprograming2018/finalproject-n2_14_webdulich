-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2018 at 05:18 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ltweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tour` varchar(50) NOT NULL,
  `adultNum` int(10) NOT NULL,
  `childNum` int(10) NOT NULL,
  `startDate` varchar(50) NOT NULL,
  `bookTime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `email`, `tour`, `adultNum`, `childNum`, `startDate`, `bookTime`) VALUES
(2, 'namtran@gmail.com', 'DaLat', 6, 2, '2018-12-31', '2018-12-28T10:41:49.830'),
(3, 'namtran@gmail.com', 'DaLat', 3, 1, '2019-01-02', '2018-12-29T21:51:06.340'),
(4, 'namtran@gmail.com', 'DaLat', 7, 1, '2019-01-06', '2018-12-29T21:57:55.119'),
(5, 'theanh@gmail.com', 'DaLat', 9, 1, '2019-01-05', '2018-12-29T23:17:57.395');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(10) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `time` varchar(200) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tour` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `text`, `time`, `email`, `tour`) VALUES
(3, 'Rat dep', '2018-12-06 10:30:00.', 'namtran@gmail.com', 'DaLat'),
(4, 'Xau', '2018-12-19 13:00:00.', 'namtran@gmail.com', 'MocChau'),
(5, 'Hay', '20:40:00 27/12/2018', 'namtran@gmail.com', 'DaLat'),
(6, 'Tot', '21:20:00 21/12/2018', 'namtran@gmail.com', 'MocChau'),
(7, 'Good', '2018-12-27T22:11:21.820', 'namtran@gmail.com', 'DaLat'),
(12, 'Tuyet voi', '2018-12-28T10:23:10.359', 'namtran@gmail.com', 'DaLat'),
(13, 'Good', '2018-12-29T21:50:43.948', 'namtran@gmail.com', 'DaLat'),
(14, 'Gooooooooood', '2018-12-29T21:57:38.452', 'namtran@gmail.com', 'DaLat');

-- --------------------------------------------------------

--
-- Table structure for table `tour`
--

CREATE TABLE `tour` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour`
--

INSERT INTO `tour` (`id`, `name`, `description`) VALUES
(1, 'MocChau', 'Moc Chau'),
(2, 'DaLat', 'Da Lat');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `dob` varchar(30) DEFAULT NULL,
  `cmtnd` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `name`, `dob`, `cmtnd`) VALUES
(1, 'namtran@gmail.com', '123456', 'Tran Dai Nam', '1997-04-17', '012345678'),
(2, 'theanh@gmail.com', '123456', 'The Anh', '1997-10-17', '056487986');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user booking` (`email`),
  ADD KEY `tour booking` (`tour`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user comment` (`email`),
  ADD KEY `tour comment` (`tour`);

--
-- Indexes for table `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tour`
--
ALTER TABLE `tour`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `tour booking` FOREIGN KEY (`tour`) REFERENCES `tour` (`name`),
  ADD CONSTRAINT `user booking` FOREIGN KEY (`email`) REFERENCES `user` (`email`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `tour comment` FOREIGN KEY (`tour`) REFERENCES `tour` (`name`),
  ADD CONSTRAINT `user comment` FOREIGN KEY (`email`) REFERENCES `user` (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
