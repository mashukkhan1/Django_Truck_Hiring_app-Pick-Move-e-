CREATE DATABASE  IF NOT EXISTS `test1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `test1`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: test1
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('455e24nt93114h8i0xh8mbvngu0ptgnp','.eJxVjDsOwjAQBe_iGlnrxGs7lPQ5g7X-LA4gR4qTCnF3EikFtG9m3lt42tbit5YXPyVxFUpcfrdA8ZnrAdKD6n2Wca7rMgV5KPKkTY5zyq_b6f4dFGplrxGV1W7o0VjonHEGIkTdcXTQB807DEzKQEZAQ5Zp4ByTA-asLTOKzxeqSjeD:1kw9iu:sF5UK5NWBISeFmACoTTfNQ_d9zHJRjf5UV-p6fWFj0Y','2021-01-17 20:11:32.609279'),('63j9c77mlyvhqyr073vs0gk9kcdnrpli','e30:1kvngG:oQBzbCHljjjesfheVKOdsTQh2rSZH_i_y58ooLp0qLo','2021-01-16 20:39:20.686178'),('8khxa77d4g69odaxfifdiy87kqo271l8','.eJxVjMsOwiAQRf-FtSHAlEdduvcbCDNMpWpoUtqV8d-VpAtN7uqek_MSMe1biXvjNc5ZnIUWp98PEz24dpDvqd4WSUvd1hllV-RBm7wumZ-Xw_0LlNRKzxpD7BGCt5bBqKA1OwDIA9IEGSdP6julwAAPqNG60bDjkdj5kLR4fwDI6zdh:1kfRNo:gcTP4KisdxrWl4ARrutQuujL65MVsspM-VsP1FQE0jI','2020-12-02 17:36:40.285365'),('8rq43lhziktq68aivfit6nacc8i8q4pe','e30:1kw9My:MoLBT47DGqHYieJptVAvksTcSkylxwUX0r-mLTbQKto','2021-01-17 19:48:52.198579'),('9ni8unle8s7rc2ta5f5t3fl7ryzj28uq','e30:1kw6Cf:l3YB8Zd2xSs9RhWd3dleG1tdC27-gAI7gccmXXZrFdw','2021-01-17 16:26:01.300325'),('eul6vqmswusyvvgx512s7vvawcjk1r01','.eJxVjDsOwjAQBe_iGlnrxGs7lPQ5g7X-LA4gR4qTCnF3EikFtG9m3lt42tbit5YXPyVxFUpcfrdA8ZnrAdKD6n2Wca7rMgV5KPKkTY5zyq_b6f4dFGplrxGV1W7o0VjonHEGIkTdcXTQB807DEzKQEZAQ5Zp4ByTA-asLTOKzxeqSjeD:1koajN:R1gl-kEW97SC-GYTQBWfSrN_e-2LTVqhfPVBtzhGab0','2020-12-27 23:24:45.233229'),('ikjuvlbsdaua79s2h7lj9cem92cfg7el','e30:1kw9NL:AZQblTr7Q5sp-GwwpGGUXBS3Xn9IFlnI7SfgA7OVsNs','2021-01-17 19:49:15.597013'),('iykmga8v3xaotk18wu209zgtkp7g9r37','e30:1kvnfg:oWIXLGbNdkIGzqE_JU1kiWGB_F4rKgRGcsyeoei2wAk','2021-01-16 20:38:44.569654'),('j3nlfordop6jc6s22gbijixuahujj4kc','e30:1kvR8N:WihQbWRhYOJwykcY52wOB97tohVBe0KCtAQprnAsqDQ','2021-01-15 20:34:51.292516'),('kn9gtj8hinquvslvxd3b2uspnukxztx8','e30:1kvR7J:kSwow7oc0LwW0u47fwRLTc4wnBiuFAeFnJqzMm35dpE','2021-01-15 20:33:45.082171'),('p5jh6sj89sso65gq5m1a57mn54ud0o2k','e30:1kw9Nh:yzR3y9KrBzdJx1zXGWCYz9jOXECdQ5-qmG_h2LaqfI4','2021-01-17 19:49:37.225281');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-04  2:52:34
