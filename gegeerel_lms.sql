-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 14, 2019 at 11:30 PM
-- Server version: 5.6.40
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gegeerel_lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `lesson_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `lesson_id`, `created_at`, `updated_at`) VALUES
(1, 'Лекц', 'Багш үндсэн ойлголт, онолын мэдлэгийг тойм лекцээр өгч, оюутан бие даалтын хичээлээр мэдлэгээ гүнзгийрүүлнэ.', 1, '2015-08-05 02:51:52', '2015-08-05 02:51:52'),
(2, 'Бие даалт', 'Бие даах', 1, '2015-08-11 12:51:46', '2015-08-11 12:51:46'),
(3, 'Ашиглах материал', 'Ашиглана.', 1, '2015-08-11 12:52:12', '2015-08-11 12:52:12');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `week` int(10) UNSIGNED NOT NULL,
  `homework` tinyint(1) NOT NULL DEFAULT '0',
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `name`, `video`, `text`, `week`, `homework`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Стратегийн менежментийн зорилтууд', '3/lecture 1.mp4', '<p>Стратегийн обьект, үүрэг, онол</p>\r\n', 1, 0, 1, '2015-08-05 03:05:25', '2015-08-05 03:05:25'),
(2, 'Бие даалт 1', NULL, '<p>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 19-р талд заасан даалгавруудыг гүйцэтгэх<br />\r\nБагшид илгээх бие даалт:<br />\r\nХолбогдох материалуудыг судлан сэдвийн хүрээнд товчлол хийх<br />\r\n&nbsp;</p>\r\n', 1, 1, 2, '2015-08-11 12:53:34', '2015-09-22 22:47:42'),
(3, 'Бие даалт 2', NULL, '<p>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 24-р талд заасан даалгавруудыг гүйцэтгэх<br />\r\nБагшид илгээх бие даалт:<br />\r\nХолбогдох материалуудыг судлан сэдвийн хүрээнд товчлол хийх<br />\r\n&nbsp;</p>\r\n', 2, 1, 2, '2015-08-11 12:53:55', '2015-09-22 22:47:57'),
(4, 'Бие даалт 3', NULL, '<p>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 35-р талд заасан даалгавруудыг гүйцэтгэх<br />\r\nБагшид илгээх бие даалт:<br />\r\nХолбогдох материалуудыг судлан сэдвийн хүрээнд эссе бичих&nbsp;<br />\r\n&nbsp;</p>\r\n', 3, 1, 2, '2015-08-11 12:54:13', '2015-09-22 22:48:07'),
(5, 'Стратегийн менежментийн зарчимууд', '3/lecture 2.mp4', '<p>Байгууллагын хөгжлийн бодит зүй тогтлыг хангахад чиглэгдсэн 10 зарчим</p>\r\n', 2, 0, 1, '2015-08-13 03:48:36', '2015-08-13 03:48:36'),
(6, 'Стратегийн төлөвлөлт', '3/lecture 3.mp4', '<p>Стратегийн төлөвлөлтийн үндсэн ойлголт, процесс, арга техник, систем</p>\r\n', 3, 0, 1, '2015-08-13 03:49:17', '2015-08-13 03:49:17'),
(7, 'Стратегийн зорилго', '3/lecture 4.mp4', '<p>Стратегийн зорилгын бүрдүүлэгчид, зоилго тодорхойлох аргууд</p>\r\n', 4, 0, 1, '2015-08-13 03:49:37', '2015-08-13 03:49:37'),
(8, 'Байгууллагын гадаад орчны  шинжилгээ ', '3/lecture 5.mp4', '<p>Байгууллагын шууд ба шууд бус орчин болон Портерийн салбарын бүтцийн шинжилгээ</p>\r\n', 5, 0, 1, '2015-08-13 03:49:56', '2015-08-13 03:49:56'),
(9, 'Байгууллагын дотоод орчны шинжилгээ ', '3/lecture 6.mp4', '<p>Байгууллагын потенциалын шинжилгээ, Портерийн нэмэгдсэн өртгийн сүлжээний дагуу болон стратегийн менежментийн хандлагаар шинжлэх аргууд</p>\r\n', 6, 0, 1, '2015-08-13 03:50:24', '2015-08-13 03:50:24'),
(10, 'SWOT шинжилгээний арга ', '3/lecture 7.mp4', '<p>SWOT үзүүлэлтүүд, боломж эрсдэлийн болон SWOT матрица</p>\r\n', 7, 0, 1, '2015-08-13 03:50:50', '2015-08-13 03:50:50'),
(11, 'Байгууллагын портфель шинжилгээ ', '3/lecture 8.mp4', '<p>Бизнесийн портфель шинжилгээний үе шат, Стратегийн бизнесийн талбар, портфелийн хувилбарууд&nbsp;</p>\r\n', 8, 1, 1, '2015-08-13 03:51:11', '2015-09-22 22:34:10'),
(12, 'Стратегийн хувилбарууд, тэдгээрийн сонголт ', '3/lecture 9.mp4', '<p>Байгууллагын, бизнесийн, функциональ стратегиуд.</p>\r\n', 9, 0, 1, '2015-08-13 03:51:40', '2015-09-22 22:33:26'),
(13, 'Стратегийн хэрэгжүүлэлт ', '3/lecture 10.mp4', '<p>Стратегийн хэрэгжүүлэлтийн материаллаг, зохион байгуулалт, хүний нөөцийн үүргүүд</p>\r\n', 10, 0, 1, '2015-08-13 03:52:12', '2015-08-13 03:52:12'),
(14, 'Стратегийн хяналт', '3/lecture 11.mp4', '<p>Стратегийн хяналтын үндэс, стратегийн хяналтын систем, арга техник</p>\r\n', 11, 0, 1, '2015-08-13 03:52:32', '2015-08-13 03:52:32'),
(15, 'Байгууллагын мэдээллийн систем', '3/lecture 12.mp4', '<p>Стратегийн мэдээлэл, түүний менежмент&nbsp;</p>\r\n', 12, 0, 1, '2015-08-13 03:52:53', '2015-08-13 03:52:53'),
(16, 'Байгууллагын  соёл ', '3/lecture 13.mp4', '<p>Байгууллагын соёлын ангилал, бүтэц, оношилгоо</p>\r\n', 13, 0, 1, '2015-08-13 03:53:12', '2015-08-13 03:53:12'),
(17, 'Манлайлал ', '3/lecture 14.mp4', '<p>Манлайллын онолын хандлагууд</p>\r\n', 14, 0, 1, '2015-08-13 03:53:39', '2015-08-13 03:53:39'),
(18, 'Зохион байгуулалт', '3/lecture 15.mp4', '<p>Зохион байгуулт, түүний өөрчлөлтийн шалтгаан, суурь ба тусгай онолын хандлагууд, орчин зохион байгуулалтын загварууд&nbsp;</p>\r\n', 15, 0, 1, '2015-08-13 03:54:00', '2015-08-13 03:54:00'),
(19, 'Стратегийн менежментийн гүйцэтгэлийн чадавхи ', '3/lecture 16.mp4', '<p>Гүйцэтгэлийн чадавхийн талаарх ойлголт, технологи, гүйцэтгэлийн процесс, капитал, хүний нөөц</p>\r\n', 16, 0, 1, '2015-08-13 03:54:19', '2015-08-13 03:54:19'),
(20, 'Бие даалт 4 ', NULL, '<p>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 45-р талд заасан даалгавруудыг гүйцэтгэх(Онолын хүрээнд байхаас гадна бодит жишээн дээр ажиллах практик даалгаврууд байгааг анхаарах)</p>\r\n\r\n<p><br />\r\nБагшид илгээх бие даалт:<br />\r\nНаранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 45-р талд заасан 10-р практик даалгавар<br />\r\n&nbsp;</p>\r\n', 4, 1, 2, '2015-08-13 03:57:05', '2015-09-22 22:48:15'),
(21, 'Бие даалт 5', NULL, '<p>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 56-р талд заасан даалгавруудыг гүйцэтгэх(Онолын хүрээнд байхаас гадна бодит жишээн дээр ажиллах практик даалгаврууд байгааг анхаарах)</p>\r\n\r\n<p><br />\r\nБагшид илгээх бие даалт:<br />\r\nНаранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 56-р талд заасан 5, 7, 9, 12-р практик даалгаврууд<br />\r\n&nbsp;</p>\r\n', 5, 1, 2, '2015-08-13 03:57:27', '2016-04-11 01:55:15'),
(22, 'Бие даалт 6', NULL, '<p>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 67-р талд заасан даалгавруудыг гүйцэтгэх(Онолын хүрээнд байхаас гадна бодит жишээн дээр ажиллах практик даалгаврууд байгааг анхаарах)</p>\r\n\r\n<p><br />\r\nБагшид илгээх бие даалт:<br />\r\nНаранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 67-р талд заасан 3-5, 8-р практик даалгаврууд<br />\r\n&nbsp;</p>\r\n', 6, 1, 2, '2015-08-13 03:57:49', '2016-04-11 01:54:54'),
(23, 'Бие даалт 7', NULL, '<p>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 72-р талд заасан даалгавруудыг гүйцэтгэх(Онолын хүрээнд байхаас гадна бодит жишээн дээр ажиллах практик даалгаврууд байгааг анхаарах)</p>\r\n\r\n<p><br />\r\nБагшид илгээх бие даалт:<br />\r\nНаранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 72-р талд заасан 4-6-р практик даалгаврууд<br />\r\n&nbsp;</p>\r\n', 7, 1, 2, '2015-08-13 03:58:09', '2016-04-11 01:54:45'),
(24, 'Бие даалт 8', NULL, '<p>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 93-р талд заасан даалгавруудыг гүйцэтгэх(Онолын хүрээнд байхаас гадна бодит жишээн дээр ажиллах практик даалгаврууд байгааг анхаарах)</p>\r\n\r\n<p>Багшид илгээх бие даалт:<br />\r\nНаранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 93-р талд заасан 11,12,17-р практик даалгаврууд<br />\r\n&nbsp;</p>\r\n', 8, 1, 2, '2015-08-13 03:58:45', '2016-04-11 01:54:37'),
(25, 'Бие даалт 9', NULL, '<p>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 103-р талд заасан даалгавруудыг гүйцэтгэх(Онолын хүрээнд байхаас гадна бодит жишээн дээр ажиллах практик даалгаврууд байгааг анхаарах)</p>\r\n\r\n<p><br />\r\nБагшид илгээх бие даалт:<br />\r\nНаранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 103-р талд заасан 8,9-р практик даалгаврууд<br />\r\n&nbsp;</p>\r\n', 9, 1, 2, '2015-08-13 04:03:37', '2016-04-11 01:55:58'),
(26, 'Бие даалт 10', NULL, '<p>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 116-р талд заасан даалгавруудыг гүйцэтгэх(Онолын хүрээнд байхаас гадна бодит жишээн дээр ажиллах практик даалгаврууд байгааг анхаарах)</p>\r\n\r\n<p>Багшид илгээх бие даалт:<br />\r\nНаранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 116-р талд заасан 3-р практик даалгавар<br />\r\n&nbsp;</p>\r\n', 10, 1, 2, '2015-08-13 04:04:06', '2016-04-11 01:56:04'),
(27, 'Бие даалт 11', NULL, '<p>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 116-р талд заасан даалгавруудыг гүйцэтгэх(даалгаврууд нь онолын хүрээнд байхаас гадна бодит жишээн дээр ажиллах практик даалгаврууд байгааг анхаарах)</p>\r\n\r\n<p><br />\r\nБагшид илгээх бие даалт:<br />\r\nХолбогдох материалуудыг судлан сэдвийн хүрээнд товчлол хийх<br />\r\n&nbsp;</p>\r\n', 11, 1, 2, '2015-08-13 04:04:35', '2016-04-11 01:56:10'),
(28, 'Бие даалт 12', NULL, '<p>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 125-р талд заасан даалгавруудыг гүйцэтгэх(Онолын хүрээнд байхаас гадна бодит жишээн дээр ажиллах практик даалгаврууд байгааг анхаарах)</p>\r\n\r\n<p><br />\r\nБагшид илгээх бие даалт:<br />\r\nХолбогдох материалуудыг судлан сэдвийн хүрээнд товчлол хийх<br />\r\n&nbsp;</p>\r\n', 12, 1, 2, '2015-08-13 04:05:02', '2015-09-21 05:00:45'),
(29, 'Бие даалт 13', NULL, '<p>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 134-р талд заасан даалгавруудыг гүйцэтгэх(Онолын хүрээнд байхаас гадна бодит жишээн дээр ажиллах практик даалгаврууд байгааг анхаарах)</p>\r\n\r\n<p><br />\r\nБагшид илгээх бие даалт:<br />\r\nНаранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 134-р талд заасан 8(22)-р практик даалгавар<br />\r\n&nbsp;</p>\r\n', 13, 1, 2, '2015-08-13 04:05:21', '2016-04-11 01:56:20'),
(30, 'Бие даалт 14', NULL, '<p>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 147-р талд заасан даалгавруудыг гүйцэтгэх(Онолын хүрээнд байхаас гадна бодит жишээн дээр ажиллах практик даалгаврууд байгааг анхаарах)</p>\r\n\r\n<p><br />\r\nБагшид илгээх бие даалт:<br />\r\nНаранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 147-р талд заасан 8,10,12,14-р практик даалгаврууд<br />\r\n&nbsp;</p>\r\n', 14, 1, 2, '2015-08-13 04:05:44', '2016-04-11 01:56:25'),
(31, 'Бие даалт 15', NULL, '<p>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 155-р талд заасан даалгавруудыг гүйцэтгэх(Онолын хүрээнд байхаас гадна бодит жишээн дээр ажиллах практик даалгаврууд байгааг анхаарах)</p>\r\n\r\n<p><br />\r\nБагшид илгээх бие даалт:<br />\r\nНаранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 155-р талд заасан 7-р практик даалгавар ба холбогдох материалуудыг ашиглан сэдвийн хүрээнд эссе бичих<br />\r\n&nbsp;</p>\r\n', 15, 1, 2, '2015-08-13 04:06:03', '2016-04-11 01:56:32'),
(32, 'Бие даалт 16', NULL, '<p>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015 номын 164-р талд заасан даалгавруудыг гүйцэтгэх(Онолын хүрээнд байхаас гадна бодит жишээн дээр ажиллах практик даалгаврууд байгааг анхаарах)</p>\r\n\r\n<p><br />\r\nБагшид илгээх бие даалт:<br />\r\nТодорхойн бизнесийн байгууллагын жишээн дээр стратегитэй нь уялдуулан гүйцэтгэлийн чадавхийг бүрдүүлэгч элементүүдийг сайжруулах, боловсронгуй болгох талаар эссе бичих<br />\r\n&nbsp;</p>\r\n', 16, 1, 2, '2015-08-13 04:06:22', '2016-04-11 01:56:38'),
(33, 'Ашиглах материал', NULL, '<ol>\r\n	<li>Ansoff, H.I., Mc.Donnell Strategic management.New York, 1990</li>\r\n	<li>Bea, Haas, Strategisches Management. Stuttgart. Deutschland, 2012</li>\r\n	<li>Виханский О.С., Стратегичекое управление. Москва, 2005</li>\r\n	<li>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015</li>\r\n	<li>Thomson, Strickland, Strategic Management. McGaw-Hill, Boston, 2007</li>\r\n	<li>Фатхутдинов Р.А. Стратегический менеджмент: Учебник для вузов. - М.:&nbsp; ИнтелСинтез, 1999</li>\r\n	<li><a href=\"https://www.bookboon.com/en/strategicmanagement-ebook\">https://www.bookboon.com/en/strategicmanagement-ebook</a></li>\r\n	<li><a href=\"https://www.free-ebooks.net/ebook/strategic-management\">https://www.free-ebooks.net/ebook/strategic-management</a></li>\r\n	<li><a href=\"http://www.cyberleninka.ru\">www.cyberleninka.ru</a></li>\r\n	<li><a href=\"http://www.aup.ru\">www.aup.ru</a> &rsaquo; Библиотека &rsaquo; Книги &rsaquo; Менеджмент &nbsp;</li>\r\n	<li><a href=\"http://www.studyspace.ru\">www.studyspace.ru</a></li>\r\n	<li>Бусад холбогдох нэмэлт материалууд<br />\r\n	&nbsp;</li>\r\n</ol>\r\n', 1, 0, 3, '2015-08-13 04:08:57', '2016-03-13 00:30:09'),
(34, 'Ашиглах материал', NULL, '<ol>\r\n	<li>Ansoff, H.I., Mc.Donnell Strategic management.New York, 1990</li>\r\n	<li>Bea, Haas, Strategisches Management. Stuttgart. Deutschland, 2012</li>\r\n	<li>Виханский О.С., Стратегичекое управление. Москва, 2005</li>\r\n	<li>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015</li>\r\n	<li>Thomson, Strickland, Strategic Management. McGaw-Hill, Boston, 2007</li>\r\n	<li>Фатхутдинов Р.А. Стратегический менеджмент: Учебник для вузов. - М.:&nbsp; ИнтелСинтез, 1999</li>\r\n	<li><a href=\"https://www.bookboon.com/en/strategicmanagement-ebook\">https://www.bookboon.com/en/strategicmanagement-ebook</a></li>\r\n	<li><a href=\"https://www.free-ebooks.net/ebook/strategic-management\">https://www.free-ebooks.net/ebook/strategic-management</a></li>\r\n	<li><a href=\"http://www.cyberleninka.ru\">www.cyberleninka.ru</a></li>\r\n	<li><a href=\"http://www.aup.ru\">www.aup.ru</a> &rsaquo; Библиотека &rsaquo; Книги &rsaquo; Менеджмент &nbsp;</li>\r\n	<li><a href=\"http://www.studyspace.ru\">www.studyspace.ru</a></li>\r\n	<li>Бусад холбогдох нэмэлт материалууд</li>\r\n</ol>\r\n', 2, 0, 3, '2016-03-13 00:30:35', '2016-03-13 00:30:35'),
(35, 'Ашиглах материал', NULL, '<ol>\r\n	<li>Ansoff, H.I., Mc.Donnell Strategic management.New York, 1990</li>\r\n	<li>Bea, Haas, Strategisches Management. Stuttgart. Deutschland, 2012</li>\r\n	<li>Виханский О.С., Стратегичекое управление. Москва, 2005</li>\r\n	<li>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015</li>\r\n	<li>Thomson, Strickland, Strategic Management. McGaw-Hill, Boston, 2007</li>\r\n	<li>Фатхутдинов Р.А. Стратегический менеджмент: Учебник для вузов. - М.:&nbsp; ИнтелСинтез, 1999</li>\r\n	<li><a href=\"https://www.bookboon.com/en/strategicmanagement-ebook\">https://www.bookboon.com/en/strategicmanagement-ebook</a></li>\r\n	<li><a href=\"https://www.free-ebooks.net/ebook/strategic-management\">https://www.free-ebooks.net/ebook/strategic-management</a></li>\r\n	<li><a href=\"http://www.cyberleninka.ru\">www.cyberleninka.ru</a></li>\r\n	<li><a href=\"http://www.aup.ru\">www.aup.ru</a> &rsaquo; Библиотека &rsaquo; Книги &rsaquo; Менеджмент &nbsp;</li>\r\n	<li><a href=\"http://www.studyspace.ru\">www.studyspace.ru</a></li>\r\n	<li>Бусад холбогдох нэмэлт материалууд</li>\r\n</ol>\r\n', 3, 0, 3, '2016-03-13 00:30:46', '2016-03-13 00:30:54'),
(36, 'Ашиглах материал', NULL, '<ol>\r\n	<li>Ansoff, H.I., Mc.Donnell Strategic management.New York, 1990</li>\r\n	<li>Bea, Haas, Strategisches Management. Stuttgart. Deutschland, 2012</li>\r\n	<li>Виханский О.С., Стратегичекое управление. Москва, 2005</li>\r\n	<li>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015</li>\r\n	<li>Thomson, Strickland, Strategic Management. McGaw-Hill, Boston, 2007</li>\r\n	<li>Фатхутдинов Р.А. Стратегический менеджмент: Учебник для вузов. - М.:&nbsp; ИнтелСинтез, 1999</li>\r\n	<li><a href=\"https://www.bookboon.com/en/strategicmanagement-ebook\">https://www.bookboon.com/en/strategicmanagement-ebook</a></li>\r\n	<li><a href=\"https://www.free-ebooks.net/ebook/strategic-management\">https://www.free-ebooks.net/ebook/strategic-management</a></li>\r\n	<li><a href=\"http://www.cyberleninka.ru\">www.cyberleninka.ru</a></li>\r\n	<li><a href=\"http://www.aup.ru\">www.aup.ru</a> &rsaquo; Библиотека &rsaquo; Книги &rsaquo; Менеджмент &nbsp;</li>\r\n	<li><a href=\"http://www.studyspace.ru\">www.studyspace.ru</a></li>\r\n	<li>Бусад холбогдох нэмэлт материалууд</li>\r\n</ol>\r\n', 4, 0, 3, '2016-03-13 00:31:05', '2016-03-13 00:31:05'),
(37, 'Ашиглах материал', NULL, '<ol>\r\n	<li>Ansoff, H.I., Mc.Donnell Strategic management.New York, 1990</li>\r\n	<li>Bea, Haas, Strategisches Management. Stuttgart. Deutschland, 2012</li>\r\n	<li>Виханский О.С., Стратегичекое управление. Москва, 2005</li>\r\n	<li>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015</li>\r\n	<li>Thomson, Strickland, Strategic Management. McGaw-Hill, Boston, 2007</li>\r\n	<li>Фатхутдинов Р.А. Стратегический менеджмент: Учебник для вузов. - М.:&nbsp; ИнтелСинтез, 1999</li>\r\n	<li><a href=\"https://www.bookboon.com/en/strategicmanagement-ebook\">https://www.bookboon.com/en/strategicmanagement-ebook</a></li>\r\n	<li><a href=\"https://www.free-ebooks.net/ebook/strategic-management\">https://www.free-ebooks.net/ebook/strategic-management</a></li>\r\n	<li><a href=\"http://www.cyberleninka.ru\">www.cyberleninka.ru</a></li>\r\n	<li><a href=\"http://www.aup.ru\">www.aup.ru</a> &rsaquo; Библиотека &rsaquo; Книги &rsaquo; Менеджмент &nbsp;</li>\r\n	<li><a href=\"http://www.studyspace.ru\">www.studyspace.ru</a></li>\r\n	<li>Бусад холбогдох нэмэлт материалууд</li>\r\n</ol>\r\n', 5, 0, 3, '2016-03-13 00:31:20', '2016-03-13 00:31:20'),
(38, 'Ашиглах материал', NULL, '<ol>\r\n	<li>Ansoff, H.I., Mc.Donnell Strategic management.New York, 1990</li>\r\n	<li>Bea, Haas, Strategisches Management. Stuttgart. Deutschland, 2012</li>\r\n	<li>Виханский О.С., Стратегичекое управление. Москва, 2005</li>\r\n	<li>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015</li>\r\n	<li>Thomson, Strickland, Strategic Management. McGaw-Hill, Boston, 2007</li>\r\n	<li>Фатхутдинов Р.А. Стратегический менеджмент: Учебник для вузов. - М.:&nbsp; ИнтелСинтез, 1999</li>\r\n	<li><a href=\"https://www.bookboon.com/en/strategicmanagement-ebook\">https://www.bookboon.com/en/strategicmanagement-ebook</a></li>\r\n	<li><a href=\"https://www.free-ebooks.net/ebook/strategic-management\">https://www.free-ebooks.net/ebook/strategic-management</a></li>\r\n	<li><a href=\"http://www.cyberleninka.ru\">www.cyberleninka.ru</a></li>\r\n	<li><a href=\"http://www.aup.ru\">www.aup.ru</a> &rsaquo; Библиотека &rsaquo; Книги &rsaquo; Менеджмент &nbsp;</li>\r\n	<li><a href=\"http://www.studyspace.ru\">www.studyspace.ru</a></li>\r\n	<li>Бусад холбогдох нэмэлт материалууд</li>\r\n</ol>\r\n', 6, 0, 3, '2016-03-13 00:31:32', '2016-03-13 00:31:32'),
(39, 'Ашиглах материал', NULL, '<ol>\r\n	<li>Ansoff, H.I., Mc.Donnell Strategic management.New York, 1990</li>\r\n	<li>Bea, Haas, Strategisches Management. Stuttgart. Deutschland, 2012</li>\r\n	<li>Виханский О.С., Стратегичекое управление. Москва, 2005</li>\r\n	<li>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015</li>\r\n	<li>Thomson, Strickland, Strategic Management. McGaw-Hill, Boston, 2007</li>\r\n	<li>Фатхутдинов Р.А. Стратегический менеджмент: Учебник для вузов. - М.:&nbsp; ИнтелСинтез, 1999</li>\r\n	<li><a href=\"https://www.bookboon.com/en/strategicmanagement-ebook\">https://www.bookboon.com/en/strategicmanagement-ebook</a></li>\r\n	<li><a href=\"https://www.free-ebooks.net/ebook/strategic-management\">https://www.free-ebooks.net/ebook/strategic-management</a></li>\r\n	<li><a href=\"http://www.cyberleninka.ru\">www.cyberleninka.ru</a></li>\r\n	<li><a href=\"http://www.aup.ru\">www.aup.ru</a> &rsaquo; Библиотека &rsaquo; Книги &rsaquo; Менеджмент &nbsp;</li>\r\n	<li><a href=\"http://www.studyspace.ru\">www.studyspace.ru</a></li>\r\n	<li>Бусад холбогдох нэмэлт материалууд</li>\r\n</ol>\r\n', 7, 0, 3, '2016-03-13 00:31:45', '2016-03-13 00:31:45'),
(40, 'Ашиглах материал', NULL, '<ol>\r\n	<li>Ansoff, H.I., Mc.Donnell Strategic management.New York, 1990</li>\r\n	<li>Bea, Haas, Strategisches Management. Stuttgart. Deutschland, 2012</li>\r\n	<li>Виханский О.С., Стратегичекое управление. Москва, 2005</li>\r\n	<li>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015</li>\r\n	<li>Thomson, Strickland, Strategic Management. McGaw-Hill, Boston, 2007</li>\r\n	<li>Фатхутдинов Р.А. Стратегический менеджмент: Учебник для вузов. - М.:&nbsp; ИнтелСинтез, 1999</li>\r\n	<li><a href=\"https://www.bookboon.com/en/strategicmanagement-ebook\">https://www.bookboon.com/en/strategicmanagement-ebook</a></li>\r\n	<li><a href=\"https://www.free-ebooks.net/ebook/strategic-management\">https://www.free-ebooks.net/ebook/strategic-management</a></li>\r\n	<li><a href=\"http://www.cyberleninka.ru\">www.cyberleninka.ru</a></li>\r\n	<li><a href=\"http://www.aup.ru\">www.aup.ru</a> &rsaquo; Библиотека &rsaquo; Книги &rsaquo; Менеджмент &nbsp;</li>\r\n	<li><a href=\"http://www.studyspace.ru\">www.studyspace.ru</a></li>\r\n	<li>Бусад холбогдох нэмэлт материалууд</li>\r\n</ol>\r\n', 8, 0, 3, '2016-03-13 00:31:57', '2016-03-13 00:31:57'),
(41, 'Ашиглах материал', NULL, '<ol>\r\n	<li>Ansoff, H.I., Mc.Donnell Strategic management.New York, 1990</li>\r\n	<li>Bea, Haas, Strategisches Management. Stuttgart. Deutschland, 2012</li>\r\n	<li>Виханский О.С., Стратегичекое управление. Москва, 2005</li>\r\n	<li>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015</li>\r\n	<li>Thomson, Strickland, Strategic Management. McGaw-Hill, Boston, 2007</li>\r\n	<li>Фатхутдинов Р.А. Стратегический менеджмент: Учебник для вузов. - М.:&nbsp; ИнтелСинтез, 1999</li>\r\n	<li><a href=\"https://www.bookboon.com/en/strategicmanagement-ebook\">https://www.bookboon.com/en/strategicmanagement-ebook</a></li>\r\n	<li><a href=\"https://www.free-ebooks.net/ebook/strategic-management\">https://www.free-ebooks.net/ebook/strategic-management</a></li>\r\n	<li><a href=\"http://www.cyberleninka.ru\">www.cyberleninka.ru</a></li>\r\n	<li><a href=\"http://www.aup.ru\">www.aup.ru</a> &rsaquo; Библиотека &rsaquo; Книги &rsaquo; Менеджмент &nbsp;</li>\r\n	<li><a href=\"http://www.studyspace.ru\">www.studyspace.ru</a></li>\r\n	<li>Бусад холбогдох нэмэлт материалууд</li>\r\n</ol>\r\n', 9, 0, 3, '2016-03-13 00:32:09', '2016-03-13 00:32:09'),
(42, 'Ашиглах материал', NULL, '<ol>\r\n	<li>Ansoff, H.I., Mc.Donnell Strategic management.New York, 1990</li>\r\n	<li>Bea, Haas, Strategisches Management. Stuttgart. Deutschland, 2012</li>\r\n	<li>Виханский О.С., Стратегичекое управление. Москва, 2005</li>\r\n	<li>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015</li>\r\n	<li>Thomson, Strickland, Strategic Management. McGaw-Hill, Boston, 2007</li>\r\n	<li>Фатхутдинов Р.А. Стратегический менеджмент: Учебник для вузов. - М.:&nbsp; ИнтелСинтез, 1999</li>\r\n	<li><a href=\"https://www.bookboon.com/en/strategicmanagement-ebook\">https://www.bookboon.com/en/strategicmanagement-ebook</a></li>\r\n	<li><a href=\"https://www.free-ebooks.net/ebook/strategic-management\">https://www.free-ebooks.net/ebook/strategic-management</a></li>\r\n	<li><a href=\"http://www.cyberleninka.ru\">www.cyberleninka.ru</a></li>\r\n	<li><a href=\"http://www.aup.ru\">www.aup.ru</a> &rsaquo; Библиотека &rsaquo; Книги &rsaquo; Менеджмент &nbsp;</li>\r\n	<li><a href=\"http://www.studyspace.ru\">www.studyspace.ru</a></li>\r\n	<li>Бусад холбогдох нэмэлт материалууд</li>\r\n</ol>\r\n', 10, 0, 3, '2016-03-13 00:32:22', '2016-03-13 00:32:22'),
(43, 'Ашиглах материал', NULL, '<ol>\r\n	<li>Ansoff, H.I., Mc.Donnell Strategic management.New York, 1990</li>\r\n	<li>Bea, Haas, Strategisches Management. Stuttgart. Deutschland, 2012</li>\r\n	<li>Виханский О.С., Стратегичекое управление. Москва, 2005</li>\r\n	<li>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015</li>\r\n	<li>Thomson, Strickland, Strategic Management. McGaw-Hill, Boston, 2007</li>\r\n	<li>Фатхутдинов Р.А. Стратегический менеджмент: Учебник для вузов. - М.:&nbsp; ИнтелСинтез, 1999</li>\r\n	<li><a href=\"https://www.bookboon.com/en/strategicmanagement-ebook\">https://www.bookboon.com/en/strategicmanagement-ebook</a></li>\r\n	<li><a href=\"https://www.free-ebooks.net/ebook/strategic-management\">https://www.free-ebooks.net/ebook/strategic-management</a></li>\r\n	<li><a href=\"http://www.cyberleninka.ru\">www.cyberleninka.ru</a></li>\r\n	<li><a href=\"http://www.aup.ru\">www.aup.ru</a> &rsaquo; Библиотека &rsaquo; Книги &rsaquo; Менеджмент &nbsp;</li>\r\n	<li><a href=\"http://www.studyspace.ru\">www.studyspace.ru</a></li>\r\n	<li>Бусад холбогдох нэмэлт материалууд</li>\r\n</ol>\r\n', 11, 0, 3, '2016-03-13 00:32:33', '2016-03-13 00:32:33'),
(44, 'Ашиглах материал', NULL, '<ol>\r\n	<li>Ansoff, H.I., Mc.Donnell Strategic management.New York, 1990</li>\r\n	<li>Bea, Haas, Strategisches Management. Stuttgart. Deutschland, 2012</li>\r\n	<li>Виханский О.С., Стратегичекое управление. Москва, 2005</li>\r\n	<li>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015</li>\r\n	<li>Thomson, Strickland, Strategic Management. McGaw-Hill, Boston, 2007</li>\r\n	<li>Фатхутдинов Р.А. Стратегический менеджмент: Учебник для вузов. - М.:&nbsp; ИнтелСинтез, 1999</li>\r\n	<li><a href=\"https://www.bookboon.com/en/strategicmanagement-ebook\">https://www.bookboon.com/en/strategicmanagement-ebook</a></li>\r\n	<li><a href=\"https://www.free-ebooks.net/ebook/strategic-management\">https://www.free-ebooks.net/ebook/strategic-management</a></li>\r\n	<li><a href=\"http://www.cyberleninka.ru\">www.cyberleninka.ru</a></li>\r\n	<li><a href=\"http://www.aup.ru\">www.aup.ru</a> &rsaquo; Библиотека &rsaquo; Книги &rsaquo; Менеджмент &nbsp;</li>\r\n	<li><a href=\"http://www.studyspace.ru\">www.studyspace.ru</a></li>\r\n	<li>Бусад холбогдох нэмэлт материалууд</li>\r\n</ol>\r\n', 12, 0, 3, '2016-03-13 00:32:43', '2016-03-13 00:32:43'),
(45, 'Ашиглах материал', NULL, '<ol>\r\n	<li>Ansoff, H.I., Mc.Donnell Strategic management.New York, 1990</li>\r\n	<li>Bea, Haas, Strategisches Management. Stuttgart. Deutschland, 2012</li>\r\n	<li>Виханский О.С., Стратегичекое управление. Москва, 2005</li>\r\n	<li>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015</li>\r\n	<li>Thomson, Strickland, Strategic Management. McGaw-Hill, Boston, 2007</li>\r\n	<li>Фатхутдинов Р.А. Стратегический менеджмент: Учебник для вузов. - М.:&nbsp; ИнтелСинтез, 1999</li>\r\n	<li><a href=\"https://www.bookboon.com/en/strategicmanagement-ebook\">https://www.bookboon.com/en/strategicmanagement-ebook</a></li>\r\n	<li><a href=\"https://www.free-ebooks.net/ebook/strategic-management\">https://www.free-ebooks.net/ebook/strategic-management</a></li>\r\n	<li><a href=\"http://www.cyberleninka.ru\">www.cyberleninka.ru</a></li>\r\n	<li><a href=\"http://www.aup.ru\">www.aup.ru</a> &rsaquo; Библиотека &rsaquo; Книги &rsaquo; Менеджмент &nbsp;</li>\r\n	<li><a href=\"http://www.studyspace.ru\">www.studyspace.ru</a></li>\r\n	<li>Бусад холбогдох нэмэлт материалууд</li>\r\n</ol>\r\n', 13, 0, 3, '2016-03-13 00:32:53', '2016-03-13 00:32:53'),
(46, 'Ашиглах материал', NULL, '<ol>\r\n	<li>Ansoff, H.I., Mc.Donnell Strategic management.New York, 1990</li>\r\n	<li>Bea, Haas, Strategisches Management. Stuttgart. Deutschland, 2012</li>\r\n	<li>Виханский О.С., Стратегичекое управление. Москва, 2005</li>\r\n	<li>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015</li>\r\n	<li>Thomson, Strickland, Strategic Management. McGaw-Hill, Boston, 2007</li>\r\n	<li>Фатхутдинов Р.А. Стратегический менеджмент: Учебник для вузов. - М.:&nbsp; ИнтелСинтез, 1999</li>\r\n	<li><a href=\"https://www.bookboon.com/en/strategicmanagement-ebook\">https://www.bookboon.com/en/strategicmanagement-ebook</a></li>\r\n	<li><a href=\"https://www.free-ebooks.net/ebook/strategic-management\">https://www.free-ebooks.net/ebook/strategic-management</a></li>\r\n	<li><a href=\"http://www.cyberleninka.ru\">www.cyberleninka.ru</a></li>\r\n	<li><a href=\"http://www.aup.ru\">www.aup.ru</a> &rsaquo; Библиотека &rsaquo; Книги &rsaquo; Менеджмент &nbsp;</li>\r\n	<li><a href=\"http://www.studyspace.ru\">www.studyspace.ru</a></li>\r\n	<li>Бусад холбогдох нэмэлт материалууд</li>\r\n</ol>\r\n', 14, 0, 3, '2016-03-13 00:33:03', '2016-03-13 00:33:03'),
(47, 'Ашиглах материал', NULL, '<ol>\r\n	<li>Ansoff, H.I., Mc.Donnell Strategic management.New York, 1990</li>\r\n	<li>Bea, Haas, Strategisches Management. Stuttgart. Deutschland, 2012</li>\r\n	<li>Виханский О.С., Стратегичекое управление. Москва, 2005</li>\r\n	<li>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015</li>\r\n	<li>Thomson, Strickland, Strategic Management. McGaw-Hill, Boston, 2007</li>\r\n	<li>Фатхутдинов Р.А. Стратегический менеджмент: Учебник для вузов. - М.:&nbsp; ИнтелСинтез, 1999</li>\r\n	<li><a href=\"https://www.bookboon.com/en/strategicmanagement-ebook\">https://www.bookboon.com/en/strategicmanagement-ebook</a></li>\r\n	<li><a href=\"https://www.free-ebooks.net/ebook/strategic-management\">https://www.free-ebooks.net/ebook/strategic-management</a></li>\r\n	<li><a href=\"http://www.cyberleninka.ru\">www.cyberleninka.ru</a></li>\r\n	<li><a href=\"http://www.aup.ru\">www.aup.ru</a> &rsaquo; Библиотека &rsaquo; Книги &rsaquo; Менеджмент &nbsp;</li>\r\n	<li><a href=\"http://www.studyspace.ru\">www.studyspace.ru</a></li>\r\n	<li>Бусад холбогдох нэмэлт материалууд</li>\r\n</ol>\r\n', 15, 0, 3, '2016-03-13 00:33:14', '2016-03-13 00:33:14'),
(48, 'Ашиглах материал', NULL, '<ol>\r\n	<li>Ansoff, H.I., Mc.Donnell Strategic management.New York, 1990</li>\r\n	<li>Bea, Haas, Strategisches Management. Stuttgart. Deutschland, 2012</li>\r\n	<li>Виханский О.С., Стратегичекое управление. Москва, 2005</li>\r\n	<li>Наранцэцэг Л., Стратегийн менежмент. Орхон, 2015</li>\r\n	<li>Thomson, Strickland, Strategic Management. McGaw-Hill, Boston, 2007</li>\r\n	<li>Фатхутдинов Р.А. Стратегический менеджмент: Учебник для вузов. - М.:&nbsp; ИнтелСинтез, 1999</li>\r\n	<li><a href=\"https://www.bookboon.com/en/strategicmanagement-ebook\">https://www.bookboon.com/en/strategicmanagement-ebook</a></li>\r\n	<li><a href=\"https://www.free-ebooks.net/ebook/strategic-management\">https://www.free-ebooks.net/ebook/strategic-management</a></li>\r\n	<li><a href=\"http://www.cyberleninka.ru\">www.cyberleninka.ru</a></li>\r\n	<li><a href=\"http://www.aup.ru\">www.aup.ru</a> &rsaquo; Библиотека &rsaquo; Книги &rsaquo; Менеджмент &nbsp;</li>\r\n	<li><a href=\"http://www.studyspace.ru\">www.studyspace.ru</a></li>\r\n	<li>Бусад холбогдох нэмэлт материалууд</li>\r\n</ol>\r\n', 16, 0, 3, '2016-03-13 00:33:26', '2016-03-13 00:33:26');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(10) UNSIGNED NOT NULL,
  `lesson_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `lesson_id`, `student_id`, `confirmed`, `created_at`, `updated_at`) VALUES
