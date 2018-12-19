-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- 主機: localhost
-- 產生時間： 2016-11-09 03:36:38
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
-- 資料表結構 `toy`
--

CREATE TABLE `toy` (
  `ToyID` bigint(15) NOT NULL COMMENT '玩具ID',
  `AreaCode` bigint(15) NOT NULL COMMENT '玩具的區域碼',
  `Name` varchar(255) NOT NULL COMMENT '玩具名字',
  `Price` varchar(255) NOT NULL COMMENT '玩具價錢',
  `Description` varchar(255) NOT NULL COMMENT '玩具描述'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `toy`
--

INSERT INTO `toy` (`ToyID`, `AreaCode`, `Name`, `Price`, `Description`) VALUES
(1, 201609260001, '水槍', '120', '可以跟小孩一起在溪邊玩耍。');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `toy`
--
ALTER TABLE `toy`
  ADD PRIMARY KEY (`ToyID`),
  ADD UNIQUE KEY `ToyID_2` (`ToyID`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `toy`
--
ALTER TABLE `toy`
  MODIFY `ToyID` bigint(15) NOT NULL AUTO_INCREMENT COMMENT '玩具ID', AUTO_INCREMENT=129;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
