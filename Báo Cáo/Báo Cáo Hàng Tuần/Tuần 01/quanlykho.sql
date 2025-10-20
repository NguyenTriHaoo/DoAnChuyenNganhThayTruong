-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 20, 2025 at 08:30 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlykho`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

DROP TABLE IF EXISTS `auth`;
CREATE TABLE IF NOT EXISTS `auth` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ROLE_ID` int NOT NULL,
  `MENU_ID` int NOT NULL,
  `PERMISSION` int NOT NULL DEFAULT '1',
  `ACTIVE_FLAG` int NOT NULL DEFAULT '1',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `roleIDauth_foreign_key` (`ROLE_ID`),
  KEY `menuIdauth_foreign_key` (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `DESCRIPTION` text,
  `ACTIVE_FLAG` int NOT NULL DEFAULT '1',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
CREATE TABLE IF NOT EXISTS `history` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ACTION_NAME` varchar(100) NOT NULL,
  `TYPE` int NOT NULL,
  `PRODUCT_ID` int NOT NULL,
  `QUANTITY` int NOT NULL,
  `PRICE` decimal(15,2) NOT NULL,
  `ACTIVE_FLAG` int NOT NULL DEFAULT '1',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `productIDhistory_foreign_key` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) NOT NULL,
  `TYPE` int NOT NULL,
  `PRODUCT_ID` int NOT NULL,
  `QUANTITY` int NOT NULL,
  `PRICE` decimal(15,2) NOT NULL,
  `ACTIVE_FLAG` int NOT NULL DEFAULT '1',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `productIDinvoice_foreign_key` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PARENT_ID` int NOT NULL,
  `URL` varchar(100) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `ORDER_INDEX` int NOT NULL DEFAULT '0',
  `ACTIVE_FLAG` int NOT NULL DEFAULT '1',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

DROP TABLE IF EXISTS `product_info`;
CREATE TABLE IF NOT EXISTS `product_info` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CATE_ID` int NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `DESCRIPTION` text,
  `IMG_URL` varchar(200) NOT NULL,
  `ACTIVE_FLAG` int NOT NULL DEFAULT '1',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `cateIDproductinfo_foreign_key` (`CATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `product_in_stock`
--

DROP TABLE IF EXISTS `product_in_stock`;
CREATE TABLE IF NOT EXISTS `product_in_stock` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PRODUCT_ID` int NOT NULL,
  `QUANTITY` int NOT NULL,
  `ACTIVE_FLAG` int NOT NULL DEFAULT '1',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `productIDproductinstock_foreign_key` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ROLE_NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(200) NOT NULL,
  `ACTIVE_FLAG` int NOT NULL DEFAULT '1',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`ID`, `ROLE_NAME`, `DESCRIPTION`, `ACTIVE_FLAG`, `CREATE_DATE`, `UPDATE_DATE`) VALUES
(1, 'ADMIN', 'Toàn quyền hệ thống', 1, '2025-10-20 08:01:51', '2025-10-20 08:01:51'),
(2, 'EMPLOYEE', 'Nhân viên kho, có quyền xem, thêm, xóa, cập nhật sản phẩm', 1, '2025-10-20 08:01:51', '2025-10-20 08:01:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `NAME` varchar(100) NOT NULL,
  `ACTIVE_FLAG` int NOT NULL DEFAULT '1',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `USER_NAME`, `PASSWORD`, `EMAIL`, `NAME`, `ACTIVE_FLAG`, `CREATE_DATE`, `UPDATE_DATE`) VALUES
(1, 'ngocbich', '123456', 'bich542004@example.com', 'Trần Ngọc Bích', 1, '2025-10-20 07:59:18', '2025-10-20 07:59:18'),
(2, 'haonguyen', '123456', 'hao272004@example.com', 'Nguyễn Trí Hào', 1, '2025-10-20 07:59:18', '2025-10-20 07:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE IF NOT EXISTS `user_role` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USER_ID` int NOT NULL,
  `ROLE_ID` int NOT NULL,
  `ACTIVE_FLAG` int NOT NULL DEFAULT '1',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `roleIDuserrole_foreign_key` (`ROLE_ID`),
  KEY `userIDuserrole_foreign_key` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`ID`, `USER_ID`, `ROLE_ID`, `ACTIVE_FLAG`, `CREATE_DATE`, `UPDATE_DATE`) VALUES
(1, 1, 1, 1, '2025-10-20 08:12:48', '2025-10-20 08:12:48'),
(2, 2, 2, 1, '2025-10-20 08:12:48', '2025-10-20 08:12:48');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth`
--
ALTER TABLE `auth`
  ADD CONSTRAINT `menuIdauth_foreign_key` FOREIGN KEY (`MENU_ID`) REFERENCES `menu` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `roleIDauth_foreign_key` FOREIGN KEY (`ROLE_ID`) REFERENCES `role` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `productIDhistory_foreign_key` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product_info` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `productIDinvoice_foreign_key` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product_info` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `product_info`
--
ALTER TABLE `product_info`
  ADD CONSTRAINT `cateIDproductinfo_foreign_key` FOREIGN KEY (`CATE_ID`) REFERENCES `category` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `product_in_stock`
--
ALTER TABLE `product_in_stock`
  ADD CONSTRAINT `productIDproductinstock_foreign_key` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product_info` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `roleIDuserrole_foreign_key` FOREIGN KEY (`ROLE_ID`) REFERENCES `role` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `userIDuserrole_foreign_key` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
