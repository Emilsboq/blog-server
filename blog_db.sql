-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 26 feb 2020 kl 08:51
-- Serverversion: 10.4.11-MariaDB
-- PHP-version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `blog_db`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `blog_db`
--

CREATE TABLE `blog_db` (
  `id` int(11) NOT NULL,
  `author` varchar(40) NOT NULL,
  `body` text NOT NULL,
  `created` date NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `blog_db`
--

INSERT INTO `blog_db` (`id`, `author`, `body`, `created`, `title`) VALUES
(1, 'Emil Olsson', 'post', '2020-02-25', 'Test'),
(2, 'Sebastian Olsson', 'Test2', '2020-02-26', 'Test for myself');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `blog_db`
--
ALTER TABLE `blog_db`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
