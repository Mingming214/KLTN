-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: heroku_7bc1307ac1f5a85
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CHITIETHOADON`
--

UNLOCK  TABLE;
drop table if exists `danhmucsanpham`;
UNLOCK  TABLE;
DROP TABLE IF EXISTS `chitietsanpham`;
DROP TABLE IF EXISTS `CHITIETHOADON`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `CHITIETHOADON` (
                                 `mahoadon` int(11) NOT NULL,
                                 `machitietsanpham` int(11) NOT NULL,
                                 `soluong` int(11) DEFAULT NULL,
                                 `giatien` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
                                 PRIMARY KEY (`mahoadon`,`machitietsanpham`),
                                 KEY `FK_CHITIETHOADON_CHITIETSANPHAM` (`machitietsanpham`),
                                 CONSTRAINT `FK_CHITIETHOADON_CHITIETSANPHAM` FOREIGN KEY (`machitietsanpham`) REFERENCES `chitietsanpham` (`machitietsanpham`),
                                 CONSTRAINT `FK_CHITIETHOADON_HOADON` FOREIGN KEY (`mahoadon`) REFERENCES `hoadon` (`mahoadon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHITIETHOADON`
--

LOCK TABLES `CHITIETHOADON` WRITE;
/*!40000 ALTER TABLE `CHITIETHOADON` DISABLE KEYS */;
/*!40000 ALTER TABLE `CHITIETHOADON` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CHITIETKHUYENMAI`
--

DROP TABLE IF EXISTS `CHITIETKHUYENMAI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `CHITIETKHUYENMAI` (
                                    `makhuyenmai` int(11) NOT NULL,
                                    `masanpham` int(11) NOT NULL,
                                    PRIMARY KEY (`makhuyenmai`,`masanpham`),
                                    KEY `FK_CHITIETKHUYENMAI_SANPHAM` (`masanpham`),
                                    CONSTRAINT `FK_CHITIETKHUYENMAI_KHUYENMAI` FOREIGN KEY (`makhuyenmai`) REFERENCES `khuyenmai` (`makhuyenmai`),
                                    CONSTRAINT `FK_CHITIETKHUYENMAI_SANPHAM` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHITIETKHUYENMAI`
--

LOCK TABLES `CHITIETKHUYENMAI` WRITE;
/*!40000 ALTER TABLE `CHITIETKHUYENMAI` DISABLE KEYS */;
/*!40000 ALTER TABLE `CHITIETKHUYENMAI` ENABLE KEYS */;
UNLOCK TABLES;


-- Table structure for table `CHITIETSANPHAM`
--

