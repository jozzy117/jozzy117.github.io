-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2020 at 09:41 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loanstar`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(6) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `middle_name` varchar(20) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `client_address` varchar(50) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `account_number` varchar(25) NOT NULL,
  `bvn` varchar(25) NOT NULL,
  `bank_name` varchar(25) NOT NULL,
  `id_card` varchar(200) NOT NULL,
  `passport` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `last_name`, `middle_name`, `first_name`, `client_address`, `phone`, `account_number`, `bvn`, `bank_name`, `id_card`, `passport`) VALUES
(1, 'Ojakovo', 'Oghenenyoreme', 'Jonathan', '5, Laketu str, Poromosan,', '08119980191', '2098889999', '488495500004', 'UBA', 'Penguins.jpg', 'Tulips.jpg'),
(2, 'Ojakovo', 'Edesiri', 'Eric', '5, Laketu str, Poromosan,', '08057608993', '29009999992', '488495500004', 'Fidelity', 'Penguins.jpg', 'Chrysanthemum.jpg'),
(3, 'Onyejekwe', 'Boss', 'Ifeanyi', '32, great street, Suruler', '08119980191', '5432167890', '3354433677896', 'UBA', 'tmp_1594711579580.jpg', 'tmp_1594711579580.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `lid` int(6) NOT NULL,
  `loanid` varchar(25) NOT NULL,
  `clientid` int(6) NOT NULL,
  `loan_amount` decimal(7,2) NOT NULL,
  `exptDaily` decimal(7,2) NOT NULL,
  `glname` varchar(50) NOT NULL,
  `gmname` varchar(50) NOT NULL,
  `gfname` varchar(50) NOT NULL,
  `gnumber` varchar(25) NOT NULL,
  `gaddress` varchar(50) NOT NULL,
  `gidcard` varchar(200) NOT NULL,
  `gpassport` varchar(200) NOT NULL,
  `createdtime` date NOT NULL,
  `dueDate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`lid`, `loanid`, `clientid`, `loan_amount`, `exptDaily`, `glname`, `gmname`, `gfname`, `gnumber`, `gaddress`, `gidcard`, `gpassport`, `createdtime`, `dueDate`) VALUES
(1, 'LOAN-2007102329123068', 1, '50000.00', '2500.00', 'Osai', 'Ifeanyi', 'John', '0908374757', '26 good str, Surulere', 'Tulips.jpg', 'Lighthouse.jpg', '2020-06-01', '2020-06-29'),
(2, 'LOAN-2007102348202160', 2, '40000.00', '2000.00', 'Ojas', 'Nyore', 'Lucky', '09090909090', '12. Lucky Fibre, Ikorodu', 'Tulips.jpg', 'Desert.jpg', '2020-06-01', '2020-06-29'),
(3, 'LOAN-2007102358433233', 2, '30000.00', '1500.00', 'Animam', 'otega', 'Lucky', '090878787', '12. Lucky Fibre, Ikorodu', 'Desert.jpg', 'Jellyfish.jpg', '2020-01-01', '2020-01-29'),
(4, 'LOAN-200711000452941', 1, '60000.00', '3000.00', 'Basikoro', 'Onos', 'Vincent', '0909878876', '22 maba', 'Jellyfish.jpg', 'Desert.jpg', '2020-07-11', '2020-08-07'),
(5, 'LOAN-2007140146381352', 1, '80000.00', '4000.00', 'Basikoro', 'otega', 'Vincent', '09090909090', '22 maba', 'Lighthouse.jpg', 'Tulips.jpg', '2020-07-14', '2020-08-11'),
(6, 'LOAN-2007140857429507', 2, '20000.00', '1000.00', 'Animam', 'Ajeh', 'Lucky', '08078675466', '12. Lucky Fibre, Ikorodu', 'Penguins.jpg', 'Tulips.jpg', '2020-07-14', '2020-08-11');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(6) NOT NULL,
  `loanid` varchar(25) NOT NULL,
  `exptpaydate` date DEFAULT NULL,
  `exptdailypmt` int(11) DEFAULT NULL,
  `payment_amount` int(11) NOT NULL,
  `createdtime` date NOT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `overdue` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `loanid`, `exptpaydate`, `exptdailypmt`, `payment_amount`, `createdtime`, `payment_status`, `overdue`) VALUES
