-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: resturant
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `helps_in`
--

DROP TABLE IF EXISTS `helps_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `helps_in` (
  `Reserve_Number` int NOT NULL,
  `Rewards_Number` int NOT NULL,
  `Giftcard_Number` int NOT NULL,
  PRIMARY KEY (`Reserve_Number`,`Rewards_Number`,`Giftcard_Number`),
  KEY `fk_Reservation_has_Promotions_Promotions1_idx` (`Rewards_Number`,`Giftcard_Number`),
  KEY `fk_Reservation_has_Promotions_Reservation1_idx` (`Reserve_Number`),
  CONSTRAINT `fk_Reservation_has_Promotions_Promotions1` FOREIGN KEY (`Rewards_Number`, `Giftcard_Number`) REFERENCES `promotions` (`Rewards_ID`, `Giftcard_Number`),
  CONSTRAINT `fk_Reservation_has_Promotions_Reservation1` FOREIGN KEY (`Reserve_Number`) REFERENCES `reservation` (`Reservation_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helps_in`
--

LOCK TABLES `helps_in` WRITE;
/*!40000 ALTER TABLE `helps_in` DISABLE KEYS */;
INSERT INTO `helps_in` VALUES (21,3003,2003),(22,3005,2005),(23,3001,2001),(24,3002,2002),(25,3004,2004),(26,3006,2006),(27,3007,2007),(28,3008,2008),(29,3009,2009),(30,3010,2010);
/*!40000 ALTER TABLE `helps_in` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-16 13:14:56
