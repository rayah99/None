-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2022 at 03:32 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `calender`
--

CREATE TABLE `calender` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `Birthdate` tinyint(1) NOT NULL,
  `wedding` tinyint(1) NOT NULL,
  `TravelBooking` tinyint(1) NOT NULL,
  `DietStart` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `calender`
--

INSERT INTO `calender` (`id`, `user_id`, `date`, `Birthdate`, `wedding`, `TravelBooking`, `DietStart`) VALUES
(1, 2, '2022-02-15', 0, 0, 0, 1),
(2, 1, '2022-05-25', 0, 1, 0, 0),
(3, 3, '2022-09-23', 1, 0, 0, 0),
(4, 2, '2022-09-10', 0, 0, 1, 0),
(5, 4, '2022-08-02', 0, 0, 1, 0),
(6, 6, '2022-08-21', 1, 0, 0, 0),
(7, 3, '2022-07-11', 0, 0, 0, 1),
(8, 4, '2023-01-14', 0, 1, 0, 0),
(9, 6, '2022-11-03', 0, 1, 0, 0),
(10, 1, '2022-12-25', 0, 0, 0, 1),
(11, 7, '2022-09-16', 0, 1, 0, 0),
(12, 7, '2022-07-22', 1, 0, 0, 0),
(13, 8, '2022-09-10', 0, 1, 0, 0),
(14, 9, '2022-07-14', 0, 0, 1, 0),
(15, 10, '2022-11-21', 0, 0, 0, 1),
(16, 11, '2022-12-04', 1, 0, 0, 0),
(17, 16, '2022-08-17', 0, 0, 0, 1),
(18, 10, '2022-09-20', 0, 1, 0, 0),
(19, 17, '2022-05-25', 0, 0, 1, 0),
(20, 8, '2022-04-22', 1, 0, 0, 0),
(21, 12, '2022-06-02', 1, 0, 0, 0),
(22, 18, '2022-05-05', 0, 1, 0, 0),
(23, 19, '2022-07-10', 0, 0, 0, 1),
(24, 13, '2022-09-14', 0, 0, 1, 0),
(25, 20, '2022-07-19', 0, 1, 0, 0),
(26, 15, '2022-04-23', 0, 1, 0, 0),
(27, 21, '2022-08-10', 1, 0, 0, 0),
(28, 14, '2022-04-22', 1, 0, 0, 0),
(29, 22, '2022-08-03', 0, 0, 1, 0),
(30, 9, '2022-05-12', 1, 0, 0, 0),
(31, 23, '2022-06-04', 0, 0, 0, 1),
(32, 24, '2022-08-20', 0, 1, 0, 0),
(33, 29, '2022-05-13', 0, 0, 1, 0),
(34, 25, '2022-12-18', 1, 0, 0, 0),
(35, 26, '2022-07-26', 0, 0, 0, 1),
(36, 27, '2022-08-03', 0, 1, 0, 0),
(37, 28, '2022-08-12', 0, 0, 1, 0),
(38, 30, '2022-09-17', 1, 0, 0, 0),
(39, 31, '2022-10-24', 1, 0, 0, 0),
(40, 32, '2022-09-13', 0, 0, 1, 0),
(41, 33, '2022-11-18', 0, 0, 0, 1),
(42, 34, '2022-12-15', 0, 1, 0, 0),
(43, 35, '2022-04-23', 0, 1, 0, 0),
(44, 36, '2022-06-25', 0, 0, 1, 0),
(45, 37, '2022-05-16', 0, 0, 1, 0),
(46, 38, '2022-07-19', 0, 1, 0, 0),
(47, 39, '2022-09-17', 0, 0, 0, 1),
(48, 40, '2022-08-20', 0, 0, 1, 0),
(49, 41, '2022-11-19', 0, 0, 0, 1),
(50, 42, '2022-10-26', 1, 0, 0, 0),
(51, 43, '2022-12-18', 0, 0, 0, 1),
(52, 44, '2022-05-23', 0, 1, 0, 0),
(53, 45, '2022-05-13', 0, 0, 1, 0),
(54, 46, '2022-06-19', 0, 1, 0, 0),
(55, 47, '2022-09-23', 0, 1, 0, 0),
(56, 48, '2022-10-24', 1, 0, 0, 0),
(57, 49, '2022-09-23', 0, 0, 0, 1),
(58, 50, '2022-08-23', 0, 1, 0, 0),
(59, 34, '2022-06-28', 0, 1, 0, 0),
(60, 36, '2022-09-18', 0, 0, 1, 0),
(61, 45, '2022-06-20', 0, 0, 0, 1),
(62, 42, '2022-09-23', 0, 0, 1, 0),
(63, 25, '2022-08-13', 0, 1, 0, 0),
(64, 36, '2022-09-27', 1, 0, 0, 0),
(65, 42, '2022-07-25', 1, 0, 0, 0),
(66, 38, '2022-09-21', 0, 1, 0, 0),
(67, 50, '2022-08-13', 0, 0, 0, 1),
(68, 23, '2022-07-11', 0, 1, 0, 0),
(69, 48, '2022-09-25', 0, 0, 1, 0),
(70, 39, '2022-08-26', 0, 1, 0, 0),
(71, 42, '2022-10-24', 1, 0, 0, 0),
(72, 38, '2022-10-02', 0, 0, 1, 0),
(73, 45, '2022-08-24', 0, 0, 0, 1),
(74, 48, '2022-09-10', 0, 1, 0, 0),
(75, 33, '2022-09-23', 0, 0, 1, 0),
(76, 2, '2022-02-15', 0, 0, 0, 1),
(77, 1, '2022-05-25', 0, 1, 0, 0),
(78, 3, '2022-05-26', 1, 0, 0, 0),
(79, 5, '2022-05-27', 0, 1, 0, 0),
(80, 6, '2022-05-28', 0, 0, 1, 0),
(81, 4, '2022-05-29', 0, 0, 0, 1),
(82, 8, '2022-06-20', 0, 0, 1, 0),
(83, 7, '2022-06-21', 0, 1, 0, 0),
(84, 9, '2022-06-22', 1, 0, 0, 0),
(85, 12, '2022-06-15', 1, 0, 0, 0),
(86, 13, '2022-06-16', 0, 1, 0, 0),
(87, 11, '2022-06-02', 0, 1, 0, 0),
(88, 10, '2022-06-18', 0, 0, 0, 1),
(89, 16, '2022-06-19', 0, 1, 0, 0),
(90, 14, '2022-06-09', 0, 0, 1, 0),
(91, 15, '2022-06-01', 0, 1, 0, 0),
(92, 19, '2022-06-05', 0, 0, 0, 1),
(93, 18, '2022-04-20', 0, 0, 0, 1),
(94, 17, '2022-04-21', 0, 1, 0, 0),
(95, 20, '2022-04-26', 0, 1, 0, 0),
(96, 25, '2022-04-28', 0, 1, 0, 0),
(97, 22, '2022-04-15', 1, 0, 0, 0),
(98, 27, '2022-04-08', 1, 0, 0, 0),
(99, 29, '2022-04-01', 0, 0, 1, 0),
(100, 28, '2022-04-07', 0, 0, 0, 1),
(102, 23, '2022-04-14', 0, 1, 0, 0),
(103, 21, '2022-04-25', 1, 0, 0, 0),
(104, 26, '2022-04-09', 1, 0, 0, 0),
(105, 30, '2022-07-25', 0, 0, 1, 0),
(106, 36, '2022-07-21', 0, 0, 0, 1),
(107, 39, '2022-07-29', 0, 1, 0, 0),
(108, 35, '2022-07-02', 1, 0, 0, 0),
(109, 32, '2022-07-08', 0, 1, 0, 0),
(110, 33, '2022-07-05', 1, 0, 0, 0),
(111, 34, '2022-07-15', 0, 1, 0, 0),
(112, 37, '2022-07-01', 1, 0, 0, 0),
(113, 38, '2022-03-25', 0, 0, 0, 1),
(114, 31, '2022-03-21', 0, 0, 1, 1),
(115, 40, '2022-03-22', 0, 0, 0, 1),
(116, 44, '2022-03-26', 1, 0, 0, 0),
(117, 45, '2022-03-16', 0, 1, 0, 0),
(118, 43, '2022-03-13', 0, 1, 0, 0),
(119, 41, '2022-03-07', 0, 1, 0, 0),
(120, 42, '2022-03-05', 0, 0, 1, 0),
(121, 48, '2022-08-25', 0, 0, 0, 1),
(122, 49, '2022-08-28', 1, 0, 0, 0),
(123, 47, '2022-08-21', 1, 0, 0, 0),
(124, 46, '2022-08-02', 0, 1, 0, 0),
(125, 50, '2022-08-12', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `health`
--

CREATE TABLE `health` (
  `userid` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `cottonAllergy` tinyint(1) NOT NULL,
  `birthDate` date NOT NULL,
  `handicapped` tinyint(1) NOT NULL,
  `pregnant` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `health`
--

INSERT INTO `health` (`userid`, `height`, `weight`, `cottonAllergy`, `birthDate`, `handicapped`, `pregnant`) VALUES
(1, 170, 65, 1, '1990-03-12', 0, 0),
(2, 160, 70, 0, '1993-05-08', 0, 1),
(3, 160, 60, 0, '2000-06-15', 0, 0),
(4, 164, 70, 0, '1988-09-02', 0, 0),
(5, 165, 65, 1, '1995-03-05', 0, 0),
(6, 159, 50, 1, '1994-09-01', 0, 0),
(7, 172, 60, 1, '1990-02-09', 0, 0),
(8, 160, 60, 0, '2002-11-05', 0, 1),
(9, 165, 70, 0, '1997-12-10', 0, 1),
(10, 170, 70, 0, '1992-06-11', 0, 0),
(11, 160, 70, 0, '2001-04-10', 0, 0),
(12, 155, 70, 0, '1989-06-02', 0, 0),
(13, 160, 60, 0, '1993-11-09', 0, 0),
(14, 165, 60, 1, '2000-01-14', 1, 0),
(15, 160, 70, 0, '1991-02-11', 1, 0),
(16, 165, 65, 0, '1996-05-05', 1, 0),
(17, 170, 65, 1, '2000-04-02', 1, 1),
(18, 165, 60, 0, '1985-06-01', 0, 0),
(19, 160, 70, 0, '1990-07-02', 0, 0),
(20, 170, 75, 0, '2001-04-12', 0, 0),
(21, 155, 60, 0, '1988-12-18', 0, 0),
(22, 160, 65, 0, '1990-02-25', 0, 0),
(23, 170, 70, 0, '1996-09-08', 0, 0),
(24, 165, 60, 1, '1991-12-23', 0, 0),
(25, 160, 70, 0, '2001-04-23', 0, 0),
(26, 160, 70, 0, '1995-11-20', 1, 0),
(27, 170, 60, 0, '1998-05-25', 0, 1),
(28, 155, 65, 0, '2001-04-12', 0, 1),
(29, 160, 60, 0, '2003-02-12', 0, 0),
(30, 170, 75, 0, '1992-07-12', 0, 0),
(31, 170, 70, 1, '1993-03-22', 0, 0),
(32, 155, 60, 0, '1999-06-15', 0, 0),
(33, 160, 60, 0, '1990-09-17', 0, 0),
(34, 160, 65, 0, '1997-12-18', 0, 1),
(35, 150, 50, 1, '2001-09-12', 1, 0),
(36, 170, 75, 0, '1992-04-11', 0, 0),
(37, 170, 75, 0, '1993-02-17', 0, 1),
(38, 170, 75, 0, '2003-03-20', 0, 0),
(39, 160, 70, 0, '1996-03-23', 0, 0),
(40, 165, 60, 0, '1987-09-20', 0, 0),
(41, 155, 60, 0, '1989-03-12', 0, 0),
(42, 160, 60, 1, '1990-06-20', 0, 0),
(43, 165, 65, 0, '1999-02-23', 1, 0),
(44, 165, 65, 0, '1992-12-20', 1, 0),
(45, 170, 70, 0, '2002-03-22', 1, 0),
(46, 170, 70, 0, '2003-06-03', 0, 1),
(47, 160, 60, 0, '1993-12-05', 0, 0),
(48, 155, 50, 0, '1990-09-15', 0, 1),
(49, 160, 65, 1, '1988-02-22', 0, 0),
(50, 160, 60, 1, '1995-02-15', 1, 0),
(51, 170, 65, 1, '1989-03-06', 1, 0),
(52, 160, 70, 0, '1989-03-09', 0, 1),
(53, 160, 65, 0, '1990-03-18', 0, 1),
(54, 160, 65, 0, '1990-07-20', 1, 0),
(55, 160, 65, 0, '1987-05-15', 0, 1),
(56, 160, 65, 0, '1988-04-01', 0, 1),
(57, 160, 65, 1, '1990-07-22', 0, 0),
(58, 160, 65, 1, '1991-09-09', 0, 0),
(59, 160, 65, 1, '1990-07-08', 0, 0),
(60, 160, 65, 0, '1990-09-08', 0, 1),
(61, 160, 65, 1, '1992-06-08', 0, 0),
(62, 160, 65, 1, '1992-04-08', 0, 0),
(63, 160, 65, 0, '1992-02-08', 0, 1),
(64, 165, 65, 0, '1993-01-08', 1, 0),
(65, 165, 67, 1, '1996-05-05', 0, 0),
(66, 165, 67, 0, '1980-08-08', 1, 0),
(67, 165, 67, 1, '1975-08-08', 0, 0),
(68, 165, 67, 0, '1999-03-01', 1, 0),
(69, 165, 67, 1, '1999-05-01', 0, 0),
(70, 165, 72, 0, '1999-04-01', 0, 1),
(71, 165, 72, 0, '2001-04-01', 0, 1),
(72, 165, 72, 0, '2000-04-20', 1, 0),
(73, 165, 72, 1, '2001-04-08', 0, 0),
(74, 165, 72, 0, '1996-04-01', 0, 0),
(75, 165, 80, 0, '1988-04-01', 0, 0),
(76, 165, 52, 0, '2001-01-01', 0, 0),
(77, 155, 52, 0, '2003-08-09', 0, 0),
(78, 155, 52, 0, '2004-08-09', 0, 0),
(79, 155, 52, 1, '2005-08-09', 0, 0),
(80, 155, 52, 0, '2001-08-09', 0, 0),
(81, 155, 52, 1, '2000-08-09', 0, 0),
(82, 155, 52, 0, '2000-08-09', 0, 1),
(83, 155, 54, 1, '1989-04-09', 0, 0),
(84, 155, 54, 0, '1990-05-18', 0, 1),
(85, 155, 54, 1, '1990-08-20', 0, 0),
(86, 155, 54, 0, '1987-10-15', 0, 1),
(87, 155, 54, 0, '1988-11-01', 0, 1),
(88, 170, 54, 0, '1990-02-22', 1, 0),
(89, 170, 80, 0, '1996-09-09', 0, 1),
(90, 170, 80, 0, '1997-07-08', 1, 0),
(91, 170, 80, 1, '1998-09-08', 0, 0),
(92, 170, 80, 0, '1979-04-09', 0, 0),
(93, 170, 80, 0, '1990-08-18', 0, 0),
(94, 170, 85, 0, '1990-08-02', 0, 1),
(95, 170, 85, 1, '1987-10-15', 0, 0),
(96, 170, 85, 1, '1988-11-01', 1, 0),
(97, 170, 85, 0, '1990-02-22', 1, 0),
(98, 170, 85, 0, '1996-09-08', 0, 1),
(99, 150, 45, 0, '1997-07-07', 0, 0),
(100, 150, 48, 0, '1998-09-12', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(300) NOT NULL,
  `comBirthdate` tinyint(1) NOT NULL,
  `comWedding` tinyint(1) NOT NULL,
  `comTravelBooking` tinyint(1) NOT NULL,
  `comDietStart` tinyint(1) NOT NULL,
  `image` varchar(300) NOT NULL,
  `comCottonAllergy` tinyint(1) NOT NULL,
  `comHandicapped` tinyint(1) NOT NULL,
  `comPregnant` tinyint(1) NOT NULL,
  `age` varchar(30) NOT NULL,
  `size` varchar(30) NOT NULL,
  `height` varchar(30) NOT NULL,
  `event` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `productimages`
--

CREATE TABLE `productimages` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `name`, `type`) VALUES
(1, '1232@gmail.com', '1234', 'Sara Ahmed', 'admin'),
(2, 'user2@gmail.com', 'assa123', 'Fatemah Omar', 'user'),
(3, 'nor@gmail.com', 'AB421', 'Noor Salah', 'user'),
(4, 'an1@gmail.com', 'gda123', 'Anwar khaleed ', 'user'),
(5, 'nouf@gmail.com', 'Zse3211', 'Nouf Omer', 'user'),
(6, 'jan2@gmail.com', 'Goai22', 'Jana Ahmed ', 'user'),
(7, 'n14@gmail.com', 'Ldfg45', 'Nourah Omer', 'user'),
(8, 'lama2@gmail.com', 'Sfe20', 'Lama Khaleed', 'user'),
(9, 'A23@gmail.com', 'Dz09', 'Asma Ali ', 'user'),
(10, 'Han@gmail.com', 'Scfs2', 'Hanaan Salah', 'user'),
(11, '1353@gmail.com', 'Dao2', 'Leen Yosuf', 'user'),
(12, 'He24@gmail.com', 'Aq12', 'Hend Khaleed', 'user'),
(13, 'mar4@gmail.com', 'Sf03', 'Marya Salah', 'user'),
(14, 'Raz2@gmail.com', 'F9a1', 'Razan Ahmed', 'user'),
(15, 'Som3@gmail.com', 'Doz2', 'Somiyah Omer', 'user'),
(16, 'gh2@gmail.com', 'A9w1', 'Ghadah Khaleed', 'user'),
(17, 'jm6@gmail.com', 'Vvi2', 'Jood Yosuf', 'user'),
(18, 'reem2@gmail.com', 'Oa11', 'Reem Saleh', 'user'),
(19, 't5@gmail.com', 'Dczo1', 'Thekra Omar', 'user'),
(20, 'Lat5@gmail.com', 'Sdoa1', 'Latifah Ali', 'user'),
(21, 'rag1@gmail.com', 'Adkc1', 'Raghad Ahmed', 'user'),
(22, 'tk7@gmail.com', 'jox74', 'Tahani Salah', 'user'),
(23, 'sh4@gmail.com', 'Dsz93', 'Shadain Ahmed', 'user'),
(24, 'asra3@gmail.com', 'Cot5e', 'Asra Yosuf', 'user'),
(25, 'Rem@gmail.com', 'SSk23', 'Rema Omer', 'user'),
(26, 'Sarat@gmail.com', 'Kxhd2', 'Sarah Omer ', 'user'),
(27, 'Fs@gmail.com', 'Lsjc2', 'Maha Ahmed', 'user'),
(28, 'Skf@gmai.com', 'Gskxu1', 'Samiyah Yosuf', 'user'),
(29, 'S21@gmail.com', 'KA33', 'Wajdan Ali ', 'user'),
(30, 'R5@gmail.com', 'AK55', 'Rema Ali ', 'user'),
(31, 'A23@gmail.com', 'Lox88', 'Asma Omer', 'user'),
(32, 'Ly45@gmail.com', 'Vos75', 'Leen Khaleed', 'user'),
(33, 'LA2@gmail.com', 'Dkxh2', 'Lama Ahmed', 'user'),
(34, 'Jos@gmail.com ', 'asl33', 'Jood Omar', 'user'),
(35, 'Sa2@gmail.com ', 'Gdk33', 'Shahad Khaleed', 'user'),
(36, 'Wjd@gmail.com', 'Skvjs', 'Wajdan Ahmed', 'user'),
(37, 'SY32@gmail.com', 'Lsj4', 'Sarah Yosuf', 'user'),
(38, 'HA3@gmail.com', 'Skci2', 'Hend Ali ', 'user'),
(39, 'SA98@gmail.com', 'A2kf', 'Somiyah Ahmed', 'user'),
(40, 'LK09@gmail.com', 'Lsu3', 'Latifah Khaleed', 'user'),
(41, 'SO32@gmail.com', 'Mf43', 'Shadain Omar', 'user'),
(42, 'Sak2@gmail.com', 'Soc45', 'Shahad Khaleed', 'user'),
(43, 'AA2@gmail.com ', 'Dox4', 'Asma Ahmad', 'user'),
(44, 'Re@gmail.com', 'Sojo2', 'Raghad Yosuf', 'user'),
(45, 'Saw1@gmail.com', 'Lsj67', 'Anwar Ahmed', 'user'),
(46, 'so2@gmail.com', 'Xcms4', 'Sara Omar', 'user'),
(47, 'LY2@gmail.com', 'Fla0s', 'Lama Yosuf', 'user'),
(48, 'Ree0@gmail.com', 'Hks33', 'Reem Omar', 'user'),
(49, 'Aso2@gmail.com', 'Los32', 'Asra Khaleed', 'user'),
(50, 'Ra3@gmail.com', 'Msj3', 'Razan Omar', 'user'),
(51, 'sara30@gmail.com', '1234', 'Sara Ahmed', 'admin'),
(52, 'fatemah2@gmail.com', 'assa123', 'Fatemah Omar', 'user'),
(53, 'a643@gmail.com', '11223344', 'manal turki', 'user'),
(54, 'sae342@gmail.com', 're321', 'jood saad', 'user'),
(55, 'fds54e2@gmail.com', 'er234', 'yasmin ali', 'user'),
(56, 'iu761@gmail.com', 'gfd321', 'lamia fahd', 'user'),
(57, 'ghj6@gmail.com', '112233', 'yara ahmed', 'user'),
(58, 'op762@gmail.com', '223314', 'amal fahd', 'user'),
(59, 'pjf5@gmail.com', 'ew2233', 'amal ali', 'user'),
(60, 'ogr5@gmail.com', 'td332', 'sara turki', 'user'),
(61, 'moroj2@gmail.com', 'ffds2', 'moroj saad', 'user'),
(62, 'mano2@gmail.com', '22edw', 'manal fahad', 'user'),
(63, 'jood2@gmail.com', '33rdw', 'jood mohammed', 'user'),
(64, 'no32@gmail.com', 'fd32', 'norah khaled', 'user'),
(65, 'noor32@gmail.com', 'ytr43', 'noor ahmed', 'user'),
(66, 'momo32@gmail.com', 'rrg32', 'moroj mohamed', 'user'),
(67, 'sami98@gmail.com', 're234', 'samiah ali', 'user'),
(68, 'nad43@gmail.com', 'yt456', 'nadiah faris', 'user'),
(69, 'fat54@gmail.com', 'ytrhgf', 'Fatemah ahmed', 'user'),
(70, 'f562@gmail.com', 'ertyerty', 'Fatemah Ali', 'user'),
(71, 'f90@gmail.com', '12341234', 'Fatemah saad', 'user'),
(72, 'fa22@gmail.com', '123123', 'Fatemah mohamed', 'user'),
(73, 'f456@gmail.com', '3456', 'Fatemah faris', 'user'),
(74, 'ra88@gmail.com', '6543', 'ryanh musa', 'user'),
(75, 'yas45@gmail.com', '6789', 'yasmin musa', 'user'),
(76, 'han543@gmail.com', '87654', 'haneen mohammed', 'user'),
(77, 'saraali@gmail.com', '9876', 'sara ali', 'user'),
(78, 'amalaziz@gmail.com', '67899', 'amal aziz', 'user'),
(79, 'lamia@gmail.com', '7623', 'lamia saud', 'user'),
(80, 'haifa7@gmail.com', '32456', 'haifa faris', 'user'),
(81, 'sara4@gmail.com', '456ert', 'sara aziz', 'user'),
(82, 'manal97@gmail.com', 'tre321', 'manal saud', 'user'),
(83, 'danah2@gmail.com', '1234qwe', 'danah turki', 'user'),
(84, 'sa123@gmail.com', 'qwer234', 'samiah saad', 'user'),
(85, 'ra678@gmail.com', '432wer', 'reem mourad', 'user'),
(86, 'nad678@gmail.com', 'gfd345', 'nadeen mustafa', 'user'),
(87, 'haifaaa7@gmail.com', '543yui', 'haifa fahad', 'user'),
(88, 'man76@gmail.com', 'jhgf4', 'fadiah mansor', 'user'),
(89, 'fd87@gmail.com', '4rty', 'norah mourad ', 'user'),
(90, 'ru89@gmail.com', '34hgf', 'ryanh ali', 'user'),
(91, 'yara@gmail.com', 'ytr543', 'yara mohamed', 'user'),
(92, 'samrraj@gmail.com', 'rara321', 'samerh turki', 'user'),
(93, 'seemo@gmail.com', 'ewrt23', 'reem saad', 'user'),
(94, 'mois87@gmail.com', 'rty6e3', 'noor mousa', 'user'),
(95, 'hanoo2@gmail.com', 'r4t3', 'hanan aziz', 'user'),
(96, 'h90@gmail.com', 'y6u4', 'haifa alharbi', 'user'),
(97, 'morooj8@gmail.com', 'ig5f3', 'moroj alharbi', 'user'),
(98, 'amal2@gmail.com', 'yje90', 'amal alharbi', 'user'),
(99, 'lam32@gmail.com', 'u7y5r7', 'lamia alharbi', 'user'),
(100, 'had2@gmail.com', '7t5e', 'hadel alharbi', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calender`
--
ALTER TABLE `calender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health`
--
ALTER TABLE `health`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calender`
--
ALTER TABLE `calender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productimages`
--
ALTER TABLE `productimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
