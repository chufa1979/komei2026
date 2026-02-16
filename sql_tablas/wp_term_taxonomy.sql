-- Generado a partir de komeiworpress.sql
-- Tabla: wp_term_taxonomy

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT  IGNORE INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,2),(2,2,'category','',0,6),(3,3,'category','',0,20),(4,4,'category','',0,19),(5,5,'post_format','',0,1),(6,6,'post_tag','',0,11),(7,7,'post_tag','',0,7),(8,8,'post_tag','',0,5),(10,10,'nav_menu','',0,14),(11,11,'nav_menu','',0,0),(12,12,'nav_menu','',0,0),(23,23,'category','',0,63),(24,24,'post_tag','',0,1),(25,25,'post_tag','',0,2),(26,26,'post_tag','',0,1),(27,27,'post_tag','',0,1),(28,28,'post_tag','',0,1),(29,29,'post_tag','',0,1),(30,30,'post_tag','',0,1),(31,31,'post_tag','',0,3),(32,32,'post_tag','',0,1),(33,33,'post_tag','',0,1),(34,34,'post_tag','',0,1),(35,35,'post_tag','',0,1),(36,36,'post_tag','',0,1),(37,37,'post_tag','',0,9),(38,38,'post_tag','',0,1),(39,39,'post_tag','',0,1),(40,40,'post_tag','',0,1),(41,41,'post_tag','',0,1),(42,42,'post_tag','',0,3),(43,43,'post_tag','',0,1),(44,44,'post_tag','',0,1),(45,45,'post_tag','',0,1),(46,46,'post_tag','',0,13),(47,47,'category','',0,0),(48,48,'post_tag','',0,8),(49,49,'post_tag','',0,4),(50,50,'post_tag','',0,4),(51,51,'post_tag','',0,1),(52,52,'post_tag','',0,1),(53,53,'post_tag','',0,1),(54,54,'post_tag','',0,1),(55,55,'post_tag','',0,1),(56,56,'post_tag','',0,1),(57,57,'post_tag','',0,1),(58,58,'post_tag','',0,1),(59,59,'post_tag','',0,2),(60,60,'post_tag','',0,1),(61,61,'post_tag','',0,2),(62,62,'post_tag','',0,1),(63,63,'post_tag','',0,1),(64,64,'post_tag','',0,1),(65,65,'post_tag','',0,1),(66,66,'post_tag','',0,1),(67,67,'post_tag','',0,1),(68,68,'post_tag','',0,8),(69,69,'post_tag','',0,5),(70,70,'post_tag','',0,3),(71,71,'post_tag','',0,1),(72,72,'post_tag','',0,15),(73,73,'post_tag','',0,1),(74,74,'post_tag','',0,1),(75,75,'post_tag','',0,1),(76,76,'post_tag','',0,1),(77,77,'post_tag','',0,1),(78,78,'post_tag','',0,1),(79,79,'post_tag','',0,1),(80,80,'post_tag','',0,1),(81,81,'post_tag','',0,2),(82,82,'post_tag','',0,3),(83,83,'post_tag','',0,2),(84,84,'post_tag','',0,1),(85,85,'post_tag','',0,1),(86,86,'post_tag','',0,1),(87,87,'post_tag','',0,1),(88,88,'post_tag','',0,1),(89,89,'post_tag','',0,1),(90,90,'post_tag','',0,1),(91,91,'post_tag','',0,1),(92,92,'post_tag','',0,1),(93,93,'post_tag','',0,1),(94,94,'post_tag','',0,1),(95,95,'post_tag','',0,1),(96,96,'post_tag','',0,1),(97,97,'post_tag','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


-- MySQL dump 10.13  Distrib 5.5.62, for Linux (x86_64)
--
-- Host: localhost    Database: komeiworpress
-- ------------------------------------------------------
-- Server version	5.5.62

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
-- Table structure for table `wp_termmeta`
--


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
