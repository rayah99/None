-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2022 at 06:08 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

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
(3, 3, '2022-09-23', 1, 0, 0, 0),
(6, 6, '2022-08-21', 0, 1, 0, 0),
(11, 7, '2022-09-16', 0, 0, 1, 0),
(13, 8, '2022-09-10', 0, 0, 0, 0),
(14, 9, '2022-07-14', 0, 0, 1, 0),
(15, 10, '0000-00-00', 0, 0, 0, 0),
(16, 5, '2022-12-04', 1, 0, 0, 0),
(17, 16, '2022-08-17', 0, 0, 0, 1),
(19, 17, '2022-05-25', 0, 0, 1, 0),
(21, 12, '2022-06-02', 1, 0, 0, 0),
(22, 18, '2022-05-05', 0, 1, 0, 0),
(23, 19, '2022-07-10', 0, 0, 0, 1),
(24, 13, '2022-09-14', 0, 0, 1, 0),
(25, 20, '2022-07-19', 0, 1, 0, 0),
(26, 15, '2022-04-23', 0, 1, 0, 0),
(27, 21, '2022-08-10', 1, 0, 0, 0),
(28, 14, '2022-04-22', 1, 0, 0, 0),
(29, 22, '2022-08-03', 0, 0, 1, 0),
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
(81, 4, '2022-05-29', 0, 0, 0, 1),
(98, 27, '2022-04-08', 1, 0, 0, 0),
(99, 29, '2022-04-01', 0, 0, 1, 0),
(100, 28, '2022-04-07', 0, 0, 0, 1),
(102, 23, '2022-04-14', 0, 1, 0, 0),
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
(3, 165, 77, 0, '1998-06-15', 0, 0),
(4, 165, 75, 0, '1994-09-02', 0, 0),
(5, 150, 48, 1, '2006-03-05', 0, 0),
(6, 165, 58, 0, '1994-09-01', 0, 1),
(7, 157, 60, 0, '1990-02-09', 0, 0),
(8, 155, 54, 0, '2002-11-05', 1, 0),
(9, 165, 70, 0, '1997-12-10', 0, 1),
(10, 160, 54, 0, '1992-06-11', 1, 0),
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

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `description`, `comBirthdate`, `comWedding`, `comTravelBooking`, `comDietStart`, `image`, `comCottonAllergy`, `comHandicapped`, `comPregnant`, `age`, `size`, `height`, `event`) VALUES
(1, 'Sport Tee', 60, 'basics plus solid raglan sleeve sports tee with thumb holes\r\nColor: Black \r\nPattern Type: Plain \r\nDetails: Cut Out \r\nType: Sports Tees \r\nNeckline:  Round Neck \r\nSleeve Length: Long Sleeve\r\nSleeve Type: Raglan Sleeve \r\nLength: Regular\r\nFit Type: Regular Fit \r\nFeatures: Thumbholes \r\nFabric: High Stret', 0, 0, 0, 1, '622e677e63ac01.00327680.jpeg', 0, 0, 0, 'Young', 'M', '160-170', 0),
(2, 'Sport Tee', 68, 'Plus Waterproof Breathable Quick-Drying Thumbholes Sports Tee,\r\nWhite Color:\r\nPattern Type: Colorblock \r\nDetails: Zipper \r\nType:  Sports Tees \r\nNeckline: Collar \r\nSleeve Length: Long Sleeve \r\nSleeve Type: Regular Sleeve \r\nLength: Regular \r\nFit Type: Regular Fit \r\nFeatures: Waterproof, Breathable, Qu', 0, 0, 0, 1, '622e6a29497bb0.55161486.jpeg', 0, 0, 0, 'Young', 'M', '160-170', 0),
(3, 'Sports Pants', 40, 'Plus Drawstring Waist Solid Sports Pants\r\nColor: Black \r\nPattern Type: Plain \r\nDetails: Drawstring, Pocket \r\nType: Sports Pants\r\nWaist Line: Natural \r\nLength: Long \r\nFit Type: Regular Fit \r\nFabric: Slight Stretch \r\nCare Instructions: Machine wash or professional dry clean \r\nSheer: No ', 0, 0, 0, 1, '622e6c156dee61.46657956.jpeg', 0, 0, 0, 'Young', 'M', '160-170', 0),
(4, 'Gloves', 10, '1pair Half Finger Riding Gloves\r\nColor: Black \r\nMaterial: Polyester \r\nType: Sports Supports & Shaping\r\n', 0, 0, 0, 1, '622e6e3b75be90.00908324.jpg', 0, 0, 0, 'Young', 'M', '160-170', 0),
(5, 'Yoga Mat', 50, 'Color: Pink\r\nType: Plain Pattern \r\nMaterial: ΤΡΕ \r\nType: Yoga \r\nLength: 185 cm \r\nWidth : 70cm \r\nThickness: 0.6 cm ', 0, 0, 0, 1, '622e6fb99d67a1.38286924.jpg', 0, 0, 0, 'Young', 'M', '160-170', 0),
(6, 'Panel Sneakers', 55, 'Lace-up Front Mesh Panel Sneakers\r\nStyle: Sporty\r\nColor: Grey \r\nPattern Type: Plain \r\nType: Running Shoes\r\nStrap Type: Lace Up \r\nToe: Round Toe\r\nUpper Height: Low-top \r\n', 0, 0, 0, 1, '622e73327bd728.71631877.jpg', 0, 0, 0, 'Young', 'M', '160-170', 0),
(7, 'Running Shoes', 89, 'Patch Decor Knit Lace-up Running Shoes\r\nColor: Pink \r\nType:Running Shoes \r\nLining Material: Mesh \r\nInsole Material: Mesh \r\nOutsole Material: EVA \r\nUpper Material: Mesh', 0, 0, 0, 1, '622e74c87c6fd2.16664296.jpg', 0, 0, 0, 'Young', 'M', '160-170', 0),
(9, 'Belted Dress', 150, 'Color:Light Grey  \r\n,Style: Elegant \r\n,Details: Belted \r\n,Neckline: Round Neck \r\n,Sleeve Length: Long Sleeve \r\n,Sleeve Type: Flounce Sleeve\r\n ,Length: Long \r\n ,Fabric: Non-Stretch \r\n,Material: 100% Polyester \r\n,Care Instructions:  Machine wash or professional dry clean\r\n,Sheer: No', 1, 0, 0, 0, '622fc404d87845.95528779.jpeg', 0, 0, 0, 'Young', 'L', '160-170', 0),
(10, 'Black Dress', 120, 'Color: Black \r\n,Neckline: Round Neck \r\n,Sleeve Length: Long Sleeve \r\n,Sleeve Type: Regular Sleeve \r\n,Waist Line:High Waist  \r\n,Length: Long \r\n,Fabric:Slight Stretch  \r\n,Material:100% Polyester \r\n,Care Instructions: Machine wash or professional dry clean , Sheer: No ', 1, 0, 0, 0, '622fc5978b6c34.15770703.jpeg', 0, 0, 0, 'Young', 'L', '160-170', 0),
(11, 'Brown Dress', 180, 'Color: Brown \r\n,Details: Pleated, Rhinestone, Zipper \r\n,Neckline:Stand Collar \r\n,Sleeve Length: Long Sleeve\r\n,Sleeve Type: Puff Sleeve \r\n,Waist Line:High Waist \r\n,Fabric: Slight Stretch \r\nMaterial:  95% Polyester, 5% Elastane ,Care Instructions: Machine wash or professional dry clean ,Sheer: No ', 1, 0, 0, 0, '622fc7d1cf0447.29924298.jpeg', 0, 0, 0, 'Young', 'L', '160-170', 0),
(12, 'Black lace dress', 170, 'Color:Black \r\n,Details: Plain Contrast Mesh \r\n,Neckline: Square Neck \r\n,Sleeve Length: Long Sleeve \r\n,Sleeve Type: Regular Sleeve \r\n,Waist Line: High Waist \r\n,Fabric:Non-Stretch  \r\n,Material: 95% Polyester, 5% Elastane \r\n,Care Instructions: Machine wash or professional dry clean\r\n,Sheer: No ', 1, 0, 0, 0, '622fc9adb03463.43597585.jpeg', 0, 0, 0, 'Young', 'L', '160-170', 0),
(15, 'beige heel ', 70, 'Color:Beige  \r\n ,Details: Rhinestone \r\n,Strap Type: Strappy \r\n,Toe:Point Toe  \r\n,Heels: Stiletto \r\n,Heel Height: Mid Heel \r\n, Material: PU Leather ', 1, 0, 0, 0, '622fcf4e2441b0.93231220.jpg', 0, 0, 0, 'Young', 'L', '160-170', 0),
(16, 'Long sleeve dress', 86, 'Color: beige\r\nDetails: ruched\r\nType: A shaped\r\nNeckline: peter pan collar\r\nSleeve length: long sleeves\r\nSleeve types: bishop sleeve \r\nLength: long\r\nShape Type: Regular Style\r\nFabric: not stretched\r\nComposition: 64% viscose, 36% polyester\r\nCare Instructions: Hand wash or professional dry clean\r\nSheer', 1, 0, 0, 0, '62316038a66f16.43750023.jpg', 1, 0, 0, 'Teenagers', 'XS', '150-160', 0),
(17, 'midi dress', 120, 'Color: lime green\r\n,Details: knot, pleated\r\n,Neckline: Round neck\r\n,Sleeve length: short sleeve\r\n,Sleeve types: puff sleeve\r\n,Length: midi\r\n,Fabric: slight stretch\r\n,Composition: 100% polyester\r\n,Care Instructions: Machine wash or professional dry clean\r\n,Sheer: no', 1, 0, 0, 0, '6231628699a237.58610086.jpg', 1, 0, 0, 'Teenagers', 'XS', '150-160', 0),
(18, 'Blue Dress', 80, 'Color: baby blue\r\n,Details: contrast collar\r\n,Neckline: peter pan collar\r\n,Sleeve length: Short\r\n,Sleeve type:puff sleeve\r\n,Length: midi\r\n,Fabric: slight stretch\r\n,Material:  100% polyester\r\n,Care Instructions: Machine wash or professional dry clean\r\n,Sheer: no', 1, 0, 0, 0, '62316723738366.45378661.jpg', 1, 0, 0, 'Teenagers', 'XS', '150-160', 0),
(19, 'Belted Dress', 60, 'Color: baby  blue\r\n,Neckline: Round neck\r\n,Sleeve length: short sleeve\r\n,Sleeve type: puff sleeve\r\n,Length: long\r\n,Fabric: slight stretch\r\n,Material: 95% polyester, 5% spandex\r\n,Care Instructions: Machine wash or professional dry clean\r\n,Belt: Yes\r\n,Sheer:no', 1, 0, 0, 0, '62316b51d12740.39635428.jpg', 1, 0, 0, 'Teenagers', 'XS', '150-160', 0),
(20, 'Carry-On Suitcase', 170, 'Main pocket fits: Multiple outfits, a beauty bag and all getaway essentials\r\n•	1 exterior zip pocket\r\n•	1 interior mesh zip pocket\r\n•	2 interior mesh side wall pockets\r\n•	Measures: 14” L x 8” D x 21.25” H\r\n', 0, 0, 1, 0, '62381d6cbb5421.58245625.jpg', 0, 0, 0, 'Young', 'S', '150-160', 1),
(21, 'Getaway Packable Tote', 185, '•	1 interior back wall pocket\r\n•	Measures: 26.4” L x 10.6” D x 15” H\r\n•	Imported nylon\r\n', 0, 0, 1, 0, '62381eff15c8b0.92376555.jpg', 0, 0, 0, 'Young', 'S', '150-160', 1),
(22, 'Travel Wallet Organizer', 140, ': 1pc Travel Organizer Travel Wallet Passport Holder & ID Holder Large Capacity Waterproof Portable Dust Proof Travel Fabric Solid Colored – black ', 0, 0, 1, 0, '62381f8a858ba0.65481944.jpg', 0, 0, 0, 'Young', 'S', '150-160', 1),
(24, 'Beach Tote Bag', 140, 'made with chic striped cotton/poly canvas exterior and a burlap contrast bottom. \r\nThe interior is fully lined for life\'s little spills and oopsies\r\nfull length top zipper is provided to protect contents. \r\n', 0, 0, 1, 0, '623821dce12203.89537018.jpg', 0, 0, 0, 'Young', 'S', '150-160', 1),
(25, 'Hunter green carryon ', 180, 'Stylish hanging organiser with two zippered pockets that clips cleverly into the sides of case over your contents.\r\n', 0, 0, 1, 0, '623823e9769373.46512090.jpg', 0, 0, 0, 'Young', 'S', '150-160', 1),
(26, 'Suitcase', 190, '•	Durable polycarbonate hard shell\r\n•	Leather details, including a black leather luggage tag\r\n•	TSA-approved combination lock for extra safety\r\n•	360° spinner wheels that ensure a smooth ride\r\n•	Interior compression system to help pack more in\r\n•	Hidden laundry bag to keep dirty clothing separate\r\n', 0, 0, 1, 0, '6238242d96ff42.27134565.jpg', 0, 0, 0, 'Young', 'S', '150-160', 1),
(27, 'Long-sleeved shirt', 70, 'Blue long-sleeved shirt made for people with broken hands, with side buttons and a hidden pocket.\r\nMaterial: 100% polyester', 0, 0, 0, 0, '6238288b07b4a4.21113421.jpg', 0, 1, 0, 'Young', 'XS', '150-160', 0),
(28, 'ًًWhite bag', 120, 'A small white bag decorated with pearls and a gold chain', 0, 1, 0, 0, '62382d68d339e9.61854737.jpg', 0, 0, 1, 'Young', 'S', '160-170', 0),
(29, 'Orange Dress', 155, 'Long orange dress, consisting of two layers, the first of satin and the second of chiffon, with puffed sleeves', 0, 1, 0, 0, '62382e598a95b3.06027758.jpg', 0, 0, 1, 'Young', 'S', '160-170', 0),
(31, 'Long Dress', 170, 'Long-sleeved dress, pink, consisting of two layers of pink lace and a ribbon in the middle', 0, 1, 0, 0, '62382fab4c0bc6.85398757.jpg', 0, 0, 1, 'Young', 'S', '160-170', 0),
(32, 'Midi Dress', 120, 'White dress with long sleeves and buttons and consists of two layers, the first is white satin and the second is white lace', 0, 1, 0, 0, '6238306551ebd1.54451581.jpg', 0, 0, 1, 'Young', 'S', '160-170', 0),
(33, 'White bag', 60, 'Small bag in white and gold with a chain of pearls', 0, 1, 0, 0, '6238311c1dd307.59727440.jpg', 0, 0, 1, 'Young', 'S', '160-170', 0),
(34, 'Blue Dress', 130, 'Blue dress with long sleeves and buttons, the first layer of satin and the second layer of lace', 0, 1, 0, 0, '623831da719843.96830497.jpg', 0, 0, 1, 'Young', 'S', '160-170', 0),
(35, 'White Dress', 120, 'Color: White , Style: Elegant, Pattern Type: Plain , Details: Frill, Ruffle Hem Shirred , Neckline:Square Neck, Sleeve Length, Half Sleeve, Sleeve Type: Puff Sleeve, Waist Line:High Waist , Length: Long, Fabric: Non-Stretch , Material: Polyester Composition: 80% Polyester, 20% Cotton ', 1, 0, 0, 0, '623833e45a6141.64005044.jpeg', 0, 0, 0, 'Young', 'L', '160-170', 0),
(36, 'Small White Bag', 70, 'Color:White ,Type: Square Bag ,Magnetic: Yes ,Strap Type: Adjustable, Top Handle ,Bag Size: Small ,Material: PU Leather', 1, 0, 0, 0, '623834d83bbb37.22699511.jpg', 0, 0, 0, 'Young', 'L', '160-170', 0),
(37, 'Heels Sandal', 70, 'Color: Black ,Type: Mules ,Toe:Open Toe ,Heels: Chunky ,Heel Height: Mid Heel ,Material: PU Leather', 1, 0, 0, 0, '623835ee10b0b7.40281430.jpg', 0, 0, 0, 'Young', 'L', '160-170', 0);