(1, 'LOAN-2007102329123068', '2020-06-02', 2500, 0, '0000-00-00', NULL, -2500),
(2, 'LOAN-2007102329123068', '2020-06-03', 2500, 0, '0000-00-00', NULL, -2500),
(3, 'LOAN-2007102329123068', '2020-06-04', 2500, 0, '0000-00-00', NULL, -2500),
(4, 'LOAN-2007102329123068', '2020-06-05', 2500, 0, '0000-00-00', NULL, -2500),
(5, 'LOAN-2007102329123068', '2020-06-08', 2500, 0, '0000-00-00', NULL, -2500),
(6, 'LOAN-2007102329123068', '2020-06-09', 2500, 0, '0000-00-00', NULL, -2500),
(7, 'LOAN-2007102329123068', '2020-06-10', 2500, 0, '0000-00-00', NULL, -2500),
(8, 'LOAN-2007102329123068', '2020-06-11', 2500, 0, '0000-00-00', NULL, -2500),
(9, 'LOAN-2007102329123068', '2020-06-12', 2500, 0, '0000-00-00', NULL, -2500),
(10, 'LOAN-2007102329123068', '2020-06-15', 2500, 0, '0000-00-00', NULL, -2500),
(11, 'LOAN-2007102329123068', '2020-06-16', 2500, 0, '0000-00-00', NULL, -2500),
(12, 'LOAN-2007102329123068', '2020-06-17', 2500, 0, '0000-00-00', NULL, -2500),
(13, 'LOAN-2007102329123068', '2020-06-18', 2500, 0, '0000-00-00', NULL, -2500),
(14, 'LOAN-2007102329123068', '2020-06-19', 2500, 0, '0000-00-00', NULL, -2500),
(15, 'LOAN-2007102329123068', '2020-06-22', 2500, 0, '0000-00-00', NULL, -2500),
(16, 'LOAN-2007102329123068', '2020-06-23', 2500, 0, '0000-00-00', NULL, -2500),
(17, 'LOAN-2007102329123068', '2020-06-24', 2500, 0, '0000-00-00', NULL, -2500),
(18, 'LOAN-2007102329123068', '2020-06-25', 2500, 0, '0000-00-00', NULL, -2500),
(19, 'LOAN-2007102329123068', '2020-06-26', 2500, 0, '0000-00-00', NULL, -2500),
(20, 'LOAN-2007102329123068', '2020-06-29', 2500, 0, '0000-00-00', NULL, -2500),
(21, 'LOAN-2007102348202160', '2020-06-02', 2000, 0, '0000-00-00', NULL, -2000),
(22, 'LOAN-2007102348202160', '2020-06-03', 2000, 0, '0000-00-00', NULL, -2000),
(23, 'LOAN-2007102348202160', '2020-06-04', 2000, 0, '0000-00-00', NULL, -2000),
(24, 'LOAN-2007102348202160', '2020-06-05', 2000, 0, '0000-00-00', NULL, -2000),
(25, 'LOAN-2007102348202160', '2020-06-08', 2000, 0, '0000-00-00', NULL, -2000),
(26, 'LOAN-2007102348202160', '2020-06-09', 2000, 0, '0000-00-00', NULL, -2000),
(27, 'LOAN-2007102348202160', '2020-06-10', 2000, 0, '0000-00-00', NULL, -2000),
(28, 'LOAN-2007102348202160', '2020-06-11', 2000, 0, '0000-00-00', NULL, -2000),
(29, 'LOAN-2007102348202160', '2020-06-12', 2000, 0, '0000-00-00', NULL, -2000),
(30, 'LOAN-2007102348202160', '2020-06-15', 2000, 0, '0000-00-00', NULL, -2000),
(31, 'LOAN-2007102348202160', '2020-06-16', 2000, 0, '0000-00-00', NULL, -2000),
(32, 'LOAN-2007102348202160', '2020-06-17', 2000, 0, '0000-00-00', NULL, -2000),
(33, 'LOAN-2007102348202160', '2020-06-18', 2000, 0, '0000-00-00', NULL, -2000),
(34, 'LOAN-2007102348202160', '2020-06-19', 2000, 0, '0000-00-00', NULL, -2000),
(35, 'LOAN-2007102348202160', '2020-06-22', 2000, 0, '0000-00-00', NULL, -2000),
(36, 'LOAN-2007102348202160', '2020-06-23', 2000, 0, '0000-00-00', NULL, -2000),
(37, 'LOAN-2007102348202160', '2020-06-24', 2000, 0, '0000-00-00', NULL, -2000),
(38, 'LOAN-2007102348202160', '2020-06-25', 2000, 0, '0000-00-00', NULL, -2000),
(39, 'LOAN-2007102348202160', '2020-06-26', 2000, 0, '0000-00-00', NULL, -2000),
(40, 'LOAN-2007102348202160', '2020-06-29', 2000, 0, '0000-00-00', NULL, -2000),
(41, 'LOAN-2007102358433233', '2020-01-02', 1500, 0, '0000-00-00', NULL, -1500),
(42, 'LOAN-2007102358433233', '2020-01-03', 1500, 0, '0000-00-00', NULL, -1500),
(43, 'LOAN-2007102358433233', '2020-01-06', 1500, 0, '0000-00-00', NULL, -1500),
(44, 'LOAN-2007102358433233', '2020-01-07', 1500, 0, '0000-00-00', NULL, -1500),
(45, 'LOAN-2007102358433233', '2020-01-08', 1500, 0, '0000-00-00', NULL, -1500),
(46, 'LOAN-2007102358433233', '2020-01-09', 1500, 0, '0000-00-00', NULL, -1500),
(47, 'LOAN-2007102358433233', '2020-01-10', 1500, 0, '0000-00-00', NULL, -1500),
(48, 'LOAN-2007102358433233', '2020-01-13', 1500, 0, '0000-00-00', NULL, -1500),
(49, 'LOAN-2007102358433233', '2020-01-14', 1500, 0, '0000-00-00', NULL, -1500),
(50, 'LOAN-2007102358433233', '2020-01-15', 1500, 0, '0000-00-00', NULL, -1500),
(51, 'LOAN-2007102358433233', '2020-01-16', 1500, 0, '0000-00-00', NULL, -1500),
(52, 'LOAN-2007102358433233', '2020-01-17', 1500, 0, '0000-00-00', NULL, -1500),
(53, 'LOAN-2007102358433233', '2020-01-20', 1500, 0, '0000-00-00', NULL, -1500),
(54, 'LOAN-2007102358433233', '2020-01-21', 1500, 0, '0000-00-00', NULL, -1500),
(55, 'LOAN-2007102358433233', '2020-01-22', 1500, 0, '0000-00-00', NULL, -1500),
(56, 'LOAN-2007102358433233', '2020-01-23', 1500, 0, '0000-00-00', NULL, -1500),
(57, 'LOAN-2007102358433233', '2020-01-24', 1500, 0, '0000-00-00', NULL, -1500),
(58, 'LOAN-2007102358433233', '2020-01-27', 1500, 0, '0000-00-00', NULL, -1500),
(59, 'LOAN-2007102358433233', '2020-01-28', 1500, 0, '0000-00-00', NULL, -1500),
(60, 'LOAN-2007102358433233', '2020-01-29', 1500, 0, '0000-00-00', NULL, -1500),
(61, 'LOAN-200711000452941', '2020-07-13', 3000, 0, '0000-00-00', NULL, -3000),
(62, 'LOAN-200711000452941', '2020-07-14', 3000, 6000, '2020-07-14', 'paid', 3000),
(63, 'LOAN-200711000452941', '2020-07-15', 3000, 0, '0000-00-00', NULL, -3000),
(64, 'LOAN-200711000452941', '2020-07-16', 3000, 0, '0000-00-00', NULL, -3000),
(65, 'LOAN-200711000452941', '2020-07-17', 3000, 0, '0000-00-00', NULL, -3000),
(66, 'LOAN-200711000452941', '2020-07-20', 3000, 0, '0000-00-00', NULL, -3000),
(67, 'LOAN-200711000452941', '2020-07-21', 3000, 0, '0000-00-00', NULL, -3000),
(68, 'LOAN-200711000452941', '2020-07-22', 3000, 0, '0000-00-00', NULL, -3000),
(69, 'LOAN-200711000452941', '2020-07-23', 3000, 0, '0000-00-00', NULL, -3000),
(70, 'LOAN-200711000452941', '2020-07-24', 3000, 0, '0000-00-00', NULL, -3000),
(71, 'LOAN-200711000452941', '2020-07-27', 3000, 0, '0000-00-00', NULL, -3000),
(72, 'LOAN-200711000452941', '2020-07-28', 3000, 0, '0000-00-00', NULL, -3000),
(73, 'LOAN-200711000452941', '2020-07-29', 3000, 0, '0000-00-00', NULL, -3000),
(74, 'LOAN-200711000452941', '2020-07-30', 3000, 0, '0000-00-00', NULL, -3000),
(75, 'LOAN-200711000452941', '2020-07-31', 3000, 0, '0000-00-00', NULL, -3000),
(76, 'LOAN-200711000452941', '2020-08-03', 3000, 0, '0000-00-00', NULL, -3000),
(77, 'LOAN-200711000452941', '2020-08-04', 3000, 0, '0000-00-00', NULL, -3000),
(78, 'LOAN-200711000452941', '2020-08-05', 3000, 0, '0000-00-00', NULL, -3000),
(79, 'LOAN-200711000452941', '2020-08-06', 3000, 0, '0000-00-00', NULL, -3000),
(80, 'LOAN-200711000452941', '2020-08-07', 3000, 0, '0000-00-00', NULL, -3000),
(81, 'LOAN-2007102329123068', '2020-06-29', NULL, 2500, '2020-07-14', 'paid', 2500),
(82, 'LOAN-2007102348202160', '2020-06-29', NULL, 2000, '2020-07-14', 'paid', 2000),
(83, 'LOAN-2007102348202160', '2020-06-29', NULL, 38000, '2020-07-14', 'paid', 38000),
(84, 'LOAN-2007140146381352', '2020-07-15', 4000, 0, '0000-00-00', NULL, -4000),
(85, 'LOAN-2007140146381352', '2020-07-16', 4000, 0, '0000-00-00', NULL, -4000),
(86, 'LOAN-2007140146381352', '2020-07-17', 4000, 0, '0000-00-00', NULL, -4000),
(87, 'LOAN-2007140146381352', '2020-07-20', 4000, 0, '0000-00-00', NULL, -4000),
(88, 'LOAN-2007140146381352', '2020-07-21', 4000, 0, '0000-00-00', NULL, -4000),
(89, 'LOAN-2007140146381352', '2020-07-22', 4000, 0, '0000-00-00', NULL, -4000),
(90, 'LOAN-2007140146381352', '2020-07-23', 4000, 0, '0000-00-00', NULL, -4000),
(91, 'LOAN-2007140146381352', '2020-07-24', 4000, 0, '0000-00-00', NULL, -4000),
(92, 'LOAN-2007140146381352', '2020-07-27', 4000, 0, '0000-00-00', NULL, -4000),
(93, 'LOAN-2007140146381352', '2020-07-28', 4000, 0, '0000-00-00', NULL, -4000),
(94, 'LOAN-2007140146381352', '2020-07-29', 4000, 0, '0000-00-00', NULL, -4000),
(95, 'LOAN-2007140146381352', '2020-07-30', 4000, 0, '0000-00-00', NULL, -4000),
(96, 'LOAN-2007140146381352', '2020-07-31', 4000, 0, '0000-00-00', NULL, -4000),
(97, 'LOAN-2007140146381352', '2020-08-03', 4000, 0, '0000-00-00', NULL, -4000),
(98, 'LOAN-2007140146381352', '2020-08-04', 4000, 0, '0000-00-00', NULL, -4000),
(99, 'LOAN-2007140146381352', '2020-08-05', 4000, 0, '0000-00-00', NULL, -4000),
(100, 'LOAN-2007140146381352', '2020-08-06', 4000, 0, '0000-00-00', NULL, -4000),
(101, 'LOAN-2007140146381352', '2020-08-07', 4000, 0, '0000-00-00', NULL, -4000),
(102, 'LOAN-2007140146381352', '2020-08-10', 4000, 0, '0000-00-00', NULL, -4000),
(103, 'LOAN-2007140146381352', '2020-08-11', 4000, 0, '0000-00-00', NULL, -4000),
(104, 'LOAN-2007102329123068', '2020-06-29', NULL, 47500, '2020-07-14', 'paid', 47500),
(105, 'LOAN-2007102358433233', '2020-01-29', NULL, 30000, '2020-07-14', 'paid', 30000),
(106, 'LOAN-2007140857429507', '2020-07-15', 1000, 0, '0000-00-00', NULL, -1000),
(107, 'LOAN-2007140857429507', '2020-07-16', 1000, 0, '0000-00-00', NULL, -1000),
(108, 'LOAN-2007140857429507', '2020-07-17', 1000, 0, '0000-00-00', NULL, -1000),
(109, 'LOAN-2007140857429507', '2020-07-20', 1000, 0, '0000-00-00', NULL, -1000),
(110, 'LOAN-2007140857429507', '2020-07-21', 1000, 0, '0000-00-00', NULL, -1000),
(111, 'LOAN-2007140857429507', '2020-07-22', 1000, 0, '0000-00-00', NULL, -1000),
(112, 'LOAN-2007140857429507', '2020-07-23', 1000, 0, '0000-00-00', NULL, -1000),
(113, 'LOAN-2007140857429507', '2020-07-24', 1000, 0, '0000-00-00', NULL, -1000),
(114, 'LOAN-2007140857429507', '2020-07-27', 1000, 0, '0000-00-00', NULL, -1000),
(115, 'LOAN-2007140857429507', '2020-07-28', 1000, 0, '0000-00-00', NULL, -1000),
(116, 'LOAN-2007140857429507', '2020-07-29', 1000, 0, '0000-00-00', NULL, -1000),
(117, 'LOAN-2007140857429507', '2020-07-30', 1000, 0, '0000-00-00', NULL, -1000),
(118, 'LOAN-2007140857429507', '2020-07-31', 1000, 0, '0000-00-00', NULL, -1000),
(119, 'LOAN-2007140857429507', '2020-08-03', 1000, 0, '0000-00-00', NULL, -1000),
(120, 'LOAN-2007140857429507', '2020-08-04', 1000, 0, '0000-00-00', NULL, -1000),
(121, 'LOAN-2007140857429507', '2020-08-05', 1000, 0, '0000-00-00', NULL, -1000),
(122, 'LOAN-2007140857429507', '2020-08-06', 1000, 0, '0000-00-00', NULL, -1000),
(123, 'LOAN-2007140857429507', '2020-08-07', 1000, 0, '0000-00-00', NULL, -1000),
(124, 'LOAN-2007140857429507', '2020-08-10', 1000, 0, '0000-00-00', NULL, -1000),
(125, 'LOAN-2007140857429507', '2020-08-11', 1000, 0, '0000-00-00', NULL, -1000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`loanid`),
  ADD KEY `fk_clientid` (`clientid`),
  ADD KEY `lid` (`lid`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `lid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;