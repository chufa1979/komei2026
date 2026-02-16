-- Generado a partir de komeiworpress.sql
-- Tabla: wp_wfls_settings

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

DROP TABLE IF EXISTS `wp_wfls_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wfls_settings` (
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` longblob,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfls_settings`
--

LOCK TABLES `wp_wfls_settings` WRITE;
/*!40000 ALTER TABLE `wp_wfls_settings` DISABLE KEYS */;
INSERT  IGNORE INTO `wp_wfls_settings` VALUES ('2fa-user-grace-period','10','yes'),('allow-disabling-ntp','1','yes'),('allow-xml-rpc','1','yes'),('captcha-stats','{\"counts\":[0,0,0,0,0,0,0,0,0,0,0],\"avg\":0}','yes'),('delete-deactivation','','yes'),('disable-temporary-tables','0','yes'),('enable-auth-captcha','','yes'),('enable-login-history-columns','1','yes'),('enable-shortcode','','yes'),('enable-woocommerce-account-integration','','yes'),('enable-woocommerce-integration','','yes'),('global-notices','[]','yes'),('ip-source','','yes'),('ip-trusted-proxies','','yes'),('last-secret-refresh','1676486403','yes'),('ntp-failure-count','0','yes'),('ntp-offset','0.70108938217163','yes'),('recaptcha-threshold','0.5','yes'),('remember-device','','yes'),('remember-device-duration','2592000','yes'),('require-2fa-grace-period-enabled','','yes'),('require-2fa.administrator','','yes'),('schema-version','2','yes'),('shared-hash-secret','c30e870db7f1ec088d672c74e1efe0c702eba22ed01f9acc0127b0c8f005b0cc','yes'),('shared-symmetric-secret','00bd3880da1831938eadfc31137e9a6be23f7492f071fff54a944a895e3c0803','yes'),('stack-ui-columns','1','yes'),('use-ntp','1','yes'),('user-count-query-state','0','yes'),('whitelisted','','yes'),('xmlrpc-enabled','1','yes');
/*!40000 ALTER TABLE `wp_wfls_settings` ENABLE KEYS */;
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
-- Table structure for table `wp_yoast_indexable`
--


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