DROP TABLE IF EXISTS `CHITIETSANPHAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `CHITIETSANPHAM` (
                                  `machitietsanpham` int(11) NOT NULL AUTO_INCREMENT,
                                  `masanpham` int(11) DEFAULT NULL,
                                  `masize` int(11) DEFAULT NULL,
                                  `mamau` int(11) DEFAULT NULL,
                                  `soluong` int(11) DEFAULT NULL,
                                  `ngaynhap` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
                                  PRIMARY KEY (`machitietsanpham`),
                                  KEY `FK_CHITIET_SANPHAM` (`masanpham`),
                                  KEY `FK_CHITIET_SIZE` (`masize`),
                                  KEY `FK_CHITIET_MAUSANPHAM` (`mamau`),
                                  CONSTRAINT `FK_CHITIET_MAUSANPHAM` FOREIGN KEY (`mamau`) REFERENCES `mausanpham` (`mamau`),
                                  CONSTRAINT `FK_CHITIET_SANPHAM` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`),
                                  CONSTRAINT `FK_CHITIET_SIZE` FOREIGN KEY (`masize`) REFERENCES `sizesanpham` (`masize`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHITIETSANPHAM`
--

LOCK TABLES `CHITIETSANPHAM` WRITE;
/*!40000 ALTER TABLE `CHITIETSANPHAM` DISABLE KEYS */;
# INSERT INTO `CHITIETSANPHAM` VALUES (23,1,1,1,15,'11/05/2020'),(24,1,2,2,16,'11/05/2020'),(25,1,3,3,8,'11/05/2020'),(26,2,1,1,30,'11/05/2020'),(27,2,1,2,20,'11/05/2020'),(28,2,2,2,10,'11/05/2020'),(29,3,1,1,5,'11/05/2020'),(30,3,1,2,3,'11/05/2020'),(33,4,1,1,4,'11/05/2020');
# INSERT INTO CHITIETSANPHAM VALUES (34,5,1,1,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (35,5,2,1,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (36,5,3,1,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (37,12,4,1,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (38,12,5,1,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (39,12,6,1,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (40,12,1,3,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (41,12,2,3,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (42,6,3,3,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (43,12,4,3,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (44,6,5,3,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (45,12,6,3,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (46,6,1,5,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (47,12,2,5,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (48,12,3,5,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (49,6,4,5,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (50,12,5,5,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (51,12,6,5,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (52,13,1,5,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (53,13,2,5,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (54,8,3,5,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (55,13,4,5,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (56,8,5,5,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (57,13,6,5,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (58,13,1,2,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (59,7,2,2,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (60,13,3,2,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (61,13,4,2,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (62,8,5,2,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (63,13,6,2,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (64,14,1,2,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (65,14,2,2,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (66,14,3,2,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (67,14,1,6,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (68,14,2,6,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (69,14,3,6,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (70,10,3,2,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (71,10,4,2,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (72,10,5,2,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (73,10,3,1,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (74,10,4,1,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (75,10,5,1,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (76,10,3,4,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (77,10,4,4,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (78,10,5,4,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (79,9,1,1,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (80,9,2,1,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (81,9,3,1,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (82,9,1,6,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (83,9,2,6,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (84,9,3,6,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (85,9,1,4,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (86,9,2,4,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (87,9,3,4,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (88,14,2,3,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (89,14,3,3,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (90,14,4,3,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (91,14,2,6,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (92,14,3,6,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (93,14,4,6,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (94,14,2,1,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (95,14,3,1,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (96,14,4,1,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (97,15,4,1,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (98,15,5,1,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (99,15,6,1,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (100,15,4,3,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (101,15,5,3,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (102,15,6,3,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (103,15,4,5,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (104,15,5,5,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (105,15,6,5,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (106,16,2,5,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (107,16,3,5,15,'16/07/2020');
# INSERT INTO CHITIETSANPHAM VALUES (108,16,4,3,15,'16/07/2020');


/*!40000 ALTER TABLE `CHITIETSANPHAM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `role` (
                        `id` int(11) NOT NULL AUTO_INCREMENT,
                        `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                        `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
insert into role(code,name) values('ADMIN','Qua??n tri??');
insert into role(code,name) values('USER','Ng?????i d??ng');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

-- user_role
DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `user_role` (
                             `userid` int(5) ,
                             `roleid` int(5)


);
/*!40101 SET character_set_client = @saved_cs_client */;
LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (5,5);
# ,(2,2),(3,2),(4,2),(5,2),(6,2),(7,2);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
                        `id` int(11) NOT NULL AUTO_INCREMENT,
                        `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                        `diachi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                        `phone` varchar(15)  CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                        `gioitinh` bit(1) DEFAULT NULL,
    -- `cmnd` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
    -- `machucvu` int(11) DEFAULT NULL,
                        `fullname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
                        `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                        `status` int(1) default 1,
                        PRIMARY KEY (`id`)


) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
insert into user(username,password,fullname,diachi,phone)
values('admin','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','T???n Ph??t','so 2-xa xm-hcm-tdna','0386541270');


/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
--
-- Table structure for table `DANHMUCSANPHAM`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `DANHMUCSANPHAM` (
                                  `madanhmuc` int(11) NOT NULL AUTO_INCREMENT,
                                  `tendanhmuc` varchar(50) CHARACTER SET utf8  COLLATE utf8_general_ci DEFAULT NULL,
                                  `parent_madanhmuc` int(11) default 0,


                                  PRIMARY KEY (`madanhmuc`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DANHMUCSANPHAM`
--

LOCK TABLES `DANHMUCSANPHAM` WRITE;
/*!40000 ALTER TABLE `DANHMUCSANPHAM` DISABLE KEYS */;
INSERT INTO `DANHMUCSANPHAM`(`madanhmuc`,`tendanhmuc`,`parent_madanhmuc`) VALUES (1,'??o',0),(2,'??o Thun',1),(3,'??o Kho??c',1);
/*!40000 ALTER TABLE `DANHMUCSANPHAM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HOADON`
--

DROP TABLE IF EXISTS `HOADON`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `HOADON` (
                          `mahoadon` int(11) NOT NULL AUTO_INCREMENT,
                          `tenkhachhang` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci ,
                          `sodt` char(12) COLLATE utf8_unicode_ci,
                          `diachigiaohang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci ,
                          `tinhtrang` bit(1) DEFAULT b'0',
                          `hinhthucgiaohang` varchar(50) DEFAULT NULL,
                          `thanhtoan` bit(1) default b'0',
                          `tongtien` varchar(20) default 0,
                          `ghichu` text DEFAULT NULL,
                          `createdDate` DATETIME DEFAULT NULL,
                          `updatedDate` DATETIME DEFAULT NULL,

                          PRIMARY KEY (`mahoadon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HOADON`
--

LOCK TABLES `HOADON` WRITE;




/*!40000 ALTER TABLE `HOADON` DISABLE KEYS */;
/*!40000 ALTER TABLE `HOADON` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KHUYENMAI`
--

DROP TABLE IF EXISTS `KHUYENMAI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `KHUYENMAI` (
                             `makhuyenmai` int(11) NOT NULL AUTO_INCREMENT,
                             `tenkhuyenmai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                             `thoigianbatdau` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                             `thoigianketthuc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                             `mota` text COLLATE utf8_unicode_ci,
                             `hinhkhuyenmai` text COLLATE utf8_unicode_ci,
                             `giamgia` int(11) DEFAULT NULL,
                             PRIMARY KEY (`makhuyenmai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KHUYENMAI`
--

LOCK TABLES `KHUYENMAI` WRITE;
/*!40000 ALTER TABLE `KHUYENMAI` DISABLE KEYS */;
/*!40000 ALTER TABLE `KHUYENMAI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MAUSANPHAM`
--

DROP TABLE IF EXISTS `MAUSANPHAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `MAUSANPHAM` (
                              `mamau` int(11) NOT NULL AUTO_INCREMENT,
                              `tenmau` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                              PRIMARY KEY (`mamau`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MAUSANPHAM`
--

LOCK TABLES `MAUSANPHAM` WRITE;
/*!40000 ALTER TABLE `MAUSANPHAM` DISABLE KEYS */;
INSERT INTO `MAUSANPHAM` VALUES (1,'Xanh D????ng'),(2,'X??m'),(3,'Tr???ng'),(4,'H???ng'),(5,'Xanh L??'),(6,'Xanh Ng???c');
/*!40000 ALTER TABLE `MAUSANPHAM` ENABLE KEYS */;
UNLOCK TABLES;

--

--


-- Table structure for table `SANPHAM`
--

DROP TABLE IF EXISTS `SANPHAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `SANPHAM` (
                           `masanpham` int(11) NOT NULL AUTO_INCREMENT,
                           `madanhmuc` int(11) DEFAULT 1,
                           `tensanpham` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL ,
                           `giatien` varchar(14) COLLATE utf8_unicode_ci  NOT NULL ,
                           `mota` text COLLATE utf8_unicode_ci,
                           `hinhsanpham` text COLLATE utf8_unicode_ci NOT NULL,
                           `danhcho` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
                           PRIMARY KEY (`masanpham`),
                           KEY `FK_SANPHAM_DANHMUC` (`madanhmuc`),
                           CONSTRAINT `FK_SANPHAM_DANHMUC` FOREIGN KEY (`madanhmuc`) REFERENCES `danhmucsanpham` (`madanhmuc`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SANPHAM`
--

LOCK TABLES `SANPHAM` WRITE;
/*!40000 ALTER TABLE `SANPHAM` DISABLE KEYS */;
# INSERT INTO `SANPHAM` VALUES (1,1,'S?? Mi Nam Y2010 TD A04','185.000','Ch???t li???u: V???i Ford <br>Th??nh ph???n: 60% cotton 40% poly <br>- M???m m???i, m??t m???<br>- Tho???i m??i v?? b???n','1.jpg','Nam'),
#                              (2,1,'S?? Mi Nam S234 TN 23','199.000','Ch???t li???u: Kate<br>Th??nh ph???n: 12% modal v?? 88% superfine<br>- ??t nh??n v?? d??? ???i<br>- Nhanh kh?? v?? tho??ng m??t<br>HDSD:<br>- ??o s?? mi m??u ph??i trong b??ng r??m ????? tr??nh b???c m??u ph???n vai ??o<br>- ??o s?? mi tr???ng c?? th??? ph??i ngo??i n???ng ????? ??o tr???ng s??ng h??n ( kh??ng ph??i qu?? l??u) ','2.jpg','Nam'),
#                              (3,1,'S?? Mi Nam Y2010 TN J01','185.000',
#                               ' Ch???t li???u:  Ford<br>Th??nh ph???n:  60% cotton 40% poly<br>- V???i ford m???c m??t<br>- Th???m h??t m??? h??i r???t t???t<br>HDSD:<br>- Gi???c v?? nh??? tay <br>- ??o s?? mi m??u ph??i trong b??ng r??m ????? tr??nh b???c m??u ph???n vai ??o<br>- ??o s?? mi tr???ng c?? th??? ph??i ngo??i n???ng ????? ??o tr???ng s??ng h??n ( kh??ng ph??i qu?? l??u ) ','3.jpg','Nam'),
#                              (4,1,'S?? Mi Nam Y2010 BD-A95','185.000',
#                               'Ch???t li???u: Kate<br>Th??nh ph???n: Cotton v?? Polyester.<br>- V???i ??t nh??n, m???t v???i ph???ng v?? m???n<br>- Th???m h??t ???m t???t<br>- D??? d??ng gi???t ???i.<br>HDSD:<br>- ??o s?? mi m??u ph??i trong b??ng r??m ????? tr??nh b???c m??u ph???n vai ??o<br>- ??o s?? mi tr???ng c?? th??? ph??i ngo??i n???ng ????? ??o tr???ng s??ng h??n ( kh??ng ph??i qu?? l??u )','4.jpg','Nam'),
#                              (5,1,'S?? Mi Nam Y2010 TN E02','185.000',
#                               ' Ch???t li???u: Kate <br>Th??nh ph???n: Cotton v?? Polyester.<br>- V???i ??t nh??n, m???t v???i ph???ng v?? m???n<br>- Th???m h??t ???m t???t<br>- D??? d??ng gi???t ???i.<br>HDSD:<br>- ??o s?? mi m??u ph??i trong b??ng r??m ????? tr??nh b???c m??u ph???n vai ??o<br>- ??o s?? mi tr???ng c?? th??? ph??i ngo??i n???ng ????? ??o tr???ng s??ng h??n ( kh??ng ph??i qu?? l??u )','5.jpg','Nam'),
#                              (6,1,'S?? Mi Nam Y2010 Caro TD A04','225.000',
#                               '  Ch???t li???u: Kate <br>Th??nh ph???n: Cotton v?? Polyester.<br>- V???i ??t nh??n, m???t v???i ph???ng v?? m???n<br>- Th???m h??t ???m t???t<br>- D??? d??ng gi???t ???i.<br>HDSD:<br>- ??o s?? mi m??u ph??i trong b??ng r??m ????? tr??nh b???c m??u ph???n vai ??o<br>- ??o s?? mi tr???ng c?? th??? ph??i ngo??i n???ng ????? ??o tr???ng s??ng h??n ( kh??ng ph??i qu?? l??u )','6.jpg','Nam'),
#                              (7,1,'S?? Mi Nam Y2010 BD-A60','350.000',
#                               ' Ch???t li???u: YW 3782 -Tr???ng 17- n??u 3<br>Th??nh ph???n : 65% Polyester 35% Cotton<br>- ????? b???n v???i cao<br>- T??nh h??t ???m cao<br>- Tho??ng m??t','7.jpg','Nam'),
#                              (8,1,'S?? Mi Nam Y2010 BD-A48','450.000',
#                               ' Ch???t li???u:  Ford<br>Th??nh ph???n:  TC 65% Polyester + 35% Cotton<br>- V???i ford m???c m??t<br>- Th???m h??t m??? h??i r???t t???t<br>HDSD:<br>- Gi???c v?? nh??? tay <br>- ??o s?? mi m??u ph??i trong b??ng r??m ????? tr??nh b???c m??u ph???n vai ??o<br>- ??o s?? mi tr???ng c?? th??? ph??i ngo??i n???ng ????? ??o tr???ng s??ng h??n ( kh??ng ph??i qu?? l??u )','8.jpg','Nam'),
#                              (9,1,'S?? Mi Nam Y2010 Caro TD C02','285.000',
#                               'Ch???t li???u: Caro<br>Th??nh ph???n: 100% Cotton<br>- M???m m???i, m??t m???, <br>- Tho???i m??i v?? b???n<br>HDSD:<br>- ??o s?? mi m??u ph??i trong b??ng r??m ????? tr??nh b???c m??u ph???n vai ??o<br>- ??o s?? mi tr???ng c?? th??? ph??i ngo??i n???ng ????? ??o tr???ng s??ng h??n ( kh??ng ph??i qu?? l??u )','9.jpg','Nam'),
#                              (10,2,'??o Thun Nam Y2010 3 L??? B01','120.000',
#                               'Ch???t li???u: Cotton 2 chi???u<br>Th??nh ph???n: 100% Cotton<br>- Co d??n 2 chi???u<br>- Th???m h??t m??? h??i t???t mang l???i c???m gi??c tho??ng m??t<br>HDSD:<br>- Gi???t tay ????? s???n ph???m gi??? ???????c ????? b???n cao<br>- ???i s???n ph???m b???ng b??n ???i h??i n?????c ho???c ???i khi s???n ph???m c??n ???m ????? d??? d??ng l??m ph???ng','10.jpg','Nam'),
#                              (11,2,'??o Thun Nam Y2010 BD-B05','185.000',
#                               'Ch???t li???u: Cotton 2 chi???u<br>Th??nh ph???n: 100% Cotton<br>- Co d??n 2 chi???u<br>- Th???m h??t m??? h??i t???t mang l???i c???m gi??c tho??ng m??t<br>HDSD:<br>- Gi???t tay ????? s???n ph???m gi??? ???????c ????? b???n cao<br>- ???i s???n ph???m b???ng b??n ???i h??i n?????c ho???c ???i khi s???n ph???m c??n ???m ????? d??? d??ng l??m ph???ng','11.jpg','Nam'),
#                              (12,3,'Qu???n Short Thun Ma B?? AB03','225.000',
#                               '','12.jpg','Nam'),
#                              (13,4,'??o kho??c kaki 2N39','185.000',
#                               'Ch???t li???u: kaki<br>Th??nh ph???n: 98%cotton 2%spandex<br>C??ch nhi???t t???t, ????? b???n m??u cao.<br>Co gi??n, h??t ???m t???t v?? th???m h??t m??? h??i.<br>HDSD:<br>- Gi???t ??? ch??? ????? b??nh th?????ng, v???i ????? c?? m??u t????ng t???.<br>- Kh??ng ???????c d??ng h??a ch???t t???y.<br>- H???n ch??? s??? d???ng m??y s???y, ???i ??? nhi???t ????? th??ch h???p.','13.jpg','Nam'),
#                              (14,5,'T??i ??eo Y2010 B08','185.000',
#                               'BALO ??EO CH??O B08<br>- Ki???u d??ng thi???t k??? th???i trang v?? tinh t???.<br>- Logo YaMe ????nh n???i sang tr???ng<br>- Nhi???u ng??n ti???n d???ng: <br>  + Ng??n ch??nh tr?????c.<br>  + Ng??n ch??nh sau r???ng, c?? ng??n ch???a ipad ch???ng s???c, ng??n l?????i ti???n d???ng.<br>- K??ch th?????c: 30x19x7,5 cm<br>  + Ng??n ph??? tr?????c tinh t??? v?? th???i trang.<br>  + Ng??n ph??? sau c?? ?????m ch???ng s???c tuy???t ?????i.<br>- Ch???t li???u: 600D Twill PVC+ L??t 210D L?????i x??m<br>- ?????m l??ng v?? quai ??eo b???ng Air mesh +EVA 5mm+ PE foam 8mm<br>- D??y k??o YKK #5 2 chi???u m?????t b???n','14.jpg','Nam'),
#                              (15,6,'Qu???n Jean Slimfit Y2010 B21','185.000',
#                               'Ch???t li???u: Jean Cotton<br>Th??nh ph???n: 86% cotton 14%poly<br>- ????? b???n cao<br>- V???i ??t nh???n','15.jpg','Nam'),
#                              (16,7,'Qu???n Kaki Y2010 C01','350.000',
#                               ' Ch???t li???u: Kaki Thun<br>Th??nh ph???n: 97% cotton 3% spandex<br>- ??m ??i v?? th???m h??t cao<br>- Co d??n t???t<br>HDSD:<br>_ Kh??ng d??ng ch???t t???y tr???ng<br>_ ???i ??? nhi???t ????? t???i ??a 110 ????? C<br>_ Gi???t chung v???i s???n ph???m c??ng m??u','16.jpg','Nam');
#
INSERT INTO `heroku_7bc1307ac1f5a85`.`sanpham` (`masanpham`, `madanhmuc`, `tensanpham`, `giatien`, `mota`, `hinhsanpham`, `danhcho`) VALUES ('17', '5', 'T??i ??eo Y2010 BD-A20', '299.000', 'T??I ??EO DOUPLE - 2IN1<br>T??i thi???t k??? m???i l??? v???i 2 ph???n c?? th??? th??o r???i.<br>B??? t??i bao g???m: <br>- T??i l???n 19 x 17 x 5 cm<br>- T??i nh??? 11 x 17 x 5 cm<br>- D??y ??ai ??eo b???ng<br>- D??y ??eo ch??o<br>Ch???t li???u:<br>- V???i ch??nh: 320D Nylon Blond<br>- L??t 210D+ PE foam 5mm<br>- D??y k??o YKK #5<br>- Kh??a buckle &amp; Velcro 25mm<br>- D??y d?? 3mm ??en<br><br> ', '22.jpg', 'Nam');
INSERT INTO `heroku_7bc1307ac1f5a85`.`sanpham` (`masanpham`, `madanhmuc`, `tensanpham`, `giatien`, `mota`, `hinhsanpham`, `danhcho`) VALUES ('18', '5', 'T??i ??eo Y2010 B26', '249.000', 'MODERN BAG B26<br>Ch???t li???u:<br>- V???i ch??nh: 1000D Cordura<br>- L??t 210D ??en <br>- ?????m v?? l?????i Airmesh<br>- D??y k??o YKK #8<br>- Kh??a buckle 38mm<br>- Logo nh???a ch??? Y<br>- Khoen vu??ng 38mm<br>Thi???t k???:<br>- Vi???n ph???n quang 25mm<br>- Nhi???u ng??n ti???n d???ng, s???c ch???a l???n.<br>- Ki???u d??ng tr??? trung <br>- M??u s???c ??a d???ng.', '23.jpg', 'Nam');
# INSERT INTO `heroku_7bc1307ac1f5a85`.`sanpham` (`masanpham`, `madanhmuc`, `tensanpham`, `giatien`, `mota`, `hinhsanpham`, `danhcho`) VALUES ('19', '5', 'T??i ??eo Y2010 B25 BD-A74', '249.000', 'MODERN BELT BAG B25<br>Ch???t li???u: <br>- V???i ch??nh: 1000D Cordura<br>- L??t 210D m??u Cam<br>- D??y K??o YKK #5<br>- Kh??a buckle<br>- Logo nh???a ch??? Y<br>- Khoen vu??ng 38mm<br>Thi???t k???: <br>- M??u s???c ??a d???ng.<br>- Ki???u d??ng tr??? trung<br>- Nhi???u ng??n ti???n d???ng<br>- Nh??? g???n v?? th???i trang', '24.jpg', 'Nam');
# INSERT INTO `heroku_7bc1307ac1f5a85`.`sanpham` (`masanpham`, `madanhmuc`, `tensanpham`, `giatien`, `mota`, `hinhsanpham`, `danhcho`) VALUES ('20', '3', 'Qu???n Short Kaki Y2010 BD-A63', '255.000', 'Ch???t li???u: Kaki<br>Th??nh ph???n: 100% Cotton<br>- V???i kaki c?? t??nh ch???t chung l?? b???n, m??t, co gi??n', '25.jpg', 'Nam');
# INSERT INTO `heroku_7bc1307ac1f5a85`.`sanpham` (`masanpham`, `madanhmuc`, `tensanpham`, `giatien`, `mota`, `hinhsanpham`, `danhcho`) VALUES ('21', '3', 'Qu???n Short Thun Y2010 C02', '350.000', 'Ch???t li???u: V???y c?? ch??o<br>Th??nh ph???n: 95%cotton 5%spandex<br>Co d??n 4 chi???u n??n t???o ???????c s??? tho???i m??i khi m???c<br>V???i th???m h??t m??? h??i t???t, tho??ng kh??', '26.jpg', 'Nam');
# INSERT INTO `heroku_7bc1307ac1f5a85`.`sanpham` (`masanpham`, `madanhmuc`, `tensanpham`, `giatien`, `hinhsanpham`, `danhcho`) VALUES ('22', '3', 'Qu???n Short Jean Y2010 B10', '295.000', '27.jpg', 'Nam');
# INSERT INTO `heroku_7bc1307ac1f5a85`.`sanpham` (`masanpham`, `madanhmuc`, `tensanpham`, `giatien`, `mota`, `hinhsanpham`, `danhcho`) VALUES ('23', '2', '??o Thun Nam Y2010 BD-B17', '185.000', 'Ch???t li???u: Cotton 2 chi???u<br>Th??nh ph???n: 100% Cotton<br>- Co d??n 2 chi???u<br>- Th???m h??t m??? h??i t???t mang l???i c???m gi??c tho??ng m??t<br>HDSD:<br>- Gi???t tay ????? s???n ph???m gi??? ???????c ????? b???n cao<br>- ???i s???n ph???m b???ng b??n ???i h??i n?????c ho???c ???i khi s???n ph???m c??n ???m ????? d??? d??ng l??m ph???ng', '28.jpg', 'Nam');
# INSERT INTO `heroku_7bc1307ac1f5a85`.`sanpham` (`masanpham`, `madanhmuc`, `tensanpham`, `giatien`, `mota`, `hinhsanpham`, `danhcho`) VALUES ('24', '2', '??o Thun Nam Y2010 BD-B06', '185.000', '  Ch???t li???u: Cotton 2 chi???u<br>Th??nh ph???n: 100% Cotton<br>- Co d??n 2 chi???u<br>- Th???m h??t m??? h??i t???t mang l???i c???m gi??c tho??ng m??t<br>HDSD:<br>- Gi???t tay ????? s???n ph???m gi??? ???????c ????? b???n cao<br>- ???i s???n ph???m b???ng b??n ???i h??i n?????c ho???c ???i khi s???n ph???m c??n ???m ????? d??? d??ng l??m ph???ng', '29.jpg', 'Nam');
# INSERT INTO `heroku_7bc1307ac1f5a85`.`sanpham` (`masanpham`, `madanhmuc`, `tensanpham`, `giatien`, `mota`, `hinhsanpham`, `danhcho`) VALUES ('25', '6', 'Qu???n Jean Slimfit Y2010 B30', '425.000', 'Ch???t li???u: Jean Cotton<br>Th??nh ph???n: 100% cotton<br>- ????? b???n cao<br>- M???c r???t tho???i m??i.<br>HDSD:<br>- Gi???t qua l???n ?????u tr?????c khi m???c. C??ng ??o???n gi???t l???n ?????u n??y s??? l??m gi???m b???t b???i v???i <br>- H??y l???n m???t tr??i c???a s???n ph???m ????? gi???t. H??nh ?????ng n??y s??? gi??? m??u t???t h??n cho trang ph???c l??m t??? v???i jeans m?? b???n ??ang s??? h???u', '30.jpg', 'Nam');
# INSERT INTO `heroku_7bc1307ac1f5a85`.`sanpham` (`masanpham`, `madanhmuc`, `tensanpham`, `giatien`, `mota`, `hinhsanpham`, `danhcho`) VALUES ('26', '6', 'Qu???n Jean Slimfit Y2010 B11', '425.000', 'Ch???t li???u: Jean Cotton<br>Th??nh ph???n: 100% cotton<br>- ????? b???n cao<br>- M???c r???t tho???i m??i.<br>HDSD:<br>- Gi???t qua l???n ?????u tr?????c khi m???c. C??ng ??o???n gi???t l???n ?????u n??y s??? l??m gi???m b???t b???i v???i <br>- H??y l???n m???t tr??i c???a s???n ph???m ????? gi???t. H??nh ?????ng n??y s??? gi??? m??u t???t h??n cho trang ph???c l??m t??? v???i jeans m?? b???n ??ang s??? h???u', '31.jpg', 'Nam');
# INSERT INTO `heroku_7bc1307ac1f5a85`.`sanpham` (`masanpham`, `madanhmuc`, `tensanpham`, `giatien`, `mota`, `hinhsanpham`, `danhcho`) VALUES ('27', '6', 'Qu???n Jean Slimfit Y2010 B11', '425.000', 'Ch???t li???u: Jean Cotton<br>Th??nh ph???n: 100% cotton<br>- ????? b???n cao<br>- M???c r???t tho???i m??i.<br>HDSD:<br>- Gi???t qua l???n ?????u tr?????c khi m???c. C??ng ??o???n gi???t l???n ?????u n??y s??? l??m gi???m b???t b???i v???i <br>- H??y l???n m???t tr??i c???a s???n ph???m ????? gi???t. H??nh ?????ng n??y s??? gi??? m??u t???t h??n cho trang ph???c l??m t??? v???i jeans m?? b???n ??ang s??? h???u', '32.jpg', 'Nam');
# INSERT INTO `heroku_7bc1307ac1f5a85`.`sanpham` (`masanpham`, `madanhmuc`, `tensanpham`, `giatien`, `mota`, `hinhsanpham`, `danhcho`) VALUES ('28', '7', 'Qu???n Kaki Y2010 C01', '350.000', ' Ch???t li???u: Kaki Thun<br>Th??nh ph???n: 97% cotton 3% spandex<br>- ??m ??i v?? th???m h??t cao<br>- Co d??n t???t<br>HDSD:<br>_ Kh??ng d??ng ch???t t???y tr???ng<br>_ ???i ??? nhi???t ????? t???i ??a 110 ????? C<br>_ Gi???t chung v???i s???n ph???m c??ng m??u', '33.jpg', 'Nam');
# INSERT INTO `heroku_7bc1307ac1f5a85`.`sanpham` (`masanpham`, `madanhmuc`, `tensanpham`, `giatien`, `mota`, `hinhsanpham`, `danhcho`) VALUES ('29', '7', 'Qu???n Kaki Y2010 C04', '350.000', 'Ch???t li???u: Kaki Thun<br>Th??nh ph???n: 97% cotton 3% spandex<br>- ??m ??i v?? th???m h??t cao<br>- Co d??n t???t<br>HDSD:<br>_ Kh??ng d??ng ch???t t???y tr???ng<br>_ ???i ??? nhi???t ????? t???i ??a 110 ????? C<br>_ Gi???t chung v???i s???n ph???m c??ng m??u', '34.jpg', 'Nam');
# INSERT INTO `heroku_7bc1307ac1f5a85`.`sanpham` (`masanpham`, `madanhmuc`, `tensanpham`, `giatien`, `mota`, `hinhsanpham`, `danhcho`) VALUES ('30', '7', 'Qu???n Kaki Y2010 F01', '350.000', 'Ch???t li???u : Kaki Thun<br>Th??nh ph???n : 97% cotton 3% spandex<br>- V???i kaki c?? t??nh ch???t chung l?? b???n, m??t<br>- V???i c?? pha th??m s???i spandex ????? t??ng ????? co gi??n c???a v???i ??em l???i c???m gi??c tho???i m??i cho ng?????i m???c', '35.jpg', 'Nam');



/*!40000 ALTER TABLE `SANPHAM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SIZESANPHAM`
--

DROP TABLE IF EXISTS `SIZESANPHAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `SIZESANPHAM` (
                               `masize` int(11) NOT NULL AUTO_INCREMENT,
                               `size` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                               PRIMARY KEY (`masize`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SIZESANPHAM`
--

LOCK TABLES `SIZESANPHAM` WRITE;
/*!40000 ALTER TABLE `SIZESANPHAM` DISABLE KEYS */;
INSERT INTO `SIZESANPHAM` VALUES (1,'S'),(2,'M'),(3,'L'),(4,'XL'),(5,'XXL'),(6,'XXXL');
/*!40000 ALTER TABLE `SIZESANPHAM` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
DROP TABLE IF EXISTS `REVIEW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `REVIEW` (
                          `id` int(11) NOT NULL AUTO_INCREMENT,
                          `comment` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                          `rating` double,
                          `created` date,
                          `userId` int(11),
                          `masanpham` int(11),
                          PRIMARY KEY (`id`),
                          KEY `FK_REVIEW_USER` (`userId`),
                          KEY `FK_REVIEW_SANPHAM` (`masanpham`),
                          CONSTRAINT `FK_REVIEW_USER` FOREIGN KEY (`userId`) REFERENCES `user` (`id`),
                          CONSTRAINT `FK_REVIEW_SANPHAM` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- insert into `heroku_7bc1307ac1f5a85`. `review` (`userId`,`masanpham`,`rating`) values (1,1,5),(2,1,5),(3,1,2),(4,1,0),(5,1,1),
--  (1,2,4),(4,2,0),(6,2,2),(2,3,4),(3,3,1),(6,3,1),(7,3,1),(1,4,2),(2,4,2),(3,4,3),(4,4,4),(5,4,4),(7,4,4),(1,5,2),(2,5,0),(3,5,4),(7,5,5);

DROP TABLE IF EXISTS `COSINESIMILARITY`;
CREATE TABLE `COSINESIMILARITY` (
                                    `row_product_id` int(11) NOT NULL ,
                                    `column_product_id` int(11) NOT NULL ,
                                    `cosSimilarity` double,
                                    PRIMARY KEY (`row_product_id`,`column_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `RECOMMENDRATING`;
CREATE TABLE `RECOMMENDRATING` (
                                   `user_id` int(11) NOT NULL ,
                                   `products` varchar(255),
                                   PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
# drop procedure if exists load_user_test_data;
#
# delimiter #
# create procedure load_user_test_data()
    # begin
#
# declare v_max int unsigned default 1000;
# declare v_counter int unsigned default 1;
#
# truncate table user;
# truncate table user_role;
# start transaction;
# while v_counter < v_max do
# insert into user(username,password,fullname,diachi,phone)
# values(CONCAT('user',v_counter),'$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG',CONCAT('user ',v_counter),'so 2-xa xm-hcm-tdna','0386541270');
# INSERT INTO `user_role` VALUES (v_counter,2);
# set v_counter=v_counter+1;
# end while;
# insert into user(username,password,fullname,diachi,phone)
# values('admin','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','admin','so 2-xa xm-hcm-tdna','0386541270');
# INSERT INTO `user_role` VALUES (v_counter,1);
# commit;
# end #
#
# delimiter ;
# call load_user_test_data();
#
# drop procedure if exists load_reviewbyuser_test_data;
# DELIMITER $$
# create procedure load_reviewbyuser_test_data(IN user_Id INT(11))
    #     body :begin
#   DECLARE msp INT(11) DEFAULT 1;
#    DECLARE rating INT(11) DEFAULT 1;
#      DECLARE v_masanphammax INT(11) DEFAULT 30;
#         DECLARE v_index INT(11) DEFAULT 1;
#          DECLARE flag INT(11) DEFAULT -1;
# start transaction;
# while v_index < v_masanphammax do
# 	  set msp=floor(rand()*v_masanphammax)+1;
# 	  set rating=floor(rand()*5)+1;
# SELECT  count(*) FROM review WHERE masanpham = msp and userId = user_Id  INTO flag;
# IF (flag = 0) THEN
# begin
# insert into `heroku_7bc1307ac1f5a85`.`review` (`userId`,`masanpham`,`rating`) values (user_Id,msp,rating);
#
# end;
#
# END IF;
# 	set v_index=v_index+1;
# end while;
# commit;
# end $$
# delimiter ;
# -- call load_reviewbyuser_test_data(1);
#
# drop procedure if exists load_review_test_data;
#
# DELIMITER $$
# create procedure load_review_test_data()
    #     body:begin
#
# declare v_max int unsigned default 1000;
# declare v_counter int unsigned default 1;
# truncate table review;
# start transaction;
# while v_counter < v_max do
# 	  call load_reviewbyuser_test_data(v_counter);
# set v_counter=v_counter+1;
# end while;
# commit;
# end $$
#
# delimiter ;
update sanpham
set madanhmuc = '2'
where masanpham = '17';
update sanpham
set madanhmuc = '3'
where masanpham = '18';
-- call load_review_test_data();
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-13 10:10:53
