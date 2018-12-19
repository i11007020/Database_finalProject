-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- 主機: localhost
-- 產生時間： 2016-11-09 03:36:44
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
-- 資料表結構 `toysupplier`
--

CREATE TABLE `toysupplier` (
  `ToyID` bigint(15) NOT NULL COMMENT '玩具ID',
  `Name` varchar(255) NOT NULL COMMENT '廠商名字',
  `Address` varchar(255) NOT NULL COMMENT '廠商地址',
  `Phone` varchar(255) NOT NULL COMMENT '廠商電話'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `toysupplier`
--

INSERT INTO `toysupplier` (`ToyID`, `Name`, `Address`, `Phone`) VALUES
(1, '什麼公司', '什麼地址', '什麼電話');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `toysupplier`
--
ALTER TABLE `toysupplier`
  ADD PRIMARY KEY (`ToyID`),
  ADD UNIQUE KEY `ToyID` (`ToyID`);

--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `toysupplier`
--
ALTER TABLE `toysupplier`
  ADD CONSTRAINT `ToyID_Restrict` FOREIGN KEY (`ToyID`) REFERENCES `toy` (`ToyID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
