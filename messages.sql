-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3000
-- Generation Time: Apr 19, 2016 at 03:15 PM
-- Server version: 5.5.38
-- PHP Version: 5.4.30
-- Author: John Loughrey

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `messages`
--

-- --------------------------------------------------------

--
-- Table structure for table `geomessages`
--

CREATE TABLE `geomessages` (
`message_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT 'John Loughrey',
  `message` text,
  `latitude` varchar(250) DEFAULT NULL,
  `longitude` varchar(250) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `geomessages`
--

INSERT INTO `geomessages` (`message_id`, `username`, `message`, `latitude`, `longitude`, `created`) VALUES
(1, 'User 1', 'This is geo message 1.', '54.595962', '-5.934341', '2014-06-29 11:09:35'),
(2, 'User 2', 'This is geo message 2', '54.598559', '-5.925165', '2015-03-01 12:43:59'),
(3, 'User 1', 'This is geo message 3', '54.600583', '-5.879806', '2015-03-01 12:44:01'),
(4, 'User 2', 'This is geo message 4', '54.600993', '-5.879617', '2015-03-01 12:44:02'),
(5, 'User 3', 'This is geo message 5', '54.600582', '-5.879806', '2015-03-01 12:44:02'),
(6, 'User 2', 'This is geo message 6', '54.5958689', '-5.9284131', '2015-03-01 12:44:03'),
(7, 'User 1', 'This is geo message 7', '54.575894', '-5.9544500000000005', '2015-03-01 12:44:03'),
(8, 'User 3', 'This is geo message 8', '54.583574', '-5.945294', '2015-03-01 12:44:03'),
(9, 'User 4', 'This is geo message 9', '54.604132', '-5.882233', '2015-03-01 12:44:04'),
(10, 'User 2', 'This is geo message 10', '54.572805', '-5.9323', '2015-03-01 12:47:21'),
(11, 'User 1', 'This is geo message 11', '54.59896', '-5.91084', '2015-03-01 12:47:26'),
(12, 'User 1', 'This is geo message 12', '54.600583', '-5.879806', '2015-03-01 12:47:26'),
(13, 'User 3', 'This is geo message 13', '54.597616', '-5.928209', '2015-03-01 12:47:27'),
(14, 'User 5', 'This is geo message 14', '54.603253', '-5.8802129999999995', '2015-03-01 12:47:27'),
(15, 'User 3', 'This is geo message 15', '54.593343', '-5.918525', '2015-03-01 12:47:27'),
(16, 'User 5', 'This is geo message 16', '54.5958689', '-5.9284131', '2015-03-01 12:47:27'),
(17, 'User 1', 'This is geo message 17', '54.603288', '-5.88027', '2015-03-01 12:47:27'),
(18, 'User 3', 'This is geo message 18', '54.5958689', '-5.9284131', '2015-03-01 12:47:28'),
(19, 'User 5', 'This is geo message 19', '54.603284', '-5.88024', '2015-03-01 12:47:45'),
(20, 'User 2', 'This is geo message 20', '54.587601', '-5.9696739999999995', '2015-03-01 13:11:15'),
(21, 'User 6', 'This is geo message 21', '54.5958689', '-5.9284131', '2015-03-01 13:11:30'),
(22, 'User 6', 'This is geo message 22', '54.598958', '-5.910828', '2015-03-01 13:11:44'),
(23, 'User 1', 'This is geo message 23.', '54.595962', '-5.934341', '2014-06-29 11:09:35'),
(24, 'User 2', 'This is geo message 24', '54.598559', '-5.925165', '2015-03-01 12:43:59'),
(25, 'User 3', 'This is geo message 25', '54.655583', '-5.879806', '2015-03-01 12:44:01'),
(26, 'User 1', 'This is geo message 26', '54.600993', '-5.879617', '2015-03-01 12:44:02'),
(27, 'User 2', 'This is geo message 27', '54.685582', '-5.879806', '2015-03-01 12:44:02'),
(28, 'User 5', 'This is geo message 28', '54.5958689', '-5.9284131', '2015-03-01 12:44:03'),
(29, 'User 1', 'This is geo message 29', '54.575894', '-5.9544500000000005', '2015-03-01 12:44:03'),
(30, 'User 6', 'This is geo message 30', '54.583574', '-5.945294', '2015-03-01 12:44:03'),
(31, 'User 1', 'This is geo message 31', '54.7404132', '-5.882233', '2015-03-01 12:44:04'),
(32, 'User 2', 'This is geo message 32', '54.572805', '-5.9323', '2015-03-01 12:47:21'),
(33, 'User 4', 'This is geo message 33', '54.59896', '-5.91084', '2015-03-01 12:47:26'),
(34, 'User 5', 'This is geo message 34', '54.600583', '-5.879806', '2015-03-01 12:47:26'),
(35, 'User 1', 'This is geo message 35', '54.637616', '-5.928209', '2015-03-01 12:47:27'),
(36, 'User 3', 'This is geo message 36', '54.603253', '-5.8802129999999995', '2015-03-01 12:47:27'),
(37, 'User 2', 'This is geo message 37', '54.963343', '-5.918525', '2015-03-01 12:47:27'),
(38, 'User 7', 'Hi guys!!!!', '54.5958689', '-5.9284131', '2015-03-01 12:47:27'),
(39, 'User 4', '....has left the conversation', '54.603288', '-5.88027', '2015-03-01 12:47:27'),
(40, 'User 6', '....has left the conversation', '54.8558689', '-5.9284131', '2015-03-01 12:47:28'),
(41, 'User 5', '....has left the conversation', '54.603284', '-5.88024', '2015-03-01 12:47:45'),
(42, 'User 3', '....has left the conversation', '54.147601', '-5.9696739999999995', '2015-03-01 13:11:15'),
(43, 'User 2', '....has left the conversation', '54.5258689', '-5.9284131', '2015-03-01 13:11:30'),
(44, 'User 1', '....has left the conversation', '54.318958', '-5.910828', '2015-03-01 13:11:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `geomessages`
--
ALTER TABLE `geomessages`
 ADD PRIMARY KEY (`message_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `geomessages`
--
ALTER TABLE `geomessages`
MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;