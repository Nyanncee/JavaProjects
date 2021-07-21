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
-- Table structure for table `custom_order`
--

DROP TABLE IF EXISTS `custom_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_order` (
  `Custom_ID` int NOT NULL,
  `Custom_Name` varchar(200) DEFAULT NULL,
  `Custom_Price` double DEFAULT NULL,
  `Special_Note` varchar(200) DEFAULT NULL,
  `Custom_Order_Number` int DEFAULT NULL,
  PRIMARY KEY (`Custom_ID`),
  KEY `fk_Custom_Order_Orders1_idx` (`Custom_Order_Number`),
  CONSTRAINT `fk_Custom_Order_Orders1` FOREIGN KEY (`Custom_Order_Number`) REFERENCES `orders` (`Order_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_order`
--

LOCK TABLES `custom_order` WRITE;
/*!40000 ALTER TABLE `custom_order` DISABLE KEYS */;
INSERT INTO `custom_order` VALUES (102,'Extra Spicy ',1,'',NULL),(103,'Extra Cheese',1,NULL,NULL),(104,'Less Sweet',0,NULL,NULL),(105,'Extra Sweet',1,NULL,NULL),(106,'Vegeterian',0,NULL,NULL),(107,'Paescatarian',NULL,NULL,NULL),(108,'Well Done',0,NULL,NULL),(109,'Medium Rare',0,NULL,NULL),(110,'Extra Egg',1.5,NULL,NULL),(111,'Less Spicy',1,NULL,NULL);
/*!40000 ALTER TABLE `custom_order` ENABLE KEYS */;
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
