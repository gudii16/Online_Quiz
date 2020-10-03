-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: online_quiz
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `aca`
--

DROP TABLE IF EXISTS `aca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aca` (
  `qid` int(2) NOT NULL,
  `question` varchar(800) DEFAULT NULL,
  `option1` varchar(90) DEFAULT NULL,
  `option2` varchar(90) DEFAULT NULL,
  `option3` varchar(90) DEFAULT NULL,
  `option4` varchar(90) DEFAULT NULL,
  `answer` int(2) DEFAULT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aca`
--

LOCK TABLES `aca` WRITE;
/*!40000 ALTER TABLE `aca` DISABLE KEYS */;
INSERT INTO `aca` VALUES (1,'Optimizations on sources with output leading to later optimization passes are known ','Low-level optimizations','High-level optimizations','Local optimizations','Global optimizations',2),(2,'In 32-bit addressing mode, address field is either 1 byte or ','2 bytes','3 bytes','4 bytes','5 bytes',3),(3,'Floating-point numbers are normally a multiples of size of a','Bit','Nibble','Word','Byte',3),(4,'In MIPS instruction fields, shamt field is of','4bits','5bits','6bits','7bits',2),(5,'If a block can be placed at every location in cache, this cache is said to be','Indirectly mapped','Directly mapped','Fully associative','Partially associative',3),(6,'As segment or a page is normally used for block, page-fault and address-fault is used for','Hit','Miss','Cache','Stack',2),(7,'Developed program\'s performance, is affected by','Algorithm','Compiler','Operating system','All Of The Above',4),(8,'Digital form of computer which is placed at bank walls for dealing cash is known as','Automatic Teller Machine','Super Computer','Mini Computer','Micro Computer',1),(9,'Modern supercomputers and minicomputers, accessed by network are called','Desktop Computers','Compiler','Servers','Micro Computer',3),(10,'Every letter of computer is referred to as','Bit','Alphabet','Nibble','Number',1);
/*!40000 ALTER TABLE `aca` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-03 10:38:19
