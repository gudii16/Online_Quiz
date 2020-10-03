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
-- Table structure for table `cg`
--

DROP TABLE IF EXISTS `cg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cg` (
  `qid` int(2) DEFAULT NULL,
  `question` varchar(800) DEFAULT NULL,
  `option1` varchar(90) DEFAULT NULL,
  `option2` varchar(90) DEFAULT NULL,
  `option3` varchar(90) DEFAULT NULL,
  `option4` varchar(90) DEFAULT NULL,
  `answer` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cg`
--

LOCK TABLES `cg` WRITE;
/*!40000 ALTER TABLE `cg` DISABLE KEYS */;
INSERT INTO `cg` VALUES (1,'A pictures elements are often abbreviated as','Picas','Pixels','Pixie Dust','Points',2),(2,'To Turn a typographic element into a vector image a user must use the __________ command in Illustrator','Vectorize','Rasterize','Create Outlines','Create anchor points',3),(3,'To divide two overlapping shapes in Adobe Illustrator a user can make use of the __________ palette','Move','Rotate','Run','Path Finder',4),(4,'By adjusting the _____ of a brush or layer you can lighten your objects','Size','Shape','Angle','Opacity',4),(5,'When creating a document for print in Photoshop the resolution should typically be set to','72 dpi','300 dpi','150 dpi','None Of the Above',2),(6,'Holding down the (?) Apple/Command (?) Key and the Letter V allows the user to','Shift','Rotate','Paste','Copy',3),(7,'To select a shape and move it in Illustrator a user must use the','Direct selection tool','Move tool','Selection tool','Anchor point',3),(8,'When removing a figure from a background in Photoshop the following technique will assist in altering the selection edge to make it appear less artificial','Rotate','Move','Feather','Marquee Selection',3),(9,'When using the Pen tool a user can access the following sub-tools under the pen tool','Signature assesment','Add Anchor point','Convert Anchor Point','All Of The Above',4),(10,'CMYK is the color code that includes what colors.','Yellow','Magenta','Cyan','All Of The Above',4);
/*!40000 ALTER TABLE `cg` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-03 10:38:22