(11, 1, 3, 0, '2015-10-30 13:52:08', '2016-03-01 00:13:10'),
(15, 1, 7, 0, '2016-02-25 04:19:56', '2016-06-08 09:12:27'),
(16, 1, 5, 0, '2016-02-26 05:16:25', '2016-06-08 09:13:39'),
(18, 1, 4, 0, '2016-02-26 10:28:04', '2016-06-08 09:13:16'),
(19, 1, 8, 0, '2016-02-26 12:23:54', '2016-06-08 09:12:34'),
(22, 1, 10, 0, '2016-02-27 13:01:54', '2016-06-08 09:13:19'),
(23, 1, 9, 0, '2016-02-28 11:53:03', '2016-06-08 09:13:31'),
(25, 1, 2, 0, '2016-02-29 00:15:30', '2016-06-08 09:12:11'),
(27, 1, 12, 0, '2016-02-29 07:45:29', '2016-06-08 09:13:59'),
(28, 1, 13, 0, '2016-02-29 07:46:22', '2016-06-08 09:13:43'),
(30, 1, 11, 0, '2016-03-02 05:37:41', '2016-06-08 09:15:58'),
(31, 1, 14, 0, '2016-03-02 10:34:20', '2016-06-08 09:13:14'),
(37, 1, 16, 0, '2016-03-03 10:08:45', '2016-06-08 09:13:11'),
(41, 1, 15, 0, '2016-03-03 14:24:33', '2016-06-08 09:13:29'),
(42, 1, 17, 0, '2016-03-03 14:37:58', '2016-06-08 09:12:50'),
(44, 1, 18, 0, '2016-03-04 02:26:13', '2016-06-08 09:12:47'),
(47, 1, 19, 0, '2016-03-04 11:52:01', '2016-06-08 09:12:25'),
(49, 1, 20, 0, '2016-03-05 09:13:42', '2016-06-08 09:13:51'),
(50, 1, 21, 0, '2016-03-05 09:59:38', '2016-06-08 09:13:37'),
(53, 1, 22, 0, '2016-03-06 08:46:51', '2016-06-08 09:12:39'),
(56, 1, 23, 0, '2016-03-06 10:38:50', '2016-06-08 09:13:22'),
(58, 1, 24, 0, '2016-03-06 10:47:52', '2016-06-08 09:12:30'),
(60, 1, 25, 0, '2016-03-06 10:59:45', '2016-06-08 09:14:11'),
(64, 1, 27, 0, '2016-03-06 11:07:26', '2016-06-08 09:12:15'),
(65, 1, 26, 0, '2016-03-06 11:09:53', '2016-06-08 09:12:54'),
(66, 1, 28, 0, '2016-03-06 13:31:00', '2016-06-08 09:12:19'),
(68, 1, 29, 0, '2016-03-06 15:26:05', '2016-06-08 09:14:01'),
(71, 1, 30, 0, '2016-03-06 15:57:58', '2016-06-08 09:12:58'),
(73, 1, 31, 0, '2016-03-07 04:04:32', '2016-06-08 09:13:07'),
(75, 1, 32, 0, '2016-03-09 08:36:42', '2016-06-08 09:13:57'),
(79, 1, 33, 0, '2016-03-10 08:08:09', '2016-06-08 09:12:32'),
(81, 1, 6, 0, '2016-03-10 11:10:32', '2016-06-08 09:12:42'),
(82, 1, 34, 0, '2016-03-10 11:56:19', '2016-06-08 09:12:44'),
(84, 1, 36, 0, '2016-03-11 14:15:00', '2016-06-08 09:14:04'),
(86, 1, 37, 0, '2016-03-15 05:45:24', '2016-06-08 09:14:08'),
(87, 1, 38, 0, '2016-03-16 07:30:34', '2016-06-08 09:13:03'),
(90, 1, 39, 0, '2016-03-28 06:17:33', '2016-06-08 09:13:35');