-- --------------------------------------------------------

--
-- Table structure for table `productimages`
--

CREATE TABLE `productimages` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productimages`
--

INSERT INTO `productimages` (`id`, `product_id`, `url`) VALUES
(1, 1, '622e677e63ac01.00327680.jpeg'),
(2, 1, '622e677e661872.18893058.jpeg'),
(3, 2, '622e6a29497bb0.55161486.jpeg'),
(4, 2, '622e6a294be382.52548095.jpeg'),
(5, 2, '622e6a294ce2a1.89342369.jpeg'),
(6, 3, '622e6c156dee61.46657956.jpeg'),
(7, 3, '622e6c156f7962.21765240.jpeg'),
(8, 4, '622e6e3b75be90.00908324.jpg'),
(9, 4, '622e6e3b779b01.01594343.jpg'),
(10, 5, '622e6fb99d67a1.38286924.jpg'),
(11, 5, '622e6fb99f17a0.03970223.jpg'),
(12, 6, '622e73327bd728.71631877.jpg'),
(13, 6, '622e73327e7560.34406951.jpg'),
(14, 7, '622e74c87c6fd2.16664296.jpg'),
(15, 7, '622e74c87ec1d9.14585228.jpg'),
(16, 7, '622e74c8801841.10906909.jpg'),
(17, 8, '622fc1c2e179b5.41476532.jpeg'),
(18, 8, '622fc1c2e471b6.41104253.jpeg'),
(19, 8, '622fc1c2e59733.34237260.jpeg'),
(20, 9, '622fc404d87845.95528779.jpeg'),
(21, 9, '622fc404d9cd07.70289016.jpeg'),
(22, 10, '622fc5978b6c34.15770703.jpeg'),
(23, 10, '622fc5978cbeb5.66574878.jpeg'),
(24, 10, '622fc5978db850.25919935.jpeg'),
(25, 11, '622fc7d1cf0447.29924298.jpeg'),
(26, 11, '622fc7d1d1a9d7.35433822.jpeg'),
(27, 11, '622fc7d1d24a01.46648891.jpeg'),
(28, 12, '622fc9adb03463.43597585.jpeg'),
(29, 12, '622fc9adb20ed3.90091182.jpeg'),
(30, 12, '622fc9adb307a7.69923252.jpeg'),
(31, 13, '622fcc60981890.97727294.jpg'),
(32, 13, '622fcc60997632.54843586.jpg'),
(33, 13, '622fcc609a1936.13922372.jpg'),
(34, 13, '622fcc609b20c2.18048077.jpg'),
(35, 14, '622fcdb34c2109.93737359.jpg'),
(36, 14, '622fcdb34e08c9.49611252.jpg'),
(37, 14, '622fcdb34ffa51.00670168.jpg'),
(38, 15, '622fcf4e2441b0.93231220.jpg'),
(39, 15, '622fcf4e2643a4.38438932.jpg'),
(40, 15, '622fcf4e274813.63366134.jpg'),
(41, 16, '62316038a66f16.43750023.jpg'),
(42, 16, '62316038a94ed7.69506236.jpg'),
(43, 16, '62316038aa1656.59916013.jpg'),
(44, 17, '6231628699a237.58610086.jpg'),
(45, 17, '623162869bae28.85753256.jpg'),
(46, 17, '623162869d6b13.50863617.jpg'),
(47, 18, '62316723738366.45378661.jpg'),
(48, 18, '6231672375e5f4.92238147.jpg'),
(49, 19, '62316b51d12740.39635428.jpg'),
(50, 19, '62316b51d27498.52625130.jpg'),
(51, 20, '62381d6cbb5421.58245625.jpg'),
(52, 20, '62381d6cbf4736.31507834.jpg'),
(53, 21, '62381eff15c8b0.92376555.jpg'),
(54, 21, '62381eff1841f4.20194270.jpg'),
(55, 22, '62381f8a858ba0.65481944.jpg'),
(56, 22, '62381f8a88be13.63913129.jpg'),
(57, 23, '62381ff8aee6c2.32061124.jpg'),
(58, 23, '62381ff8b2c322.48656342.jpg'),
(59, 24, '623821dce12203.89537018.jpg'),
(60, 24, '623821dce45120.22442180.jpg'),
(61, 25, '623823e9769373.46512090.jpg'),
(62, 25, '623823e97890b2.50075683.jpg'),
(63, 25, '623823e97960c4.77865783.jpg'),
(64, 26, '6238242d96ff42.27134565.jpg'),
(65, 26, '6238242d998726.70998411.jpg'),
(66, 27, '6238288b07b4a4.21113421.jpg'),
(67, 27, '6238288b0a9012.94901417.jpg'),
(68, 27, '6238288b0b94c5.60296328.jpg'),
(69, 28, '62382d68d339e9.61854737.jpg'),
(70, 28, '62382d68d63594.82732558.jpg'),
(71, 28, '62382d68d722d1.57086311.jpg'),
(72, 28, '62382d68d805a3.81819928.jpg'),
(73, 29, '62382e598a95b3.06027758.jpg'),
(74, 29, '62382e598c3345.00351607.jpg'),
(75, 29, '62382e598d9f10.14145620.jpg'),
(76, 30, '62382f586c3ee5.04246724.jpg'),
(77, 30, '62382f586e0473.66716453.jpg'),
(78, 30, '62382f586f0822.90987237.jpg'),
(79, 31, '62382fab4c0bc6.85398757.jpg'),
(80, 31, '62382fab4eaa89.63827740.jpg'),
(81, 31, '62382fab4f9ee7.05097490.jpg'),
(82, 32, '6238306551ebd1.54451581.jpg'),
(83, 32, '623830655366e8.85186373.jpg'),
(84, 32, '62383065556153.83793819.jpg'),
(85, 33, '6238311c1dd307.59727440.jpg'),
(86, 33, '6238311c212f33.50025789.jpg'),
(87, 33, '6238311c21e6a6.09799453.jpg'),
(88, 34, '623831da719843.96830497.jpg'),
(89, 34, '623831da734369.29963782.jpg'),
(90, 35, '623833e45a6141.64005044.jpeg'),
(91, 35, '623833e45baff0.51934260.jpeg'),
(92, 35, '623833e45c6e18.35888826.jpeg'),
(93, 36, '623834d83bbb37.22699511.jpg'),
(94, 36, '623834d83d48f8.79793545.jpg'),
(95, 36, '623834d83ed669.39951064.jpg'),
(96, 37, '623835ee10b0b7.40281430.jpg'),
(97, 37, '623835ee1221c3.37883202.jpg'),
(98, 37, '623835ee139363.74631690.jpg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `productimages`
--
ALTER TABLE `productimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
