-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2017 at 07:10 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `library new`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `Username` varchar(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Password` int(11) NOT NULL,
  `SecQues` varchar(100) NOT NULL,
  `Answer` varchar(30) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `Book_ID` int(11) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Edition` int(11) NOT NULL,
  `Publisher` varchar(15) NOT NULL,
  `Price` int(11) NOT NULL,
  `Pages` int(11) NOT NULL,
  PRIMARY KEY (`Book_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE IF NOT EXISTS `issue` (
  `Book_ID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Edition` int(11) NOT NULL,
  `Publisher` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL,
  `Pages` int(11) NOT NULL,
  `Student_ID` int(11) NOT NULL,
  `S_Name` varchar(20) NOT NULL,
  `F_Name` varchar(20) NOT NULL,
  `Course` varchar(20) NOT NULL,
  `Branch` varchar(20) NOT NULL,
  `Year` int(11) NOT NULL,
  `Semester` int(11) NOT NULL,
  `Date_Of_Issue` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `returnbook`
--

CREATE TABLE IF NOT EXISTS `returnbook` (
  `Student_ID` int(11) NOT NULL,
  `S_Name` varchar(20) NOT NULL,
  `F_Name` varchar(20) NOT NULL,
  `Course` varchar(20) NOT NULL,
  `Branch` varchar(20) NOT NULL,
  `Year` int(11) NOT NULL,
  `Semester` int(11) NOT NULL,
  `Book_ID` int(11) NOT NULL,
  `B_Name` varchar(20) NOT NULL,
  `Edition` int(11) NOT NULL,
  `Publisher` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL,
  `Pages` int(11) NOT NULL,
  `Date_Of_Issue` varchar(20) NOT NULL,
  `Date_Of_Return` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `Student_ID` int(11) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Father` varchar(15) NOT NULL,
  `Course` varchar(8) NOT NULL,
  `Branch` varchar(15) NOT NULL,
  `Year` int(11) NOT NULL,
  `Semester` int(11) NOT NULL,
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