-- --------------------------------------------------------

--
-- Table structure for table `homeworks`
--

CREATE TABLE `homeworks` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `homeworks`
--

INSERT INTO `homeworks` (`id`, `text`, `file`, `content_id`, `student_id`, `created_at`, `updated_at`) VALUES
(15, 'gf gdfg df', '3/Стратегийн менежмент/Бие даалт 1/А_Гантогтох.docx', 2, 2, '2015-09-24 11:29:22', '2015-09-24 11:29:22'),
(16, 'kkk', '3/Стратегийн менежмент/Бие даалт 1/А_Гантогтох.doc', 2, 2, '2015-11-19 02:46:40', '2015-11-19 02:46:40'),
(17, 'D.FM15E523  санхүү менежмент 1Б анги', '3/Стратегийн менежмент/Бие даалт 1/Б_Цолмон.docx', 2, 5, '2016-03-05 09:21:54', '2016-03-05 09:21:54'),
(18, 'D.FM15E523  санхүү менежмент 1Б анги', '3/Стратегийн менежмент/Бие даалт 2/Б_Цолмон.docx', 3, 5, '2016-03-05 09:21:59', '2016-03-05 09:21:59'),
(19, 'Bagshaa 1r bie daalt Hunii Nootsin menejment 1b Bolorchimeg ', '3/Стратегийн менежмент/Бие даалт 1/P_Bolorchimeg.docx', 2, 17, '2016-03-05 11:34:25', '2016-03-05 11:34:25'),
(20, 'SAIN BNUU BAGSHAA 2-r biy daalt ', '3/Стратегийн менежмент/Бие даалт 2/P_Bolorchimeg.docx', 3, 17, '2016-03-05 11:37:18', '2016-03-05 11:37:18'),
(21, 'bie daalt 1 ', '3/Стратегийн менежмент/Бие даалт 1/G_Khulan.docx', 2, 9, '2016-03-06 06:04:20', '2016-03-06 06:04:20'),
(22, 'hunii nuuts 2 G. Khulan', '3/Стратегийн менежмент/Бие даалт 2/G_Khulan.docx', 3, 9, '2016-03-06 06:07:29', '2016-03-06 06:07:29'),
(23, 'Сайн байна уу. D.FM15E517 Г.Ичинхорол-с бие даалт-1 илгээлээ. \r\nХолбоо барих утас: 94000779', '3/Стратегийн менежмент/Бие даалт 1/Г_Ичинхорол.docx', 2, 20, '2016-03-06 11:07:52', '2016-03-06 11:07:52'),
(24, 'Сайн байна уу. D.FM15E517 Г.Ичинхорол-с бие даалт-2 илгээлээ. \r\nХолбоо барих утас: 94000779', '3/Стратегийн менежмент/Бие даалт 2/Г_Ичинхорол.docx', 3, 20, '2016-03-06 13:03:10', '2016-03-06 13:03:10'),
(25, 'Сайн байна уу. D.FM15E517 Г.Ичинхорол-с бие даалт-1 илгээлээ. \r\nХолбоо барих утас: 94000779', '3/Стратегийн менежмент/Бие даалт 1/Г_Ичинхорол.docx', 2, 20, '2016-03-06 13:04:52', '2016-03-06 13:04:52'),
(26, 'Сайн байна уу. D.FM15E517 Г.Ичинхорол-с бие даалт-1 илгээлээ. \r\nХолбоо барих утас: 94000779', '3/Стратегийн менежмент/Бие даалт 2/Г_Ичинхорол.docx', 3, 20, '2016-03-06 13:05:06', '2016-03-06 13:05:06'),
(27, 'Сайн байна уу. D.FM15E517 Г.Ичинхорол-с бие даалт-2 илгээлээ. \r\nХолбоо барих утас: 94000779', '3/Стратегийн менежмент/Бие даалт 2/Г_Ичинхорол.docx', 3, 20, '2016-03-06 13:05:23', '2016-03-06 13:05:23'),
(28, 'b1', '3/Стратегийн менежмент/Бие даалт 1/Ч_Мөнхцэцэг.docx', 2, 13, '2016-03-06 13:29:52', '2016-03-06 13:29:52'),
(29, 'b2', '3/Стратегийн менежмент/Бие даалт 2/Ч_Мөнхцэцэг.docx', 3, 13, '2016-03-06 14:11:06', '2016-03-06 14:11:06'),
(30, 'Gmail хаягаар бүртгүүлсэн байсан боловч нэвтэрч орж болохгүй байхаар нь yahoo хаягаараа бүртгүүлж орох эрхтэй болохдоо хугацаа алдсан.', '3/Стратегийн менежмент/Бие даалт 1/Б_Мөнхцэцэг.docx', 2, 29, '2016-03-07 06:51:47', '2016-03-07 06:51:47'),
(31, 'Gmail хаягаараа бүртгүүлсэн байсан боловч нэвтэрч болохгүй байсаар хугацаа алдчихлаа. ', '3/Стратегийн менежмент/Бие даалт 2/Б_Мөнхцэцэг.docx', 3, 29, '2016-03-07 06:53:03', '2016-03-07 06:53:03'),
(32, 'D.PM15E506 M.Otgon Erdene', '3/Стратегийн менежмент/Бие даалт 1/M_OtgonErdene.docx', 2, 25, '2016-03-07 08:50:53', '2016-03-07 08:50:53'),
(33, 'bie daalt 3 hvnii noociin 2 G.Khulangaas ilgeelee.', '3/Стратегийн менежмент/Бие даалт 3/G_Khulan.docx', 4, 9, '2016-03-08 11:49:35', '2016-03-08 11:49:35'),
(34, 'Үйлдвэрлэлийн менежментийн Б анги Ч.Гансүх бие даалт 2', '3/Стратегийн менежмент/Бие даалт 2/c_gansukh.docx', 3, 8, '2016-03-08 14:54:18', '2016-03-08 14:54:18'),
(35, 'үйлдвэрлэлийн менежмент 1б анги Ч.Гансүх бие даалт 1', '3/Стратегийн менежмент/Бие даалт 1/c_gansukh.docx', 2, 8, '2016-03-08 14:55:17', '2016-03-08 14:55:17'),
(36, 'оюутны код D.FM15E523 санхүү менежмент 1б Цолмон бие даалт 3 илгээлээ', '3/Стратегийн менежмент/Бие даалт 3/Б_Цолмон.docx', 4, 5, '2016-03-09 09:58:25', '2016-03-09 09:58:25'),
(37, 'Бие даалт 1', '3/Стратегийн менежмент/Бие даалт 1/L_Bayarmaa.docx', 2, 4, '2016-03-09 10:39:00', '2016-03-09 10:39:00'),
(38, 'Бие даалт 2. ', '3/Стратегийн менежмент/Бие даалт 2/L_Bayarmaa.docx', 3, 4, '2016-03-09 10:41:21', '2016-03-09 10:41:21'),
(39, 'ХНМ 1-Б Б.Буяндэлгэрэх /эрдэнэт магистр/', '3/Стратегийн менежмент/Бие даалт 1/B_Buyandelgereh.docx', 2, 26, '2016-03-09 12:09:13', '2016-03-09 12:09:13'),
(40, 'ХНМ 1-Б Б.Буяндэлгэрэх /эрдэнэт магистр/ ', '3/Стратегийн менежмент/Бие даалт 1/B_Buyandelgereh.docx', 2, 26, '2016-03-09 12:10:17', '2016-03-09 12:10:17'),
(41, 'bie daalt 1 B.Zolzaya D.HR15E501', '3/Стратегийн менежмент/Бие даалт 1/B_Zolzaya.docx', 2, 23, '2016-03-09 14:54:34', '2016-03-09 14:54:34'),
(42, 'bagshaa 1r bie daaltaa yawuulj bn', '3/Стратегийн менежмент/Бие даалт 1/М_Марал-Эрдэнэ.docx', 2, 31, '2016-03-09 15:07:36', '2016-03-09 15:07:36'),
(43, 'Сайн байна уу багшаа 2р бие даалтаа илгээж байна ХНМ-1Б Марал-Эрдэнэ D.HR15E509 ', '3/Стратегийн менежмент/Бие даалт 2/М_Марал-Эрдэнэ.docx', 3, 31, '2016-03-09 15:57:48', '2016-03-09 15:57:48'),
(44, 'Сайн байна уу багшаа 1р бие далтаа илгээж байна', '3/Стратегийн менежмент/Бие даалт 1/М_Марал-Эрдэнэ.docx', 2, 31, '2016-03-09 16:00:19', '2016-03-09 16:00:19'),
(45, 'bie daalt 2 B.ZOlzaya D.HR15E501', '3/Стратегийн менежмент/Бие даалт 2/B_Zolzaya.docx', 3, 23, '2016-03-09 16:10:10', '2016-03-09 16:10:10'),
(46, 'ХНМ 1Б', '3/Стратегийн менежмент/Бие даалт 1/B_Odbileg.docx', 2, 16, '2016-03-10 12:45:01', '2016-03-10 12:45:01'),
(47, 'ХНМ 1Б DHR15E506 Б.Одбилэг', '3/Стратегийн менежмент/Бие даалт 2/B_Odbileg.docx', 3, 16, '2016-03-10 12:45:44', '2016-03-10 12:45:44'),
(48, 'D.HR15E516 кодтой ХНМ-1Б ангийн магистрант О.Оюунтуяагийн бие даалт №1', '3/Стратегийн менежмент/Бие даалт 1/О_Оюунтуяа.docx', 2, 18, '2016-03-11 05:49:25', '2016-03-11 05:49:25'),
(49, 'D.HR15E516 кодтой НХМ-1Б ангийн О.Оюунтуяагийн бие даалт №2', '3/Стратегийн менежмент/Бие даалт 2/О_Оюунтуяа.docx', 3, 18, '2016-03-11 05:52:15', '2016-03-11 05:52:15'),
(50, 'D.HR15E516 кодтой ХНМ-1Б ангийн О.Оюунтуяагийн бие даалт №3', '3/Стратегийн менежмент/Бие даалт 3/О_Оюунтуяа.docx', 4, 18, '2016-03-11 05:53:02', '2016-03-11 05:53:02'),
(51, 'ХНМ-1б Б.Туяацэцэг D.HR15E513', '3/Стратегийн менежмент/Бие даалт 1/Б_туяацэцэг.docx', 2, 30, '2016-03-11 14:39:32', '2016-03-11 14:39:32'),
(52, 'ХНМ-1б Б.Туяацэцэг D.HR15E513', '3/Стратегийн менежмент/Бие даалт 2/Б_туяацэцэг.docx', 3, 30, '2016-03-11 16:32:07', '2016-03-11 16:32:07'),
(53, 'Бие даалт 3', '3/Стратегийн менежмент/Бие даалт 3/L_Bayarmaa.docx', 4, 4, '2016-03-13 15:21:34', '2016-03-13 15:21:34'),
(54, 'sain bn uu bagshaa', '3/Стратегийн менежмент/Бие даалт 2/л_алтанзаяа.docx', 3, 22, '2016-03-14 11:05:40', '2016-03-14 11:05:40'),
(55, 'САНХҮҮ МЕНЕЖМЕНТ 1б АНГИ Б.ЦОЛМОН БИЕ ДААЛТ4 ЯВУУЛЛАА. КОД: D.FM15E523', '3/Стратегийн менежмент/Бие даалт 4 /Б_Цолмон.docx', 20, 5, '2016-03-17 07:07:23', '2016-03-17 07:07:23'),
(56, 'sain bnuu bagshaa omnoh 3 -r bie daalttai  hamt yvullaa uuchlarai bagshaa hotsorch ogsond', '3/Стратегийн менежмент/Бие даалт 4 /л_алтанзаяа.docx', 20, 22, '2016-03-17 14:39:33', '2016-03-17 14:39:33'),
(57, 'ХНМ 1-Б    Б.Буяндэлгэрэх /эрдэнэт, магистр/', '3/Стратегийн менежмент/Бие даалт 4 /B_Buyandelgereh.docx', 20, 26, '2016-03-20 12:15:28', '2016-03-20 12:15:28'),
(58, 'ХНМ 1-Б    Б.Буяндэлгэрэх ', '3/Стратегийн менежмент/Бие даалт 4 /B_Buyandelgereh.docx', 20, 26, '2016-03-20 12:16:07', '2016-03-20 12:16:07'),
(59, 'ХНМ 1-Б  Б.Буяндэлгэрэх', '3/Стратегийн менежмент/Бие даалт 4 /B_Buyandelgereh.docx', 20, 26, '2016-03-20 12:16:52', '2016-03-20 12:16:52'),
(60, 'Сайн байна уу. D.FM15E517 Г.Ичинхорол-с бие даалт-4 илгээлээ. ', '3/Стратегийн менежмент/Бие даалт 4 /Г_Ичинхорол.docx', 20, 20, '2016-03-20 15:26:25', '2016-03-20 15:26:25'),
(61, 'Сайн байна уу. D.FM15E517 Г.Ичинхорол-с бие даалт-4 илгээлээ.', '3/Стратегийн менежмент/Бие даалт 4 /Г_Ичинхорол.docx', 20, 20, '2016-03-20 15:27:04', '2016-03-20 15:27:04'),
(62, 'Стратегийн Менежмент						Багш: Л.Наранцэцэг\r\nДаалгавар – 7\r\n4.	Тодорхой сонгон авсан бизнесийн байгууллагын жишээн дээр боломжийн матрица боловсруулах\r\n-	Мобиком корпорацын боломжийн матрицыг хийв.\r\nБоломжийг ашиглах магадлал	Нөлөөлөл\r\n	Хүчтэй	Дунд	Сул\r\nӨндөр	Шинэ брэнд үйлчигээг хуучин дугаарт нэвтрүүлэх	Шинэ дугаар шинэ үйлчилгээг хослуулан гаргах	Хөдөө орон нутагт шинэ салбар нээх\r\nДунд	Star үйлчилгээг санал болгож, хурдасгах	Үйлдвэрийн утасны гэрээт лизингийн үйлчилгээ үзүүлэх	Сүлжээ харгалзахгүй ярих үйлчилгээ\r\nСул	Дата багцийн үйлчилгээг эрчимжүүлэх	Хязгааргүй дата багцын үйлчилгээ	Хэрэглээнд тулгуурласан багцын сонголт\r\n	Тайлбар\r\nшар	Боломжуудыг ашиглах\r\nногоон	Боломжуудыг хангалттай нөөцтэй тохиолдолд ашиглах\r\nцэнхэр	Боломжуудыг ашиглах шаардлагагүй\r\n\r\n5.	Тодорхой сонгон авсан бизнесийн байгууллагын жишээн дээр эрсдэлийн матрица боловсруулах\r\n-	“Суврага констракшин” барилгын компаны эрсдэлийн матрица\r\nЭрсдэлийн магадлал	Үр дагавар\r\n	Сүйрэл	Эгзэгтэй байдал	Хүнд байдал	Хөнгөн хохирол\r\nӨндөр	Өөрийн эргэлтийн хөрөнгийн хүрэлцээ	Урт хугацаатай өрийн хүрэлцээ	Засгийн газрын тогтоол шийдвэрийн хэрэгжилт	Орон сууцны зах зээлийн үнийн хэлбэлзэл\r\nДунд	Үндсэн эх үүсвэрийн хүрэлцээ 	Иргэдийн худалдан авах чадвар	Барилга барих газрын байршил	Иргэдийн худалдан авах хүсэл\r\nСул	Бэлтгэн нийлүүлэгчид	Үл хөдлөх хөрөнгө зуулагчдид	Банкуудын орон сууцны зээлийн гаргалт	Өрсөлдөгч компаниуд\r\n\r\nШар	Том хэмжээний аюул занал учруулах тул яаралтай зайлсхийх\r\nНогоон	Удирдлагын анхаарлын төвд байлгах, сарниулах, бууруулах\r\nЦэнхэр	Сарниулах, бууруулах шаардлагатай боловч яаравчлах биш харин анхаарал болгоомжтой хандах\r\nУлаан 	Удирдлагын анхаарлаас холдуулахгүй хянаж байх\r\n\r\n6.	Тодорхой сонгон авсан бизнесийн байгууллагын жишээн дээр SWOT матрица боловсруулах\r\n-	Хөрөнгийн биржийн SWOT матрица\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nХүчин зүйлс	Боломж (O)\r\n•	Зах зээлийг эзлэх боломжтой\r\n•	Хүн амын өсөлт \r\n•	Өрсөлдөгчийн зах зээл дээрх байрсуурь нэр хүнд бага байгаа нь компаний бүтээгдэхүүнд давуу байдал үүсч байна.\r\n•	Засгийн газрын дармат шахалт байхгүй	Аюул занал (T)\r\n•	Хөрөнгө оруулалт энэ салбарт бага\r\n•	Орцын хувьд үнийг тогтоон барих боломжгүй\r\n•	Зах зээлд удаан оршин тогтнох баталгаагүй\r\n•	Бэлтгэн нийлүүлэгчийн ямар 1зардал өсөхөд манай бүтээгдэхүүний үнэ тодорхой хэмжээгээр нэмэгдэнэ\r\nДавуу тал (S)\r\n•	Хэрэглэгчдийн тоо олон тэдгээрийнхудалдан авах чадвар сайн байх нькомпани бүтээгдэхүүнээс олох ашигтөдий чинээ их байна.\r\n•	Орлох бүтээгдэхүүн бага байгаа ньхэрэглэгчид манай бүтээгдэхүн дээртөвлөрөх нь илүү. Нигэснээркомданий бүтээгдэхүүнээс олохашиг орлого нэмэгдэнэ.\r\n	Давуу талдаа тулгуурлан боломжийг ашиглах\r\nСанхүүжилт буцалтгүй тусламж,хөрөнгө оруулалт: Энэ салбарт хөрөнгө оруулалт хийгдсэнээр энэ салбарын ажиллах боломжбололцоо нэмэгдэнэ. Гадаадын хөрөнгийн бирж гэрээ байгуулсан. Энэ манай улсынхөрөнгийн бирж хөгжих үүд нээгдэж байна.\r\nЗасгийн газрын бодлого: Засгийн газраас газар тариаланбирж байгуулах тал дээр хамтранажиллах саналыг хөрөнгийн биржболон холбогдох газаралбадуудтай уулзаж ажил хэрэгболохоор ажиллаж байна	Давуу талдаа тулгуурлан аюул заналаас зайлсхийх\r\nЗасгийн газрын бүтцийн өөрчлөлт: Энэ нь хөрөнгийн бирж хөгжихөд саад болж удаашрах хандлага гарч ирнэ.\r\n \r\n Дотоод зах зээл дээрх лобби дарамт: Улс төрч эрх бүхий албан тушаалтны лобби дарамт/Тендер/\r\n \r\n Дайн болон улс хоорондынзөрчил: Мөргөлдөөнөөс үүдэн хямрал гарах хандлагатай\r\n\r\nСул тал (W)\r\n•	Нийлүүлэгчдийн тоо цөөн\r\n•	Бэлтгэн нийлүүлэгчээс хэт хараат\r\n	Боломжийг ашиглан сул талаа арилгах\r\n•	Зах зээлийг эзлэх боломж, хүн амын өсөлтөд тулгуурлан бэлтгэн нийлүүлэгдийн тоог нэмэгдүүлэх	Сул талаа арилгаж, аюул заналаас зайлсхийх\r\n•	Нийлүүлэгчдийн тоо цөөн бэлтгэн нийлүүлэгчээс хэт хараат байдлаас гарах, аливаа нөлөөнд автахгүй байх\r\n\r\nДаалгаварыг гүйцэтгэсэн: Х.Төгсбаяр (Санхүүгийн менежментийн 1б анги D.FM15E506)\r\n\r\n', '3/Стратегийн менежмент/Бие даалт 7/K_Tugsbayar.docx', 23, 36, '2016-04-11 12:13:15', '2016-04-11 12:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `duration_time` int(10) UNSIGNED NOT NULL,
  `stop_date` date NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `code`, `name`, `description`, `image`, `start_date`, `duration_time`, `stop_date`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, 'BA701', 'Стратегийн менежмент', 'Уг хичээлийн хүрээнд удирдлагын дээд түвшний үйл ажиллагаа, түүний функцуудын талаар судална. Оюутанд олгох мэдлэг: Байгууллагын стратегийн зорилтууд, төлөвлөлт, хэрэгжүүлэлт, хяналт, стратегийн чадавхийн элементүүдийн талаар онол аргазүйн мэдлэг олгоно.', '3/strategy.jpg', '2016-02-08', 16, '2016-05-01', 1, '2015-08-05 02:50:07', '2016-06-08 09:17:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_06_01_125843_create_roles_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_08_01_094416_create_teachers_table', 1),
