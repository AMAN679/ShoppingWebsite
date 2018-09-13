-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 10, 2018 at 02:09 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE IF NOT EXISTS `bill` (
  `oderid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`oderid`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`oderid`, `uid`, `pid`, `quantity`) VALUES
(1, 987, 123, 2),
(2, 987, 234, 3),
(3, 876, 234, 1),
(80, 987, 123, 3),
(79, 987, 123, 3),
(78, 987, 123, 6);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) DEFAULT NULL,
  `model` varchar(20) DEFAULT NULL,
  `brand` varchar(20) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `pname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=235 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `type`, `model`, `brand`, `price`, `description`, `pname`) VALUES
(123, 'Radio', 'Ex87t', 'Sony', '15000', 'The radio set has above 400 songs prerecorder and FM and Am availbale', 'Carvan'),
(234, 'Laptop', 'Ericson4.7', 'Hp', '85000', 'The i7 processor laptop', 'G60');

-- --------------------------------------------------------

--
-- Table structure for table `userdetail`
--

DROP TABLE IF EXISTS `userdetail`;
CREATE TABLE IF NOT EXISTS `userdetail` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `dob` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=988 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdetail`
--

INSERT INTO `userdetail` (`uid`, `name`, `username`, `pass`, `mobile`, `dob`, `address`) VALUES
(987, 'amit', 'a@b.c', '123', '98765432', '1aug', 'ghffjfhjg asdddress'),
(876, 'akash', 'b@c.d', '111', '98765432', '1aug', 'ghffjfhjg asdddress');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
