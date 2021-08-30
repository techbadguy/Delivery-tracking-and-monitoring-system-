-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 01, 2021 at 12:23 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `courier_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courier`
--

CREATE TABLE IF NOT EXISTS `tbl_courier` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `cons_no` varchar(20) NOT NULL,
  `ship_name` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `s_add` varchar(200) NOT NULL,
  `s_email` varchar(200) NOT NULL,
  `rev_name` varchar(100) NOT NULL,
  `r_phone` varchar(12) NOT NULL,
  `r_add` varchar(200) NOT NULL,
  `r_email` varchar(200) NOT NULL,
  `type` varchar(40) NOT NULL,
  `weight` double NOT NULL,
  `invice_no` varchar(20) NOT NULL,
  `qty` int(10) NOT NULL,
  `book_mode` varchar(20) NOT NULL,
  `freight` double NOT NULL,
  `mode` varchar(20) NOT NULL,
  `pick_date` varchar(20) NOT NULL,
  `pick_time` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `comments` varchar(250) NOT NULL,
  `book_date` date NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_courier`
--

INSERT INTO `tbl_courier` (`cid`, `cons_no`, `ship_name`, `phone`, `s_add`, `s_email`, `rev_name`, `r_phone`, `r_add`, `r_email`, `type`, `weight`, `invice_no`, `qty`, `book_mode`, `freight`, `mode`, `pick_date`, `pick_time`, `status`, `comments`, `book_date`) VALUES
(1, '888J33T3W', 'Rock Shippment', '08054654342', '26 Owerri Road', 'rock@yahoo.com', 'Mr Charles', '08045653423', '7 Lagos street', 'charly@yahoo.com', 'Parcel', 34, '321234', 3, 'Paid', 50000, 'Air', '10/08/2016', '6:00', 'Delivered', 'Ok', '2016-08-22'),
(2, '835E39Q5Y', 'Ahmed Bashir', '09023432124', '3 Owerri road', 'bashir@yahoo.com', 'Tunde Makinde', '08035463321', '4 Ibadan street', 'tunde@yahoo.com', 'Documents', 56, '7678768', 5, 'Paid', 70000, 'Air', '30/11/2018', '09:00AM', 'In Transit', 'Check your email for transit location details', '2018-10-04'),
(3, '321J71L1Y', 'Apex Enterprise', '09076565454', '23 Ikeja Street', 'apex@yahoo.com', 'Global Inc', '09087876564', '45 Pound road', 'global@yahoo.com', 'Documents', 78, '989876', 79, 'Paid', 80000, 'Air', '15/11/2018', '9:00', 'In Transit', 'NA', '2018-11-04'),
(5, '228C80N4Z', 'Flask Courier', '08054367898', '2 junction road', 'Flask@yahoo.com', 'Festus', '09087876543', '2 old road', 'festus@yahoo.com', 'Documents', 12, '123', 1, 'Paid', 12000, 'Air', '30/11/2020', '14:22', 'NA', 'Satisfactory', '2020-11-18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courier_officers`
--

CREATE TABLE IF NOT EXISTS `tbl_courier_officers` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `officer_name` varchar(40) NOT NULL,
  `off_pwd` varchar(40) NOT NULL,
  `address` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ph_no` varchar(12) NOT NULL,
  `office` varchar(100) NOT NULL,
  `reg_date` datetime NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_courier_officers`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_courier_track`
--

CREATE TABLE IF NOT EXISTS `tbl_courier_track` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) NOT NULL,
  `cons_no` varchar(20) NOT NULL,
  `departuredetail` varchar(200) NOT NULL DEFAULT 'NA',
  `previouslocation` varchar(200) NOT NULL DEFAULT 'NA',
  `current_city` varchar(100) NOT NULL DEFAULT 'NA',
  `arrivaldetail` varchar(200) NOT NULL DEFAULT 'NA',
  `dday` varchar(200) NOT NULL DEFAULT 'NA',
  `ddate` varchar(200) NOT NULL DEFAULT 'NA',
  `dtime` varchar(200) NOT NULL DEFAULT 'NA',
  `pday` varchar(200) NOT NULL DEFAULT 'NA',
  `pdate` varchar(200) NOT NULL DEFAULT 'NA',
  `ptime` varchar(200) NOT NULL DEFAULT 'NA',
  `cday` varchar(200) NOT NULL DEFAULT 'NA',
  `cdate` varchar(200) NOT NULL DEFAULT 'NA',
  `ctime` varchar(200) NOT NULL DEFAULT 'NA',
  `aday` varchar(200) NOT NULL DEFAULT 'NA',
  `adate` varchar(200) NOT NULL DEFAULT 'NA',
  `atime` varchar(200) NOT NULL DEFAULT 'NA',
  `status` varchar(30) NOT NULL DEFAULT 'NA',
  `comments` varchar(255) NOT NULL DEFAULT 'NA',
  `bk_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_courier_track`
--

INSERT INTO `tbl_courier_track` (`id`, `cid`, `cons_no`, `departuredetail`, `previouslocation`, `current_city`, `arrivaldetail`, `dday`, `ddate`, `dtime`, `pday`, `pdate`, `ptime`, `cday`, `cdate`, `ctime`, `aday`, `adate`, `atime`, `status`, `comments`, `bk_time`) VALUES
(6, 3, '321J71L1Y', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', '', '', 'NA', '', '', 'NA', '', '', 'In Transit', 'NA', '2018-11-04 09:41:23'),
(7, 1, '888J33T3W', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', '2018-01-01 00:00:00'),
(5, 2, '835E39Q5Y ', 'London, United Kingdom', 'London, United Kingdom', 'London, United Kingdom', '4 Airport road, buckingham palace way, heath row junction, London, United Kingdom. 4 Airport road, buckingham palace way, heath row junction, London, United ', 'Tuesday', '2018-09-09', '02:01', 'Sunday', '', '', 'Sunday', '', '', 'Sunday', '', '', 'In Transit', 'Check your email for transit location details', '2018-11-13 07:13:17'),
(8, 5, '228C80N4Z', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', '2020-11-18 07:54:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offices`
--

CREATE TABLE IF NOT EXISTS `tbl_offices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `off_name` varchar(100) NOT NULL,
  `address` varchar(230) NOT NULL,
  `city` varchar(100) NOT NULL,
  `ph_no` varchar(20) NOT NULL,
  `office_time` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_offices`
--

INSERT INTO `tbl_offices` (`id`, `off_name`, `address`, `city`, `ph_no`, `office_time`, `contact_person`) VALUES
(1, 'Aba - Coscharis', 'Aba Road', 'Aba', '07038756433', '12am - 12pm', 'Mr. Victor Timothy'),
(2, 'Owerri - Coscharis', 'Owerri', 'Oweeri', '07038756111', '12am - 12pm', 'Mrs. Adanne Ruth');