('2015_08_01_105726_create_lessons_table', 1),
('2015_08_01_110201_create_categories_table', 1),
('2015_08_01_110222_create_contents_table', 1),
('2015_08_01_113648_create_students_table', 1),
('2015_08_01_114036_create_classes_table', 1),
('2015_08_01_114148_create_homeworks_table', 1),
('2015_08_01_114507_create_questions_table', 1),
('2015_08_10_202501_create_grades_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `lesson_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `text`, `lesson_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Сайн байна уу? Багшаа, бие даалт 1, 2-г илгээх хугацаа хэдний өдөр байх вэ? ', 1, 27, '2016-03-01 14:53:45', '2016-03-01 14:53:45'),
(2, 'Sain bna uu L. Narantsetseg bagshaa deerh 2 bie daaltiig awah hugatsaa ni hezee we ? Bi hunii  nuuciin 2 d surdag sayhan turuud udaagui bgaa ymaa bagshaa Khulan', 1, 37, '2016-03-02 12:07:11', '2016-03-02 12:07:11'),
(3, 'Hi omend bagshaa bie daaltiin hugatsaa hdn hvrtel we', 1, 45, '2016-03-03 02:30:03', '2016-03-03 02:30:03'),
(4, 'bnu bagshaaa\r\ntowchlol higel terige yawulah yumu \r\nter asultamd hariulah bol zuger oorsdo huwida l hitsge gj bgmu yawulah shaardlagagui', 1, 57, '2016-03-06 10:39:51', '2016-03-06 10:39:51'),
(5, 'Сай байна уу багшаа. Бие даалт амжилттай илгээсэн үгүйгээ яаж мэдэх вэ??? 2 бие даалтаа илгээсэн юм. ', 1, 60, '2016-03-06 13:06:24', '2016-03-06 13:06:24'),
(6, 'sain bnu? bagsha biy daalt 1-iin  hugatsa heze dusah we?', 1, 65, '2016-03-07 06:56:50', '2016-03-07 06:56:50'),
(7, 'сайн байна уу багшаа би төрөөд удаагүй /сар болж байгаа/ болхоор даалгавраа хугцаандаа илгээж чадсангүй ээ миний хариуцлаггүй байдалд 1 удаа боломж олгож даалгавруудаа нөхөж илгээх боломж олгоно уу дахин ийм шатгаанаар хариуцлага алдахгүй тул боломж олгоно уу санхүү менежмент 1б С.Цэрмаа', 1, 30, '2016-03-16 13:02:46', '2016-03-16 13:02:46'),
(8, 'hi bagshaa bie daalt 4 oo ilgeej bolohkui bna ', 1, 37, '2016-03-21 09:01:17', '2016-03-21 09:01:17'),
(9, 'bie daalt  4 oo bie daalt 5 taigaa tsug ilgeechxvv bagshaa\r\n', 1, 37, '2016-03-21 09:33:15', '2016-03-21 09:33:15'),
(10, 'bie daalt  4 oo bie daalt 5 taigaa tsug ilgeechxvv bagshaa\r\n', 1, 37, '2016-03-21 09:33:17', '2016-03-21 09:33:17'),
(11, 'bie daalt  4 oo bie daalt 5 taigaa tsug ilgeechxvv bagshaa\r\n', 1, 37, '2016-03-21 09:33:18', '2016-03-21 09:33:18'),
(12, 'Багшаа өгч амжаагүй даалгавруудаа Naran9935 гэсэн хаяг руу явуулж болохуу\r\n', 1, 26, '2016-03-23 03:39:42', '2016-03-23 03:39:42'),
(13, 'багшаа явуулж болохгуй байна\r\n', 1, 31, '2016-03-25 02:33:57', '2016-03-25 02:33:57'),
(14, 'бие даалт 5\r\n', 1, 31, '2016-03-25 02:34:13', '2016-03-25 02:34:13'),
(15, 'Яагаад линк нь болохгуй бгаан бол багшаа. Өчигдөр уг нь болж байсым', 1, 31, '2016-03-25 02:34:54', '2016-03-25 02:34:54'),
(16, 'Бие даалт №5\r\n\r\n1.	Орчны шинжилгээг ямар зорилготой хийдэг вэ.\r\nБайгууллага нь нээлттэй систем учир гадаад, дотоод хүчин зүйлийн өөрчлөлтөнд өөрийн үйл ажиллагааг явуулж, түүндээ зохицон оршин тогтнож байдаг. Байгууллагын орчин гэдэг нь байгууллага оршин тогтноход нөлөөлж байдаг хүчин зүйлс, тэдгээрийн хоорондын харилцаа холбоо, шүтэлцээ юм. Байгууллага гадаад орчны нөхцөл байдлаа судалж үзсэний үндсэн дээр түүнтэй дотоод үйл ажиллагаагаа оновчтой уялдуулах хэрэгтэй болдог. Иймд байгууллагын үйл ажиллагаанд нөлөөлж байгаа хүчин зүйлийг гадаад, дотоод гэж ангилж тэдгээрийн нөлөөнд хүчтэй автахгүйн тулд орчны шинжилгээг хийдэг.\r\n2.	Орчны шинжилгээний үүргүүдийн тухай.\r\n-	Орчны нөлөөллийг мэдрэх –гадаад орчны хүчин зүйлсийн уялдаа холбоо буюу нэг хүчин зүйлсийн өөрчлөлт нөгөөд үзүүлэх нөлөөллийн хэмжээ, гадаад орчны өөрчлөмтгий хөдөлгөөнт чанар, гадаад орчны нарийн нийлмэл шинж, гадаад орчны тодорхойгүй байдал зэргийг нарийн судалж мэдрэх хэрэгтэй.\r\n-	Орчны нөлөөллийг эргэцүүлэх\r\n-	Орчноос үзүүлэх боломж, эрсдэлийг тооцоолох – дээрх бүгдийг судлаж мэдсэний үндсэн дээр байгууллагын амжилтыг тодорхойлох хүчин зүйлийн нэг болох түүний удаан оршин тогтнох чадварыг дээшлүүлэх явдал юм. Үүнийг дээшлүүлэх гол арга зам нь байгууллагын гадаад орчин нөхцөл байдалд дүн шинжилгээ хийх, байгууллагын үйл ажиллагаагаа орчны өөрчлөлттэй оновчтой уялдуулах, зөв бодлого зарчмыг тодорхойлох явдал юм.\r\n3.	Гадаад, дотоод орчин, тэдгээрийн онцлог.\r\nБайгууллагын оршин тогтнох үндэс нь түүний орчин юм. Байгууллагын орчныг ерөнхийд нь гадаад, дотоод гэж хоёр ангилдаг. Байгууллага үйл ажиллагаагаа явуулахын өмнө орчны ямар хүчин зүйлүүд ажлын үр дүнд эерэг эсвэл сөргөөр нөлөөлж байгааг мэдэх шаардлагатай. Үүний тулд байгууллагын дотоод орчны дараах хүчин зүйлүүдийг харгалзан үзэх хэрэгтэй байдаг. Үүнд: 1. Эрхэм зорилго 2. Зорилго, зорилт 3. Зохион байгуулалтын бүтэц 4. Хүний нөөц 5. Технологи. Түүнчлэн зарим байгууллагын хувьд газар зүйн байршил, техник, технологийн түвшин, ашиглалт зэрэг хүчин зүйлс байгууллагын хөгжлийн чиг хандлагатай хэр нийцэж байгааг бас авч үздэг. Байгууллагын дотоод хүчин зүйлс нь дэвшүүлсэн зорилго, зорилтыг хэргжүүлэхэд зохицсон байх ёстой. Харин гадаад орчноос хамаарч байдаг нээлттэй системийн хувьд байгууллага нь гадаад орчноо сайн таньж мэдэхгүйгээр өөрчлөлт шинэчлэлтийг амжилттай хэрэгжүүлж чадахгүй. Байгууллагын гадаад орчин гэдэг нь системийн үйл ажиллагаанд нөлөөлж байгаа түүний гадна орших элементүүдийн олонлог ба байгууллага удаан оршин тогтнохын тулд байгууллагын гадаад орчин нөхцөл байдалд дүн шинжилгээ хийх, байгууллагын үйл ажиллагаагаа орчны өөрчлөлттэй оновчтой уялдуулах, зөв бодлого зарчмыг тодорхойло хявдал юм.\r\n4.	PEST, PESTIE шинжилгээний талаар дүгнэх.\r\nPEST шинжилгээ нь улс төр эрх зүйн, эдийн засгийн, нийгэм соёл, технологийн орчныг судалдаг ба тус бүрээр нь нарийвчлавал:\r\n-	Эдийн засгийн орчинд: үндэсний нийт бүтээгдхүүн, сонирхолын түвшин, мөнгөний нийлүүлэлт, мөнгөний бодлого, инфляцын түвшин, ажилгүйдлийн түвшин, цалин үнийн өсөлт, ханш уналт, капиталын өгөөж\r\n-	Технологийн орчинд: Засгийн газраас зарцуулж буй судалгаа хөгжлийн зардал, Үйлдвэрлэлийн судалгаа хөгжлийн зардал, зохиогчийн эрх, шинэ бүтээгдэхүүн, технологи шилжүүлэлт, үйлдвэрлэлийн автоматжуулалт\r\n-	Улс төр эрх зүйн орчинд: Татварын хууль, гадаад худалдааны зохицуулалт, улс төр болон засгийн газрын тогтвортой байдал, гадаад хөрөнгө оруулалтыг дэмжих байдал, хөдөлмөр эрхлэлт болон нийгмийн халамжийн бодлого\r\n-	Нийгэм соёлын орчинд: Амьдралын хэв маягийн өөрчлөлт, карьер өсөлт, хэрэглэгчдийн идэвхжилт, гэр бүлийн байдал, хүн амын өсөлтийн түвшин, хүн амын нягтрал, хүн амын шашин шүтлэг, хмьдралын чанар, төрөлт болон нас баралтын түвшинг судалдаг.\r\nPESTIE шинжилгээ нь эдгээр дээр нэмж олон улсын байдал, экологийг нэмж нарийвчлан судалдаг. \r\n5.	Тодорхой бизнесийн байгууллагын жишээн дээр PEST, PESTIE шинжилгээ хийх.\r\n“Шим-Технолоджи” ХХК-ийн жишээн дээр дээрх судалгааг хийв. Нөлөөллийн түвшин тодорхойлоход үнэлээчээр эдийн засагч, хуулийн зөвлөх, хөрөнгө оруулагчийн төлөөлөгч, хөндлөнгийн ажиглагч оролцов.\r\nОрчны нөлөөллийн шинжилгээ\r\nҮзүүлэлтүүд	Нөлөөллийн түвшин	Дундаж дүн	Коэффифиент	Нөлөөллийн чиглэл	Нөлөөллийн чиглэлээр үнэлээчдийн өгсөн дундаж үнэлгээ	Жигнэсэн дундаж коэффициент\r\n	Үн. 1	Үн. 2	Үн. 3	Үн. 4					\r\n1. Улс төрийн орчин\r\nХууль эрх зүйн орчны өөрчлөлт	4	3	4	5	4	0,07	+	3,5	0,25\r\nУТ-ийн намуудын өөрчлөлт	1	2	1	1	1,25	0,01	+	1,75	0,02\r\nХууль эрх зүйн бичиг баримтуудын өөрчлөлт	1	4	2	1	2	0,04	+	2,5	0,10\r\n2. Эдийн засгийн орчин\r\nУлс орон дахь ЭЗ-ийн байдал	4	2	1	3	2,5	0,04	-	3,5	0,14\r\nХаншийн өөрчөлт	3	2	4	3	3	0,05	+-	3	0,15\r\nТатварын бодлого	3	4	4	3	3,5	0,06	-	3,25	0,20\r\nХүн амын орлогын түвшин	5	4	5	4	4,5	0,08	+	4	0,32\r\n3. Байгаль орчин, газарзүйн орчин\r\nЦаг агаарын байдал	5	5	5	4	4,75	0,08	-	4,5	0,36\r\nУлс орны байгаль орчны нөхцөл байдал	4	3	5	4	4	0,07	-	4	0,28\r\nБайгалийн гамшиг	4	5	3	5	4,25	0,08	-	4,25	0,34\r\nХязгаарлагдмал байгалийн нөөц	2	1	4	5	3	0,05	+	2,75	0,14\r\n4. Нийгмийн орчин\r\nХүн амын өсөлт	4	3	4	4	3,75	0,07	+	3,75	0,26\r\nДундаж наслалт	3	3	3	4	3,25	0,06	-	3,25	0,20\r\nБоловсрол	5	4	5	5	4,75	0,08	+	4,25	0,34\r\nХүн амын сочлын түвшин	4	3	3	3	3,25	0,06	+	2,75	0,17\r\nНийт					56	1			\r\nХүснэгтээс харахад дараах дүгнэлтийг хийж болохоор байна.\r\n-	Хууль тогтоомжинд өөрчлөлт орсноор үйл ажиллагааны хүрээг өргөжүүлэх, зах зээлд эзлэх байр сууриа нэмэгдүүлэх боломж олгодог;\r\n-	Улс төрийн намуудын өөрчлөлт нь бага зэрэг эерэг нөлөө үзүүлж байна. Энэ хүчин зүйл нь зах зээлд байр сууриа бэхжүүлэх боломж олгоно;\r\n-	Улс орны эдийн засгийн тогтворгүй байдал компанид аюултай;\r\n-	Байгаль газар зүйн хүчин зүйл сөргөөр нөлөөлж болох учраас компани гэнэтийн нөхцөл байдал, тухайлбал байгалийн гамшиг, улс орны эдийн засагт нөлөөлөх хүн амын ёс суртахууны болон материаллаг хохирол нь компанид томоохон алдагдал учруулж болно;\r\n-	Хязгаарлагдмал байгалийн нөөцийн хувьд компани даатгуулах боломжтой эх үүсвэрийг орлох шинэ технологи бий болгож болно. Тийм учраас энэ хүчин зүйл нь компанийн хувьд зах зээлийн шинэ сегмент болгон өргөжүүлэх боломж олгоно;\r\n-	Боловсрол нь компаниуд чадварлаг, өөрийн тавьсан зорилгод хүрэхийг эрмэзлдэг мэргэшсэн ажилтан авах боломжийг олгоно;\r\n6.	Шууд бус орчны шинжилгээний хүчин зүйлийг шалтгаан үр дагаврын диаграммаар /Ишикава загвар/-аар харуулах.\r\nЭдийн засгийн байдал			Нийгэм соёлын орчин\r\nВалютын ханшны өсөлт			Байгууллагын газарзүйн байршил\r\nБанкны зээлийн хүү			Удирдлагын үндэсний ялгаа\r\nБондын хүү				Хөрөнгө оруулагчид, гүйцэтгэх удирдлага, \r\nОУ-ын ЭЗ-ийн хямрал			ажилчдын зан заншил, соёлын ялгаа\r\nСул зогсолт\r\n\r\nТехнологийн шинэчлэл			ЗГ-ын шийдвэрүүд, тогтоолууд\r\nТехнологийн чанар			ЗГ-ын өөрчлөлт, түүнтэй холбоотой холбогдох\r\nТоног төхөөрөмжийн чадал		яам, газрын удирдлагын өөрчлөлт\r\nТехнологи				ОУ-ын болон улс төрийн орчин\r\n7.	Шууд бус орчны хүчин зүйлс бүрийн үзүүлэлтүүдийг тодорхой бизнесийн байгууллагын жишээн дээр шалтгаан үр дагаварын диаграммаар харуулах.\r\n“Шим-Технолоджи” ХХК-ийн жишээн дээр харуулав.\r\nҮзүүлэлтүүд	Хувийн жин	Үнэлгээ	Жигнэсэн оноо	Тайлбар\r\nЭЗ-н орчин\r\nВалютийн ханшийн өөрчлөлт нь компанийг алдагдалд оруулж байдаг	0,4	4	1,6	\r\nДэлхийн эдийн засгийн хямрал нь байгууллагад нөлөөлж харилцагчдын худалдан авах чадварт нөлөөлдөг	1,0	5	5,0	\r\nХаншын өөрчлөлттэй холбоотой банкны болон бондын хүүг төлөх хэмжээ нэмэгддэг	0,30	4	1,2	\r\nНийгэм соёлын орчин\r\nБайгууллагын газарзүйн байршлын давуу болон сул тал	0,20	3	0,6	\r\nХөрөнгө оруулагчдын үндэсний ялгаа	0,25	3	0,75	\r\nУдирдлага ажилчдын хоорондын соёлын ялгаа	0,25	3	0,75	\r\nТехнологи\r\nТехнологийн шинэчлэл хийх шаардлага	0,50	5	2,5	\r\nТехнологийн чанарыг сайжруулах хэрэгцээ	0,75	5	3,75	\r\nТоног төхөөрөмжийн хүчин чадлыг нэмэгдүүлэх шаардлага	0,5	4	2,0	\r\nУлс төр эрхзүйн орчин\r\nГадаад худалдааны зохицуулалт	0,15	4	0,6	\r\nУТ болон ЭЗ-ийн тогтвортой байдал	0,20	3	0,6	\r\nГадад хөрөнгө оруулалтыг дэмжих бодлого	1,0	3	3,0	\r\nХөдөлмөр эрхлэлт, нийгмийн халамжийн бодлого	0,15	3	0,45	\r\n \r\n8.	Портерийн салбарын бүтцийн шинжилгээний онцлог.\r\nӨртөг зардал хямдруулах стратеги, дагнан мэргэжих стратеги, онилох стратегийг ашиглан өрсөлдөгчид, нийлүүлэгчид, хэрэглэгчид, шинэр нэвтрэгчид, орлох бүтээгдэхүүний нарийвчилсан судалгаа хийдэгээрээ онцлог.\r\n9.	Зах зээлийн бүтцийн шинжилгээг тодорхой бизнесийн байгууллагын жишээн дээр хийх.\r\n“Шим-Технолоджи” ХХК-ийн жишээн дээр хийлээ. Тус компани нь Эрдэнэт үйлдвэр ХХК-ийн гаргадаг молибдены баяжмалыг боловсруулан молибден агуулсан бүтээгдэхүүн үйлдвэрлэдэг Монголд цор ганц байх үйлдвэр юм. Иймд:\r\n-	Нийлүүлэгчид – нийлүүлэгчийн хувьд ганц Эрдэнэт үйлдвэр ХХК-аас хамааралтай, монголд өөр молибдены баяжмал гаргадаг үйлдвэр одоогоор байхгүй байна.\r\n-	Шинээр нэвтрэгчид – Монголд одоогийн байдлаар шинээр нэвтрэгчид байхгүй байна.\r\n-	Хэрэглэгчид – тус үйлдвэрийн боловсруулан гаргадаг молибден агуулсан бүтээгдэхүүнийг гол төлөв Азийн орнууд, ялангуяа БНХАУ, БНСУ, Япон, Киргизстан улсууд худалдан авч байна, Монголд хэрэглэгч байхгүй.\r\n-	Орлох бүтээгдэхүүн – одоогийн байдлаар орлох бүтээгдэхүүн байхгүй гэж үзэж байгаа ба молибдены агуулгаас шалтгаалсан хэд хэдэн нэр төрлийн бүтээгдэхүүн үйлдвэрлэдэг.\r\n-	Өрсөлдөгчид – Монголд цор ганц үйлдвэр учир өрсөлдөгчгүй гэж хэлж болно.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 1, 40, '2016-03-25 04:49:30', '2016-03-25 04:49:30'),
(17, 'Сайн байна уу \r\nХНМ-1Б О.Оюунтуяагийн бие даалт 5', 1, 40, '2016-03-25 04:50:11', '2016-03-25 04:50:11'),
(18, 'hi bgshaa\r\n', 1, 55, '2016-04-03 04:45:41', '2016-04-03 04:45:41'),
(19, 'daalgavar yvuulj bolku bhin ', 1, 55, '2016-04-03 04:47:47', '2016-04-03 04:47:47'),
(20, 'Стратегийн Менежмент						Багш: Л.Наранцэцэг\r\nДаалгавар – 7\r\n4.	Тодорхой сонгон авсан бизнесийн байгууллагын жишээн дээр боломжийн матрица боловсруулах\r\n-	Мобиком корпорацын боломжийн матрицыг хийв.\r\nБоломжийг ашиглах магадлал	Нөлөөлөл\r\n	Хүчтэй	Дунд	Сул\r\nӨндөр	Шинэ брэнд үйлчигээг хуучин дугаарт нэвтрүүлэх	Шинэ дугаар шинэ үйлчилгээг хослуулан гаргах	Хөдөө орон нутагт шинэ салбар нээх\r\nДунд	Star үйлчилгээг санал болгож, хурдасгах	Үйлдвэрийн утасны гэрээт лизингийн үйлчилгээ үзүүлэх	Сүлжээ харгалзахгүй ярих үйлчилгээ\r\nСул	Дата багцийн үйлчилгээг эрчимжүүлэх	Хязгааргүй дата багцын үйлчилгээ	Хэрэглээнд тулгуурласан багцын сонголт\r\n	Тайлбар\r\nшар	Боломжуудыг ашиглах\r\nногоон	Боломжуудыг хангалттай нөөцтэй тохиолдолд ашиглах\r\nцэнхэр	Боломжуудыг ашиглах шаардлагагүй\r\n\r\n5.	Тодорхой сонгон авсан бизнесийн байгууллагын жишээн дээр эрсдэлийн матрица боловсруулах\r\n-	“Суврага констракшин” барилгын компаны эрсдэлийн матрица\r\nЭрсдэлийн магадлал	Үр дагавар\r\n	Сүйрэл	Эгзэгтэй байдал	Хүнд байдал	Хөнгөн хохирол\r\nӨндөр	Өөрийн эргэлтийн хөрөнгийн хүрэлцээ	Урт хугацаатай өрийн хүрэлцээ	Засгийн газрын тогтоол шийдвэрийн хэрэгжилт	Орон сууцны зах зээлийн үнийн хэлбэлзэл\r\nДунд	Үндсэн эх үүсвэрийн хүрэлцээ 	Иргэдийн худалдан авах чадвар	Барилга барих газрын байршил	Иргэдийн худалдан авах хүсэл\r\nСул	Бэлтгэн нийлүүлэгчид	Үл хөдлөх хөрөнгө зуулагчдид	Банкуудын орон сууцны зээлийн гаргалт	Өрсөлдөгч компаниуд\r\n\r\nШар	Том хэмжээний аюул занал учруулах тул яаралтай зайлсхийх\r\nНогоон	Удирдлагын анхаарлын төвд байлгах, сарниулах, бууруулах\r\nЦэнхэр	Сарниулах, бууруулах шаардлагатай боловч яаравчлах биш харин анхаарал болгоомжтой хандах\r\nУлаан 	Удирдлагын анхаарлаас холдуулахгүй хянаж байх\r\n\r\n6.	Тодорхой сонгон авсан бизнесийн байгууллагын жишээн дээр SWOT матрица боловсруулах\r\n-	Хөрөнгийн биржийн SWOT матрица\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nХүчин зүйлс	Боломж (O)\r\n•	Зах зээлийг эзлэх боломжтой\r\n•	Хүн амын өсөлт \r\n•	Өрсөлдөгчийн зах зээл дээрх байрсуурь нэр хүнд бага байгаа нь компаний бүтээгдэхүүнд давуу байдал үүсч байна.\r\n•	Засгийн газрын дармат шахалт байхгүй	Аюул занал (T)\r\n•	Хөрөнгө оруулалт энэ салбарт бага\r\n•	Орцын хувьд үнийг тогтоон барих боломжгүй\r\n•	Зах зээлд удаан оршин тогтнох баталгаагүй\r\n•	Бэлтгэн нийлүүлэгчийн ямар 1зардал өсөхөд манай бүтээгдэхүүний үнэ тодорхой хэмжээгээр нэмэгдэнэ\r\nДавуу тал (S)\r\n•	Хэрэглэгчдийн тоо олон тэдгээрийнхудалдан авах чадвар сайн байх нькомпани бүтээгдэхүүнээс олох ашигтөдий чинээ их байна.\r\n•	Орлох бүтээгдэхүүн бага байгаа ньхэрэглэгчид манай бүтээгдэхүн дээртөвлөрөх нь илүү. Нигэснээркомданий бүтээгдэхүүнээс олохашиг орлого нэмэгдэнэ.\r\n	Давуу талдаа тулгуурлан боломжийг ашиглах\r\nСанхүүжилт буцалтгүй тусламж,хөрөнгө оруулалт: Энэ салбарт хөрөнгө оруулалт хийгдсэнээр энэ салбарын ажиллах боломжбололцоо нэмэгдэнэ. Гадаадын хөрөнгийн бирж гэрээ байгуулсан. Энэ манай улсынхөрөнгийн бирж хөгжих үүд нээгдэж байна.\r\nЗасгийн газрын бодлого: Засгийн газраас газар тариаланбирж байгуулах тал дээр хамтранажиллах саналыг хөрөнгийн биржболон холбогдох газаралбадуудтай уулзаж ажил хэрэгболохоор ажиллаж байна	Давуу талдаа тулгуурлан аюул заналаас зайлсхийх\r\nЗасгийн газрын бүтцийн өөрчлөлт: Энэ нь хөрөнгийн бирж хөгжихөд саад болж удаашрах хандлага гарч ирнэ.\r\n \r\n Дотоод зах зээл дээрх лобби дарамт: Улс төрч эрх бүхий албан тушаалтны лобби дарамт/Тендер/\r\n \r\n Дайн болон улс хоорондынзөрчил: Мөргөлдөөнөөс үүдэн хямрал гарах хандлагатай\r\n\r\nСул тал (W)\r\n•	Нийлүүлэгчдийн тоо цөөн\r\n•	Бэлтгэн нийлүүлэгчээс хэт хараат\r\n	Боломжийг ашиглан сул талаа арилгах\r\n•	Зах зээлийг эзлэх боломж, хүн амын өсөлтөд тулгуурлан бэлтгэн нийлүүлэгдийн тоог нэмэгдүүлэх	Сул талаа арилгаж, аюул заналаас зайлсхийх\r\n•	Нийлүүлэгчдийн тоо цөөн бэлтгэн нийлүүлэгчээс хэт хараат байдлаас гарах, аливаа нөлөөнд автахгүй байх\r\n\r\nДаалгаварыг гүйцэтгэсэн: Х.Төгсбаяр (Санхүүгийн менежментийн 1б анги D.FM15E506)\r\n\r\n', 1, 85, '2016-04-08 01:19:21', '2016-04-08 01:19:21'),
(21, 'Сайнуу багшаа 7 дах бие даалтаа илгээлээ. Баярлалаа.', 1, 85, '2016-04-08 01:21:04', '2016-04-08 01:21:04'),
(22, 'сайн байна уу багшаа. Би 8-р бие даалтаа илгээлээ. Танд даалгавар маань очиж байгаа үгүйг яаж мэдэж болох вэ?  хариу өгөх боломжтой юу? баярлалаа багшаа.', 1, 85, '2016-04-12 06:23:52', '2016-04-12 06:23:52'),
(23, 'sain bnu bagshaa... hunii nootsiin menejmentiin 1-b-iin buyandelgereh bnaa... Bi ug n ehnii 5 biy daaltiig  hiigeed tand huraalgasan chin ta $iig n ogson gd temdeglesen bnleee.... ali biy daalt n tootsogdoogui yum bol...  herew tsootsogdoogui bol  nohoj ogch boloh uu....\r\n', 1, 66, '2016-05-09 03:57:29', '2016-05-09 03:57:29'),
(24, 'sain bnu bagshaa... hunii nootsiin menejmentiin 1-b-iin buyandelgereh bnaa... Bi ug n ehnii 5 biy daaltiig  hiigeed tand huraalgasan chin ta 4iig n ogson gd temdeglesen bnleee.... ali biy daalt n tootsogdoogui yum bol...  herew tsootsogdoogui bol  nohoj ogch boloh uu....\r\n', 1, 66, '2016-05-09 03:58:11', '2016-05-09 03:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Use this account with extreme caution. When using this account it is possible to cause irreversible damage to the system.', '2015-08-04 23:47:21', '2015-08-04 23:47:21'),
(2, 'manager', 'Ability to create new companies and orders, or edit and update any existing ones.', '2015-08-04 23:47:21', '2015-08-04 23:47:21'),
(3, 'teacher', 'Teaching', '2015-08-04 23:47:21', '2015-08-04 23:47:21'),
(4, 'student', 'learning', '2015-08-04 23:47:21', '2015-08-04 23:47:21');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `code`, `firstname`, `lastname`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'P.EC23', 'Алтангэрэл', 'Гантогтох', 21, '2015-08-09 06:30:54', '2015-08-09 06:37:30'),
(3, 'P.DE08', 'Twsvhinjargal', 'Gantuul', 25, '2015-10-30 13:10:18', '2015-10-30 13:10:18'),
(4, 'D.HR15E502', 'Lkhaasuren', 'Bayarmaa', 27, '2016-02-21 03:00:38', '2016-02-21 03:00:38'),
(5, 'D.FM15E523', 'Батболд', 'Цолмон', 31, '2016-02-21 11:08:40', '2016-02-21 11:08:40'),
(6, 'D.PM14E528', 'Gansuuri', 'Gan-Erdene', 32, '2016-02-21 15:08:33', '2016-02-21 15:08:33'),
(7, 'D.PM15E512', 'Шинэбаатар', 'Лхамсүрэн', 36, '2016-02-25 04:17:20', '2016-02-25 04:17:20'),
(8, 'D.PM15E501', 'chuluunsukh', 'gansukh', 39, '2016-02-26 12:22:20', '2016-02-26 12:22:20'),
(9, 'D.HR14E535', 'Gantumur', 'Khulan', 37, '2016-02-27 03:31:32', '2016-02-27 03:31:32'),
(10, 'D.HR14E527', 'Алтанхуяг', 'Шинэбаяр', 41, '2016-02-27 13:00:44', '2016-02-27 13:00:44'),
(11, 'D.FM15E515', 'Аюурзана', 'Бадмаараг', 45, '2016-02-29 07:43:12', '2016-02-29 07:43:12'),
(12, 'D.FM15E508', 'Badamsuren', 'Munkhtsetseg', 46, '2016-02-29 07:44:49', '2016-02-29 07:44:49'),
(13, 'D.FM15E519', 'Чимэдцэрэн', 'Мөнхцэцэг', 44, '2016-02-29 07:45:57', '2016-02-29 07:45:57'),
(14, 'D.HR15E505', 'Ганбат', 'Мөнхтуяа', 50, '2016-03-02 05:13:43', '2016-03-02 05:13:43'),
(15, 'D.HR15E500', 'Boldbaatar ', 'Amarjargal ', 53, '2016-03-03 08:57:56', '2016-03-03 08:57:56'),
(16, 'D.HR15E506', 'Buyanjargal', 'Odbileg', 54, '2016-03-03 09:40:53', '2016-03-03 09:40:53'),
(17, 'D.HR15E515', 'Purevdorj', 'Bolorchimeg', 55, '2016-03-03 14:37:54', '2016-03-03 14:37:54'),
(18, 'D.HR15E516', 'Ойноо', 'Оюунтуяа', 40, '2016-03-04 01:32:25', '2016-03-04 01:32:25'),
(19, 'D.PM15E513', 'PUREVJAV', 'TURTOGTOKH', 57, '2016-03-04 11:50:43', '2016-03-04 11:50:43'),
(20, 'D.FM15E517', 'Ганбат', 'Ичинхорол', 60, '2016-03-05 09:13:15', '2016-03-05 09:13:15'),
(21, 'D.FM15E524', 'Dugarsuren', 'Dairiimaa', 61, '2016-03-05 09:59:21', '2016-03-05 09:59:21'),
(22, 'D.PM15E500', 'лхагважав', 'алтанзаяа', 34, '2016-03-06 08:40:58', '2016-03-06 08:40:58'),
(23, 'D.HR15E501', 'Batchuluun', 'Zolzaya', 26, '2016-03-06 10:13:06', '2016-03-06 10:13:06'),
(24, 'D.PM15E508', 'Bayaraa', 'Munkhtsetseg', 64, '2016-03-06 10:46:23', '2016-03-06 10:46:23'),
(25, '159263', 'Munkhbat', 'OtgonErdene', 65, '2016-03-06 10:53:02', '2016-03-06 10:53:02'),
(26, 'D.HR15E514', 'Bold', 'Buyandelgereh', 66, '2016-03-06 10:59:57', '2016-03-06 10:59:57'),
(27, 'D.PQ15E504', 'Amarjargal', 'Ariuntula', 67, '2016-03-06 11:00:59', '2016-03-06 11:00:59'),
(28, 'D.PM15E522', 'Erdenechuluun ', 'hulan', 56, '2016-03-06 13:30:43', '2016-03-06 13:30:43'),
(29, 'D.FM15E508', 'Бадамсүрэн', 'Мөнхцэцэг', 68, '2016-03-06 15:25:46', '2016-03-06 15:25:46'),
(30, 'D.HR15E513', 'Батмөнх', 'туяацэцэг', 33, '2016-03-06 15:49:37', '2016-03-06 15:49:37'),
(31, 'D.HR15E509', 'Мягмарцоож', 'Марал-Эрдэнэ', 70, '2016-03-07 04:03:29', '2016-03-07 04:03:29'),
(32, 'D.FM15E510', 'Сугар', 'Цэрмаа', 30, '2016-03-09 08:34:24', '2016-03-09 08:34:24'),
(33, 'D.PM15E503', 'ДАВААДОРЖ', 'НЯМДОРЖ', 81, '2016-03-10 06:18:38', '2016-03-10 06:18:38'),
(34, 'D.HR15E537', 'Otgonlkhagva', 'Khaliuntuya', 84, '2016-03-10 11:55:24', '2016-03-10 11:55:24'),
(35, 'D.HR15E537', 'Otgonlkhagva', 'Khaliuntuya', 84, '2016-03-10 11:55:24', '2016-03-10 11:55:24'),
(36, 'D.FM15E506', 'KHANDRAGCHAA', 'Tugsbayar', 85, '2016-03-11 14:12:30', '2016-03-11 14:12:30'),
(37, '95347800', 'Хүрэлбаатар', 'Ариунтуяа', 89, '2016-03-15 05:43:59', '2016-03-15 05:43:59'),
(38, 'D.HR15E512', 'Damdinsuren', 'Erdenesuvd', 91, '2016-03-16 07:30:28', '2016-03-16 07:30:28'),
(39, 'D.FM15E534', 'Ган-Эрдэнэ', 'үүрийнцолмон', 47, '2016-03-27 00:54:20', '2016-03-27 00:54:20'),
(40, 'D.FM15E534', 'Ган-Эрдэнэ', 'үүрийнцолмон', 47, '2016-03-27 00:54:22', '2016-03-27 00:54:22'),
(41, 'D.PM15E522', 'Эрдэнэчулуун', 'Хулан', 56, '2016-03-27 08:35:12', '2016-03-27 08:35:12');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `work` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `graduate` text COLLATE utf8_unicode_ci NOT NULL,
  `degree` text COLLATE utf8_unicode_ci NOT NULL,
  `direction` text COLLATE utf8_unicode_ci NOT NULL,
  `schooling` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `code`, `firstname`, `lastname`, `work`, `graduate`, `degree`, `direction`, `schooling`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'P.AA0', 'Лхагваа', 'Наранцэцэг', 'СШУТ-ийн эрхлэгч', '•ЗХУ (Одоогийн ОХУ)-д Нэхмэл хөнгөн үйлдвэрийн дээд сургууль\r\n•Монголд ТЗУХИ\r\n•ХБНГУ-д Олон улсын Менежмент Маркетингийн Академи\r\n', 'Бизнесийн удирдлагын ухааны доктор (Ph.D.), ШУТИС-ийн дэд профессор', 'Судалгааны болон сургалтын чиглэлийн “Бүс нутгийн хөгжлийн түвшний үнэлгээний арга зүй”, Стратегийн менежмент”, “Ажлын байрны тодорхойлолт” бүтээлүүд болон “Герман-Монгол эдийн засгийн толь бичиг”, “Орос-Монгол эдийн засгийн  толь” бичгүүдийн зэрэгцээ заадаг хичээлүүдийн гарын авлага 20 гаруйг бичиж хэвлүүлэн, 3 бүтээл редакторласан. Мөн  20 гаруй эрдэм шинжилгээний илтгэл, өгүүлэл  Монголд болон ОХУ, ХБНГУ-д хэлэлцүүлж, хэвлэн нийтлүүлсний зэрэгцээ эрдэм шинжилгээний бүтээл нь дэлхийн хамгийн том 11 номын санд тавигдаж, дэлхий нийтийн хүртээл болсон.   ', 'Бакалавр магистрийн түвшинд менежмент, салбарын менежмент,  стратегийн менежмент, төслийн менежментийн хичээлүүд заадаг.  ', 3, '2015-08-04 23:48:13', '2016-03-02 05:07:59'),
