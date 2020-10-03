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
-- Table structure for table `advjava`
--

DROP TABLE IF EXISTS `advjava`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advjava` (
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
-- Dumping data for table `advjava`
--

LOCK TABLES `advjava` WRITE;
/*!40000 ALTER TABLE `advjava` DISABLE KEYS */;
INSERT INTO `advjava` VALUES (1,'When the ejbRemove method encounters a sysyem problem ,it should throw_________',' javax.ejb.NoSuchEntityException','java.ejb.EJBException ','java.ejb.RemoveException ','javax.ejb.DuplicateKeyException',2),(2,'___________ is a block of java code in JSP that is used define class-wide variables and methods in the generated class file','scriplets ','declarations','element','expression',2),(3,'Which of the following is not an implicit object ?','date','request','out','pagecontext',1),(4,'An Enterprise JavaBeans can be deployed in _______','J2EE Server','Web Logic','Web Server','All of the above',4),(5,' Mapping files (*.hbm.xml) is used __________','  to map persistent objects to a relational database','to configure the hibernate services (connection driver class, connection URL)','to configure the hibernate service(connection username, connection password,dialect)','All Of The Above',1),(6,'To determine the behaviour of the beans in an application , we make use of','Java.beans.SimpleBeanInfo','Java.beans.Introspector','Java.awt*','None Of The Above',2),(7,' Which of the elements defined within the taglib element of taglib descriptor file are required','uri','jsp-version','display-name','None',2),(8,'Name the element within the tag element that defines the tag class that implements the functionality of tag','tag','tag-class','tag-name','tag-uri',2),(9,'__________ provides the ability to directly insert java into an HTML document','declarations','scriptives','directives','None Of The Above',2),(10,'___________ pattern enables improved network traffic and response time. Fewer remote calls are made and less data is passed back and forth','Value Objects','Data Access Objects','Facade','Buisness Delegates',1);
/*!40000 ALTER TABLE `advjava` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-03 10:38:24
