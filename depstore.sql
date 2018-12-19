-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- 主機: localhost
-- 產生時間： 2016-11-09 03:36:23
-- 伺服器版本: 5.7.13-log
-- PHP 版本： 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `sample`
--

-- --------------------------------------------------------

--
-- 資料表結構 `depstore`
--

CREATE TABLE `depstore` (
  `AreaCode` bigint(15) NOT NULL COMMENT '店家區域碼',
  `Description` varchar(255) NOT NULL COMMENT '店家簡單描述',
  `BusinessHour` varchar(255) NOT NULL COMMENT '店家營業時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `depstore`
--

INSERT INTO `depstore` (`AreaCode`, `Description`, `BusinessHour`) VALUES
(201609260001, '精品店', '早上9點~晚上8點');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `depstore`
--
ALTER TABLE `depstore`
  ADD PRIMARY KEY (`AreaCode`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `depstore`
--
ALTER TABLE `depstore`
  MODIFY `AreaCode` bigint(15) NOT NULL AUTO_INCREMENT COMMENT '店家區域碼', AUTO_INCREMENT=201609260002;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