(2, 'P.DE0', 'tuwshu', 'Altanbat', 'багш', 'МТС', 'бакалавр', 'Электроник', 'Сургалт', 4, '2015-08-04 23:48:13', '2015-08-04 23:48:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `confirmed`, `confirmation_code`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'tuwshu', 'tuwshu@yahoo.com', '$2y$10$8ohZg3HMkvwf0nw.paaOau8XEwNMfT2p3Tl7CF2yaV9lNg9ZG/jyq', 1, '68bbdebe863043a056c8a404afd22102b8a08cd2942f288bb0e48edae3731668', 1, '1oyBwLiT5Wr92NK2Q3Fdzk6Q1EaawqW9ibxUFSjlQ9cVykBERCYvE8ftQOYO', '2015-08-04 23:47:21', '2015-08-10 11:01:17'),
(2, 'amarsanaa', 'amarsanaa@yahoo.com', '$2y$10$Cl.b90J48nrxIU82UnQ5nOHE7rNgdHv1vqjzDK39rdfNU92L62QAe', 0, NULL, 2, NULL, '2015-08-04 23:47:21', '2015-08-04 23:47:21'),
(3, 'naraa', 'naraa@yahoo.com', '$2y$10$kFJ7lmq7gUgKyyjbEL.EDuP2UyupHasZURNkyQ.f8ibPyguor2t.q', 1, NULL, 3, '8Rr8Sjb5MnpEYEBvchAuXF8hpVXyeyaSiuUsJHhf7mE0RjJ7fC7Ja60TWfiz', '2015-08-04 23:47:21', '2016-08-17 07:38:40'),
(4, 'tuvshinjargal', 'tuwshu_sit@yahoo.com', '$2y$10$838Acv/LFMuEo3aL2u2r.u5b8YxecdQa8Y.yw6iEdWmNZY7D41bIy', 0, '5572bf93037f31b1d492f7c51b7f3fc29a469f901b6e9a91b07a6b90069bc307', 3, 'Az6zJnPoVe6Di7Jm904NFDuaf0KPzhZfDDwfp3pnMc2IwI6o7V9Y2HFwTzqI', '2015-08-04 23:47:21', '2015-09-20 23:27:34'),
(21, 'Гантогтох', 'gantogtokh0310@gmail.com', '$2y$10$i6Xfd88ubfZbaskVDsg.PuCMB1DkrAHkKSlnMa43PW5H9oRHC0q1G', 1, NULL, 4, 'WYsd8k5BIRB6woTN9L8pd3QthYiOeXYLPrI55SF8iGptI2ajy3ZjvWN0RLjA', '2015-08-09 05:20:44', '2016-08-17 10:12:43'),
(25, 'tuwshun', 'qtuvshinjargal@gmail.com', '$2y$10$HoIdN8LvmZ8PdKRpLf9Wg.L6LXM9wnYF4hSD02ttSkgdh/GRDbtc6', 1, NULL, 4, 'XJefvDeyBfOnwkyuDdqOloscdLCv0szKLVKnLRoUbrR0rVFVlYM3U9m6uGOe', '2015-10-30 13:08:46', '2015-10-30 13:52:23'),
(26, 'Золзаяа', 'Yuripe.yuri520@gmail.com', '$2y$10$QmlqvFGmlY74AvgOV8B3nuyHgpQxHo5tRW4BCBgbSSqauNhftgn6W', 1, NULL, 4, '0Hx9WS5eGP740vgu7CXK7wWlazknHOvHtXCBnwKdZXJWMv6xHioacP7uwPA8', '2016-02-21 02:57:22', '2016-03-06 10:54:44'),
(27, 'Bayarmaa L', 'me_tr@yahoo.com', '$2y$10$Novmb8r6phvAW6nNzTuS9.mL0wl7SulLcjVIZysbbzC6j7yqdtwWW', 1, NULL, 4, 'Fl0EGZgmMe0cbni1IcKDnQfzAKYpbeZKmJ2ctFjP2fmP3FY0f0gMHlmyH1XJ', '2016-02-21 02:58:36', '2016-04-10 05:13:05'),
(28, 'Maral-Erdene', 'amy_6437@yahoo.com', '$2y$10$wWsMmkOmeSAXMw5NLRStcOhJPzxFdgM9bt7fByPrQux8Mdws2LPqe', 1, '4eef8a96be6989af2ce1e8bd737758c2ee916d1a10737090e0fef4bb55a4463c', 4, '2HqGhkxkJaludMPDodylm6lyIQTtqZhR1brSD3gA40xJMwobIJGiXvMbO1u7', '2016-02-21 02:59:59', '2016-02-26 09:26:23'),
(29, 'Амаржаргал ', 'Mermaid29mgl@Gmail.com', '$2y$10$abXqACIik14A81o6rUJcruTAgFhiaD1S.mOuKPrXzlUA2PDSn7KQ.', 1, '661e1e88d45e57724c58284fe58c1138fa7292135867fd9a5e6642c06f81f225', 4, 'GRhUp8R38fi0qUzlx3AePTgfZeAJu7wGpSS6Nlvg7FOlG6zaObdaJQtQygTV', '2016-02-21 04:35:28', '2016-03-03 08:43:07'),
(30, 'Tsermaa', 'sugartsermaa@yahoo.com', '$2y$10$7OArX29tugxjzpt2IEYACefEY/OIgxhVH5fEIzOWV57tV0SRlxkO6', 1, NULL, 4, 'cOUN3k7ciSTa1PMstt0BQUaHRXvf3bkMjAmd6WUkz9WmpUWhZ9xy5HghzemW', '2016-02-21 06:07:00', '2016-03-09 08:55:29'),
(31, 'Цолмон', 'tsolmon.b21@gmail.com', '$2y$10$cLBdfyOxwyF1j5S4m8QWPeKDxu/qN7FB.slxpHwKGYrsXVj4m5VTC', 1, NULL, 4, 'Q53pnKUvRS23VUbm59mOwpsOeBTKuewDH8P3FrKJqSLozTjsPIANLT0Pm6Al', '2016-02-21 11:03:55', '2016-05-03 09:08:48'),
(32, 'Gan-Erdene', 'erka_erkasan@yahoo.com', '$2y$10$bxkBEaMVm51cgKrYVMsuj.5XBJsVl/lZmDBelUfqTKfrs8Vuu.nZm', 1, NULL, 4, 'SvYyMnNgp4WhpUzdGCOnAY5O85n5WqZq43ImNDzH6jlh1ESPYSPpmw4BYHwY', '2016-02-21 15:05:58', '2016-02-21 15:07:40'),
(33, 'tuya', 'gegeenegshig141029@gmail.com', '$2y$10$xsf3qr9VmRAZDdRp936uQ.4QxZRtMCPHyBJJrKKk/DovTSZVtYef6', 1, NULL, 4, 'RbFdePLZ8MNzsDV9A41wl6o0pJJXsi2VdFvjLXSyFvNiF1XG9emAItTvuCBL', '2016-02-22 04:52:45', '2016-03-14 04:00:45'),
(34, 'altanzaya', 'zaya_ubo@yahoo.com', '$2y$10$zybAOElc.WbgLWlAenL0tOlttegQVDhgZb1R5u257ssziVmjlplIi', 1, NULL, 4, 'D8Dz4eNNWiVpmEwX8UvMHSXFFvf7zuJoSCOL3FOIxHdqzEvsX86Wcg1v3iWy', '2016-02-22 07:54:57', '2016-03-17 14:39:45'),
(35, 'OtgonErdene', 'otgoo9562@yahoo.com', '$2y$10$TRK3MN5hGE5O1hIT/WMC3u7c9iK84JDiZDkLe3EOn6/bwywHcLZEa', 0, 'c8bd80edd499b00cd6a3b809d59f68cc6292c10f831ae73a3e1ff659ca044b69', 4, 'c9694lizqZDP3vmycFB6pL2dgmeaimsHBbiqY5PdQWNkycfjqRNY8ZzoEix9', '2016-02-23 06:39:55', '2016-03-06 06:05:28'),
(36, 'лхамсүрэн', 'lkhamaa_124@yahoo.com', '$2y$10$zzoQoCAPCEgr12TS92/cde5WExr5CQLEAgYgvX1rhBLJILNxTTcta', 1, NULL, 4, 'qeObRGw7XHTjO4U1AkFEsQaEdlLw8qGW0wt9dWxAnjOIAJjCkQoibbvixI2v', '2016-02-25 04:13:48', '2016-05-23 23:28:38'),
(37, 'Hulan', 'hulan706@yahoo.com', '$2y$10$TGPmwEGjnAmdFRSVd9W1mOW46tVLbkl86fIX09Lj5tz2ueeYczaZW', 1, NULL, 4, '6kKk21qY8APkUCu0wjmSBQQ8N8FMO9lGZk4LbvVp4rol7WbezUejJEnWpyMh', '2016-02-25 06:05:11', '2016-03-31 09:00:01'),
(38, 'gansukh', 'jcigansukh@gmail.com', '$2y$10$ZGQrFpySN0kiKg8OQQJiou.Tbsd7u5I9zuZvxrGm3omwtLuy2Y2Ke', 0, 'c1e975ed1bcd0b413e0801ffad61bc92c0cebdd252ccde2028ba0c34b38b96b5', 4, 'J8Bx2h5v7s18hBbzQV00SrBPg7rYzGTXsvZLxTRdGcAhY1rL9c3d0vvHvF7l', '2016-02-26 05:54:20', '2016-02-26 06:03:25'),
(39, 'gansukh', 'gansukh@erdenetmc.mn', '$2y$10$eeYQvQ/Er5gKYUvZr9M8wuVIvD7N76nUvAqSP7qQrMmT/3kzC4Sx2', 1, NULL, 4, 'iRN47TonbHlraCcPWX0Qv810LUGMkN9IR9nH1eJvDUAHP7GvjTx6yJ6DvRIQ', '2016-02-26 12:19:45', '2016-05-08 12:00:33'),
(40, 'О.Оюунтуяа', 'yokogoos@yahoo.com', '$2y$10$KgyAKm7dGBLGb6ZVwOcx0ebQD.AjGVxSEvIVU2ZT6tmborbls8LPu', 1, '597d2b69fd214c8606b7bceab0141ad8291442e77fef327ba2a4de1ab45ec51a', 4, 'ZMDotGtqswlwHJ1x5BfdVkE2uizfYKuwOFtdglqk45eEhBNwvsy5cDtgfRCF', '2016-02-27 00:30:57', '2016-04-11 04:07:36'),
(41, 'Шинэбаяр', 'shinebayar@erdenetmc.mn', '$2y$10$oyuKTRmw/L2D3UfY9oWGreIFfb.hK2USXDEIMoMMBOFbaDx1cfZSe', 1, NULL, 4, 'OsdWUpgwoeojAZZIQY8mL9oDZsNvEyIqDVLMyaHgiq651EOuVTi7V7q6LoJT', '2016-02-27 12:58:49', '2016-02-27 13:08:23'),
(42, 'Л.Мянган', 'lmyangaa17@gmail.com', '$2y$10$Mz11Ule4jEcXGwGxqr0axed.6qz0JFFdBzRk6qfRoAZKfNFlDoyPO', 1, '2c016621a0ac5efaa943da1754aedf4b777b9bdf70ede5a15232b39bf7cdab62', 4, 'MfNeDrPncS6DeKHKRldYepHloa9YxidsKvEzt135FuTsHS7JzM9fVRoiU4uK', '2016-02-28 10:24:42', '2016-03-02 07:06:07'),
(43, 'battsengel', 'ayurzana.battsengel@yahoo.com', '$2y$10$qIindKB4sdudzcr032Bb1uKRglg0jx/3Na9.CBDkrmMdIiwbh.rJ2', 0, 'd1287e5cc5f0b4ce41d973171e1b6d3af990ebd19323116d718182f46485ec72', 4, 'aiIpbiZ8AIvfPnj5Ug1KRlEcpcP3PrrPKBqUVSY8qUijwAPqB1QbBKDTirA2', '2016-02-29 07:18:04', '2016-03-22 00:55:34'),
(44, 'Munkhtsetseg.Ch', 'm_moojig@yahoo.com', '$2y$10$F6gkPiwd3m6Yaz7.mlxsxuO5VQCurlfSAWdRgEZzHpEQ5ZgimJHI6', 1, NULL, 4, '3kX0kofJKEbMmz47yNRL52l4nCQndQd2jJk0Xs16zk8Kn4zWmNTukyOsWTMi', '2016-02-29 07:36:49', '2016-03-06 14:11:56'),
(45, 'Бадмаараг', 'A.badmaarag@gmail.com', '$2y$10$njUXRMGZdH1Htrnskww2HeKwSYifv0mecs/f5zGLjUFqrZH3YHwTu', 1, NULL, 4, 'DeykZh3PfIQd3jV0PKBPatkf0ns0VskmmgvFMDrvqR4ZcUxoQWPDib0QyxbK', '2016-02-29 07:40:33', '2016-03-10 10:21:07'),
(46, 'Munkhtsetseg.B', 'munkhtsetseg.b@gmail.com', '$2y$10$PxsU0U8UjUR3x0I6Nox/FO4cW0xrsd7Yd0w5NVb5d19LhVpzzd7Ea', 1, NULL, 4, 'aOoynItsvhkmOzIBTfBZFDcECWuZ1kOox2hyYNxy3uBk24j8HyzDGSi40J4o', '2016-02-29 07:42:24', '2016-02-29 07:43:47'),
(47, 'Uuriintsolmon', 'tsoomoo7006@yahoo.com', '$2y$10$0zW2HnrvpguDu7Rnwk.olOK0Krr1phKpA8CuWkDfR9CsIixnZhAwq', 1, '43b0533226a1dd2de645536e1adf68f7946f23014529911995f0e365e99c1e95', 4, 'JQWhx9uvM8VWk3AuLGrfKdHFld8R4fdhn3AFPYMGhYMw6SwjAhNVhlNmaEAM', '2016-03-01 06:12:00', '2016-03-28 06:20:37'),
(48, 'А.Мөнхжаргал', 'munkhjargal821@gmail.com', '$2y$10$WaKZ2XiMGbj8N9ce1qVQeuFyRqof12Z.3Cp/PcNIxwQBR08smP6dO', 0, 'a715e3c09f902b33328d6477bf194f28e8468872132a12d11a5d698d540d9629', 4, 'BZXN30JYs6GoJJ2tNomxbmdmb6cEMLiM6bCyH6dkoJ1UaxqYiy4wSdZWMlXM', '2016-03-01 11:21:12', '2016-03-22 11:50:21'),
(49, 'Munkhtuya', 'g_munkhtuya@erdenetmc.mn', '$2y$10$IEhIp/TH8eQa5yNf6fEfjexUVPg2lpI4Nv5LBb26VfSgco7D4I4WO', 0, 'b50d91aab6894bef8f5e93b84717ca603e1ce87b3334a00d8273390a08023951', 4, 'jpYSqq7YjwXqiGJUSFoadu9pLW9HoC0daFude0zpMrQkOa55cg3iC33iXl2s', '2016-03-02 02:11:17', '2016-03-02 02:33:48'),
(50, 'G.Munkhtuya', 'shining8653@gmail.com', '$2y$10$ymsyz2sI4AB9dxN9g9FeJeV1pmtwVbLikzlhoolE2Wntqz2KvRVry', 1, NULL, 4, 'ZWpKJi7CjnqXxNYfw4UA2YvX4EDjHuJMZ0rhlvSWFchQ7yzZLp3S0ALvxDDr', '2016-03-02 05:11:34', '2016-04-02 12:39:46'),
(52, 'А.Мөнхжаргал', 'a.munkvvsh@gmail.com', '$2y$10$V5KseIPV0UBN2y3VfAtoh.1b9xZ86XbYZWyVd78ikf8Q5XdkXWtS2', 0, '77ef1345fafc019396fcb0ed1962bf4dbb9ac8d28723d7d84f8250411c6d5d78', 4, '3BFLDa44KryrWajwdbhDB6bzzxhLK0DlJsjbWboi88j7401BsA1nhjyTrFtG', '2016-03-02 10:19:45', '2016-03-22 11:50:31'),
(53, 'Amarjargal ', 'undrahjargal30@gmail.com', '$2y$10$jpDqiA8Qd55ChvW3PuAjtupfYmcld9AffDuXOz8ar6fFjFR31gxfi', 1, NULL, 4, 'Ks8fwQGF9jXU9ArS9bPywlw8tJSNHGy7HyB8aYQsJGUMX1Ed48uE4mcRbGwR', '2016-03-03 08:55:35', '2016-03-03 09:52:10'),
(54, 'Odbileg', 'Bodbileg@gmail.com', '$2y$10$NszOWP9n8x68I5vwKrMTjOVpAQgSlkJ2GEOprTvoaTp9P2pBari.G', 1, NULL, 4, 'KsDVm1JmYBJg025naHooEgPXxgVx1GiFJwnqbIFK7ga8VcCxZRzSpqKbxTya', '2016-03-03 09:31:08', '2016-03-03 10:08:55'),
(55, 'Bolorchimeg', 'Mogul_jss@yahoo.com', '$2y$10$7w64PslJHbVcGWpZxBIvPOeVI60Vwz4N18rdNock9/6PCaXB.rfjC', 1, NULL, 4, '0E0YKEdJw1zmdqC08t5QqEgNIIeBxvQgbaaHwaxCBEQCwGbJi9LdhI6ussAS', '2016-03-03 13:58:03', '2016-03-03 14:38:45'),
(56, 'Хулан', 'hulan6182@yahoo.com', '$2y$10$jnnJrW0kS9NmZYzfzfbQMOX7329cbOHh399UcbJkk2.Xmn/He8L7K', 1, NULL, 4, 'wBkn7aEMSHqRfOebnJtdvM5ZDTwBhwThwshfqxoztK3nVl4mv4HzCJx7hzUB', '2016-03-04 00:28:42', '2016-03-06 12:57:29'),
(57, 'turtogtokh', 'trtgtkh@gmail.com', '$2y$10$d0WtPs2yGtI98k91PZ5T2uinyiBaIzLoLwI.qw3MNtLTUN.TLyC32', 1, NULL, 4, 'VlcQ6IOiOyrdijbgpFdNcPJnjaz8Kw5e7RhnDiL0q9UyzxWkQnDAShHraDzB', '2016-03-04 11:49:20', '2016-03-27 05:06:39'),
(58, 'Б.Буяндэлгэрэх', 'buyaa.bold@yahoo.com', '$2y$10$6hBOi/u5cWpoNiPk1z/UYOPkpuvwI9b3E1ZNLrwhkEI7OYoMs0jiW', 0, '2d8adf3784cbabc763fcfb4ced0f80db032fed8904a4ea7531c0cd8ccdf28dc6', 4, 'Asy6lo5X9ikH5ygnTq08DN4w2KGtazNqwbzULGgfS0FJRenGA58ggyafG2ML', '2016-03-05 06:34:26', '2016-03-05 07:04:45'),
(59, 'Б:Буяндэлгэрэх ХНМ 1-Б /магистр/', 'www.buyaa.bold@yahoo.com', '$2y$10$y5FEQI96XePDi1hLEaNbgu6dRbtvv6n3Bkx5IoStaRD/BumBx4dbe', 0, 'bdd1848b28430b0bba7677eb2d2ba6b54e7cfe2672d589be0d08eb56e994a97b', 4, 'cEeKilSSlY5tuuFaKW1I26n7DHhQd6ydM6dMe5z78duHJQEceKYJJBAVCL8H', '2016-03-05 06:51:02', '2016-03-05 14:13:46'),
(60, 'Ichinkhorol', 'Kochimoo@gmail.com', '$2y$10$1G/4Ht8lSl0C9hNOFcPpCOWsEm4orI/X5dMPtzqjh.rFnDH4/t1n2', 1, NULL, 4, 'vIW7EBa2S77I4qyc3ZQY5p6FSfxWAhYsnfrPDbfQ4RCJRsA9nRotzX4mbjLX', '2016-03-05 09:11:40', '2016-03-05 09:12:03'),
(61, 'Дайриймаа', 'dudaarii_84@yahoo.com', '$2y$10$X5Vau7jiVFVyU2W6rKbzS.JzalHl4F8zuJNRATyuTyXPITvsQzVOq', 1, NULL, 4, 'WndgjcwjCFupiQ7wcbMJrh8gksmpsNpNK7J7ScpS0f1eXAEz5EPXJ1NOBDJt', '2016-03-05 09:52:46', '2016-03-05 10:00:00'),
(62, 'А.Мөнхжаргал', 'only.munkvvsh@yahoo.com', '$2y$10$g92jbRwoFHRAfReQ9NvgmOGhs8KfgS5RMmOaZ1Tfc8yttrckK636O', 0, 'caf9f7ba377d50cb44a755d08198a6498d4080b4179188f88d0b8c877f1a77f8', 4, 'CIKY1kFTfvEzafXomXlkvUflVIIPR5UVz0OfXnjNTCpTYhd41Av8rYcy2C61', '2016-03-06 05:49:33', '2016-03-22 11:50:09'),
(63, 'С.Нарангэрэл', 'naraa.shagai@yahoo.com', '$2y$10$OUR8ei0jq2EC20b.PKqT4uqz7y9rxof07XNn8JmSihsHnnJT12aIu', 0, '025763f5f2b86f5d7054e4bf211447c931ba0dfb42a5b7d8b6e8dcc5d56ec1fc', 4, NULL, '2016-03-06 10:33:37', '2016-03-06 10:33:37'),
(64, 'B.Munkhtsetseg', 'munkhtsetseg.b@erdenetmc.mn', '$2y$10$LNQmtXYZCzDlDCuRpTQuzeeehGYRrZod1pdAbthbC6Yu3a.oi54lG', 1, NULL, 4, '9wBfiqkpq04qmxP742qJgqOG7O4ntbocOJv45HQMZql1bcc3SYDfQDx1zJBU', '2016-03-06 10:39:18', '2016-03-21 04:14:28'),
(65, 'OtgonErdene', 'ashid.amar@yahoo.com', '$2y$10$Gb85QKaX/tW4OG27CxI1lOJhbB5Flwvz8RXAO69MeHNNRp4NewKt2', 1, NULL, 4, 'G1ESM2u6FM7SsclwoRHNbj9GxFa5hQGrtYPtmI49H2qxf3GodEoCWDaeEFJB', '2016-03-06 10:46:59', '2016-03-06 10:52:32'),
(66, 'Buyandelgereh', 'btz_2021@yahoo.com', '$2y$10$HXx1CnVJfyvfO7LmQVf/oOWGc7wCH2fLCF5Fw4Qi5ac2T1qi1A9ia', 1, NULL, 4, 'FqcE4ZBBsKxyzOLb55tihqPSnshf8stowKDWOIYYfTFuoHn0Vj8KN7KPnh1y', '2016-03-06 10:55:37', '2016-05-16 05:12:07'),
(67, 'a.ariuntula', 'a.ariuntula@erdenetmc.mn', '$2y$10$g8rI8NUx1MO2GAEHH6HVSeyhcH9ZdyLMYJ7SfjrKRifb7VZrtNWWC', 1, NULL, 4, 'HUvRjgTIxNHN9KRS5RrmF3vLFJi9jA6f1WY5p3UkhgiSk9dhP8h3C8zKMnzw', '2016-03-06 10:56:24', '2016-03-06 11:11:06'),
(68, 'Munkhtsetseg Badamsuren', 'muunuu_bu@yahoo.com', '$2y$10$hxM8hzld4M3ROTOhISge.ui/QH.pID1e1IuP7kHWTOvbeRsvLRKu6', 1, NULL, 4, 'Eo8uPhaAylCzK9JPaAwFonIinLew0tLvjvWhvl1v8afI1x7drmDAwg4I4AJ2', '2016-03-06 15:07:59', '2016-05-01 22:55:13'),
(69, 'Д.Нямдорж', 'dnaymdorj0917@gmail.com', '$2y$10$ZkDVAgqpjRIBa62ANrgI/e46sVAf8x8NU5Bb6sDxsTwUZDAPBCJhG', 0, 'fec156066b21d31fdc7a12bad08bb7455c4c64f2c8129a0b0ee25c2d27a468b7', 4, 'pk7Seq1wYlZY7tMzYiKKb1dXK2f44NtJycw0OOV9LgRpKtWrGMWEGWKAFqaz', '2016-03-07 03:30:35', '2016-03-14 03:31:00'),
(70, 'Maral-Erdene', 'o.deegii555@yahoo.com', '$2y$10$WSeYsfDx7vMU7SHuFYmV8eAY/U4hhvU26maAfnxgRUpD2yVD7Fjae', 1, NULL, 4, 'kff6PLu2U2iKUau3mfoHknPxaVaTIz7NKnF9gvIVW5KAFtmJDfMSow2RZ9iY', '2016-03-07 03:56:12', '2016-03-07 04:01:39'),
(71, 'А.Мөнхжаргал', 'uuganjargalo@yahoo.com', '$2y$10$0.OljzKIy3zjPCMj9vH.r.LLlQSAioU2I.F0KUq9vbLhPU9pL17Tq', 0, 'c854e992452f3e7750e53d3a761a5064e23c02882239137ae345db5f4559c29f', 4, 'Il1LPPYwG6tBglyRCf2WSoswVBWeYZU8vFxGa26htsdAiBuyGTzxqNx3JJay', '2016-03-07 04:06:29', '2016-03-10 03:44:00'),
(72, 'tsetsegsuren', 'tse_bs@yahoo.com', '$2y$10$QLEjszIVzV7brF7dC6zatuWC6R4l8jMWwuHQAAYcA3an2ONyB4rQi', 0, 'c08224a5e12e47941044a941cbe32a659f453de4afdf0255e62d814922e6f665', 4, 'VP8RwSJNUR9m2kKB5OQN83WOQ3RmaSybKYYcCTrfDdI5aDCxlqGYDx1knuJO', '2016-03-07 16:12:33', '2016-03-07 16:31:50'),
(73, 'd.nyamdorj', 'dnaymka_0917@yahoo.com', '$2y$10$pQr6PwUFV41MUwJmtB/PPO2.MoWYfGYFoa0qqCt1CCEsZ1XoGS9CO', 0, 'ffa485b390ba60904f9f0d3fa02de77d0933e72e6e94cfa8e54c39dfba7d7193', 4, 'JdgaIXnVcSGEUiyMTTOKgfjtJJl9YRS2h0oKmvIHi5VUIrn20eVt33Ocla8O', '2016-03-08 03:41:56', '2016-03-08 03:41:57'),
(74, 'Ц.Амартүвшин', 'amaraa_boet1@yahoo.com', '$2y$10$BNUZiX4B61nXaD9IWvoH8u3OWhUX/f5Q11QHXM22yb.iijmlZm5wS', 0, '7a6b4bd2f9c5bea75daa08e539982e5db4425017fcd091be628f05dc59b6dc83', 4, 'Yt5npRXrUfBtn7pl8kQSucmDFNI4Hx7oeY6WM1cNXY3QF4Wn9yq35A8b4Dsr', '2016-03-08 06:24:37', '2016-03-08 23:18:34'),
(75, 'Ts.Amartuvshin', 'a.core_0414@yahoo.com', '$2y$10$2dGR1ElB4OJtXrGoza5VqewyZGaf0xqdltEplSktxTI09j2csvQNC', 0, 'c2da1060a87e045ea9baaf7a5413cbc4fdc40e41efac7e4815914768d6e3fc0e', 4, 'J8hAvp3bkMHUTsmCk1SoxQ36gqhsEutAF7KjTzSJfgtbm5YN8GPp1A2fV0r9', '2016-03-08 23:20:19', '2016-03-09 23:41:25'),
(77, 'ариунтула', 'a.ariuntula@erdenetemc.mn', '$2y$10$2NAp.JhT4DE2kQX9bTizjO./JHyxE6LctsnfuQqvCiaAILNu/fMWm', 0, '0416747d65d0473a2088e4559ba2bd5299ba151e3be59483262371e1ba5dca06', 4, 'w7ACJ0bP7aI28zRijyUGryIxEgqz1u4WShNTQGXNk7x4iamVj9MZJjC5tpBQ', '2016-03-09 02:40:14', '2016-03-09 02:40:58'),
(78, 'Chantsalkhorol', 'chaagii_0703@yahoo.com', '$2y$10$GjLgKAsc9stib6ETeATuC.Ee2iwQ212zKW86FYAa9YDMLjKUZfA5e', 0, '45eecd58304ffb9f760e0363377b8badecdf9b9ec40dc62f1ae8c85bd16feaab', 4, 'V365qyF8cRmgFlYUYF3LQmXVRnNmKX5zVNQUv0Sk7BCcWhv9APBvuutwuB53', '2016-03-09 06:39:09', '2016-03-09 06:39:10'),
(79, 'Б.Ундрах-Эрдэнэ', 'b.undrakherdene@yahoo.com', '$2y$10$RQlBximR7eFb1pAhL3S9ZOdVNq96/32eb/CmskrmIVQlVAYMlk1w2', 0, '98cddfcbdc0da67213845e892fa305414420e2abd2755adaae9d5bde2edaf7c7', 4, 'E3PuF7PFFbxD4P8dzeAiVFnzBIOwo01bSpNkaGe9hYRWDOqz9c8TMyRMJu4M', '2016-03-09 07:21:27', '2016-03-21 06:24:32'),
(80, 'Д.Нямдорж', 'dnyamdorj0917@gmail.com', '$2y$10$Ncq.0hvTiWOeZ8PzR6.B2ug8uh.Lc1zWduzUzu7hOVUTU7edLMH7i', 0, '9027cc6efb556f68b45045803e420d5c6ddc96f3f6e3c7cf717c94bdc90535d6', 4, 'rtqnStimvcSoXqfCa16f8IjDDZYmMbgZZ8w7QLQUu1LqdaVusBg8UxoPQPqf', '2016-03-09 08:44:03', '2016-03-29 22:57:19'),
(81, 'Д.Нямдорж', 'naymka_0917@yahoo.com', '$2y$10$R7VfqUIME96S7c3XI5ByN.rmpcCLhZlP9lo1Q76dmVrr/KpL5RoGa', 1, NULL, 4, 'tsSGepI2GVzB4LXxD6DM0rtDnTq1I1Q9E30vmGmBcM2gicCMYmZE2lEyQTrt', '2016-03-09 09:05:36', '2016-03-10 05:34:33'),
(82, 'temka', 'temka_es@yahoo.com', '$2y$10$ZLBUcwBFEiGgLMne9Lme5ulXBy2U3EbZcWpSdvoSyHK1DdfmmMQH2', 0, '0ad4bbb27c850348d26936cc0cf00eb97e0a99180fb1bd54eb86227cdd88d33e', 4, 'RyJTKPpKCeS4eRyT0QVi9PcPtVk7SpU2vScHuy3WhUQQAobpK61TNAhPy8Be', '2016-03-09 11:18:01', '2016-03-09 11:18:02'),
(83, 'Баярцэцэг', 'Bayrtsetseg.ganbat@gmail.com', '$2y$10$k.8kBhvg1dKvyLDO4ZOZfevl1SW8w/H0Vb9iKiIfWUdHaDqOK0LOq', 0, '903598860b0fa5d24d51b8686fe9fad02b159b5066b5519c21a9f2be9e3f38f6', 4, 'a1iMdTyT9UDVlQguIgGgRYgwBqIznE4mJE7Ssb7aqIqGAScLzjcK9eFvCsgB', '2016-03-10 10:25:52', '2016-03-10 10:32:18'),
(84, 'khaliuntuya', 'o.khaliuntuya@gmail.com', '$2y$10$Ibx.2Ig1sLCbbdDUJMOkU.SzNbMm7IeeQqkIzDJ7wbkcHWyD078c2', 1, NULL, 4, 'szIctNwLpLYQnYFSVDtllflXIONFzuJsG2KcloAUd2IrgSiv5syLRJhslB6x', '2016-03-10 11:49:50', '2016-03-19 11:29:12'),
(85, 'Tugsbayar', 'ktugsbayar@gmail.com', '$2y$10$HJpZ.N4dD.GK0mYfGWkexefVpLGZRP3s.x6NSDWjLfo8qH9tZAnhu', 1, NULL, 4, '4HjPi0KdreemyTuxc24VNMO0VqTcYSwBB7EfGRknRMRKHQZ7SzFoIOcv2kTV', '2016-03-11 14:10:42', '2016-04-19 13:21:30'),
(86, 'Shurentsetseg', 'Shvree_2007@yahoo.com', '$2y$10$OfXsJxP1V0/ljAXAVqHUHeDggoLSUP4rx6wJ4G.dfQ52seCUeB1WC', 0, 'c29a54ecc0f67a5017f90f17d8318900d68fdbb28666f02c98c9eaf4ba734a1b', 4, 'axKWYk9C99JmOqCQfNOapGcFDtA7FD64a5GoeraZdPieIjnr0NNCuIHWihbn', '2016-03-13 11:45:38', '2016-03-13 11:46:43'),
(87, 'Буян-Өрнөх', 'Egduuteizuzu@yahoo.com', '$2y$10$.0zNlkZi/S2jUffzZDWoSuDoNWoCD.IwLt9mK5H3MEOQfe1d12WGK', 0, 'b0456730c29e8aff3081116c4494b7262a074f5c15b04d87b632693b71a7380b', 4, 'wMKevfeNcIukjkPwvKrFSOIr3qCEp6tFR9STMkZ3BBmybEiQITetl2spkqGT', '2016-03-14 13:29:10', '2016-03-14 13:36:02'),
(88, 'dashjargal', 'dashjargaldorjoo@yahoo.com', '$2y$10$Npn1ll2xsb4Ml3ety42Vq.evmrqgiXu2tECtn5xnnEMiFLqULFhrK', 0, '1dbae4ffe98e34a882028c5eaae8f6f08c7a765f712220a00b3dc3afda50f16d', 4, 'xoqu8hSXWhUMo2KfthgQn9NOP13sL5f6UL3J0V5g3pp1iaLH4iIcSwcCsSSS', '2016-03-14 13:35:47', '2016-03-14 13:46:37'),
(89, 'ariuntuya', 'ariuntuya.kh@erdenetmc.mn', '$2y$10$XCeDpENmYZb5qWW6OQta6u/Fa.N1EmA6Rkq4eUTbJndymEgIgnaDm', 1, NULL, 4, 'l7G6oe6Q29POZN3QC7aonNWN80OSp55UJ2CFRSSq5Nb5kfnGgvjt4S6v1Paf', '2016-03-15 05:39:37', '2016-03-15 05:46:47'),
(90, 'Myangan', 'lmyangaa@erdenetmc.mn', '$2y$10$WvAltbyxvNJVx98vn59TQOqXawhp.BBx2Eovm5z8rc5ym91xqGtJm', 0, '6dc4b63d702f46c3ee16c209798f659c7d9720dcd1c8853f5208a185f4ccefba', 4, 'QxZV3xrjLZSszZnB44yuJWO8jjfOgsQdWiZCU5x5s5MWMC9LnxCOHMcnRhhU', '2016-03-15 05:42:38', '2016-03-15 05:47:26'),
(91, 'Erdenesuvd', 'erka9417@yahoo.com', '$2y$10$zw9qiYSNWnS0ciK70JVq1.jtTQQ77efSVePTt2HNq92Lbv3ZnGs.y', 1, NULL, 4, 'vCQHhaOWbx1NG9R4FatOEOuKW4z5gu3xvNacBpQsPEMOajTRRA94IXYUZSTI', '2016-03-16 07:26:50', '2016-03-16 07:28:35'),
(92, 'ЦАГААН ЦОЛМОН', 'tsolmontsagaan@yahoo.com', '$2y$10$NAf/UzB80zQICnOCSZtN/.c044rAPd6lQ28PBKmtgVbctzeD12RHm', 1, 'fd2db9f80f8c7e62dcd22b8509cc7c440a1d9d0fef10f4b2a9817c345bf38b16', 4, 'HqLn8b2VIUBfKNCpbUY1QWZ5W4da8FYC5bZrdTrzV3ZfaSZw25P6J6HtKe2A', '2016-03-19 11:05:37', '2016-03-19 11:10:33'),
(93, 'Naran', 'naran9935@gmail.com', '$2y$10$HRGG/fFmIVLyxVrd5Q.0BeeAkMy3GPAFhh2Aab2zshn9kIjOeWttO', 0, '9ce7b976f12a9c2ab54f84b045ee9f44e205e1f1f5cb14f35c624ff49e4b6aaf', 4, 'EiORDBaruOUU8VBeNGuIue0D6B0VEFNGJPu0SibMnKQhxQ1GDjvfELHQlsd5', '2016-03-30 04:59:06', '2016-03-30 04:59:09'),
(94, 'bbb', 'bbb@bb.bb', '$2y$10$But6fiUoPaPTrRXQfQc4Z.qCZXCjyP71pjlks2C7zBY1ZfWLbLn7q', 0, '1991c70bb54e3673a4e971c15bb4ac86f64e3dbca6d3fd2f2810cc49609b8316', 4, '6mXiVS3tzFVxt7CAGjkD3pMMyh3Rmgki6KzBTnQguQI6ysMN0xWXz833AkvQ', '2016-03-31 23:01:21', '2016-03-31 23:01:22'),
(95, 'Хүчитбаатар', 'do_khuchitbaatar@yahoo.com', '$2y$10$Kd915UThUbmx5WqFL9t6Qe.rXiNHYLbs5b8qLdycqb68/ssFCla6C', 0, '2745a15c2bff46e77fc8d7196f8878f332f76c9fb3acdb9d1fe2f9207f3cb3a4', 4, '87SV9P9Wqq4FK5Rq33OD37xhmWEKILAi82NlfTNrViZf8hZsgx39thy3Kips', '2016-04-04 06:46:19', '2016-04-04 06:48:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_lesson_id_foreign` (`lesson_id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contents_category_id_foreign` (`category_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grades_lesson_id_foreign` (`lesson_id`),
  ADD KEY `grades_student_id_foreign` (`student_id`);

--
-- Indexes for table `homeworks`
--
ALTER TABLE `homeworks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homeworks_content_id_foreign` (`content_id`),
  ADD KEY `homeworks_student_id_foreign` (`student_id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lessons_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_lesson_id_foreign` (`lesson_id`),
  ADD KEY `questions_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_user_id_foreign` (`user_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teachers_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `homeworks`
--
ALTER TABLE `homeworks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `grades_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `homeworks`
--
ALTER TABLE `homeworks`
  ADD CONSTRAINT `homeworks_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homeworks_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
