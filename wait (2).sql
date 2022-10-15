-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2022 at 08:49 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wait`
--

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `komentar` text NOT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `nama`, `email`, `komentar`, `id`) VALUES
(1, '', '', 'yyy', 1),
(2, '', '', 'hai', NULL),
(3, 'indra', 'boy@gmail.com', 'ui', NULL),
(4, 'indra', 'krisna@gmail.com', 'akuuuu', NULL),
(5, 'indra', 'krisna@gmail.com', 'akuuuu', NULL),
(6, 'indra', 'krisna@gmail.com', '3', NULL),
(7, 'indra', 'krisna@gmail.com', '3', NULL),
(8, 'indra', 'e41212168@polije.ac.', '32', NULL),
(9, 'indra', 'e41212168@polije.ac.', '32', NULL),
(10, 'wqe', 'admin@gmail.com', '12', NULL),
(11, 'wqe', 'admin@gmail.com', '12', NULL),
(12, 'wqe', 'admin@gmail.com', '12', NULL),
(13, '', 'krisna@gmail.com', 'akuuuu', NULL),
(14, 'indra', 'krisna@gmail.com', 'akuuuu suka', NULL),
(15, 'indra', 'krisna@gmail.com', 'akuuuu suka', NULL),
(16, 'indra', 'krisna@gmail.com', 'akuuuu', NULL),
(17, 'indra', 'indrapras@gmail.com', 'halo', NULL),
(18, '', '', '', NULL),
(19, '', '', '', NULL),
(20, 'indra', 'krisna@gmail.com', 'akuuuu', NULL),
(21, 'indra', 'krisna@gmail.com', 'akuuuu', NULL),
(22, 'indra', 'krisna@gmail.com', 'akuuuu', NULL),
(23, 'indra', 'krisna@gmail.com', 'akuuuu', NULL),
(24, 'indra', 'krisna@gmail.com', 'akuuuu', NULL),
(25, 'indra', 'krisna@gmail.com', 'akuuuu suka', NULL),
(26, 'indra', 'indrapras@gmail.com', '3', NULL),
(27, 'indra', 'indrapras@gmail.com', '3', NULL),
(28, 'indra', 'indrapras@gmail.com', '3', NULL),
(29, 'indra', 'indrapras@gmail.com', '3', NULL),
(30, 'indra', 'krisna@gmail.com', 'akuuuu', NULL),
(31, 'indra', 'krisna@gmail.com', 'akuuuu', NULL),
(32, 'iqbal', 'ajnay@gmail.com', 'pagi om aku orang baru', NULL),
(33, 'indra', 'krisna@gmail.com', 'akuuuu', NULL),
(34, 'indra', 'krisna@gmail.com', 'akuuuu', NULL),
(35, 'indra', 'indrapras@gmail.com', 'akuuuu', NULL),
(36, 'indra', 'indrapras@gmail.com', 'yoi', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userr`
--

CREATE TABLE `userr` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userr`
--

INSERT INTO `userr` (`id`, `nama`, `email`, `password`) VALUES
(1, 'krisna', 'krisna@gmail.com', 'halo nama saya krisna'),
(2, 'indra', 'krisna@gmail.com', 'qwqwq'),
(3, 'indra', 'krisna@gmail.com', '12'),
(4, 'indra', 'krisna@gmail.com', '12'),
(5, 'indra', 'krisna@gmail.com', '12'),
(6, 'krisna', 'krisna@gmail.com', 'yok'),
(7, 'indra', 'indrapras@gmail.com', ''),
(8, '', 'bewe@gmail.com', 'e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `userr`
--
ALTER TABLE `userr`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userr`
--
ALTER TABLE `userr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`id`) REFERENCES `userr` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
