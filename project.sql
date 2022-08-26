-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: new
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `Book_ID` int NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Author` varchar(50) DEFAULT NULL,
  `Publication` varchar(20) DEFAULT NULL,
  `Category` varchar(20) DEFAULT NULL,
  `Total_Copies` int DEFAULT NULL,
  `Price` int DEFAULT NULL,
  PRIMARY KEY (`Book_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Matrix','Lilly Wachowski','Penguin Publications','Sci-Fi',15,199),(2,'Mocking Bird','James Rowling','Penguin Publications','Fiction',1,999),(3,'Percy Jackson','James Rowling','Penguin Publications','Fiction',3,323),(4,'Tron Legacy','Lilly Wachowski','Penguin Publications','Sci-Fi',2,1099),(5,'Hunger Games','Silly Kachowski','Penguin Publications','Fiction',1,100),(6,'Feynmann','Richard Feynmann','MacGraw Hill','Science',2,1500),(7,'Chess 101','Gary Kasparov','Irodov publications','Sports',1,119),(8,'Archies','Naom Chaosky','Schoolmate','Fiction',1,199),(9,'Hunger Games','Silly Kachowski','Penguin Publications','Fiction',3,100),(10,'A Thousand Suns','Khalid Houssaini','Penguin Publication','Fiction',2,500),(11,'The Kite Runner','Khalid Houssaini','MacGraw Hill','Fiction',20,500);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `Branch_ID` int NOT NULL,
  `Manager` varchar(20) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Total_Suppliers` int DEFAULT NULL,
  PRIMARY KEY (`Branch_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,'Manoj','Plot - 2, Vaishali Bagh, Gzb',6),(2,'Rahul','Plot - 4, Indirapuram Bagh, Gzb',10),(3,'Viren','Plot - 1, Rajiv Nagar, Gzb',9),(4,'sakshi','Plot - 8, Indira Nagar',15);
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Name` varchar(50) NOT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Contact` int NOT NULL,
  `Books_Purchased` int DEFAULT NULL,
  `Payment` int DEFAULT NULL,
  `book_type` varchar(10) NOT NULL,
  PRIMARY KEY (`Contact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('Deepesh','Vilage- Ganjpar, PO Surir, Distt- Mathura, Uttar Pradesh',573656,3,1119,'fiction'),('Rupa','Orchid-8, Ruhi Apartments, Ghaziabad',4290795,1,999,''),('Frontline','Orchard-18, Puhi Apartments, Gurgaon',6790795,2,969,''),('Krunal','Vilage- Madhavnagar, PO Rampur, Distt- Rampur, Uttar Pradesh',6907756,3,3199,'drama'),('Ramesh','Garden-22, Near Village Ajhai, Noida',36463472,1,119,'Comic');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_status`
--

DROP TABLE IF EXISTS `issue_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue_status` (
  `Book_ID` int NOT NULL,
  `Issue_No` varchar(20) DEFAULT NULL,
  `Member_ID` int NOT NULL,
  `Issue_Date` date DEFAULT NULL,
  `Return_Date` date DEFAULT NULL,
  PRIMARY KEY (`Book_ID`),
  KEY `Member_ID` (`Member_ID`),
  CONSTRAINT `issue_status_ibfk_1` FOREIGN KEY (`Book_ID`) REFERENCES `book` (`Book_ID`),
  CONSTRAINT `issue_status_ibfk_2` FOREIGN KEY (`Member_ID`) REFERENCES `members` (`Member_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_status`
--

LOCK TABLES `issue_status` WRITE;
/*!40000 ALTER TABLE `issue_status` DISABLE KEYS */;
INSERT INTO `issue_status` VALUES (1,'E01',4,'2020-10-19','2020-11-19'),(3,'E03',4,'2020-10-19','2020-11-19'),(7,'E05',3,'2020-11-01','2020-12-19'),(11,'E03',4,'2020-10-19','2020-11-19');
/*!40000 ALTER TABLE `issue_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `Member_ID` int NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Join_Date` date DEFAULT NULL,
  `Contact` int DEFAULT NULL,
  `Total_Books_Issued` int DEFAULT NULL,
  `Book_1` varchar(20) DEFAULT NULL,
  `Book_2` varchar(20) DEFAULT NULL,
  `Book_3` varchar(20) DEFAULT NULL,
  `Book_4` varchar(20) DEFAULT NULL,
  `Total_Fine` int DEFAULT NULL,
  PRIMARY KEY (`Member_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Balram','Plot-2, Shalimaar Bagh, Delhi','2019-06-01',4290023,2,'Percy Jackson','Jules Verne Tales',NULL,NULL,100),(2,'Sudaama','Flat No - 203, eHomes, Delhi','2019-10-14',4290546,3,'Tron Legacy','Hunger Games','Mockingbird',NULL,80),(3,'Sudeepti','Flat No - 204, eHomes, Delhi','2019-10-19',4290423,3,'Matrix','Feynmann','Archies',NULL,0),(4,'Vishu','Flat - 405, Princess Park Society, Hyderabad','2019-07-20',4290324,4,'Matrix','Chess 101','Chacha Chaudhary','101 Dalmations',1000);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_details`
--

DROP TABLE IF EXISTS `supplier_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_details` (
  `Supplier_ID` int NOT NULL,
  `Supplier_Name` varchar(20) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Contact` int NOT NULL,
  `eMail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Supplier_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_details`
--

LOCK TABLES `supplier_details` WRITE;
/*!40000 ALTER TABLE `supplier_details` DISABLE KEYS */;
INSERT INTO `supplier_details` VALUES (1,'Kashyap','Plot - 07, Ganesh Nagar, Ghaziabad',4290056,'kashyapraaj101@gmail.com'),(2,'Vivek','Plot - 08, Shiv Nagar, NOIDA',4390066,'vivekraaj09@gmail.com'),(3,'Nischay','Plot - 37, Ramnagar, Gurgaon',6291156,'nischay91@gmail.com'),(4,'Yatnesh','Shakti Sadan, Kaniya, Ramnagar',6766343,'yajju@yahoo.com'),(5,'Hrishikesh','Lohia Head, Sharda Powerplant, Khateema',67736764,'hrishikehsdfj32@hotmail.com');
/*!40000 ALTER TABLE `supplier_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-09 15:32:25
