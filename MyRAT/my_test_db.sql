-- MySQL dump 10.13  Distrib 5.5.35, for Win64 (x86)
--
-- Host: localhost    Database: my_test_db
-- ------------------------------------------------------
-- Server version	5.5.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `userprofile`
--

DROP TABLE IF EXISTS `userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userprofile` (
  `id` int(11) NOT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `id_card` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userprofile`
--

LOCK TABLES `userprofile` WRITE;
/*!40000 ALTER TABLE `userprofile` DISABLE KEYS */;
INSERT INTO `userprofile` VALUES (1,'junhua',29,'2013-04-05 00:00:00','33455'),(2,'peng',30,'2012-04-05 00:00:00','45673'),(3,'jhua',333,'2014-04-05 00:00:00','5676575');
/*!40000 ALTER TABLE `userprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

DROP TABLE IF EXISTS `depart`;
CREATE TABLE `depart` (
  `depart_id` int(11) NOT NULL,
  `depart_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`depart_id`)
);
DROP TABLE IF EXISTS `depart1`;
CREATE TABLE `depart1` (
  `depart_id` int(11) NOT NULL,
  `depart_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`depart_id`)
);
LOCK TABLES `depart` WRITE;
INSERT INTO `depart` VALUES (1,'market'),(2,'software');
LOCK TABLES `depart1` WRITE;
INSERT INTO `depart1` VALUES (1,'market'),(3,'dev');
UNLOCK TABLES;

-- Dump completed on 2013-12-10 22:54:19
