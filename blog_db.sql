-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2020 at 02:16 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'Index',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT 'The blog title text.',
  `body` text NOT NULL COMMENT 'The blog text.',
  `author` varchar(255) NOT NULL DEFAULT '' COMMENT 'The author of the article.',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'The date when the post was first created.',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp() COMMENT 'The date when the article was updated or modified.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `author`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non leo sem. Integer mattis tellus luctus mollis tristique. Proin et lectus maximus, eleifend ligula ut, posuere sapien. Sed ligula nunc, bibendum non posuere non, aliquet eu neque. Nulla ut feugiat enim. Nunc erat tortor, lobortis in finibus sit amet, pellentesque nec ex. Nullam varius viverra dolor, vel tincidunt leo molestie ut. In et dignissim ipsum. Aliquam sit amet sagittis neque. Nam mollis dolor ornare sagittis feugiat. Suspendisse laoreet bibendum facilisis. Mauris eu dignissim tellus, at mollis tellus. Nulla tempus lectus nec nibh elementum, sed dictum lorem mattis. Maecenas turpis quam, ultrices ut consequat sed, faucibus id ex. Mauris odio odio, rutrum ac eros commodo, efficitur placerat nunc. Curabitur rutrum accumsan metus, eget hendrerit nibh bibendum eu.', 'Emil Ipsum', '2020-02-27 11:09:09', '2020-02-27 11:09:09'),
(2, 'Lorem ipsum lorem', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pulvinar nibh purus, id rutrum turpis luctus vitae. Fusce molestie ultrices orci, eu ornare lectus ornare eu. Nunc volutpat blandit finibus. Quisque ac vulputate tortor. Proin pretium ex ut aliquam dictum. Vestibulum dapibus finibus velit, sed ultricies lectus porta id. Duis massa magna, semper in tempus quis, eleifend efficitur mauris. Suspendisse id venenatis felis. Fusce aliquet consequat suscipit. Phasellus in urna nunc.', 'Ipsum Olsson', '2020-02-27 11:10:39', '2020-02-27 11:10:39'),
(3, 'Ipsum Olsson lorem', 'Olsson ipsum dolor sit amet, consectetur adipiscing Emil. Suspendisse pulvinar nibh purus, id rutrum turpis luctus vitae. Fusce molestie ultrices orci, eu ornare lectus ornare eu. Nunc volutpat blandit finibus. Quisque ac vulputate tortor. Proin pretium ex ut aliquam dictum. Vestibulum dapibus finibus velit, sed ultricies lectus porta id. Duis massa magna, semper in tempus quis, eleifend efficitur mauris. Suspendisse id venenatis felis. Fusce aliquet consequat suscipit. Phasellus in urna nunc.', 'Emil Olsson', '2020-02-27 11:10:39', '2020-02-27 11:10:39'),
(4, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non leo sem. Integer mattis tellus luctus mollis tristique. Proin et lectus maximus, eleifend ligula ut, posuere sapien. Sed ligula nunc, bibendum non posuere non, aliquet eu neque. Nulla ut feugiat enim. Nunc erat tortor, lobortis in finibus sit amet, pellentesque nec ex. Nullam varius viverra dolor, vel tincidunt leo molestie ut. In et dignissim ipsum. Aliquam sit amet sagittis neque. Nam mollis dolor ornare sagittis feugiat. Suspendisse laoreet bibendum facilisis. Mauris eu dignissim tellus, at mollis tellus. Nulla tempus lectus nec nibh elementum, sed dictum lorem mattis. Maecenas turpis quam, ultrices ut consequat sed, faucibus id ex. Mauris odio odio, rutrum ac eros commodo, efficitur placerat nunc. Curabitur rutrum accumsan metus, eget hendrerit nibh bibendum eu.', 'Emil Ipsum', '2020-02-27 11:10:39', '2020-02-27 11:10:39'),
(5, 'Lorem ipsum lorem', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pulvinar nibh purus, id rutrum turpis luctus vitae. Fusce molestie ultrices orci, eu ornare lectus ornare eu. Nunc volutpat blandit finibus. Quisque ac vulputate tortor. Proin pretium ex ut aliquam dictum. Vestibulum dapibus finibus velit, sed ultricies lectus porta id. Duis massa magna, semper in tempus quis, eleifend efficitur mauris. Suspendisse id venenatis felis. Fusce aliquet consequat suscipit. Phasellus in urna nunc.', 'Ipsum Olsson', '2020-02-27 11:10:39', '2020-02-27 11:10:39'),
(6, 'Ipsum Olsson lorem', 'Olsson ipsum dolor sit amet, consectetur adipiscing Emil. Suspendisse pulvinar nibh purus, id rutrum turpis luctus vitae. Fusce molestie ultrices orci, eu ornare lectus ornare eu. Nunc volutpat blandit finibus. Quisque ac vulputate tortor. Proin pretium ex ut aliquam dictum. Vestibulum dapibus finibus velit, sed ultricies lectus porta id. Duis massa magna, semper in tempus quis, eleifend efficitur mauris. Suspendisse id venenatis felis. Fusce aliquet consequat suscipit. Phasellus in urna nunc.', 'Emil Olsson', '2020-02-27 11:10:39', '2020-02-27 11:10:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Index', AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
