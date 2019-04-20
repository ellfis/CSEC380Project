-- phpMyAdmin SQL Dump
-- version 4.1.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 24, 2016 at 12:15 PM
-- Server version: 5.6.15
-- PHP Version: 5.6.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `armbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id_from` int(11) NOT NULL,
  `user_id_to` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `posts`
--

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE IF NOT EXISTS `profiles` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `picture_url` varchar(255) NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`profile_id`, `user_id`, `picture_url`) VALUES
(1, 1, 'images/arm_stock.jpg'),
(2, 2, 'images/arm_stock.jpg'),
(4, 4, 'images/arm_stock.jpg'),
(3, 5, 'images/arm_stock.jpg'),
(5, 6, 'images/arm_stock.jpg'),
(6, 7, 'images/arm_stock.jpg'),
(7, 8, 'images/arm_stock.jpg'),
(8, 9, 'images/arm_stock.jpg'),
(9, 10, 'images/arm_stock.jpg'),
(10, 11, 'images/arm_stock.jpg'),
(11, 12, 'http://www.timeslive.co.za/incoming/2015/10/20/arm.jpg/ALTERNATES/crop_630x400/arm.jpg'),
(12, 13, 'images/arm_stock.jpg', '13,1'),
(13, 14, 'images/arm_stock.jpg', '14'),
(14, 3, 'images/arm_stock.jpg', '1,2');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `sex` int(1) NOT NULL,
  `birthday_month` int(2) NOT NULL,
  `birthday_day` int(2) NOT NULL,
  `birthday_year` int(4) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `password`, `firstname`, `lastname`, `sex`, `birthday_month`, `birthday_day`, `birthday_year`) VALUES
(1, 'ces1509@rit.edu', 'password', 'Jon', 'Doe', 1, 10, 2, 1988),
(2, 'neil@neil.com', 'password', 'neil', 'zimmerman', 1, 10, 2, 1988),
(6, 'csanders@sparsa.org', 'password', 'Grant', 'Batchlor', 2, -1, -1, -1),
(4, 'chaim.sanders@gmail.com', 'password', 'Jon', 'Mccall', 2, -1, -1, -1),
(5, 'jruppal@gmail.com', 'password', 'Jacob', 'Ruppal', 2, -1, -1, -1),
(7, 'griffith.chaffee@gmail.com', 'password', 'griffith', 'chaffee', 2, 1, 2, 1982),
(8, 'andy@culler.com', 'password', 'Andy', 'Culler', 2, -1, -1, -1),
(9, 'test@test.com', 'password', 'test', 'test', 2, -1, -1, -1),
(10, 'bsmith@gmail.com', 'password', 'Bob', 'Smith', 1, 1, 1, 1950),
(11, 'test2@test.com', 'password', 'test2', 'test2', 2, -1, -1, -1),
(13, 'jrr@foobar.com', 'password', 'Jamie', 'Richard', 2, 3, 28, 1987),
(14, 'rbower@sparsa.org', 'password', 'Rusty', 'Bower', 2, 1, 1, 1950),
(12, 'chaim@chaim.com', 'password', 'chaim', 'sanders', 1, 3, 2, 1988);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
