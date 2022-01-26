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
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$jHU3e3knTTRw$Bd4jtVmgZdkkfWKdtqzCQkp8w8ym1b/OkDMXv/nbKwA=','2021-01-03 20:11:32.600276',1,'mashuk','Mashuk','Khan','connect@mashuk.com',1,1,'2020-11-18 17:36:22.000000'),(19,'pbkdf2_sha256$216000$5GJv4kKjHDXB$VVUtUj785JiFZH6A9IwCr3mvFISMyo8vGe2tDvv6YkM=','2021-01-03 08:02:26.541501',0,'mashuk162','Mashuk','Khan','seriesformashuk@gmail.com',0,1,'2021-01-02 08:21:11.880915'),(20,'pbkdf2_sha256$216000$ElwQfxi3buXg$3y4K6qChY8DinZBWp3eIGiE2yhmq3doWhiUBSCKW4U0=','2021-01-03 19:52:35.074277',0,'noureen053','Noureen','Alam','sjhdka@gmail.com',0,1,'2021-01-02 19:41:39.229384'),(21,'pbkdf2_sha256$216000$2NDSuMuFqUQU$Uq0mZY4LRDVgzxqh52SynSnh6o3A3KQaIy58Y+QoQic=','2021-01-02 20:41:52.461469',0,'testreset','test','reset','sj2hdka@gmail.com',0,1,'2021-01-02 19:44:45.272644'),(22,'pbkdf2_sha256$216000$ssR6GFBCMII1$SmGaOjaNGJzg/46i/NmfQv35EV1jKdnAKSKhpgVg2Hk=',NULL,0,'testreset2','test','reset','sj2h3dka@gmail.com',0,1,'2021-01-02 19:46:42.347945'),(23,'pbkdf2_sha256$216000$uwp6ctIgQ4Sq$CkqAON7hNgwW5R8Pnhe6pf/xOk34Rr+IFYJo2OQ5eEc=','2021-01-02 21:16:41.176246',0,'reen053','Noureen','Khan','reen053@gmail.com',0,1,'2021-01-02 21:16:10.682011');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-04  2:52:35
