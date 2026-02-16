-- Generado a partir de komeiworpress.sql
-- Tabla: wp_wfPendingIssues

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

DROP TABLE IF EXISTS `wp_wfPendingIssues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wfPendingIssues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(10) unsigned NOT NULL,
  `lastUpdated` int(10) unsigned NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) unsigned NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `lastUpdated` (`lastUpdated`),
  KEY `status` (`status`),
  KEY `ignoreP` (`ignoreP`),
  KEY `ignoreC` (`ignoreC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfPendingIssues`
--

LOCK TABLES `wp_wfPendingIssues` WRITE;
/*!40000 ALTER TABLE `wp_wfPendingIssues` DISABLE KEYS */;
INSERT  IGNORE INTO `wp_wfPendingIssues` VALUES (1,1697890527,1697890527,'new','knownfile',75,'b377e8a9aa3f4bf4dde676e8d32b4f4a','7b2f45aea25690fe306369af2a315073','Archivo modificado del núcleo de WordPress: wp-content/plugins/hello.php','Este archivo del núcleo de WordPress ha sido modificado y difiere del archivo original distribuido con esta versión de WordPress.','a:7:{s:4:\"file\";s:28:\"wp-content/plugins/hello.php\";s:8:\"realFile\";s:57:\"/www/komeijuku.com.ar/htdocs/wp-content/plugins/hello.php\";s:5:\"cType\";s:4:\"core\";s:7:\"canDiff\";b:1;s:6:\"canFix\";b:1;s:9:\"canDelete\";b:0;s:10:\"haveIssues\";s:4:\"core\";}');
/*!40000 ALTER TABLE `wp_wfPendingIssues` ENABLE KEYS */;
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
-- Table structure for table `wp_wfReverseCache`
--


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
