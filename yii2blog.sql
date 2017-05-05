-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.53 - MySQL Community Server (GPL)
-- Операционная система:         Win32
-- HeidiSQL Версия:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных blog
CREATE DATABASE IF NOT EXISTS `blog` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `blog`;

-- Дамп структуры для таблица blog.bl_courses
CREATE TABLE IF NOT EXISTS `bl_courses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `did` int(10) unsigned DEFAULT NULL,
  `src_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` int(11) NOT NULL,
  `price` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MRG_MyISAM DEFAULT CHARSET=utf8;

-- Table data not exported because this is MRG_MYISAM table which holds its data in separate tables.
-- Дамп структуры для таблица blog.bl_minicourses
CREATE TABLE IF NOT EXISTS `bl_minicourses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `did` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `default` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MRG_MyISAM DEFAULT CHARSET=utf8;

-- Table data not exported because this is MRG_MYISAM table which holds its data in separate tables.
-- Дамп структуры для таблица blog.bl_posts
CREATE TABLE IF NOT EXISTS `bl_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_release` tinyint(1) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `intro_text` text NOT NULL,
  `full_text` text NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `meta_desc` varchar(255) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL,
  `hide` tinyint(1) unsigned NOT NULL,
  `no_form` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MRG_MyISAM DEFAULT CHARSET=utf8;

-- Table data not exported because this is MRG_MYISAM table which holds its data in separate tables.
-- Дамп структуры для таблица blog.bl_reviews
CREATE TABLE IF NOT EXISTS `bl_reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MRG_MyISAM DEFAULT CHARSET=utf8;

-- Table data not exported because this is MRG_MYISAM table which holds its data in separate tables.
-- Дамп структуры для таблица blog.bl_sef
CREATE TABLE IF NOT EXISTS `bl_sef` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link` varchar(255) NOT NULL,
  `linK_sef` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `link` (`link`),
  UNIQUE KEY `linK_sef` (`linK_sef`)
) ENGINE=MRG_MyISAM DEFAULT CHARSET=utf8;

-- Table data not exported because this is MRG_MYISAM table which holds its data in separate tables.
-- Дамп структуры для таблица blog.bl_setes
CREATE TABLE IF NOT EXISTS `bl_setes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MRG_MyISAM DEFAULT CHARSET=utf8;

-- Table data not exported because this is MRG_MYISAM table which holds its data in separate tables.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
