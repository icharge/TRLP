-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 08, 2015 at 09:22 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thaira2`
--

-- --------------------------------------------------------

--
-- Table structure for table `banned_log`
--

CREATE TABLE IF NOT EXISTS `banned_log` (
  `uid` int(6) NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  `byuid` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `log_usage`
--

CREATE TABLE IF NOT EXISTS `log_usage` (
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` int(6) NOT NULL,
  `action` text NOT NULL,
  `ipaddress` varchar(128) NOT NULL,
  `iphostname` varchar(128) NOT NULL,
  `iplocal` varchar(128) NOT NULL,
  `useragent` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_usage`
--

INSERT INTO `log_usage` (`time`, `uid`, `action`, `ipaddress`, `iphostname`, `iplocal`, `useragent`) VALUES
('2014-06-16 17:56:11', -1, 'Not logged in : users management', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 17:56:37', 1, 'Logged In', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 18:01:46', 1, 'Logged Out', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 18:01:49', -1, 'Trying to logging in to wqeqwe (wrong U/P)', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 18:02:11', -1, 'Trying to logging in to icharge (wrong U/P)', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 18:02:19', 1, 'Logged In', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 18:02:23', 1, 'View group all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 18:02:30', 1, 'View group all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 18:02:31', 1, 'View group all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 18:02:31', 1, 'View group all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 18:02:37', 1, 'View group admin', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 18:04:44', 1, 'View group all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 18:07:50', 1, 'Users>Search>keyword=uc And Group=admin', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 18:08:07', 1, 'Users>View>Group=all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 18:19:49', 1, 'Users>View:1 icharge', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 18:20:01', 1, 'Users>View:2 latte', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 18:20:09', 1, 'Users>Edit:2 latte success', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 18:20:09', 1, 'Users>View>Group=all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 18:23:31', 1, 'Users>View>Group=all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 18:24:02', 1, 'Admin:Dashboard', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 18:33:03', 1, 'Admin>Users>View:Group=all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 20:47:27', -1, 'Logged Out', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 23:25:37', -1, 'Trying to logging in to icharge (wrong U/P)', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 23:25:42', 1, 'Logged In', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 23:25:42', 1, 'Admin:Dashboard', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-16 23:45:05', 1, 'Admin>Users>View:Group=all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-17 00:11:10', 1, 'Admin>Users>View:3 challenger', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-17 00:11:14', 1, 'Admin>Users>Edit:3 challenger success', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-17 00:11:15', 1, 'Admin>Users>View:Group=all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-17 00:27:14', 1, 'Logged Out', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-17 00:27:19', 3, 'Logged In', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-17 00:45:10', 3, 'Logged Out', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-17 02:43:06', 1, 'Logged In', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-17 02:43:07', 1, 'Admin:Dashboard', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-17 02:43:08', 1, 'Admin>Users>View:Group=all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-17 02:48:28', 1, 'Admin:Dashboard', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-17 02:48:29', 1, 'Admin>Users>View:Group=all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-17 02:49:03', 1, 'Logged Out', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-17 02:49:11', 1, 'Logged In', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-17 02:49:11', 1, 'Admin:Dashboard', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-17 02:49:14', 1, 'Admin>Users>View:Group=all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-17 02:49:16', 1, 'Admin>Users>View:Group=admin', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 16:15:50', 1, 'Logged In', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 16:15:50', 1, 'Admin:Dashboard', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 16:15:52', 1, 'Logged Out', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 16:15:58', -1, 'Trying to logging in to icharge (wrong U/P)', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 16:16:45', -1, 'Trying to logging in to icharge (wrong U/P)', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 16:16:51', -1, 'Trying to logging in to icharge (wrong U/P)', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 16:17:22', 1, 'Logged In', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 16:17:22', 1, 'Admin:Dashboard', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 16:17:24', 1, 'Admin>Users>View:Group=all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 16:17:41', 1, 'Admin>Users>View:2 latte', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 16:17:48', 1, 'Admin>Users>Edit:2 latte success', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 16:17:48', 1, 'Admin>Users>View:Group=all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 16:21:10', 1, 'Admin>Users>View:2 latte', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 16:21:53', 1, 'Admin>Users>Edit:2 latte success', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 16:21:53', 1, 'Admin>Users>View:Group=all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 16:24:15', 1, 'Logged Out', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 16:25:34', -1, 'Trying to logging in to admin (wrong U/P)', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 16:25:40', 1, 'Logged In', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 16:25:40', 1, 'Admin:Dashboard', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 16:25:42', 1, 'Admin>Users>View:Group=all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 16:25:46', 1, 'Admin>Users>View:2 latte', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 16:26:22', 1, 'Admin>Users>View:2 latte', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 16:26:36', 1, 'Admin>Users>Edit:2 latte success', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 16:26:36', 1, 'Admin>Users>View:Group=all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 17:17:12', 1, 'Logged Out', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 18:59:57', -1, 'Not logged in : Users management', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 19:02:11', -1, 'Not logged in : Users management', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 19:37:40', -1, 'Auth>Register:Added testing success', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 19:37:55', 4, 'Logged In', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 19:37:59', 4, 'Logged Out', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 19:38:08', 1, 'Logged In', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 19:38:08', 1, 'Admin:Dashboard', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 19:38:10', 1, 'Admin>Users>View:Group=all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 19:39:16', 1, 'Admin>Users>View:Group=validate', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 19:39:17', 1, 'Admin>Users>View:Group=all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 19:39:18', 1, 'Admin>Users>View:Group=admin', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 19:39:19', 1, 'Admin>Users>View:Group=all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 19:39:21', 1, 'Admin>Users>View:4 testing', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 19:39:25', 1, 'Admin>Users>Edit:4 testing success', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 19:39:25', 1, 'Admin>Users>View:Group=all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 21:43:15', -1, 'Auth>Register:Added hello success', '125.27.80.85', '125.27.80.85', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 21:43:24', 5, 'Logged In', '125.27.80.85', '125.27.80.85', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 21:45:15', 5, 'Logged In', '125.27.80.85', '125.27.80.85', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 21:47:22', 5, 'Logged In', '125.27.80.85', '125.27.80.85', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 21:47:48', 1, 'Logged In', '125.27.80.85', '125.27.80.85', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 21:47:48', 1, 'Admin:Dashboard', '125.27.80.85', '125.27.80.85', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 21:47:51', 1, 'Logged Out', '125.27.80.85', '125.27.80.85', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 21:47:58', 5, 'Logged In', '125.27.80.85', '125.27.80.85', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 22:55:13', 4, 'Logged In', '125.27.80.85', '125.27.80.85', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 23:05:38', 4, 'Logged In', '125.27.80.85', '125.27.80.85', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-18 23:11:51', 4, 'Logged In', '125.27.80.85', '125.27.80.85', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-19 00:04:35', 4, 'Insufficient permission : Admin Dashboard', '125.27.80.85', '125.27.80.85', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-19 20:42:45', -1, 'Not logged in : Member area', '125.27.90.191', '125.27.90.191', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-19 20:42:58', 1, 'Logged In', '125.27.90.191', '125.27.90.191', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-19 20:42:59', 1, 'Admin:Dashboard', '125.27.90.191', '125.27.90.191', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-19 20:47:17', 1, 'Member:Index', '125.27.90.191', '125.27.90.191', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-19 20:47:41', 1, 'Logged Out', '125.27.90.191', '125.27.90.191', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-19 20:48:28', 5, 'Logged In', '125.27.90.191', '125.27.90.191', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-19 20:48:29', 5, 'Member:Index', '125.27.90.191', '125.27.90.191', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-19 20:48:33', 5, 'Logged Out', '125.27.90.191', '125.27.90.191', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-19 20:49:07', 5, 'Logged In', '125.27.90.191', '125.27.90.191', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-19 20:49:07', 5, 'Member:Index', '125.27.90.191', '125.27.90.191', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-19 20:49:13', 5, 'Logged Out', '125.27.90.191', '125.27.90.191', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-19 20:49:23', 1, 'Logged In', '125.27.90.191', '125.27.90.191', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-19 20:49:23', 1, 'Admin:Dashboard', '125.27.90.191', '125.27.90.191', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-19 20:49:31', 1, 'Admin>Users>View:Group=all', '125.27.90.191', '125.27.90.191', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-19 20:49:37', 1, 'Admin>Users>View:5 hello', '125.27.90.191', '125.27.90.191', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-19 20:49:43', 1, 'Admin:Dashboard', '125.27.90.191', '125.27.90.191', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-19 20:49:46', 1, 'Logged Out', '125.27.90.191', '125.27.90.191', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-19 20:51:19', -1, 'Auth>Register:Added tommy success', '125.27.90.191', '125.27.90.191', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-19 20:51:26', 6, 'Logged In', '125.27.90.191', '125.27.90.191', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-19 20:51:27', 6, 'Member:Index', '125.27.90.191', '125.27.90.191', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-19 20:51:33', 6, 'Logged Out', '125.27.90.191', '125.27.90.191', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-20 02:25:33', -1, 'Auth>Register:Added test123 success', '124.120.186.156', '124.120.186.156', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-20 02:25:46', 7, 'Logged In', '124.120.186.156', '124.120.186.156', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-20 02:25:46', 7, 'Member:Index', '124.120.186.156', '124.120.186.156', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-20 02:26:09', 7, 'Logged Out', '124.120.186.156', '124.120.186.156', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-21 08:08:01', 1, 'Logged In', '101.109.113.77', '101.109.113.77', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-21 08:08:01', 1, 'Admin:Dashboard', '101.109.113.77', '101.109.113.77', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-21 08:08:03', 1, 'Admin>Users>View:Group=all', '101.109.113.77', '101.109.113.77', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-25 05:05:26', -1, 'Auth>Register:Added Jenk success', '110.168.5.74', '110.168.5.74', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Spark/2.x Safari/537.31'),
('2014-06-25 05:05:38', -1, 'Trying to logging in to jenk (wrong U/P)', '110.168.5.74', '110.168.5.74', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Spark/2.x Safari/537.31'),
('2014-06-25 05:05:49', -1, 'Trying to logging in to Jenk (wrong U/P)', '110.168.5.74', '110.168.5.74', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Spark/2.x Safari/537.31'),
('2014-06-25 05:05:58', -1, 'Trying to logging in to Jenk (wrong U/P)', '110.168.5.74', '110.168.5.74', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Spark/2.x Safari/537.31'),
('2014-06-25 05:06:05', -1, 'Trying to logging in to Jenk (wrong U/P)', '110.168.5.74', '110.168.5.74', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Spark/2.x Safari/537.31'),
('2014-06-25 05:06:37', -1, 'Trying to logging in to Jenk (wrong U/P)', '110.168.5.74', '110.168.5.74', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Spark/2.x Safari/537.31'),
('2014-06-25 05:06:42', -1, 'Trying to logging in to Jenk (wrong U/P)', '110.168.5.74', '110.168.5.74', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Spark/2.x Safari/537.31'),
('2014-06-25 05:07:04', -1, 'Trying to logging in to jenk_0006@outlook.co.th (wrong U/P)', '110.168.5.74', '110.168.5.74', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Spark/2.x Safari/537.31'),
('2014-06-25 05:07:11', -1, 'Trying to logging in to jenk_0006@outlook.co.th (wrong U/P)', '110.168.5.74', '110.168.5.74', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Spark/2.x Safari/537.31'),
('2014-06-25 05:07:20', -1, 'Trying to logging in to Jenk (wrong U/P)', '110.168.5.74', '110.168.5.74', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Spark/2.x Safari/537.31'),
('2014-06-25 05:08:19', -1, 'Auth>Register:Added jenk0006 success', '110.168.5.74', '110.168.5.74', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Spark/2.x Safari/537.31'),
('2014-06-25 05:08:31', -1, 'Trying to logging in to jenk0006 (wrong U/P)', '110.168.5.74', '110.168.5.74', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Spark/2.x Safari/537.31'),
('2014-06-25 05:08:38', -1, 'Trying to logging in to jenk0006 (wrong U/P)', '110.168.5.74', '110.168.5.74', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Spark/2.x Safari/537.31'),
('2014-06-25 05:08:39', -1, 'Trying to logging in to jenk0006 (wrong U/P)', '110.168.5.74', '110.168.5.74', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Spark/2.x Safari/537.31'),
('2014-06-25 05:08:40', -1, 'Trying to logging in to jenk0006 (wrong U/P)', '110.168.5.74', '110.168.5.74', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Spark/2.x Safari/537.31'),
('2014-06-25 05:09:35', -1, 'Trying to logging in to jenk0006 (wrong U/P)', '110.168.5.74', '110.168.5.74', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Spark/2.x Safari/537.31'),
('2014-06-26 03:15:09', -1, 'Trying to logging in to test123 (wrong U/P)', '124.120.217.32', '124.120.217.32', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-26 03:15:18', 7, 'Logged In', '124.120.217.32', '124.120.217.32', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-26 03:15:18', 7, 'Member:Index', '124.120.217.32', '124.120.217.32', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-27 06:53:43', -1, 'Trying to logging in to sabyeju (wrong U/P)', '124.120.244.213', '124.120.244.213', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-06-27 06:53:51', -1, 'Trying to logging in to sa_bye_ju@hotmail.com (wrong U/P)', '124.120.244.213', '124.120.244.213', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-07-01 08:02:33', -1, 'Trying to logging in to faf (wrong U/P)', '223.207.250.193', '223.207.250.193', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-07-08 10:46:25', -1, 'Trying to logging in to dumpzii (wrong U/P)', '223.207.251.64', '223.207.251.64', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-07-08 10:48:15', -1, 'Auth>Register:Added dumpzii success', '223.207.251.64', '223.207.251.64', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-07-08 10:48:22', -1, 'Trying to logging in to dumpzii (wrong U/P)', '223.207.251.64', '223.207.251.64', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-07-08 10:48:29', 10, 'Logged In', '223.207.251.64', '223.207.251.64', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-07-08 10:48:29', 10, 'Member:Index', '223.207.251.64', '223.207.251.64', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-07-08 10:49:53', 10, 'Logged In', '223.207.251.64', '223.207.251.64', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-07-08 10:49:53', 10, 'Member:Index', '223.207.251.64', '223.207.251.64', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),
('2014-07-20 10:25:25', -1, 'Trying to logging in to admin (wrong U/P)', '125.27.72.212', '125.27.72.212', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-07-20 10:25:31', -1, 'Trying to logging in to icharge (wrong U/P)', '125.27.72.212', '125.27.72.212', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-07-20 10:25:33', -1, 'Trying to logging in to icharge (wrong U/P)', '125.27.72.212', '125.27.72.212', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-07-20 10:25:37', 1, 'Logged In', '125.27.72.212', '125.27.72.212', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-07-20 10:25:38', 1, 'Admin:Dashboard', '125.27.72.212', '125.27.72.212', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-07-20 10:25:43', 1, 'Admin>Users>View:Group=all', '125.27.72.212', '125.27.72.212', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-07-20 10:25:48', 1, 'Admin>Users>View:10 dumpzii', '125.27.72.212', '125.27.72.212', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-07-20 10:25:59', 1, 'Admin>Users>View:Group=all', '125.27.72.212', '125.27.72.212', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-07-20 10:26:03', 1, 'Admin>Users>View:Group=validate', '125.27.72.212', '125.27.72.212', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-07-20 10:26:06', 1, 'Admin>Users>View:Group=player', '125.27.72.212', '125.27.72.212', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-07-20 10:26:07', 1, 'Admin>Users>View:Group=admin', '125.27.72.212', '125.27.72.212', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-07-20 10:26:08', 1, 'Admin>Users>View:Group=admin', '125.27.72.212', '125.27.72.212', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-07-20 10:26:08', 1, 'Admin>Users>View:Group=player', '125.27.72.212', '125.27.72.212', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-07-20 10:26:16', 1, 'Admin>Users>View:9 jenk0006', '125.27.72.212', '125.27.72.212', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-07-23 09:34:14', -1, 'Not logged in : Admin Dashboard', '113.53.214.223', '113.53.214.223', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:31.0) Gecko/20100101 Firefox/31.0'),
('2014-07-25 07:13:54', -1, 'Trying to logging in to Monkie.P (wrong U/P)', '171.98.133.204', '171.98.133.204', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-07-25 07:14:04', -1, 'Trying to logging in to foto_punny@windowslive.com (wrong U/P)', '171.98.133.204', '171.98.133.204', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-07-25 07:17:20', -1, 'Auth>Register:Added fotopun success', '171.98.133.204', '171.98.133.204', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-07-25 07:17:26', -1, 'Trying to logging in to fotopun (wrong U/P)', '171.98.133.204', '171.98.133.204', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-07-25 07:17:32', -1, 'Trying to logging in to foto_punny@windowslive.com (wrong U/P)', '171.98.133.204', '171.98.133.204', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-07-25 07:22:07', -1, 'Trying to logging in to fotopun (wrong U/P)', '171.98.133.204', '171.98.133.204', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-07-25 07:22:15', -1, 'Trying to logging in to fotopun (wrong U/P)', '171.98.133.204', '171.98.133.204', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-07-25 07:22:29', -1, 'Trying to logging in to fotopun (wrong U/P)', '171.98.133.204', '171.98.133.204', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-07-25 07:22:46', 11, 'Logged In', '171.98.133.204', '171.98.133.204', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-07-25 07:22:46', 11, 'Member:Index', '171.98.133.204', '171.98.133.204', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-07-25 07:23:12', 11, 'Logged In', '171.98.133.204', '171.98.133.204', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-07-25 07:23:12', 11, 'Member:Index', '171.98.133.204', '171.98.133.204', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-07-30 03:15:58', -1, 'Auth>Register:Added pooh343 success', '171.5.109.108', '171.5.109.108', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-07-30 03:16:09', -1, 'Trying to logging in to pooh343 (wrong U/P)', '171.5.109.108', '171.5.109.108', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-07-30 03:16:18', -1, 'Trying to logging in to pooh343 (wrong U/P)', '171.5.109.108', '171.5.109.108', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-07-30 03:16:21', -1, 'Trying to logging in to pooh343za (wrong U/P)', '171.5.109.108', '171.5.109.108', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-07-30 03:16:27', -1, 'Trying to logging in to pooh343za (wrong U/P)', '171.5.109.108', '171.5.109.108', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-07-30 03:16:30', -1, 'Trying to logging in to pooh343 (wrong U/P)', '171.5.109.108', '171.5.109.108', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-07-30 03:17:00', 12, 'Logged In', '171.5.109.108', '171.5.109.108', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-07-30 03:17:00', 12, 'Member:Index', '171.5.109.108', '171.5.109.108', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-08-04 10:08:46', -1, 'Auth>Register:Added ratchasak20 success', '14.207.216.150', '14.207.216.150', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-08-04 10:08:54', -1, 'Trying to logging in to ratchasak20 (wrong U/P)', '14.207.216.150', '14.207.216.150', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-08-04 10:09:25', -1, 'Trying to logging in to ratchasak20 (wrong U/P)', '14.207.216.150', '14.207.216.150', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-08-04 10:09:29', -1, 'Trying to logging in to ratchasak20 (wrong U/P)', '14.207.216.150', '14.207.216.150', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-08-04 10:10:01', 13, 'Logged In', '14.207.216.150', '14.207.216.150', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-08-04 10:10:05', 13, 'Logged In', '14.207.216.150', '14.207.216.150', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-08-04 10:10:06', 13, 'Member:Index', '14.207.216.150', '14.207.216.150', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-08-04 10:10:06', 13, 'Member:Index', '14.207.216.150', '14.207.216.150', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-08-04 10:11:01', 13, 'Logged In', '14.207.216.150', '14.207.216.150', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-08-04 10:11:08', 13, 'Member:Index', '14.207.216.150', '14.207.216.150', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-08-04 10:11:46', -1, 'Not logged in : Member area', '14.207.216.150', '14.207.216.150', '', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0E; .NET4.0C)'),
('2014-08-04 10:12:13', -1, 'Trying to logging in to ratchasak20 (wrong U/P)', '14.207.216.150', '14.207.216.150', '', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0E; .NET4.0C)'),
('2014-08-04 10:13:25', 13, 'Logged In', '14.207.216.150', '14.207.216.150', '', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0E; .NET4.0C)'),
('2014-08-04 10:13:25', 13, 'Member:Index', '14.207.216.150', '14.207.216.150', '', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0E; .NET4.0C)'),
('2014-09-05 01:26:12', -1, 'Auth>Register:Added vecpisit2015 success', '180.183.162.239', '180.183.162.239', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36'),
('2014-09-05 01:26:26', -1, 'Trying to logging in to vecpisit2015 (wrong U/P)', '180.183.162.239', '180.183.162.239', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36'),
('2014-09-05 01:26:38', -1, 'Trying to logging in to vecpisit2015 (wrong U/P)', '180.183.162.239', '180.183.162.239', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36'),
('2014-09-05 01:29:28', -1, 'Trying to logging in to vecpisit (wrong U/P)', '180.183.162.239', '180.183.162.239', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36'),
('2014-09-05 01:31:02', 14, 'Logged In', '180.183.162.239', '180.183.162.239', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36'),
('2014-09-05 01:31:02', 14, 'Member:Index', '180.183.162.239', '180.183.162.239', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36'),
('2014-09-05 01:31:05', 14, 'Logged Out', '180.183.162.239', '180.183.162.239', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36'),
('2014-09-05 01:35:36', 14, 'Logged In', '180.183.162.239', '180.183.162.239', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36'),
('2014-09-05 01:35:36', 14, 'Member:Index', '180.183.162.239', '180.183.162.239', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36'),
('2014-09-05 01:36:13', 14, 'Logged Out', '180.183.162.239', '180.183.162.239', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36'),
('2014-09-12 20:37:16', -1, 'Auth>Register:Added ratttapong01 success', '101.51.30.47', '101.51.30.47', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),
('2014-09-12 20:38:53', -1, 'Trying to logging in to rattapong01 (wrong U/P)', '101.51.30.47', '101.51.30.47', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),
('2014-09-12 20:39:03', -1, 'Trying to logging in to rattapong01 (wrong U/P)', '101.51.30.47', '101.51.30.47', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),
('2014-09-12 20:39:13', -1, 'Trying to logging in to rattapong01 (wrong U/P)', '101.51.30.47', '101.51.30.47', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),
('2014-09-19 08:29:30', -1, 'Trying to logging in to ChallengerX (wrong U/P)', '58.11.175.230', '58.11.175.230', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-19 08:29:34', -1, 'Trying to logging in to ChallengerX (wrong U/P)', '58.11.175.230', '58.11.175.230', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-19 08:29:37', -1, 'Trying to logging in to ChallengerX (wrong U/P)', '58.11.175.230', '58.11.175.230', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-19 08:29:41', -1, 'Trying to logging in to ChallengerX (wrong U/P)', '58.11.175.230', '58.11.175.230', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-19 08:29:44', -1, 'Trying to logging in to ChallengerX (wrong U/P)', '58.11.175.230', '58.11.175.230', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-19 08:29:47', -1, 'Trying to logging in to ChallengerX (wrong U/P)', '58.11.175.230', '58.11.175.230', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-19 08:29:53', -1, 'Trying to logging in to ChallengerX (wrong U/P)', '58.11.175.230', '58.11.175.230', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-19 08:29:55', -1, 'Trying to logging in to Challenger (wrong U/P)', '58.11.175.230', '58.11.175.230', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-19 08:33:03', -1, 'Auth>Register:Added Challenger success', '58.11.175.230', '58.11.175.230', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-19 08:33:10', 17, 'Logged In', '58.11.175.230', '58.11.175.230', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-19 08:33:11', 17, 'Member:Index', '58.11.175.230', '58.11.175.230', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-19 08:33:38', 17, 'Logged In', '58.11.175.230', '58.11.175.230', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-19 08:33:38', 17, 'Member:Index', '58.11.175.230', '58.11.175.230', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-22 04:33:07', -1, 'Trying to logging in to icharge (wrong U/P)', '101.109.78.188', '101.109.78.188', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-22 04:33:22', -1, 'Trying to logging in to icharge (wrong U/P)', '101.109.78.188', '101.109.78.188', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-23 03:11:28', -1, 'Trying to logging in to icharge (wrong U/P)', '171.5.178.65', '171.5.178.65', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-23 03:11:31', -1, 'Trying to logging in to icharge (wrong U/P)', '171.5.178.65', '171.5.178.65', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-23 03:11:39', -1, 'Trying to logging in to icharge (wrong U/P)', '171.5.178.65', '171.5.178.65', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-23 03:11:41', -1, 'Trying to logging in to icharge (wrong U/P)', '171.5.178.65', '171.5.178.65', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-23 03:11:43', -1, 'Trying to logging in to icharge (wrong U/P)', '171.5.178.65', '171.5.178.65', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-23 03:11:44', -1, 'Trying to logging in to icharge (wrong U/P)', '171.5.178.65', '171.5.178.65', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-23 03:11:49', -1, 'Trying to logging in to icharge (wrong U/P)', '171.5.178.65', '171.5.178.65', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-23 03:11:55', 1, 'Logged In', '171.5.178.65', '171.5.178.65', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-23 03:11:56', 1, 'Admin:Dashboard', '171.5.178.65', '171.5.178.65', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-23 03:12:00', 1, 'Admin>Users>View:Group=all', '171.5.178.65', '171.5.178.65', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-23 03:12:30', 1, 'Admin>Users>View:1 icharge', '171.5.178.65', '171.5.178.65', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-23 03:13:14', 1, 'Admin>Users>Add:admin', '171.5.178.65', '171.5.178.65', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22');
INSERT INTO `log_usage` (`time`, `uid`, `action`, `ipaddress`, `iphostname`, `iplocal`, `useragent`) VALUES
('2014-09-23 03:39:46', 1, 'Admin>Users>View:8 Jenk', '171.5.178.65', '171.5.178.65', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-23 03:39:57', 1, 'Admin>Users>Edit:8 Jenk success', '171.5.178.65', '171.5.178.65', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-23 03:39:57', 1, 'Admin>Users>View:Group=all', '171.5.178.65', '171.5.178.65', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-23 03:40:04', 1, 'Admin>Users>View:1 icharge', '171.5.178.65', '171.5.178.65', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-23 03:40:07', 1, 'Admin>Users>View:1 icharge', '171.5.178.65', '171.5.178.65', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-23 03:40:07', 1, 'Admin>Users>View:1 icharge', '171.5.178.65', '171.5.178.65', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22'),
('2014-09-24 08:00:25', -1, 'Auth>Register:Added satin success', '171.4.197.195', '171.4.197.195', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.122 Safari/537.36'),
('2014-09-24 08:00:33', 18, 'Logged In', '171.4.197.195', '171.4.197.195', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.122 Safari/537.36'),
('2014-09-24 08:00:34', 18, 'Member:Index', '171.4.197.195', '171.4.197.195', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.122 Safari/537.36'),
('2014-09-24 08:02:04', 18, 'Member:Play', '171.4.197.195', '171.4.197.195', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.122 Safari/537.36'),
('2014-09-24 08:03:46', -1, 'Not logged in : Member area', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:03:59', 18, 'Logged In', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:03:59', 18, 'Member:Index', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:04:00', 18, 'Member:Play', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:07:29', 18, 'Member:Index', '171.4.197.195', '171.4.197.195', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.122 Safari/537.36'),
('2014-09-24 08:07:30', 18, 'Member:Index', '171.4.197.195', '171.4.197.195', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.122 Safari/537.36'),
('2014-09-24 08:07:32', 18, 'Member:Index', '171.4.197.195', '171.4.197.195', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.122 Safari/537.36'),
('2014-09-24 08:07:32', 18, 'Member:Play', '171.4.197.195', '171.4.197.195', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.122 Safari/537.36'),
('2014-09-24 08:07:52', 18, 'Member:Play', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:07:56', 18, 'Member:Index', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:08:05', 18, 'Member:Play', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:08:36', 18, 'Member:Index', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:08:37', 18, 'Member:Play', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:10:53', 18, 'Member:Index', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:10:55', 18, 'Member:Play', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:10:57', 18, 'Member:Index', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:10:57', 18, 'Member:Play', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:11:08', 18, 'Member:Play', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:11:23', 18, 'Member:Play', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:11:31', 18, 'Member:Index', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:11:31', 18, 'Member:Index', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:11:42', 18, 'Member:Play', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:16:55', 18, 'Member:Play', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:17:16', 18, 'Member:Index', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:17:17', 18, 'Member:Play', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:17:31', 18, 'Member:Play', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:32:46', 18, 'Member:Play', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:34:25', 18, 'Member:Play', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:43:13', 18, 'Member:Play', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 08:43:25', 18, 'Member:Play', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-24 21:36:31', -1, 'Not logged in : Member area', '223.206.177.59', '223.206.177.59', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 Safari/537.36'),
('2014-09-24 21:36:34', -1, 'Not logged in : Member area', '173.252.74.118', '173.252.74.118', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)'),
('2014-09-24 21:38:26', -1, 'Auth>Register:Added magic9911 success', '223.206.177.59', '223.206.177.59', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 Safari/537.36'),
('2014-09-24 21:38:33', 19, 'Logged In', '223.206.177.59', '223.206.177.59', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 Safari/537.36'),
('2014-09-24 21:38:34', 19, 'Member:Index', '223.206.177.59', '223.206.177.59', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 Safari/537.36'),
('2014-09-24 21:38:38', 19, 'Member:Index', '223.206.177.59', '223.206.177.59', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 Safari/537.36'),
('2014-09-24 21:38:50', 19, 'Member:Play', '223.206.177.59', '223.206.177.59', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 Safari/537.36'),
('2014-09-24 21:39:53', 19, 'Member:Index', '223.206.177.59', '223.206.177.59', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 Safari/537.36'),
('2014-09-24 21:40:50', 19, 'Logged Out', '223.206.177.59', '223.206.177.59', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 Safari/537.36'),
('2014-09-25 19:58:48', -1, 'Not logged in : Member area', '202.28.79.189', '202.28.79.189', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-25 19:59:02', -1, 'Trying to logging in to Satin (wrong U/P)', '202.28.79.189', '202.28.79.189', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-25 19:59:05', 18, 'Logged In', '202.28.79.189', '202.28.79.189', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-25 19:59:06', 18, 'Member:Index', '202.28.79.189', '202.28.79.189', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-25 19:59:10', 18, 'Member:Play', '202.28.79.189', '202.28.79.189', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-25 19:59:21', 18, 'Member:Index', '202.28.79.189', '202.28.79.189', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-25 19:59:22', 18, 'Member:Play', '202.28.79.189', '202.28.79.189', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-25 19:59:25', 18, 'Member:Index', '202.28.79.189', '202.28.79.189', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-25 19:59:29', 18, 'Member:Play', '202.28.79.189', '202.28.79.189', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-25 22:31:40', -1, 'Not logged in : Member area', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-25 22:31:50', 18, 'Logged In', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-25 22:31:50', 18, 'Member:Index', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-25 22:31:51', 18, 'Member:Play', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-25 22:33:14', 18, 'Member:Play', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-25 22:36:42', 18, 'Member:Play', '171.4.197.195', '171.4.197.195', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:01:05', -1, 'Not logged in : Member area', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:01:20', 18, 'Logged In', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:01:21', 18, 'Member:Index', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:01:25', 18, 'Member:Play', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:01:46', 18, 'Member:Index', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:01:47', 18, 'Member:Play', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:15:28', 18, 'Member:Play', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:15:33', 18, 'Member:Index', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:15:36', 18, 'Member:Play', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:15:37', 18, 'Member:Play', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:15:37', 18, 'Member:Play', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:15:37', 18, 'Member:Play', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:15:38', 18, 'Member:Play', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:15:38', 18, 'Member:Play', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:15:38', 18, 'Member:Play', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:15:38', 18, 'Member:Play', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:15:38', 18, 'Member:Play', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:15:39', 18, 'Member:Play', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:15:39', 18, 'Member:Play', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:15:39', 18, 'Member:Play', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:15:42', 18, 'Member:Play', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:15:43', 18, 'Member:Index', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:15:44', 18, 'Member:Play', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:15:49', 18, 'Member:Index', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:15:52', 18, 'Member:Index', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:17:35', 18, 'Member:Play', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:17:46', 18, 'Member:Index', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:17:47', 18, 'Member:Play', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:17:47', 18, 'Member:Play', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:17:47', 18, 'Member:Play', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:17:48', 18, 'Member:Index', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:17:48', 18, 'Member:Index', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:17:49', 18, 'Member:Index', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:17:49', 18, 'Member:Index', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:17:52', 18, 'Member:Index', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:17:53', 18, 'Member:Play', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 09:17:55', 18, 'Member:Play', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 18:35:53', -1, 'Not logged in : Member area', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 19:41:52', -1, 'Not logged in : Member area', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 19:48:54', -1, 'Not logged in : Member area', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-26 20:46:20', -1, 'Not logged in : Member area', '183.88.200.32', '183.88.200.32', '', 'YuriNET/Client (Windows 6.1)'),
('2014-09-27 21:05:03', -1, 'Not logged in : Admin Dashboard', '193.150.120.74', '193.150.120.74', '', 'Mozilla/5.0 (Windows; U; Windows NT 6.0) Gecko/20091201 Firefox/3.5.6 GTB5'),
('2014-09-30 05:57:20', -1, 'Not logged in : Member area', '171.4.81.124', '171.4.81.124', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-04 19:12:29', -1, 'Not logged in : Member area', '101.109.78.131', '101.109.78.131', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-04 19:57:14', -1, 'Not logged in : Member area', '101.109.78.131', '101.109.78.131', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-04 19:59:26', -1, 'Not logged in : Member area', '101.109.78.131', '101.109.78.131', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-04 20:00:32', -1, 'Not logged in : Member area', '101.109.78.131', '101.109.78.131', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-04 20:04:07', -1, 'Not logged in : Member area', '101.109.78.131', '101.109.78.131', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-04 20:08:09', -1, 'Not logged in : Member area', '101.109.78.131', '101.109.78.131', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-09 05:03:01', -1, 'Not logged in : Member area', '125.27.67.250', '125.27.67.250', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-11 16:42:41', -1, 'Auth>Register:Added vampires09 success', '61.90.36.181', '61.90.36.181', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:32.0) Gecko/20100101 Firefox/32.0'),
('2014-10-11 16:42:52', 20, 'Logged In', '61.90.36.181', '61.90.36.181', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:32.0) Gecko/20100101 Firefox/32.0'),
('2014-10-11 16:42:52', 20, 'Member:Index', '61.90.36.181', '61.90.36.181', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:32.0) Gecko/20100101 Firefox/32.0'),
('2014-10-11 16:42:56', 20, 'Member:Index', '61.90.36.181', '61.90.36.181', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:32.0) Gecko/20100101 Firefox/32.0'),
('2014-10-15 17:57:01', -1, 'Not logged in : Admin Dashboard', '62.210.99.124', '62.210.99.124', '', 'Mozilla/4.0 (compatible; Synapse)'),
('2014-10-15 18:00:16', -1, 'Not logged in : Admin Dashboard', '62.210.99.124', '62.210.99.124', '', 'Mozilla/4.0 (compatible; Synapse)'),
('2014-10-26 04:08:42', -1, 'Not logged in : Member area', '101.109.78.179', '101.109.78.179', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-26 20:27:14', -1, 'Trying to logging in to icharge (wrong U/P)', '202.28.79.188', '202.28.79.188', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36'),
('2014-10-26 20:27:17', -1, 'Trying to logging in to icharge (wrong U/P)', '202.28.79.188', '202.28.79.188', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36'),
('2014-10-26 20:27:23', 1, 'Logged In', '202.28.79.188', '202.28.79.188', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36'),
('2014-10-26 20:27:23', 1, 'Admin:Dashboard', '202.28.79.188', '202.28.79.188', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36'),
('2014-10-26 20:27:30', 1, 'Admin>Users>View:Group=all', '202.28.79.188', '202.28.79.188', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36'),
('2014-10-26 20:27:39', 1, 'Admin>Users>View:3 challenger', '202.28.79.188', '202.28.79.188', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36'),
('2014-10-26 20:29:03', 1, 'Admin>Users>Add:admin', '202.28.79.188', '202.28.79.188', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36'),
('2014-10-26 20:29:38', 1, 'Admin>Users>Add:admin', '202.28.79.188', '202.28.79.188', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36'),
('2014-10-26 20:29:44', 1, 'Admin>Users>Add:admin', '202.28.79.188', '202.28.79.188', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36'),
('2014-10-26 20:29:51', 1, 'Admin>Users>Add:admin', '202.28.79.188', '202.28.79.188', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36'),
('2014-10-26 20:29:58', 1, 'Admin>Users>View:Group=admin', '202.28.79.188', '202.28.79.188', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36'),
('2014-10-26 20:30:00', 1, 'Admin>Users>View:Group=player', '202.28.79.188', '202.28.79.188', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36'),
('2014-10-26 20:30:01', 1, 'Admin>Users>View:Group=admin', '202.28.79.188', '202.28.79.188', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36'),
('2014-10-26 20:30:02', 1, 'Admin>Users>View:Group=all', '202.28.79.188', '202.28.79.188', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36'),
('2014-10-26 20:30:55', 1, 'Admin>Users>View:19 magic9911', '202.28.79.188', '202.28.79.188', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36'),
('2014-10-26 20:30:59', 1, 'Admin>Users>Edit:19 magic9911 success', '202.28.79.188', '202.28.79.188', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36'),
('2014-10-26 20:31:00', 1, 'Admin>Users>View:Group=all', '202.28.79.188', '202.28.79.188', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36'),
('2014-10-26 20:49:08', 1, 'Admin>Users>View:Group=all', '202.28.79.188', '202.28.79.188', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36'),
('2014-10-27 05:44:55', -1, 'Not logged in : Member area', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 05:45:08', 1, 'Logged In', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 05:45:08', 1, 'Admin:Dashboard', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 05:45:57', 1, 'Admin>Users>View:Group=all', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:17:04', 1, 'Member:Play', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:17:15', 1, 'Member:Index', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:17:17', 1, 'Member:Play', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:17:19', 1, 'Member:Index', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:17:20', 1, 'Member:Play', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:17:21', 1, 'Member:Index', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:17:22', 1, 'Member:Play', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:40:12', 1, 'Member:Index', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:40:14', 1, 'Member:Play', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:40:15', 1, 'Member:Index', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:40:15', 1, 'Member:Play', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:40:16', 1, 'Member:Index', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:40:16', 1, 'Member:Play', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:40:27', 1, 'Member:Play', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:40:30', 1, 'Member:Play', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:40:32', 1, 'Member:Index', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:40:40', 1, 'Member:Play', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:50:03', 1, 'Member:Index', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:50:03', 1, 'Member:Play', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:50:07', 1, 'Member:Index', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:50:09', 1, 'Member:Index', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:50:09', 1, 'Member:Index', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:50:10', 1, 'Member:Index', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:50:10', 1, 'Member:Index', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:50:10', 1, 'Member:Index', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:50:11', 1, 'Member:Index', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:50:11', 1, 'Member:Index', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:50:11', 1, 'Member:Play', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:50:12', 1, 'Member:Play', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:50:13', 1, 'Member:Play', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:50:13', 1, 'Member:Play', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:50:16', 1, 'Member:Play', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:50:17', 1, 'Member:Play', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:50:19', 1, 'Member:Index', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:50:20', 1, 'Member:Index', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:50:24', 1, 'Member:Index', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-10-27 06:50:25', 1, 'Member:Play', '223.207.217.39', '223.207.217.39', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-02 03:48:30', 1, 'Logged In', '81.89.96.88', '81.89.96.88', '', 'Mozilla/5.0 (Windows NT 6.1; rv:31.0) Gecko/20100101 Firefox/31.0'),
('2014-11-02 03:48:33', 1, 'Admin:Dashboard', '81.89.96.88', '81.89.96.88', '', 'Mozilla/5.0 (Windows NT 6.1; rv:31.0) Gecko/20100101 Firefox/31.0'),
('2014-11-02 03:48:38', 1, 'Admin>Users>View:Group=all', '81.89.96.88', '81.89.96.88', '', 'Mozilla/5.0 (Windows NT 6.1; rv:31.0) Gecko/20100101 Firefox/31.0'),
('2014-11-02 03:48:45', 1, 'Admin>Users>View:1 icharge', '81.89.96.88', '81.89.96.88', '', 'Mozilla/5.0 (Windows NT 6.1; rv:31.0) Gecko/20100101 Firefox/31.0'),
('2014-11-03 21:56:06', -1, 'Trying to logging in to ์NAMESEED (wrong U/P)', '202.29.6.95', '202.29.6.95', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),
('2014-11-03 21:56:24', -1, 'Trying to logging in to NAMESEED (wrong U/P)', '202.29.6.95', '202.29.6.95', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),
('2014-11-03 21:56:33', -1, 'Trying to logging in to nameseed@hotmail.com (wrong U/P)', '202.29.6.95', '202.29.6.95', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),
('2014-11-03 22:03:48', -1, 'Trying to logging in to nameseed@hotmail.com (wrong U/P)', '202.29.6.95', '202.29.6.95', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),
('2014-11-03 22:03:59', -1, 'Trying to logging in to nameseed@hotmail.com (wrong U/P)', '202.29.6.95', '202.29.6.95', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),
('2014-11-03 22:04:54', -1, 'Auth>Register:Added nameseed success', '202.29.6.95', '202.29.6.95', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),
('2014-11-03 22:05:05', -1, 'Trying to logging in to ์NAMESEED (wrong U/P)', '202.29.6.95', '202.29.6.95', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),
('2014-11-03 22:05:12', -1, 'Trying to logging in to nameseed (wrong U/P)', '202.29.6.95', '202.29.6.95', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),
('2014-11-08 16:52:44', -1, 'Auth>Register:Added misterky00 success', '110.168.231.211', '110.168.231.211', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),
('2014-11-08 16:52:50', 22, 'Logged In', '110.168.231.211', '110.168.231.211', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),
('2014-11-08 16:52:51', 22, 'Member:Index', '110.168.231.211', '110.168.231.211', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),
('2014-11-10 03:31:01', 1, 'Logged In', '49.49.72.138', '49.49.72.138', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-11-10 03:31:01', 1, 'Admin:Dashboard', '49.49.72.138', '49.49.72.138', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-11-10 03:32:05', 1, 'Admin>Users>View:Group=all', '49.49.72.138', '49.49.72.138', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-11-10 03:32:14', 1, 'Admin>Users>View:Group=all', '49.49.72.138', '49.49.72.138', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-11-10 03:32:21', 1, 'Member:Index', '49.49.72.138', '49.49.72.138', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-11-10 03:32:24', 1, 'Member:Play', '49.49.72.138', '49.49.72.138', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-11-10 03:33:29', 1, 'Member:Index', '49.49.72.138', '49.49.72.138', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-11-10 03:33:31', 1, 'Member:Play', '49.49.72.138', '49.49.72.138', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-11-10 03:33:36', 1, 'Member:Play', '49.49.72.138', '49.49.72.138', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-11-10 03:33:39', 1, 'Member:Index', '49.49.72.138', '49.49.72.138', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-11-10 03:33:44', 1, 'Member:Play', '49.49.72.138', '49.49.72.138', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-11-10 03:34:45', 1, 'Member:Index', '49.49.72.138', '49.49.72.138', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-11-10 03:34:53', 1, 'Member:Index', '49.49.72.138', '49.49.72.138', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-11-10 03:34:58', 1, 'Logged Out', '49.49.72.138', '49.49.72.138', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-11-12 22:12:11', -1, 'Not logged in : Member area', '49.49.72.138', '49.49.72.138', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-12 22:13:37', 1, 'Logged In', '49.49.72.138', '49.49.72.138', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-12 22:13:38', 1, 'Admin:Dashboard', '49.49.72.138', '49.49.72.138', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-12 22:13:43', 1, 'Admin>Users>View:Group=all', '49.49.72.138', '49.49.72.138', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-12 22:13:47', 1, 'Admin:Dashboard', '49.49.72.138', '49.49.72.138', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-12 22:13:48', 1, 'Admin:Dashboard', '49.49.72.138', '49.49.72.138', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-12 22:14:32', 1, 'Member:Play', '49.49.72.138', '49.49.72.138', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-12 22:14:36', 1, 'Member:Index', '49.49.72.138', '49.49.72.138', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-12 22:14:37', 1, 'Member:Play', '49.49.72.138', '49.49.72.138', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-12 22:14:37', 1, 'Member:Play', '49.49.72.138', '49.49.72.138', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-12 22:16:07', 1, 'Member:Play', '49.49.72.138', '49.49.72.138', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-12 22:16:32', 1, 'Member:Play', '49.49.72.138', '49.49.72.138', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-12 22:16:34', 1, 'Member:Index', '49.49.72.138', '49.49.72.138', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-12 22:16:35', 1, 'Member:Play', '49.49.72.138', '49.49.72.138', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-15 20:16:12', -1, 'Trying to logging in to tmeegrgbji (wrong U/P)', '27.159.221.71', '27.159.221.71', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 YaBrowser/14.7.1916.15705 Safari/537.36'),
('2014-11-17 00:47:52', -1, 'Trying to logging in to rcypqqfkmp (wrong U/P)', '193.201.224.10', '193.201.224.10', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36'),
('2014-11-21 00:58:21', -1, 'Auth>Register:Added AkaRyuu success', '14.207.202.225', '14.207.202.225', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),
('2014-11-21 00:58:29', -1, 'Trying to logging in to AkaRyuu (wrong U/P)', '14.207.202.225', '14.207.202.225', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),
('2014-11-21 00:58:34', -1, 'Trying to logging in to AkaRyuu (wrong U/P)', '14.207.202.225', '14.207.202.225', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),
('2014-11-21 00:58:40', 23, 'Logged In', '14.207.202.225', '14.207.202.225', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),
('2014-11-21 00:58:40', 23, 'Member:Index', '14.207.202.225', '14.207.202.225', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),
('2014-11-21 00:58:44', 23, 'Member:Index', '14.207.202.225', '14.207.202.225', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),
('2014-11-21 00:58:45', 23, 'Member:Play', '14.207.202.225', '14.207.202.225', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),
('2014-11-24 02:08:38', -1, 'Not logged in : Member area', '1.46.99.207', '1.46.99.207', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-24 02:12:29', -1, 'Trying to logging in to icharge (wrong U/P)', '1.46.99.207', '1.46.99.207', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-24 02:13:52', 1, 'Logged In', '1.46.99.207', '1.46.99.207', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-24 02:13:53', 1, 'Admin:Dashboard', '1.46.99.207', '1.46.99.207', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-24 02:14:05', 1, 'Member:Play', '1.46.99.207', '1.46.99.207', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-24 02:28:55', 1, 'Member:Play', '1.46.99.207', '1.46.99.207', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-24 03:13:45', 1, 'Member:Play', '1.46.99.207', '1.46.99.207', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-24 03:16:47', 1, 'Member:Play', '1.46.99.207', '1.46.99.207', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-24 03:20:42', 1, 'Member:Play', '1.46.99.207', '1.46.99.207', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-24 03:23:50', 1, 'Member:Play', '1.46.99.207', '1.46.99.207', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-24 03:25:55', 1, 'Member:Play', '1.46.99.207', '1.46.99.207', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-24 03:28:03', 1, 'Member:Play', '1.46.99.207', '1.46.99.207', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 01:14:17', -1, 'Trying to logging in to abohlbpyfs (wrong U/P)', '193.201.224.74', '193.201.224.74', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 YaBrowser/14.7.1916.15705 Safari/537.36'),
('2014-11-26 02:53:52', -1, 'Not logged in : Member area', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 02:55:12', -1, 'Trying to logging in to icharge (wrong U/P)', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 02:55:26', 1, 'Logged In', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 02:55:26', 1, 'Admin:Dashboard', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 02:55:33', 1, 'Admin:Dashboard', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 02:55:53', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:11:56', 1, 'Member:Index', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:11:58', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:12:01', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:13:20', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:14:27', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:16:08', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:17:53', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:18:48', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:18:53', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:18:57', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:19:02', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:19:03', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:19:03', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:19:04', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:19:04', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:19:04', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:19:04', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:19:04', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:19:05', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:19:05', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:19:05', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:19:06', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:19:06', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:19:06', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:20:01', 1, 'Logged In', '1.46.140.21', '1.46.140.21', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-11-26 03:20:02', 1, 'Admin:Dashboard', '1.46.140.21', '1.46.140.21', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-11-26 03:20:10', 1, 'Member:Index', '1.46.140.21', '1.46.140.21', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-11-26 03:20:12', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-11-26 03:21:31', 1, 'Member:Index', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-26 03:21:36', 1, 'Member:Play', '1.46.140.21', '1.46.140.21', '', 'YuriNET/Client (Windows 6.1)'),
('2014-11-27 05:05:52', -1, 'Trying to logging in to iuctzkpebb (wrong U/P)', '193.201.224.10', '193.201.224.10', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36 OPR/23.0.1522.77 (Edition Campaign 37)'),
('2014-12-05 08:09:49', -1, 'Trying to logging in to ldwudgvypi (wrong U/P)', '193.201.224.10', '193.201.224.10', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),
('2014-12-13 08:11:44', -1, 'Auth>Register:Added tadzanaruk1 success', '171.7.249.244', '171.7.249.244', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2014-12-13 08:11:55', 24, 'Logged In', '171.7.249.244', '171.7.249.244', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2014-12-13 08:11:55', 24, 'Member:Index', '171.7.249.244', '171.7.249.244', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2014-12-13 08:12:33', 24, 'Member:Play', '171.7.249.244', '171.7.249.244', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2014-12-13 08:12:51', 24, 'Member:Index', '171.7.249.244', '171.7.249.244', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2014-12-13 08:12:55', 24, 'Member:Play', '171.7.249.244', '171.7.249.244', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2014-12-13 08:20:10', 24, 'Logged In', '171.7.249.244', '171.7.249.244', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2014-12-13 08:20:11', 24, 'Member:Index', '171.7.249.244', '171.7.249.244', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2014-12-13 08:20:20', 24, 'Logged In', '171.7.249.244', '171.7.249.244', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2014-12-13 08:20:20', 24, 'Member:Index', '171.7.249.244', '171.7.249.244', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2014-12-13 08:20:37', 24, 'Logged In', '171.7.249.244', '171.7.249.244', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2014-12-13 08:20:38', 24, 'Member:Index', '171.7.249.244', '171.7.249.244', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2014-12-16 16:27:23', -1, 'Auth>Register:Added kingdom success', '223.205.248.126', '223.205.248.126', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36'),
('2014-12-16 16:27:48', -1, 'Trying to logging in to kingdom (wrong U/P)', '223.205.248.126', '223.205.248.126', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36'),
('2014-12-16 16:27:50', -1, 'Trying to logging in to kingdom (wrong U/P)', '223.205.248.126', '223.205.248.126', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36'),
('2014-12-29 18:13:09', -1, 'Not logged in : Member area', '101.109.110.85', '101.109.110.85', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-29 20:19:02', -1, 'Not logged in : Member area', '101.109.110.85', '101.109.110.85', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-29 21:56:28', -1, 'Not logged in : Member area', '101.109.110.85', '101.109.110.85', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-29 21:59:07', -1, 'Not logged in : Member area', '101.109.110.85', '101.109.110.85', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-29 21:59:17', -1, 'Trying to logging in to icharge (wrong U/P)', '101.109.110.85', '101.109.110.85', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-29 21:59:21', -1, 'Trying to logging in to icharge (wrong U/P)', '101.109.110.85', '101.109.110.85', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-29 21:59:23', -1, 'Trying to logging in to icharge (wrong U/P)', '101.109.110.85', '101.109.110.85', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-29 21:59:27', -1, 'Trying to logging in to icharge (wrong U/P)', '101.109.110.85', '101.109.110.85', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-29 21:59:31', 1, 'Logged In', '101.109.110.85', '101.109.110.85', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-29 21:59:31', 1, 'Admin:Dashboard', '101.109.110.85', '101.109.110.85', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-29 21:59:34', 1, 'Admin>Users>View:Group=all', '101.109.110.85', '101.109.110.85', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-29 21:59:39', 1, 'Admin:Dashboard', '101.109.110.85', '101.109.110.85', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-29 21:59:53', 1, 'Admin:Dashboard', '101.109.110.85', '101.109.110.85', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-29 21:59:56', 1, 'Admin>Users>View:Group=all', '101.109.110.85', '101.109.110.85', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-29 21:59:56', 1, 'Admin>Users>View:Group=all', '101.109.110.85', '101.109.110.85', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-29 22:00:03', 1, 'Admin:Dashboard', '101.109.110.85', '101.109.110.85', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-29 22:00:09', 1, 'Admin>Users>View:Group=all', '101.109.110.85', '101.109.110.85', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-30 00:28:06', -1, 'Not logged in : Member area', '223.206.8.124', '223.206.8.124', '', 'YuriNET/Client (Windows 6.2)'),
('2014-12-30 00:29:15', -1, 'Not logged in : Member area', '223.206.8.124', '223.206.8.124', '', 'YuriNET/Client (Windows 6.2)'),
('2014-12-30 00:32:51', -1, 'Auth>Register:Added magic9911 success', '223.206.8.124', '223.206.8.124', '', 'YuriNET/Client (Windows 6.2)'),
('2014-12-30 00:33:06', -1, 'Trying to logging in to magic999 (wrong U/P)', '223.206.8.124', '223.206.8.124', '', 'YuriNET/Client (Windows 6.2)'),
('2014-12-30 00:33:40', -1, 'Trying to logging in to magic999 (wrong U/P)', '223.206.8.124', '223.206.8.124', '', 'YuriNET/Client (Windows 6.2)'),
('2014-12-30 00:33:45', -1, 'Trying to logging in to magic999 (wrong U/P)', '223.206.8.124', '223.206.8.124', '', 'YuriNET/Client (Windows 6.2)'),
('2014-12-30 00:33:50', -1, 'Trying to logging in to magic999 (wrong U/P)', '223.206.8.124', '223.206.8.124', '', 'YuriNET/Client (Windows 6.2)'),
('2014-12-30 00:35:00', -1, 'Trying to logging in to magic9911 (wrong U/P)', '223.206.8.124', '223.206.8.124', '', 'YuriNET/Client (Windows 6.2)'),
('2014-12-30 00:35:05', -1, 'Trying to logging in to magic9911 (wrong U/P)', '223.206.8.124', '223.206.8.124', '', 'YuriNET/Client (Windows 6.2)'),
('2014-12-30 00:36:33', -1, 'Auth>Register:Added magic9911 success', '223.206.8.124', '223.206.8.124', '', 'YuriNET/Client (Windows 6.2)'),
('2014-12-30 00:36:40', 27, 'Logged In', '223.206.8.124', '223.206.8.124', '', 'YuriNET/Client (Windows 6.2)'),
('2014-12-30 00:36:41', 27, 'Member:Index', '223.206.8.124', '223.206.8.124', '', 'YuriNET/Client (Windows 6.2)'),
('2014-12-30 00:36:50', 27, 'Member:Play', '223.206.8.124', '223.206.8.124', '', 'YuriNET/Client (Windows 6.2)'),
('2014-12-30 00:55:03', -1, 'Not logged in : Member area', '101.109.111.158', '101.109.111.158', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-30 00:55:22', -1, 'Not logged in : Member area', '101.109.111.158', '101.109.111.158', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-30 22:18:00', 1, 'Logged In', '101.109.111.158', '101.109.111.158', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-12-30 22:18:01', 1, 'Admin:Dashboard', '101.109.111.158', '101.109.111.158', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-12-30 22:18:04', 1, 'Admin>Users>View:Group=all', '101.109.111.158', '101.109.111.158', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-12-30 22:18:13', 1, 'Member:Play', '101.109.111.158', '101.109.111.158', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-12-30 22:18:19', 1, 'Member:Play', '101.109.111.158', '101.109.111.158', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-12-30 23:17:44', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-12-30 23:17:51', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36'),
('2014-12-30 23:28:42', -1, 'Not logged in : Member area', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-30 23:28:56', 1, 'Logged In', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-30 23:28:56', 1, 'Admin:Dashboard', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-30 23:29:05', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-30 23:29:38', 1, 'Member:Index', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-30 23:29:48', 1, 'Member:Index', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-30 23:29:49', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-30 23:30:17', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)');
INSERT INTO `log_usage` (`time`, `uid`, `action`, `ipaddress`, `iphostname`, `iplocal`, `useragent`) VALUES
('2014-12-30 23:32:16', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-30 23:34:12', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-30 23:37:34', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-30 23:40:50', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-30 23:43:34', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 00:22:49', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 00:37:06', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 00:38:19', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 00:42:09', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 00:50:33', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 00:55:44', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 01:04:32', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 01:21:37', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 01:37:55', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 01:39:52', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 01:45:30', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 01:47:50', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 01:48:21', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 01:56:47', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 02:04:41', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 02:08:49', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 02:10:08', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 02:13:30', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 02:21:39', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 02:23:51', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 02:28:58', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 02:38:49', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 02:54:19', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 02:58:51', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 03:37:32', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 03:37:39', -1, 'Not logged in : Member area', '223.207.0.102', '223.207.0.102', '', 'YuriNET/Client (Windows 6.2)'),
('2014-12-31 03:37:58', 27, 'Logged In', '223.207.0.102', '223.207.0.102', '', 'YuriNET/Client (Windows 6.2)'),
('2014-12-31 03:37:58', 27, 'Member:Index', '223.207.0.102', '223.207.0.102', '', 'YuriNET/Client (Windows 6.2)'),
('2014-12-31 03:38:03', 27, 'Member:Play', '223.207.0.102', '223.207.0.102', '', 'YuriNET/Client (Windows 6.2)'),
('2014-12-31 03:46:06', 27, 'Member:Index', '223.207.0.102', '223.207.0.102', '', 'YuriNET/Client (Windows 6.2)'),
('2014-12-31 03:46:08', 27, 'Member:Play', '223.207.0.102', '223.207.0.102', '', 'YuriNET/Client (Windows 6.2)'),
('2014-12-31 06:05:11', -1, 'Not logged in : Member area', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 06:28:03', -1, 'Not logged in : Member area', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 19:03:26', -1, 'Not logged in : Member area', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 19:03:36', -1, 'Not logged in : Member area', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 19:12:25', -1, 'Not logged in : Member area', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 19:12:35', 1, 'Logged In', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 19:12:36', 1, 'Admin:Dashboard', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 19:12:43', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 19:17:29', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 20:14:54', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 20:21:11', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 20:24:24', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 20:31:00', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 20:37:21', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 20:40:27', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 20:45:30', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 20:49:48', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 20:52:23', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 20:58:37', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 21:00:17', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 21:12:43', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 21:29:25', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 21:32:52', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 21:39:39', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 21:45:56', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 21:48:24', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2014-12-31 22:03:42', 1, 'Member:Play', '125.27.87.248', '125.27.87.248', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 01:06:59', -1, 'Not logged in : Member area', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 01:07:09', -1, 'Not logged in : Member area', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 01:37:00', -1, 'Not logged in : Member area', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 01:37:09', 1, 'Logged In', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 01:37:09', 1, 'Admin:Dashboard', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 01:37:15', 1, 'Member:Play', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 01:49:02', 1, 'Member:Play', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 05:39:29', -1, 'Not logged in : Member area', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 05:39:42', 1, 'Logged In', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 05:39:43', 1, 'Admin:Dashboard', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 05:39:49', 1, 'Member:Play', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 05:40:00', 1, 'Member:Index', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 05:40:01', 1, 'Member:Play', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 05:40:04', 1, 'Member:Play', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 05:40:07', 1, 'Member:Play', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 05:43:45', 1, 'Member:Play', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 05:45:19', 1, 'Member:Play', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 06:01:39', -1, 'Not logged in : Member area', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 06:01:47', 1, 'Logged In', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 06:01:47', 1, 'Admin:Dashboard', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 06:01:54', 1, 'Member:Play', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 06:04:08', 1, 'Member:Play', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 06:09:30', 1, 'Member:Play', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 06:27:55', 1, 'Member:Play', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-01 06:34:15', 1, 'Member:Play', '125.27.81.22', '125.27.81.22', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-02 21:30:54', -1, 'Not logged in : Member area', '125.27.75.134', '125.27.75.134', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-02 21:31:08', 1, 'Logged In', '125.27.75.134', '125.27.75.134', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-02 21:31:08', 1, 'Admin:Dashboard', '125.27.75.134', '125.27.75.134', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-02 21:31:15', 1, 'Member:Play', '125.27.75.134', '125.27.75.134', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-02 23:23:51', 1, 'Member:Play', '125.27.75.134', '125.27.75.134', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-02 23:24:00', 1, 'Member:Play', '125.27.75.134', '125.27.75.134', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-02 23:32:44', 1, 'Member:Play', '125.27.75.134', '125.27.75.134', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-02 23:35:46', 1, 'Member:Play', '125.27.75.134', '125.27.75.134', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-02 23:38:13', 1, 'Member:Play', '125.27.75.134', '125.27.75.134', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-02 23:38:28', 1, 'Member:Play', '125.27.75.134', '125.27.75.134', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-02 23:59:40', 1, 'Logged In', '125.27.75.134', '125.27.75.134', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-02 23:59:40', 1, 'Member:Index', '125.27.75.134', '125.27.75.134', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-02 23:59:44', 1, 'Member:Play', '125.27.75.134', '125.27.75.134', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-02 23:59:49', 1, 'Member:Index', '125.27.75.134', '125.27.75.134', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 00:04:40', 1, 'Logged In', '125.27.75.134', '125.27.75.134', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 00:04:40', 1, 'Member:Index', '125.27.75.134', '125.27.75.134', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 00:21:38', 1, 'Logged In', '223.205.122.137', '223.205.122.137', '', 'YuriNET/Client (Windows 6.2)'),
('2015-01-03 00:21:38', 1, 'Member:Index', '223.205.122.137', '223.205.122.137', '', 'YuriNET/Client (Windows 6.2)'),
('2015-01-03 00:25:02', 27, 'Logged In', '223.205.122.137', '223.205.122.137', '', 'YuriNET/Client (Windows 6.2)'),
('2015-01-03 00:25:02', 27, 'Member:Index', '223.205.122.137', '223.205.122.137', '', 'YuriNET/Client (Windows 6.2)'),
('2015-01-03 00:26:05', 27, 'Member:Play', '223.205.122.137', '223.205.122.137', '', 'YuriNET/Client (Windows 6.2)'),
('2015-01-03 00:27:41', 1, 'Logged In', '125.27.75.134', '125.27.75.134', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 00:27:41', 1, 'Member:Index', '125.27.75.134', '125.27.75.134', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 00:27:47', 1, 'Member:Play', '125.27.75.134', '125.27.75.134', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 00:29:59', 27, 'Member:Play', '223.205.122.137', '223.205.122.137', '', 'YuriNET/Client (Windows 6.2)'),
('2015-01-03 00:30:01', 27, 'Member:Play', '223.205.122.137', '223.205.122.137', '', 'YuriNET/Client (Windows 6.2)'),
('2015-01-03 00:30:05', 27, 'Member:Play', '223.205.122.137', '223.205.122.137', '', 'YuriNET/Client (Windows 6.2)'),
('2015-01-03 00:30:06', 27, 'Member:Play', '223.205.122.137', '223.205.122.137', '', 'YuriNET/Client (Windows 6.2)'),
('2015-01-03 00:30:06', 27, 'Member:Play', '223.205.122.137', '223.205.122.137', '', 'YuriNET/Client (Windows 6.2)'),
('2015-01-03 00:30:07', 27, 'Member:Play', '223.205.122.137', '223.205.122.137', '', 'YuriNET/Client (Windows 6.2)'),
('2015-01-03 00:30:09', 27, 'Member:Play', '223.205.122.137', '223.205.122.137', '', 'YuriNET/Client (Windows 6.2)'),
('2015-01-03 00:35:18', -1, 'Auth>Register:Added ChallengerXII success', '171.96.179.6', '171.96.179.6', '171.96.179.6', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-03 00:35:24', 28, 'Logged In', '171.96.179.6', '171.96.179.6', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-03 00:35:25', 28, 'Member:Index', '171.96.179.6', '171.96.179.6', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-03 00:35:53', 28, 'Member:Play', '171.96.179.6', '171.96.179.6', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-03 00:35:58', 28, 'Member:Index', '171.96.179.6', '171.96.179.6', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-03 00:36:43', 28, 'Logged Out', '171.96.179.6', '171.96.179.6', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-03 00:36:49', 28, 'Logged In', '171.96.179.6', '171.96.179.6', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-03 00:36:50', 28, 'Member:Index', '171.96.179.6', '171.96.179.6', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-03 00:37:23', 28, 'Logged Out', '171.96.179.6', '171.96.179.6', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-03 00:42:44', 28, 'Logged In', '171.96.179.6', '171.96.179.6', '', 'YuriNET/Client (Windows 5.1)'),
('2015-01-03 00:42:45', 28, 'Member:Index', '171.96.179.6', '171.96.179.6', '', 'YuriNET/Client (Windows 5.1)'),
('2015-01-03 00:43:35', 28, 'Member:Play', '171.96.179.6', '171.96.179.6', '', 'YuriNET/Client (Windows 5.1)'),
('2015-01-03 00:44:52', 27, 'Logged In', '223.205.122.137', '223.205.122.137', '', 'YuriNET/Client (Windows 6.2)'),
('2015-01-03 00:44:52', 27, 'Member:Index', '223.205.122.137', '223.205.122.137', '', 'YuriNET/Client (Windows 6.2)'),
('2015-01-03 00:44:54', 27, 'Member:Play', '223.205.122.137', '223.205.122.137', '', 'YuriNET/Client (Windows 6.2)'),
('2015-01-03 01:16:33', 1, 'Logged In', '125.27.75.134', '125.27.75.134', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 01:16:33', 1, 'Member:Index', '125.27.75.134', '125.27.75.134', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 01:16:38', 1, 'Member:Play', '125.27.75.134', '125.27.75.134', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 19:45:34', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 19:45:34', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 19:46:20', 1, 'Member:Play', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 19:48:30', 1, 'Member:Play', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 19:49:34', 1, 'Member:Play', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 19:49:37', 1, 'Member:Play', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 19:49:40', 1, 'Member:Play', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 19:49:44', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 19:49:49', 1, 'Member:Play', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 19:49:49', 1, 'Member:Play', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 21:00:22', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 21:00:22', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 21:01:45', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 21:01:46', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 21:01:58', 1, 'Member:Play', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 21:29:22', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 21:29:22', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 22:00:37', 27, 'Logged In', '49.49.45.139', '49.49.45.139', '', 'YuriNET/Client (Windows 5.1)'),
('2015-01-03 22:00:37', 27, 'Member:Index', '49.49.45.139', '49.49.45.139', '', 'YuriNET/Client (Windows 5.1)'),
('2015-01-03 22:00:48', 27, 'Member:Play', '49.49.45.139', '49.49.45.139', '', 'YuriNET/Client (Windows 5.1)'),
('2015-01-03 22:04:54', 1, 'Logged In', '49.49.45.139', '49.49.45.139', '', 'YuriNET/Client (Windows 5.1)'),
('2015-01-03 22:04:54', 1, 'Member:Index', '49.49.45.139', '49.49.45.139', '', 'YuriNET/Client (Windows 5.1)'),
('2015-01-03 22:05:56', 1, 'Member:Play', '49.49.45.139', '49.49.45.139', '', 'YuriNET/Client (Windows 5.1)'),
('2015-01-03 22:12:45', 27, 'Logged In', '49.49.45.139', '49.49.45.139', '', 'YuriNET/Client (Windows 5.1)'),
('2015-01-03 22:12:45', 27, 'Member:Index', '49.49.45.139', '49.49.45.139', '', 'YuriNET/Client (Windows 5.1)'),
('2015-01-03 22:31:14', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 22:31:14', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 22:31:22', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-03 22:31:23', 1, 'Member:Play', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-04 01:36:14', 27, 'Logged In', '49.49.45.139', '49.49.45.139', '', 'YuriNET/Client (Windows 5.1)'),
('2015-01-04 01:36:14', 27, 'Member:Index', '49.49.45.139', '49.49.45.139', '', 'YuriNET/Client (Windows 5.1)'),
('2015-01-04 01:36:24', 27, 'Member:Play', '49.49.45.139', '49.49.45.139', '', 'YuriNET/Client (Windows 5.1)'),
('2015-01-04 17:25:24', 28, 'Logged In', '171.96.176.39', '171.96.176.39', '', 'YuriNET/Client (Windows 5.1)'),
('2015-01-04 17:25:24', 28, 'Member:Index', '171.96.176.39', '171.96.176.39', '', 'YuriNET/Client (Windows 5.1)'),
('2015-01-04 17:25:32', 28, 'Member:Play', '171.96.176.39', '171.96.176.39', '', 'YuriNET/Client (Windows 5.1)'),
('2015-01-04 17:26:05', 28, 'Logged In', '171.96.176.39', '171.96.176.39', '', 'YuriNET/Client (Windows 5.1)'),
('2015-01-04 17:26:05', 28, 'Member:Index', '171.96.176.39', '171.96.176.39', '', 'YuriNET/Client (Windows 5.1)'),
('2015-01-04 17:26:19', 28, 'Member:Play', '171.96.176.39', '171.96.176.39', '', 'YuriNET/Client (Windows 5.1)'),
('2015-01-04 23:00:27', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-04 23:00:27', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-04 23:00:35', 1, 'Member:Play', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 19:00:46', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 19:00:46', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 19:02:01', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 19:02:02', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 19:03:52', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 19:03:52', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 19:12:54', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 19:12:55', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 19:13:42', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 19:13:42', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 19:14:13', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 19:14:13', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 19:44:50', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 19:44:50', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 19:48:06', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 19:48:07', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 19:56:21', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 19:56:22', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 20:06:42', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 20:06:42', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 20:07:46', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 20:07:47', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 20:08:14', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 20:08:15', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 20:09:03', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 20:09:04', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 20:10:16', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 20:10:16', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 20:11:04', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 20:11:04', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 20:11:10', 1, 'Member:Play', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 20:33:54', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 20:33:54', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 22:16:47', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-06 22:16:47', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-07 00:55:45', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-07 00:55:45', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-07 00:55:49', 1, 'Member:Play', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-07 01:02:37', 1, 'Logged In', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-07 01:02:37', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-07 01:03:01', 1, 'Member:Play', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-07 01:03:03', 1, 'Member:Play', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-07 01:03:09', 1, 'Member:Index', '125.27.76.127', '125.27.76.127', '', 'YuriNET/Client (Windows 6.1)'),
('2015-01-07 17:50:28', 1, 'Logged In', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-07 17:50:29', 1, 'Admin:Dashboard', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-07 17:50:36', 1, 'Admin>Users>View:Group=all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-07 17:50:48', 1, 'Member:Index', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-07 17:50:52', 1, 'Member:Play', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-07 17:50:55', 1, 'Member:Index', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-07 17:52:14', 1, 'Member:Index', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-07 17:52:20', 1, 'Admin>Users>View:Group=all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-07 17:52:33', 1, 'Admin>Users>View:Group=all', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-07 17:52:34', 1, 'Admin:Dashboard', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 06:29:33', 1, 'Logged In', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 06:29:34', 1, 'Admin:Dashboard', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 06:32:49', 1, 'Admin:Dashboard', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 06:32:59', 1, 'Admin:Dashboard', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 06:37:33', 1, 'Admin:Dashboard', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 06:37:35', 1, 'Member:Index', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 06:38:09', 1, 'Member:Play', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 06:38:10', 1, 'Member:Index', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 06:42:58', 1, 'Member:Play', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 06:43:35', 1, 'Member:Index', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 06:48:05', 1, 'Member:Play', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 06:49:10', 1, 'Member:Play', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 06:50:31', 1, 'Member:Play', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 06:50:42', 1, 'Member:Play', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 06:56:11', 1, 'Member:Play', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 06:58:26', 1, 'Member:Play', '::1', '::1', '', 'YuriNET 0.8 (Windows 6.1)'),
('2015-01-08 06:58:59', 1, 'Member:Play', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 07:01:40', 1, 'Member:Play', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 07:02:25', 1, 'Member:Play', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 07:03:03', 1, 'Member:Play', '::1', '::1', '', 'YuriNET 0.8 (Windows 6.1)'),
('2015-01-08 07:03:09', 1, 'Member:Play', '::1', '::1', '', 'YuriNET 0.8 (Windows 6.1)'),
('2015-01-08 07:03:16', 1, 'Member:Play', '::1', '::1', '', 'YuriNET 0.8 (Windows 6.1)'),
('2015-01-08 07:03:19', 1, 'Member:Play', '::1', '::1', '', 'YuriNET 0.8 (Windows 6.1)'),
('2015-01-08 07:03:23', 1, 'Member:Play', '::1', '::1', '', 'YuriNET 0.8 (Windows 6.1)'),
('2015-01-08 07:03:55', 1, 'Member:Play', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 07:07:39', 1, 'Logged Out', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 07:39:24', -1, 'Auth>Register:Added icharge success', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 07:40:25', -1, 'Auth>Register:Added icharge success', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 07:51:29', -1, 'Auth>Register:Added icharge success', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 08:00:36', 1, 'Logged In', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 08:00:36', 1, 'Member:Index', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 08:01:27', 1, 'Member:Play', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 08:01:30', 1, 'Logged Out', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 08:01:35', -1, 'Trying to logging in to icharge (wrong U/P)', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 08:01:39', 1, 'Logged In', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 08:01:39', 1, 'Member:Index', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 08:02:12', 1, 'Logged Out', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 08:02:17', 1, 'Logged In', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 08:02:17', 1, 'Member:Index', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 08:15:17', 1, 'Logged Out', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 08:19:05', -1, 'Auth>Register:Added ichargex success', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 08:21:33', -1, 'Auth>Register:Added test success', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 08:22:08', -1, 'Trying to logging in to icharge (wrong U/P)', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 08:22:13', 1, 'Logged In', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 08:22:13', 1, 'Member:Index', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),
('2015-01-08 08:22:19', 1, 'Member:Play', '::1', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `p2p_channel`
--

CREATE TABLE IF NOT EXISTS `p2p_channel` (
`ch_id` int(11) NOT NULL,
  `ch_name` varchar(100) NOT NULL,
  `ch_maxuser` int(200) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `p2p_channel`
--

INSERT INTO `p2p_channel` (`ch_id`, `ch_name`, `ch_maxuser`) VALUES
(1, 'มือใหม่', 200),
(2, 'ทั่วไป', 200);

-- --------------------------------------------------------

--
-- Table structure for table `p2p_clients`
--

CREATE TABLE IF NOT EXISTS `p2p_clients` (
  `ch_id` int(11) NOT NULL,
  `member_user` varchar(100) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `port` varchar(10) NOT NULL,
  `member_game` varchar(10) NOT NULL,
  `time_out` varchar(100) NOT NULL,
  `ticket` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `p2p_clients`
--

INSERT INTO `p2p_clients` (`ch_id`, `member_user`, `ip`, `port`, `member_game`, `time_out`, `ticket`) VALUES
(2, '01', '125.27.87.248', '9001', 'ra2', '1420022910', 1),
(1, '01', '125.27.87.248', '9001', 'yuri', '1420049162', 2),
(1, 'mmm', '49.49.8.74', '9001', 'ra2', '1420022990', 2),
(1, 'mmm999', '223.205.122.137', '9001', 'ra2', '1420293085', 2),
(1, 'iCharge', '125.27.76.127', '20027', 'ra2', '1420618359', 1),
(1, 'magic999', '223.207.0.102', '14983', 'yuri', '1420040714', 1),
(1, 'magic9911', '223.205.122.137', '18668', 'ra2', '1420290471', 4),
(1, 'ChallengerXII', '171.96.179.6', '9000', 'ra2', '1420290521', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pvp_channel`
--

