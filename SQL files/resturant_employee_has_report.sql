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
-- Table structure for table `employee_has_report`
--

DROP TABLE IF EXISTS `employee_has_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_has_report` (
  `Employee_Code` int NOT NULL,
  `Report_Date` date NOT NULL,
  PRIMARY KEY (`Employee_Code`,`Report_Date`),
  KEY `fk_Employee_has_report_Report1_idx` (`Report_Date`),
  CONSTRAINT `fk_Employee_has_report_Employee1` FOREIGN KEY (`Employee_Code`) REFERENCES `employee` (`Employee_ID`),
  CONSTRAINT `fk_Employee_has_report_Report1` FOREIGN KEY (`Report_Date`) REFERENCES `report` (`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_has_report`
--

LOCK TABLES `employee_has_report` WRITE;
/*!40000 ALTER TABLE `employee_has_report` DISABLE KEYS */;
INSERT INTO `employee_has_report` VALUES (2,'2019-10-01'),(3,'2019-10-01'),(13,'2019-10-01'),(7,'2019-10-02'),(4,'2019-10-03'),(15,'2019-10-03'),(5,'2019-10-04'),(7,'2019-10-05'),(11,'2019-10-06'),(12,'2019-10-08');
/*!40000 ALTER TABLE `employee_has_report` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-16 13:14:57
