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
-- Table structure for table `iot`
--

DROP TABLE IF EXISTS `iot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `iot` (
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
-- Dumping data for table `iot`
--

LOCK TABLES `iot` WRITE;
/*!40000 ALTER TABLE `iot` DISABLE KEYS */;
INSERT INTO `iot` VALUES (1,'Which characteristics involve the facility the thing to respond in an intelligent way to a particular situation?','Intelligence','Connectivity','Dynamic Nature','Enormous Scale',1),(2,'________ gives an exact, up to the second state of all devices on a network.','Signaling','Security','Presence detection','Power consumption',3),(3,'________ Provide the means to create capability that reflects true awareness of the physical world and people.','Sensors','Heterogeneity','Security','Connectivity',1),(4,' Which protocol is lightweight?','MQTT','HTTP','CoAP','SPI',1),(5,'PubNub publishes and subscribes _________ in order to send and receive messages','Network','Account','Portal','Keys',4),(6,' By clicking which key the PubNub will display public, subscribe, and secret keys.','Pane','Demo Keyset','Portal','Network',2),(7,'The messageChannel class declares the _________ class attribute that defines the key string.','command_key','command-key','commandkey','Key_command',1),(8,'_________ method saves the received arguments in three attributes.','__Init','Init__','__Init__','_init_',3),(9,' _________ and _________ saves the publish and subscribe keys that we have generated with the PubNub Admin portal.','public_key and subscribe_key','Public-key and subscribe-key','publickey and subscribekey','Key_public and key_subscribe',1),(10,' _________ specifies the function that will be called when there is a new message received from the channel.','Reconnet','Error','Connect','CallBack',4);
/*!40000 ALTER TABLE `iot` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-03 10:38:23
