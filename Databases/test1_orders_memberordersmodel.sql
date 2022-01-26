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
-- Table structure for table `orders_memberordersmodel`
--

DROP TABLE IF EXISTS `orders_memberordersmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_memberordersmodel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phone` bigint unsigned NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `truck` longtext NOT NULL,
  `n_labours` int NOT NULL,
  `loadDesc` longtext NOT NULL,
  `load_location` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `memberId_id` int DEFAULT NULL,
  `unload_location` longtext NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_memberordersmodel_memberId_id_42ff467d_fk_auth_user_id` (`memberId_id`),
  CONSTRAINT `orders_memberordersmodel_phone_e31f744c_check` CHECK ((`phone` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_memberordersmodel`
--

LOCK TABLES `orders_memberordersmodel` WRITE;
/*!40000 ALTER TABLE `orders_memberordersmodel` DISABLE KEYS */;
INSERT INTO `orders_memberordersmodel` VALUES (99,1234567,'2020-12-30','18:02:00.000000','1 Ton Truck',2,'10 cartons','Uttara','2021-01-03 08:02:57.293130',19,'Dhanmondi','Cancelled'),(100,1234567,'2021-01-08','14:08:00.000000','15 Ton Truck',3,'10 cartons','Dhanmondi','2021-01-03 08:03:20.459205',19,'Tongi','Done'),(101,1234567,'2021-01-22','14:07:00.000000','15 Ton Truck',2,'10 cartons','Uttara','2021-01-03 08:03:45.852170',19,'Uttara','Pending');
/*!40000 ALTER TABLE `orders_memberordersmodel` ENABLE KEYS */;
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
