-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2020 at 12:35 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderno` int(11) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `pid` varchar(10) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderno`, `userid`, `pid`, `pname`, `price`, `qty`) VALUES
(1, 'jaskaransingh', '1', 'Apples', 100, 2),
(2, 'inderpreetsingh', '5', 'Fidget Spinner', 50, 3),
(3, 'satnamsingh', '3', 'Micky Mouse', 200, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prodid` int(11) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `pcat` varchar(25) NOT NULL,
  `price` int(11) NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prodid`, `pname`, `pcat`, `price`, `pic`) VALUES
(1, 'Apples', 'Fruits', 100, 'apple.jpg'),
(2, 'Graphs', 'Fruits', 40, 'maxresdefault (1).jpg'),
(3, 'Micky Mouse', 'Cartoons', 200, 'micky.jpg'),
(4, 'Teddy Bear', 'Cartoons', 1500, '41nGGVyAxJL.jpg'),
(5, 'Fidget Spinner', 'Cartoons', 50, 'fidget.jpg'),
(6, 'Computer Fundamentals', 'Books', 100, '4.jpg'),
(7, 'Advance Java', 'Books', 500, 'Advance Java.jpg'),
(8, 'Checked Shirt', 'Shirts', 800, 'check-men-shirts-250x250.jpg'),
(9, 'Blue Shirt', 'Shirts', 1200, '61547_ypxl_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uname` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uname`, `userid`, `pwd`, `role`) VALUES
('Administrator', 'admin', 'jaskaransingh', 'admin'),
('InderpreetSingh', 'inderpreetsingh', 'inder', 'customer'),
('SatnamSingh', 'satnamsingh', 'satnam', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prodid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prodid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
