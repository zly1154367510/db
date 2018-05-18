-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost:3306
-- 生成日期: 2018 年 05 月 18 日 07:11
-- 服务器版本: 5.5.24-log
-- PHP 版本: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `db_brp`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `name`) VALUES
(1, 'admin', 'admin', '小王');

-- --------------------------------------------------------

--
-- 表的结构 `ban_user`
--

CREATE TABLE IF NOT EXISTS `ban_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ban_time` varchar(2200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `ban_user`
--

INSERT INTO `ban_user` (`id`, `user_id`, `reason`, `ban_time`) VALUES
(5, 1, 'ass', '2018-03-17 16:52:33');

-- --------------------------------------------------------

--
-- 表的结构 `car`
--

CREATE TABLE IF NOT EXISTS `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `p_year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mileage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `d_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_sold_out` enum('0','1','','') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `title_images_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=56 ;

--
-- 转存表中的数据 `car`
--

INSERT INTO `car` (`id`, `brand`, `name`, `p_year`, `mileage`, `d_id`, `s_id`, `price`, `is_sold_out`, `title_images_url`) VALUES
(2, 'Benz', 's600', '2', '2', 4, 11, '255', '0', '1'),
(3, 'Benz', 's500', '2', '2', 4, 11, '225', '1', '2'),
(4, '保时捷', 'panameter', '2', '2', 4, 11, '50', '0', '1'),
(5, 'audi', 'a8', '2', '2', 4, 11, '75', '1', '11'),
(33, '奔驰', 'c63 AMG', '0.3', '2', 4, 11, '3', '0', '2'),
(46, '宝马', 'X1', '2015款', '2万', 4, 11, '2.7', '0', '12'),
(51, 'benz', 's63 AMG', '0.3', '2', 4, 11, '3', '0', '4'),
(52, '奔驰', 's63 AMG', '0.3', '2', 4, 11, '3', '0', '5'),
(53, '宝马', 'm760li', '', '', 2, 2, '', '1', '6'),
(54, 'audi', 'a7', '2', '2', 4, 11, '75', '1', ''),
(55, 'Benz', 's650', '2', '2', 4, 11, '255', '1', '');

-- --------------------------------------------------------

--
-- 表的结构 `car_images`
--

CREATE TABLE IF NOT EXISTS `car_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `d_id` int(11) DEFAULT NULL,
  `images_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `c_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `car_images`
--

INSERT INTO `car_images` (`id`, `d_id`, `images_url`, `c_id`) VALUES
(1, NULL, 'http://localhost/drpFileUpLoad/1.jpg', 4),
(2, NULL, 'http://localhost/drpFileUpLoad/3.jpg', 2),
(3, NULL, 'http://localhost/drpFileUpLoad/5.jpg', 0),
(4, NULL, 'http://localhost/drpFileUpLoad/4.jpg', 2),
(5, NULL, 'http://localhost/drpFileUpLoad/6.jpg', 2),
(6, NULL, 'D:/wamp/www/drpFileUpLoad/7.jpg', 0),
(7, NULL, 'http://localhost/drpFileUpLoad/11.jpg', 4),
(8, NULL, 'http://localhost/drpFileUpLoad/12.jpg', 4),
(9, NULL, 'D:/wamp/www/drpFileUpLoad/ChMkJlaoW7aIYiBoAAzzhE7OoIgAAHtOAFQ798ADPOc389.jpg', 5),
(10, NULL, 'D:/wamp/www/drpFileUpLoad//ChMkJ1bGsHKIQMgnABG5iOULJVgAAKpfAHxOdUAEbmg929.jpg', 5),
(11, NULL, 'D:/wamp/www/drpFileUpLoad//ChMkJ1bGsHKIQMgnABG5iOULJVgAAKpfAHxOdUAEbmg929.jpg', 5),
(12, NULL, 'http://localhost/drpFileUpLoad/17.jpg', 46);

-- --------------------------------------------------------

--
-- 表的结构 `car_materiel`
--

CREATE TABLE IF NOT EXISTS `car_materiel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `spec` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `m_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ID` (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `data_dit`
--

CREATE TABLE IF NOT EXISTS `data_dit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `data_dit`
--

INSERT INTO `data_dit` (`id`, `type`) VALUES
(1, 'a_car'),
(2, 'b_car'),
(3, 'c_car'),
(4, 'd_car'),
(5, 'gt_car'),
(6, 'mini_suv'),
(7, 'pu_suv'),
(8, 'big_suv');

-- --------------------------------------------------------

--
-- 表的结构 `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, '管理员'),
(2, '门店'),
(3, '用户');

-- --------------------------------------------------------

--
-- 表的结构 `shapping_car`
--

CREATE TABLE IF NOT EXISTS `shapping_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_pay` enum('0','1','','') COLLATE utf8_unicode_ci NOT NULL,
  `create_time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=25 ;

--
-- 转存表中的数据 `shapping_car`
--

INSERT INTO `shapping_car` (`id`, `car_id`, `username`, `is_pay`, `create_time`) VALUES
(24, 51, '123', '0', '2018-04-23');

-- --------------------------------------------------------

--
-- 表的结构 `store`
--

CREATE TABLE IF NOT EXISTS `store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `legal_person` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `images_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT '1',
  `is_audit` enum('0','1','','') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `store`
--

INSERT INTO `store` (`id`, `username`, `password`, `address`, `phone_number`, `legal_person`, `images_url`, `is_audit`) VALUES
(1, 'ad', 'Ujr1N5RrecT4Np7Tm6eGBQ==', 'ad', 'ad', 'ad', '1', '0'),
(4, 'www', 'www', 'www', 'www', 'www', NULL, '1'),
(5, 'qqq', 'sspni0yTb5BfuC8nM/Upfw==', 'qqq', 'qqq', 'qqq', NULL, '0'),
(7, 'zzz', 'YW5bBlbrztgFu7/sVTxRgQ==', 'zzz', 'zzz', 'zzz', NULL, '0'),
(8, 'rrr', 'mNNtV4Z6U2SD7YsWXX0R8Q==', 'rrr', 'rrr', 'rrr', NULL, '0'),
(9, 'ttt', 'tndPF6Lo3OUkKY19JcmIhA==', 'ttt', 'ttt', 'ttt', NULL, '0'),
(10, 'eee', 'eee', 'eee', 'eee', 'eee', '1', '1'),
(11, 'zhangmeng', 'zhangmeng', 'beijing', '13112415228', 'zhangmeng', 'F:/drpFileUpLoads32.jpg', '1'),
(12, 'zhangli', 'zhangli', 'guangzhou', '13112415228', 'zhangli', 'F:/drpFileUpLoad/dengge.jpg', '1');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `phone_number`, `email`, `create_time`, `role_id`) VALUES
(2, '1154367510', 'XWLXepcKaPDk53M2L9utKg==', '13112415228', '1154367510@qq.com', '2018-03-16', 1),
(3, '625104766', 'RKFV6ctG/0KZYNRywpok5Q==', NULL, '1154367510@qq.com', '2018-03-18', 1),
(4, '123', '123', '123123', '123@qq.com', '2018-04-03', 1),
(7, '1154', '123', '11@q.com', '13112415227', '2018-04-20', 1),
(8, '456', '456', '456@qq.com', '456', '2018-04-20', 1);

--
-- 限制导出的表
--

--
-- 限制表 `car_materiel`
--
ALTER TABLE `car_materiel`
  ADD CONSTRAINT `FK_ID` FOREIGN KEY (`m_id`) REFERENCES `data_dit` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