CREATE TABLE IF NOT EXISTS `pvp_channel` (
`id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `game` varchar(32) NOT NULL,
  `maxuser` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `pvp_channel`
--

INSERT INTO `pvp_channel` (`id`, `name`, `game`, `maxuser`) VALUES
(1, 'Lob_33_0', 'RA2', 20),
(2, 'Lob_33_1', 'RA2', 20),
(3, 'Lob_33_2', 'RA2', 20),
(4, 'Lob_33_3', 'RA2', 20),
(5, 'Lob_33_4', 'RA2', 20),
(6, 'Lob_33_5', 'RA2', 20),
(7, 'Lob_35_0', 'RA2', 20),
(8, 'Lob_38_0', 'RA2', 20),
(9, 'Lob_40_0', 'YURI', 20),
(10, 'Lob_41_0', 'YURI', 20),
(11, 'Lob_41_1', 'YURI', 20),
(12, 'Lob_41_2', 'YURI', 20),
(13, 'Lob_41_3', 'YURI', 20),
(14, 'Lob_41_4', 'YURI', 20),
(15, 'Lob_41_5', 'YURI', 20);

-- --------------------------------------------------------

--
-- Table structure for table `pvp_info`
--

CREATE TABLE IF NOT EXISTS `pvp_info` (
`uid` int(11) NOT NULL,
  `facebook_id` int(11) NOT NULL,
  `facebook_name` varchar(255) NOT NULL,
  `facebook_first_name` varchar(255) NOT NULL,
  `facebook_scr` varchar(255) NOT NULL,
  `acct_username` varchar(32) DEFAULT NULL,
  `acct_userid` int(11) DEFAULT NULL,
  `auth_apgar` varchar(8) DEFAULT NULL,
  `acct_locale` int(11) DEFAULT NULL,
  `acct_email` varchar(128) DEFAULT NULL,
  `auth_admin` varchar(16) DEFAULT 'false',
  `acct_lastlogin_time` int(11) DEFAULT '0',
  `acct_lastlogin_clienttag` varchar(128) DEFAULT NULL,
  `acct_lastlogin_ip` varchar(32) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pvp_info`
--

INSERT INTO `pvp_info` (`uid`, `facebook_id`, `facebook_name`, `facebook_first_name`, `facebook_scr`, `acct_username`, `acct_userid`, `auth_apgar`, `acct_locale`, `acct_email`, `auth_admin`, `acct_lastlogin_time`, `acct_lastlogin_clienttag`, `acct_lastlogin_ip`) VALUES
(1, 0, '', '', '', 'yoyo', NULL, 'aGGGGGGG', 28, NULL, 'false', 1419921233, 'RA2', '223.204.129.131');

-- --------------------------------------------------------

--
-- Table structure for table `pvp_rank`
--

CREATE TABLE IF NOT EXISTS `pvp_rank` (
`id` int(11) NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  `facebook_id` int(11) NOT NULL,
  `RAL2_rank` int(11) DEFAULT '0',
  `RAL2_points` int(11) DEFAULT '0',
  `RAL2_wins` int(11) DEFAULT '0',
  `RAL2_losses` int(11) DEFAULT '0',
  `RAL2_disconnects` int(11) DEFAULT '0',
  `YURI_rank` int(11) DEFAULT '0',
  `YURI_points` int(11) DEFAULT '0',
  `YURI_wins` int(11) DEFAULT '0',
  `YURI_losses` int(11) DEFAULT '0',
  `YURI_disconnects` int(11) DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pvp_rank`
--

INSERT INTO `pvp_rank` (`id`, `uid`, `facebook_id`, `RAL2_rank`, `RAL2_points`, `RAL2_wins`, `RAL2_losses`, `RAL2_disconnects`, `YURI_rank`, `YURI_points`, `YURI_wins`, `YURI_losses`, `YURI_disconnects`) VALUES
(1, 1, 0, 0, 0, 0, 0, 0, 1, 500, 29, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pvp_room`
--

CREATE TABLE IF NOT EXISTS `pvp_room` (
`id` int(11) NOT NULL,
  `ch_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` varchar(128) NOT NULL,
  `cain` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `port` varchar(10) NOT NULL,
  `time_out` varchar(128) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `pvp_room`
--

INSERT INTO `pvp_room` (`id`, `ch_id`, `uid`, `uname`, `cain`, `rank`, `ip`, `port`, `time_out`) VALUES
(4, 1, 1, 'yoyo', 0, 0, '', '', '1418199426'),
(5, 1, 0, 'mmm999', 0, 0, '223.205.122.137', '9001', '1420276186'),
(6, 1, 0, 'mmm888', 0, 0, '223.205.122.137', '9001', '1420276690'),
(7, 1, 0, 'magic9911', 0, 0, '223.205.122.137', '', '1420276666');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`uid` int(6) NOT NULL,
  `facebookid` varchar(128) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `passpvpgn` varchar(8) NOT NULL,
  `email` varchar(128) NOT NULL,
  `playername` varchar(16) NOT NULL,
  `pvpgnname` varchar(10) DEFAULT NULL,
  `clan_id` int(11) DEFAULT NULL,
  `hdserial` varchar(16) DEFAULT NULL,
  `prefer_country` varchar(10) DEFAULT NULL,
  `cdkey` varchar(22) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `banuntil` datetime DEFAULT NULL,
  `role` varchar(10) NOT NULL,
  `confirm_hash` varchar(128) DEFAULT NULL,
  `token` varchar(128) DEFAULT NULL,
  `joindate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ipaddress` varchar(64) NOT NULL,
  `lastaccess` datetime NOT NULL,
  `pvp_lastlogin_time` int(11) NOT NULL,
  `pvp_lastlogin_clienttag` varchar(128) NOT NULL,
  `pvp_lastlogin_ip` varchar(32) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `facebookid`, `username`, `password`, `passpvpgn`, `email`, `playername`, `pvpgnname`, `clan_id`, `hdserial`, `prefer_country`, `cdkey`, `status`, `banuntil`, `role`, `confirm_hash`, `token`, `joindate`, `ipaddress`, `lastaccess`, `pvp_lastlogin_time`, `pvp_lastlogin_clienttag`, `pvp_lastlogin_ip`) VALUES
(1, NULL, 'icharge', '7399d82663d34d9521eb818705259244', '7399d826', 'charge_n@hotmail.com', 'iCharge', NULL, NULL, NULL, 'english', '1212312312312312312312', 'active', NULL, 'player', NULL, NULL, '2015-01-08 14:51:25', '', '2015-01-08 15:22:13', 0, '', ''),
(2, NULL, 'ichargex', 'c74d4af12a51666a68d223bb9e0131b6', 'c74d4af1', '', 'ichargex', NULL, NULL, NULL, 'english', '', 'active', NULL, 'player', NULL, NULL, '2015-01-08 15:19:04', '', '0000-00-00 00:00:00', 0, '', ''),
(3, NULL, 'test', 'c74d4af12a51666a68d223bb9e0131b6', 'c74d4af1', '', 'test', NULL, NULL, NULL, 'random', '', 'active', NULL, 'player', NULL, NULL, '2015-01-08 15:21:31', '', '0000-00-00 00:00:00', 0, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `p2p_channel`
--
ALTER TABLE `p2p_channel`
 ADD PRIMARY KEY (`ch_id`);

--
-- Indexes for table `pvp_channel`
--
ALTER TABLE `pvp_channel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pvp_info`
--
ALTER TABLE `pvp_info`
 ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `pvp_rank`
--
ALTER TABLE `pvp_rank`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pvp_room`
--
ALTER TABLE `pvp_room`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`uid`), ADD UNIQUE KEY `username` (`username`,`playername`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `p2p_channel`
--
ALTER TABLE `p2p_channel`
MODIFY `ch_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pvp_channel`
--
ALTER TABLE `pvp_channel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `pvp_info`
--
ALTER TABLE `pvp_info`
MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pvp_rank`
--
ALTER TABLE `pvp_rank`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pvp_room`
--
ALTER TABLE `pvp_room`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `uid` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
