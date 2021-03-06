-- MySQL dump 10.16  Distrib 10.1.44-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: siremis
-- ------------------------------------------------------
-- Server version	10.1.44-MariaDB-0ubuntu0.18.04.1

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

--
-- Table structure for table `acl_action`
--

DROP TABLE IF EXISTS `acl_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(64) NOT NULL DEFAULT '',
  `resource` varchar(64) NOT NULL DEFAULT '',
  `action` varchar(64) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_action`
--

LOCK TABLES `acl_action` WRITE;
/*!40000 ALTER TABLE `acl_action` DISABLE KEYS */;
INSERT INTO `acl_action` VALUES (1,'system','Site','Administer_General','General administration of the site'),(2,'system','User','Administer_Users','Administration of users'),(3,'system','User','Administer_User_ACL','Administration of user access control'),(4,'system','Role','Administer_Roles','Administration of user roles'),(5,'system','Group','Administer_Groups','Administration of user groups'),(6,'system','Module','Administer_Modules','Administration includes view modules, load modules, activate/deactivate modules'),(7,'menu','Menu','Administer_Menu','Can manage menu content for the application'),(8,'cache','cache','access','view cache usage information'),(9,'cache','cache','admin','manage and view cache usage information'),(10,'contact','contact','access','access my contact'),(11,'cronjob','cronjob','Administer_Cron','Manage cronjobs with crontab syntax'),(12,'eventlog','EventLog','Access_EventLog','Access event logs'),(13,'eventlog','EventLog','Administer_EventLog','Manage event logs'),(14,'help','Help','Administer_Help','Can manage help content for the application'),(15,'sipadmin','SIPAdmin','Administer_Modules','Allowed To Manage All SIP Settings'),(16,'sipuser','SIPUser','Administer_Modules','Can manage own SIP settings'),(17,'theme','Theme','Administer_Theme','Can manage system theme package for the application'),(18,'translation','Menu','Administer_Transation','Can manage user interface translation for the application'),(19,'user','UserAccount','Edit_Own_Account','Can edit user own account data');
/*!40000 ALTER TABLE `acl_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_role_action`
--

DROP TABLE IF EXISTS `acl_role_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_role_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0',
  `action_id` int(10) unsigned NOT NULL DEFAULT '0',
  `access_level` varchar(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `action_id` (`action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_role_action`
--

LOCK TABLES `acl_role_action` WRITE;
/*!40000 ALTER TABLE `acl_role_action` DISABLE KEYS */;
INSERT INTO `acl_role_action` VALUES (1,1,1,'1'),(2,1,2,'1'),(3,1,3,'1'),(4,1,4,'1'),(5,1,5,'1'),(6,1,6,'1'),(7,1,7,'1'),(8,1,8,'1'),(9,1,9,'1'),(10,1,10,'1'),(11,1,11,'1'),(12,1,12,'1'),(13,1,13,'1'),(14,1,14,'1'),(15,1,15,'1'),(16,1,16,'1'),(17,1,17,'1'),(18,1,18,'1'),(19,1,19,'1'),(20,2,15,'1'),(21,2,19,'1'),(22,3,16,'1'),(23,3,19,'1');
/*!40000 ALTER TABLE `acl_role_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `department` varchar(255) DEFAULT '',
  `position` varchar(255) DEFAULT '',
  `fast_index` varchar(10) DEFAULT '',
  `photo` varchar(255) DEFAULT '',
  `phone` varchar(255) DEFAULT '',
  `mobile` varchar(255) DEFAULT '',
  `fax` varchar(255) DEFAULT '',
  `zipcode` varchar(255) DEFAULT '',
  `province` varchar(255) DEFAULT '',
  `city` varchar(255) DEFAULT '',
  `street` varchar(255) DEFAULT '',
  `country` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `qq` varchar(255) DEFAULT '',
  `icq` varchar(255) DEFAULT '',
  `skype` varchar(255) DEFAULT '',
  `yahoo` varchar(255) DEFAULT '',
  `misc` text,
  `type_id` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '0',
  `default` int(11) DEFAULT '0',
  `access` varchar(255) DEFAULT NULL,
  `params` text,
  `create_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT '2000-01-01 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'Rocky','Swen','Rocky, Swen','Openbiz LLC','Management','CEO','J','/files/upload/contact/20100524200309-RockySwen.jpg','','','','','CA','','','USA','','','','','','',NULL,1,50,0,1,0,NULL,NULL,1,'2010-05-24 08:00:01',1,'2010-05-24 20:03:09'),(2,'Jixian','Wang','Jixian, Wang','Openbiz LLC','Management','CTO','R','/files/upload/contact/20100524200245-skype.jpg','+86 10 6497 9191','+86 139 1015 4220','+86 10 6497 9191','100101','Beijing','Beijing','Chaoyang Yayuncun','China','jixian2003@qq.com','http://www.czm.cn/','315824246','','jixianwang','','Hosting Company CEO\r\n#1 fadsf\r\nadfasdf',1,50,0,1,0,NULL,NULL,1,'2010-05-24 08:41:57',1,'2010-05-24 20:02:45'),(3,'Wang','Ou','Wang, Ou','Openbiz LLC','Design Dept','Designer','W','/files/upload/contact/20100524200233-WangOu.jpg','+86 10 64979191','','','','','','','','','','','','','',NULL,1,50,0,1,0,NULL,NULL,1,'2010-05-24 08:43:41',1,'2010-06-12 04:02:29'),(4,'test','li','test, li','jixian llc','sdf','jixian','t','','','','','','','','','','','','','','','',NULL,1,50,0,1,0,NULL,NULL,1,'2010-06-13 10:52:00',1,'2010-06-13 10:52:00');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_type`
--

DROP TABLE IF EXISTS `contact_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `sortorder` int(11) NOT NULL,
  `published` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_type`
--

LOCK TABLES `contact_type` WRITE;
/*!40000 ALTER TABLE `contact_type` DISABLE KEYS */;
INSERT INTO `contact_type` VALUES (1,'Business','Business Contacts',45,1,1,'2010-05-23 01:09:06',1,'2010-05-23 18:47:14'),(2,'Family','Family Contacts',45,1,1,'2010-05-23 01:23:04',1,'2010-05-24 18:51:35'),(3,'Provider','Business Provider Contacts',50,1,1,'2010-05-23 01:34:12',1,'2010-05-24 02:41:09'),(4,'Client','Business Client Contacts',45,1,1,'2010-05-23 01:34:39',1,'2010-05-24 11:10:32');
/*!40000 ALTER TABLE `contact_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cronjob`
--

DROP TABLE IF EXISTS `cronjob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cronjob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `minute` varchar(255) NOT NULL DEFAULT '',
  `hour` varchar(255) NOT NULL DEFAULT '',
  `day` varchar(255) NOT NULL DEFAULT '',
  `month` varchar(255) NOT NULL DEFAULT '',
  `weekday` varchar(255) NOT NULL DEFAULT '',
  `command` varchar(255) NOT NULL DEFAULT '',
  `sendmail` varchar(255) DEFAULT '',
  `max_run` int(2) DEFAULT '1',
  `num_run` int(2) DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `last_exec` int(11) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `minute` (`minute`),
  KEY `hour` (`hour`),
  KEY `weekday` (`day`),
  KEY `month` (`month`),
  KEY `week` (`weekday`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronjob`
--

LOCK TABLES `cronjob` WRITE;
/*!40000 ALTER TABLE `cronjob` DISABLE KEYS */;
/*!40000 ALTER TABLE `cronjob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_log`
--

DROP TABLE IF EXISTS `event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ipaddr` varchar(50) NOT NULL,
  `event` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `UserID` (`user_id`,`ipaddr`,`event`),
  KEY `Message` (`message`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_log`
--

LOCK TABLES `event_log` WRITE;
/*!40000 ALTER TABLE `event_log` DISABLE KEYS */;
INSERT INTO `event_log` VALUES (1,1,'125.236.218.236','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-06-20 21:15:50'),(2,1,'125.236.218.236','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-06-21 02:19:07'),(3,1,'125.236.218.236','LOGIN','MSG_LOGOUT_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-06-21 02:24:24'),(4,1,'125.236.218.236','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-06-21 02:24:31'),(5,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-06-24 00:13:22'),(6,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-06-24 00:46:09'),(7,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-06-24 00:46:09'),(8,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-06-24 01:51:44'),(9,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-06-24 23:38:51'),(10,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-06-24 23:44:05'),(11,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-06-24 23:55:35'),(12,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-06-25 00:32:07'),(13,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-06-25 01:01:57'),(14,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-06-25 06:14:52'),(15,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-06-25 23:30:50'),(16,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-06-28 22:43:24'),(17,1,'125.236.218.236','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-06-29 03:00:44'),(18,1,'112.196.78.26','LOGIN','MSG_LOGOUT_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-06-29 03:28:01'),(19,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-06-29 03:28:07'),(20,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-06-30 00:21:23'),(21,1,'125.236.218.236','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-06-30 00:43:50'),(22,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-06-30 01:57:33'),(23,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-01 01:48:28'),(24,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-01 04:48:01'),(25,1,'125.236.218.236','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-07-02 00:06:00'),(26,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-02 04:26:08'),(27,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-02 04:44:32'),(28,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-02 07:29:41'),(29,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-02 23:56:24'),(30,1,'125.236.218.236','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-07-06 03:29:38'),(31,1,'125.236.218.236','LOGIN','MSG_LOGOUT_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-07-06 03:32:18'),(32,1,'125.236.218.236','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-07-06 03:33:45'),(33,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-06 05:02:32'),(34,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-06 05:24:01'),(35,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-06 06:02:19'),(36,1,'112.196.78.26','LOGIN','MSG_LOGOUT_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-06 06:25:00'),(37,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-06 06:26:37'),(38,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-06 06:44:55'),(39,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-06 06:58:44'),(40,1,'125.236.218.236','LOGIN','MSG_LOGOUT_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-07-06 17:12:48'),(41,1,'125.236.218.236','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-07-06 17:27:15'),(42,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-06 23:15:04'),(43,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-06 23:26:29'),(44,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-06 23:32:12'),(45,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-06 23:32:12'),(46,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-06 23:32:12'),(47,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-06 23:58:32'),(48,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-07 01:14:46'),(49,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-07 04:23:34'),(50,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-07 04:23:56'),(51,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-07 07:24:13'),(52,1,'112.196.78.26','LOGIN','MSG_LOGOUT_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-07 07:34:44'),(53,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-07 07:35:02'),(54,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-07 23:46:27'),(55,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-08 02:24:43'),(56,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-08 05:50:09'),(57,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-08 23:14:54'),(58,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-09 00:19:14'),(59,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-09 01:05:12'),(60,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-09 05:46:59'),(61,1,'125.236.218.236','LOGIN','MSG_LOGOUT_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-07-09 19:54:42'),(62,1,'125.236.218.236','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-07-09 20:18:59'),(63,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-09 23:27:24'),(64,1,'112.196.78.26','LOGIN','MSG_LOGOUT_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-10 00:10:29'),(65,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-10 02:10:21'),(66,1,'112.196.78.26','LOGIN','MSG_LOGOUT_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-10 02:11:33'),(67,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-10 02:15:54'),(68,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-10 02:26:33'),(69,1,'112.196.78.26','LOGIN','MSG_LOGOUT_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-10 02:27:03'),(70,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-10 03:27:44'),(71,1,'125.236.218.236','LOGIN','MSG_LOGOUT_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-07-10 11:18:03'),(72,1,'125.236.218.236','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-07-10 11:18:10'),(73,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-11 03:10:27'),(74,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-11 04:03:32'),(75,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-12 23:21:56'),(76,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-13 01:07:57'),(77,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-13 02:25:38'),(78,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-13 02:31:53'),(79,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-13 02:32:04'),(80,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-13 02:32:28'),(81,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-13 02:32:58'),(82,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-13 02:33:13'),(83,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-13 02:33:28'),(84,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-13 02:33:48'),(85,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-13 02:34:27'),(86,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-13 02:37:06'),(87,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-13 02:37:39'),(88,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-13 02:39:04'),(89,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-13 02:39:09'),(90,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-13 02:53:28'),(91,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:8:\"VDnk8HkY\";}','2020-07-13 02:53:43'),(92,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-13 02:53:46'),(93,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-13 02:56:53'),(94,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:10:\"adjadnca22\";}','2020-07-13 03:04:44'),(95,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:10:\"adjadnca22\";}','2020-07-13 03:05:43'),(96,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-13 03:11:25'),(97,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:8:\"a237j4!!\";}','2020-07-13 03:18:14'),(98,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:8:\"a237j4!!\";}','2020-07-13 03:22:04'),(99,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-13 03:22:08'),(100,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:8:\"a237j4!!\";}','2020-07-13 03:22:36'),(101,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:8:\"a237j4!!\";}','2020-07-13 03:24:03'),(102,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:8:\"a237j4!!\";}','2020-07-13 03:27:12'),(103,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-13 03:27:17'),(104,1,'125.236.218.236','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-07-13 03:32:41'),(105,1,'125.236.218.236','LOGIN','MSG_LOGOUT_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-07-13 03:33:50'),(106,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:8:\"a237j4!!\";}','2020-07-13 03:34:01'),(107,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:8:\"a237j4!!\";}','2020-07-13 03:34:13'),(108,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:8:\"a237j4!!\";}','2020-07-13 03:34:17'),(109,1,'125.236.218.236','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-07-13 03:34:48'),(110,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-13 03:53:39'),(111,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-14 04:23:27'),(112,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:8:\"a237j4!!\";}','2020-07-15 00:33:10'),(113,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:8:\"a237j4!!\";}','2020-07-15 00:33:21'),(114,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:8:\"a237j4!!\";}','2020-07-15 00:33:26'),(115,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:8:\"a237j4!!\";}','2020-07-15 00:36:20'),(116,1,'125.236.218.236','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-07-15 00:36:51'),(117,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-15 06:12:13'),(118,1,'112.196.78.26','LOGIN','MSG_LOGOUT_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-15 06:12:32'),(119,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-15 06:12:47'),(120,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-15 06:13:02'),(121,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-15 06:13:05'),(122,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-15 06:13:10'),(123,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-15 06:13:19'),(124,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-15 06:13:26'),(125,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-15 06:13:35'),(126,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:9:\"a237j4!!z\";}','2020-07-15 06:14:31'),(127,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:9:\"a237j4!!z\";}','2020-07-15 06:14:34'),(128,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-15 06:14:42'),(129,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-15 06:23:12'),(130,1,'125.236.218.236','LOGIN','MSG_LOGOUT_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-07-15 17:09:13'),(131,1,'125.236.218.236','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-07-15 17:09:20'),(132,1,'125.236.218.236','LOGIN','MSG_LOGOUT_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-07-15 17:13:07'),(133,1,'125.236.218.236','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-07-15 17:13:26'),(134,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-15 23:22:07'),(135,0,'112.196.78.26','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";i:2;s:16:\"RMeRm6#Gd-Sy-z6d\";}','2020-07-15 23:22:43'),(136,1,'125.236.218.236','LOGIN','MSG_LOGOUT_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-07-15 23:38:08'),(137,1,'125.236.218.236','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-07-15 23:38:35'),(138,1,'125.236.218.236','LOGIN','MSG_LOGOUT_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-07-15 23:38:48'),(139,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-15 23:41:42'),(140,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-15 23:56:57'),(141,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-16 01:37:09'),(142,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:9:\"a237j4!!z\";}','2020-07-16 18:20:47'),(143,1,'125.236.218.236','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-07-16 18:20:53'),(144,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-16 23:39:57'),(145,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-17 00:17:38'),(146,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-17 04:34:07'),(147,1,'112.196.78.26','LOGIN','MSG_LOGOUT_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-17 04:37:14'),(148,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-17 04:37:27'),(149,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-17 07:09:53'),(150,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-18 00:05:51'),(151,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-20 23:23:01'),(152,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-21 00:03:34'),(153,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-21 00:15:08'),(154,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-21 01:06:50'),(155,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:9:\"a237j4!!z\";}','2020-07-21 01:21:18'),(156,1,'125.236.218.236','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-07-21 01:21:21'),(157,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-21 01:52:02'),(158,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-21 02:01:49'),(159,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-22 00:47:43'),(160,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-22 03:51:13'),(161,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-22 04:18:23'),(162,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-22 23:23:31'),(163,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-23 01:19:18'),(164,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-23 05:36:46'),(165,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-24 01:47:32'),(166,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-24 02:53:33'),(167,0,'43.243.62.98','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:12:\"43.243.62.98\";i:2;s:9:\"a237j4!!z\";}','2020-07-29 01:52:02'),(168,1,'43.243.62.98','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:12:\"43.243.62.98\";}','2020-07-29 01:52:05'),(169,1,'163.47.230.72','LOGIN','MSG_LOGOUT_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"163.47.230.72\";}','2020-07-29 02:43:19'),(170,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-29 05:55:51'),(171,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-29 06:05:42'),(172,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-29 06:21:25'),(173,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-29 06:21:26'),(174,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-29 06:35:42'),(175,1,'112.196.78.26','LOGIN','MSG_LOGOUT_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-29 07:24:39'),(176,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-29 07:25:04'),(177,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-29 23:47:38'),(178,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-29 23:48:05'),(179,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-30 00:40:33'),(180,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-30 00:56:28'),(181,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-30 23:41:01'),(182,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-30 23:49:41'),(183,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-31 00:26:05'),(184,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-07-31 23:32:41'),(185,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:9:\"a237j4!!z\";}','2020-08-03 03:10:23'),(186,1,'125.236.218.236','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-08-03 03:10:29'),(187,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-08-03 04:38:29'),(188,1,'112.196.78.26','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:13:\"112.196.78.26\";}','2020-08-03 05:24:39'),(189,0,'125.236.218.236','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";i:2;s:9:\"a237j4!!z\";}','2020-08-18 18:08:27'),(190,1,'125.236.218.236','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:15:\"125.236.218.236\";}','2020-08-18 18:08:34'),(191,0,'121.73.35.56','LOGIN','MSG_LOGIN_FAILED','a:3:{i:0;s:5:\"admin\";i:1;s:12:\"121.73.35.56\";i:2;s:9:\"a237j4!!z\";}','2020-08-20 21:41:32'),(192,1,'121.73.35.56','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:12:\"121.73.35.56\";}','2020-08-20 21:54:01'),(193,1,'121.73.35.56','LOGIN','MSG_LOGOUT_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:12:\"121.73.35.56\";}','2020-08-20 22:06:41'),(194,1,'121.73.35.56','LOGIN','MSG_LOGIN_SUCCESSFUL','a:2:{i:0;s:5:\"admin\";i:1;s:12:\"121.73.35.56\";}','2020-08-20 22:06:46');
/*!40000 ALTER TABLE `event_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES (1,'Test Group','Test Description');
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help`
--

DROP TABLE IF EXISTS `help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '10',
  `content` longtext,
  `create_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `create_by` (`create_by`),
  KEY `update_by` (`update_by`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help`
--

LOCK TABLES `help` WRITE;
/*!40000 ALTER TABLE `help` DISABLE KEYS */;
INSERT INTO `help` VALUES (1,3,'What is Module Management?','<p>\n	Module Management screen allows administrator to manage modules in the application</p>\n',10,'<p>\n	Action can be done on the module management screen.</p>\n<ul>\n	<li>\n		Edit button. This is to activate or deactivate a module</li>\n	<li>\n		Delete button. This is to delete a module. When a module is deleted, its ACL settings are deleted as well.</li>\n	<li>\n		Load button. This is to load new modules added in the modules directory. The loading processor will read mod.xml, and load module and it ACL info to the system.</li>\n</ul>\n',1,'2010-05-01 13:01:58',1,'2010-05-01 13:06:21'),(2,1,'What is User Management ?','<p>\n	User Manage screen allows administrator to manage application users</p>\n',10,'<p>\n	Action can be done on the user management screen</p>\n<ul>\n	<li>\n		Add button to add a new user</li>\n	<li>\n		Edit button to edit a selected user</li>\n	<li>\n		Delete button to delete a selected user</li>\n</ul>\n',1,'2010-02-07 16:07:21',1,'2010-05-01 12:50:12'),(3,2,'What is Role Management?','<p>\n	Role Management screen allows administrator to manage roles in the application</p>\n',10,'<p>\n	Actions can be done on the role management screen.</p>\n<ul>\n	<li>\n		Add button</li>\n	<li>\n		Edit button</li>\n	<li>\n		Delete button. If a role is deleted, its permissions will be deleted as well.</li>\n</ul>\n',1,'2010-02-07 17:25:46',1,'2010-05-01 12:58:06'),(4,6,'How to ceate a help tip?','<p>\r\n	You need to go to Manage Help tips module and click Add button to create a new help tips.</p>\r\n',10,NULL,1,'2010-04-24 04:18:35',1,'2010-04-24 04:19:35'),(5,6,'How to map a help category to system module?','<p>\r\n	You can mapping a help category to a module&#39;s left help panel by specified URL match. then the module will only show help tips under this category.</p>\r\n',10,NULL,1,'2010-04-24 04:21:54',1,'2010-04-24 04:21:54'),(6,3,'How to reload a module?','<p>\n	A module can be reloaded to update its change</p>\n',10,'<p>\n	On the module management screen, click the module name to drilldown the module detail form. On this form, click Reload button to update the changes into the system</p>\n',1,'2010-05-01 13:09:09',1,'2010-05-01 13:09:09'),(7,4,'What is Event Log?','<p>\n	Event log screen is to list all events logged by the application</p>\n',10,'<p>\n	On the Event Log screen, clicking on the comments link to see to event log detail.</p>\n<p>\n	Clicking on the Clear button, all log records will be deleted from the log table. Be careful of using it.</p>\n',1,'2010-05-01 13:12:11',1,'2010-05-01 13:15:33'),(8,5,'How to manage email queue?','<p>\n	Email Queue Management screen allows user to manage queued emails</p>\n',10,'<p>\n	Action can be done on the email queue management screen.</p>\n<ul>\n	<li>\n		Send All button. This is to send all queued email immediately</li>\n	<li>\n		Send button. This is to send the selected email immediately</li>\n	<li>\n		Delete. This is to delete the selected email from the queue</li>\n	<li>\n		Delete Sent. This is to delete all sent emails from the queue</li>\n	<li>\n		Delete All. This is to empty the email queue</li>\n</ul>\n',1,'2010-05-01 13:17:05',1,'2010-05-01 16:18:48'),(9,5,'How to manage email log?','<p>\n	Email Log Management screen allows user to manage email activities</p>\n',10,'<p>\n	Clicking the Clear button will empty the email log records.</p>\n',1,'2010-05-01 13:18:11',1,'2010-05-01 16:19:59');
/*!40000 ALTER TABLE `help` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_category`
--

DROP TABLE IF EXISTS `help_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `url_match` varchar(255) DEFAULT NULL,
  `description` text,
  `sort_order` int(11) NOT NULL DEFAULT '10',
  `create_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_category`
--

LOCK TABLES `help_category` WRITE;
/*!40000 ALTER TABLE `help_category` DISABLE KEYS */;
INSERT INTO `help_category` VALUES (1,7,'User Management','/system/user_list.*','<p>\n	About how to manage users and system access.</p>\n',10,1,'2010-04-19 18:15:18',1,'2010-04-22 01:37:29'),(2,7,'Role Management','/system/role_list.*','<p>\n	About how to manage system role and permissions group.</p>\n',20,1,'2010-04-19 19:50:23',1,'2010-04-21 08:10:48'),(3,7,'Module Management','/system/module_list.*','<p>\n	About how to mount a module into system.</p>\n',30,1,'2010-04-21 03:35:11',1,'2010-04-21 05:11:09'),(4,7,'Event Log Management','/system/event_log.*','<p>About system event log/</p>\n',40,1,'2010-04-21 05:01:44',1,'2010-04-21 08:09:53'),(5,7,'Email Management','/email/email_.*','<p>\n	About how to manage system email function</p>\n',50,1,'2010-04-21 05:03:43',1,'2010-05-01 13:19:08'),(6,7,'Help Management','/help/help_.*','<p>\r\n	About how to manage the online help module of cubi system.</p>\r\n',60,1,'2010-04-21 05:09:50',1,'2010-04-24 05:16:02'),(7,0,'System Admin',NULL,'<p>\n	System help content.</p>\n',10,1,'2010-04-21 05:10:29',1,'2010-04-21 05:11:54');
/*!40000 ALTER TABLE `help_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_category_mapping`
--

DROP TABLE IF EXISTS `help_category_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_category_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `url` (`url`),
  KEY `cat_id` (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_category_mapping`
--

LOCK TABLES `help_category_mapping` WRITE;
/*!40000 ALTER TABLE `help_category_mapping` DISABLE KEYS */;
INSERT INTO `help_category_mapping` VALUES (1,'system/module_list',3,'2020-06-21 02:27:22'),(2,'system/user_list',1,'2020-06-21 07:22:50'),(3,'system/role_list',2,'2020-06-24 07:21:17'),(4,'help/help_category',6,'2020-06-27 03:41:35'),(5,'help/help_list',6,'2020-07-07 06:52:07'),(6,'help/help_list/c_7',6,'2020-07-10 04:42:16');
/*!40000 ALTER TABLE `help_category_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `name` varchar(100) NOT NULL DEFAULT '',
  `module` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `url_match` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `parent` varchar(255) DEFAULT '',
  `ordering` int(4) DEFAULT '10',
  `access` varchar(100) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `icon_css` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `create_by` int(10) DEFAULT '1',
  `create_time` datetime DEFAULT NULL,
  `update_by` int(10) DEFAULT '1',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES ('Cache','cache','Cache','',NULL,NULL,'',1,'System',50,'','spacer.gif','icon_cache','Cache Management',1,NULL,1,NULL),('cache.manage','cache','Manage System Cache ','/cache/manage',NULL,NULL,'',1,'Cache',10,'','','','',1,NULL,1,NULL),('Contact','contact','Contacts','',NULL,NULL,'',1,'Collaboration',50,'','spacer.gif','icon_contact','',1,NULL,1,NULL),('Contact.ByType','contact','View By Contact Type','/contact/contact_type_list',NULL,NULL,'',1,'Contact',10,'','','','',1,NULL,1,NULL),('Contact.Company','contact','View Company','/contact/company_list',NULL,NULL,'',1,'Contact',10,'','','','',1,NULL,1,NULL),('Contact.DCard','contact','View Detailed Card','/contact/contact_detail_card',NULL,NULL,'',1,'Contact',10,'','','','',1,NULL,1,NULL),('Contact.GCard','contact','View General Card','/contact/contact_general_card',NULL,NULL,'',1,'Contact',10,'','','','',1,NULL,1,NULL),('Contact.NewProf','contact','New Contact Profile','/contact/contact_new',NULL,NULL,'',1,'Contact',10,'','','','',1,NULL,1,NULL),('Contact.PhoneBook','contact','View Phone Book','/contact/contact_list',NULL,NULL,'',1,'Contact',10,'','','','',1,NULL,1,NULL),('Contact.Type','contact','Contact Type Manage','/contact/type_manage',NULL,NULL,'',1,'Contact',10,'','','','',1,NULL,1,NULL),('System','system','Administration','/system/general_default',NULL,NULL,'',1,'',0,'Site.Administer_General','','','',1,NULL,1,'2020-07-24 02:54:00'),('System.Cronjob','cronjob','Cronjob','',NULL,NULL,'',1,'System',40,'','spacer.gif','icon_cronjob','',1,NULL,1,NULL),('System.Cronjob.List','cronjob','Manage CronjobLog','/cronjob/cronjob_list',NULL,NULL,'',1,'System.Cronjob',10,'','','','',1,NULL,1,NULL),('System.EventLog','eventlog','Event Log','',NULL,NULL,'',1,'System',60,'','spacer.gif','icon_eventlog','Event Log Management',1,NULL,1,NULL),('System.EventLog.List','eventlog','Manage EventLog','/eventlog/event_log_list',NULL,NULL,'',1,'System.EventLog',10,'','','','',1,NULL,1,NULL),('System.Group','system','Groups','',NULL,NULL,'',1,'System',12,'','spacer.gif','icon_user','Group Management Module',1,NULL,1,NULL),('System.Group.List','system','Group Management','/system/group_list',NULL,NULL,'',1,'System.Group',10,'','','','',1,NULL,1,NULL),('System.Help','help','Help','',NULL,NULL,'',1,'System',50,'','spacer.gif','icon_help','Help Management',1,NULL,1,NULL),('System.Help.Cat','help','Manage Help Category','/help/help_category',NULL,NULL,'',1,'System.Help',10,'','','','',1,NULL,1,NULL),('System.Htlp.Tip','help','Manage Help Tips','/help/help_list',NULL,NULL,'',1,'System.Help',20,'','','','',1,NULL,1,NULL),('System.Menu','menu','Menu','',NULL,NULL,'',1,'System',30,'','spacer.gif','icon_menu','System Menu Management',1,NULL,1,NULL),('System.Menu.List','menu','Manage Menu by List','/menu/menu_list',NULL,NULL,'',1,'System.Menu',20,'','','','',1,NULL,1,NULL),('System.Menu.Tree','menu','Manage Menu by Tree','/menu/menu_tree',NULL,NULL,'',1,'System.Menu',30,'','','','',1,NULL,1,NULL),('System.Module','system','Modules','',NULL,NULL,'',1,'System',14,'','spacer.gif','icon_module','Modules Management',1,NULL,1,NULL),('System.Modules.Detail','system','Module Detail','/system/module_detail',NULL,NULL,'',1,'System.Modules.List',10,'','','','',1,NULL,1,NULL),('System.Modules.List','system','Module Management','/system/module_list',NULL,NULL,'',1,'System.Module',10,'','','','',1,NULL,1,NULL),('System.Role','system','Roles','',NULL,NULL,'',1,'System',12,'','spacer.gif','icon_role','Role Management Module',1,NULL,1,NULL),('System.Role.Detail','system','Role Detail','/system/role_detail',NULL,NULL,'',1,'System.Role.List',10,'','','','',1,NULL,1,NULL),('System.Role.List','system','Role Management','/system/role_list',NULL,NULL,'',1,'System.Role',10,'','','','',1,NULL,1,NULL),('System.Sipadmin','sipadmin','SIP Admin Menu','/sipadmin/sipadmin_default',NULL,NULL,'',1,'',25,'SIPAdmin.Administer_Modules','spacer.gif','','SIP Admin Management',1,NULL,1,'2020-07-24 02:54:07'),('System.Sipadmin.Acl','sipadmin','ACL Services','',NULL,NULL,'',1,'System.Sipadmin',30,'','','','',1,NULL,1,NULL),('System.Sipadmin.Acl.Address.List','sipadmin','Permissions - Address','{@home:url}/sipadmin/address_list',NULL,NULL,'',1,'System.Sipadmin.Acl.Permissions.Management',10,'','','','',1,NULL,1,NULL),('System.Sipadmin.Acl.Grp.List','sipadmin','Group List','{@home:url}/sipadmin/grp_list',NULL,NULL,'',1,'System.Sipadmin.Acl.Grp.Management',10,'','','','',1,NULL,1,NULL),('System.Sipadmin.Acl.Grp.Management','sipadmin','Group Management','',NULL,NULL,'',1,'System.Sipadmin.Acl',10,'','','','',1,NULL,1,NULL),('System.Sipadmin.Acl.Permissions.Management','sipadmin','Permissions Management','',NULL,NULL,'',1,'System.Sipadmin.Acl',30,'','','','',1,NULL,1,NULL),('System.Sipadmin.Acl.ReGrp.List','sipadmin','RegExp Group List','{@home:url}/sipadmin/re_grp_list',NULL,NULL,'',1,'System.Sipadmin.Acl.Grp.Management',20,'','','','',1,NULL,1,NULL),('System.Sipadmin.Acl.Trusted.List','sipadmin','Permissions - Trusted','{@home:url}/sipadmin/trusted_list',NULL,NULL,'',1,'System.Sipadmin.Acl.Permissions.Management',20,'','','','',1,NULL,1,NULL),('System.Sipadmin.Acs','sipadmin','Accounting Services','',NULL,NULL,'',1,'System.Sipadmin',50,'','','','',1,NULL,1,NULL),('System.Sipadmin.Acs.Acc.Management','sipadmin','Accounting Management','',NULL,NULL,'',1,'System.Sipadmin.Acs',10,'','','','',1,NULL,1,NULL),('System.Sipadmin.Acs.Accounting','sipadmin','Accounting List','{@home:url}/sipadmin/acc_list',NULL,NULL,'',1,'System.Sipadmin.Acs.Acc.Management',10,'','','','',1,NULL,1,NULL),('System.Sipadmin.Acs.BillingRates','sipadmin','Billing Rates List','{@home:url}/sipadmin/billing_rates_list',NULL,NULL,'',1,'System.Sipadmin.Acs.Cdrs.Management',20,'','','','',1,NULL,1,NULL),('System.Sipadmin.Acs.Cdrs','sipadmin','CDR List','{@home:url}/sipadmin/cdrs_list',NULL,NULL,'',1,'System.Sipadmin.Acs.Cdrs.Management',10,'','','','',1,NULL,1,NULL),('System.Sipadmin.Acs.Cdrs.Management','sipadmin','CDR Management','',NULL,NULL,'',1,'System.Sipadmin.Acs',30,'','','','',1,NULL,1,NULL),('System.Sipadmin.Acs.MissedCalls','sipadmin','Missed Calls List','{@home:url}/sipadmin/missed_calls_list',NULL,NULL,'',1,'System.Sipadmin.Acs.Acc.Management',20,'','','','',1,NULL,1,NULL),('System.Sipadmin.Charts','sipadmin','Chart Services','',NULL,NULL,'',1,'System.Sipadmin',90,'','','','',1,NULL,1,NULL),('System.Sipadmin.Charts.Load','sipadmin','Load Charts','{@home:url}/sipadmin/charts_load/cg=load',NULL,NULL,'',1,'System.Sipadmin.Charts',30,'','','','',1,NULL,1,NULL),('System.Sipadmin.Charts.Shm','sipadmin','SHM Charts','{@home:url}/sipadmin/charts_shm/cg=shm',NULL,NULL,'',1,'System.Sipadmin.Charts',20,'','','','',1,NULL,1,NULL),('System.Sipadmin.Charts.Tm','sipadmin','TM Charts','{@home:url}/sipadmin/charts_tm/cg=tm',NULL,NULL,'',1,'System.Sipadmin.Charts',35,'','','','',1,NULL,1,NULL),('System.Sipadmin.Charts.Usrloc','sipadmin','UsrLoc Charts','{@home:url}/sipadmin/charts_uls/cg=usrloc',NULL,NULL,'',1,'System.Sipadmin.Charts',40,'','','','',1,NULL,1,NULL),('System.Sipadmin.ChartsStatsAcc','sipadmin','Acc Charts','{@home:url}/sipadmin/charts_stats_acc',NULL,NULL,'',1,'System.Sipadmin.Charts',70,'','','','',1,NULL,1,NULL),('System.Sipadmin.ChartsStatsUls','sipadmin','UsrLoc Stats','{@home:url}/sipadmin/charts_stats_uls',NULL,NULL,'',1,'System.Sipadmin.Charts',60,'','','','',1,NULL,1,NULL),('System.Sipadmin.Cms','sipadmin','Command Services','',NULL,NULL,'',1,'System.Sipadmin',80,'','','','',1,NULL,1,NULL),('System.Sipadmin.Cms.Fscmds','sipadmin','FSwitch Commands','{@home:url}/sipadmin/fscmds',NULL,NULL,'',1,'System.Sipadmin.Cms',30,'','','','',1,NULL,1,NULL),('System.Sipadmin.Cms.Jrcmds','sipadmin','JSONRPC Commands','{@home:url}/sipadmin/jrcmds',NULL,NULL,'',1,'System.Sipadmin.Cms',10,'','','','',1,NULL,1,NULL),('System.Sipadmin.Cms.Xrcmds','sipadmin','XMLRPC Commands','{@home:url}/sipadmin/xrcmds',NULL,NULL,'',1,'System.Sipadmin.Cms',20,'','','','',1,NULL,1,NULL),('System.Sipadmin.Msc','sipadmin','Misc Services','',NULL,NULL,'',1,'System.Sipadmin',70,'','','','',1,NULL,1,NULL),('System.Sipadmin.Msc.Moh.Management','sipadmin','MoH Management','{@home:url}/sipadmin/mohqueues_list',NULL,NULL,'',1,'System.Sipadmin.Msc',30,'','','','',1,NULL,1,NULL),('System.Sipadmin.Msc.Mohqcalls.List','sipadmin','MoH QCalls List','{@home:url}/sipadmin/mohqcalls_list',NULL,NULL,'',1,'System.Sipadmin.Msc.Moh.Management',20,'','','','',1,NULL,1,NULL),('System.Sipadmin.Msc.Mohqueues.List','sipadmin','MoH Queues List','{@home:url}/sipadmin/mohqueues_list',NULL,NULL,'',1,'System.Sipadmin.Msc.Moh.Management',10,'','','','',1,NULL,1,NULL),('System.Sipadmin.Msc.Secfilter.List','sipadmin','SecFilter List','{@home:url}/sipadmin/secfilter_list',NULL,NULL,'',1,'System.Sipadmin.Msc',25,'','','','',1,NULL,1,NULL),('System.Sipadmin.Prs','sipadmin','Presence Services','',NULL,NULL,'',1,'System.Sipadmin',60,'','','','',1,NULL,1,NULL),('System.Sipadmin.Prs.ActiveWatchers','sipadmin','Active Watchers List','{@home:url}/sipadmin/active_watchers_list',NULL,NULL,'',1,'System.Sipadmin.Prs.Management',10,'','','','',1,NULL,1,NULL),('System.Sipadmin.Prs.Management','sipadmin','Management List','',NULL,NULL,'',1,'System.Sipadmin.Prs',10,'','','','',1,NULL,1,NULL),('System.Sipadmin.Prs.Presentity','sipadmin','Presentity List','{@home:url}/sipadmin/presentity_list',NULL,NULL,'',1,'System.Sipadmin.Prs.Management',30,'','','','',1,NULL,1,NULL),('System.Sipadmin.Prs.Pua','sipadmin','PUA List','{@home:url}/sipadmin/pua_list',NULL,NULL,'',1,'System.Sipadmin.Prs.Management',40,'','','','',1,NULL,1,NULL),('System.Sipadmin.Prs.Rls. Management','sipadmin','RLS Management','',NULL,NULL,'',1,'System.Sipadmin.Prs',50,'','','','',1,NULL,1,NULL),('System.Sipadmin.Prs.RlsPresentity','sipadmin','RLS Presentity List','{@home:url}/sipadmin/rls_presentity_list',NULL,NULL,'',1,'System.Sipadmin.Prs.Rls. Management',20,'','','','',1,NULL,1,NULL),('System.Sipadmin.Prs.RlsWatchers','sipadmin','RLS Watchers List','{@home:url}/sipadmin/rls_watchers_list',NULL,NULL,'',1,'System.Sipadmin.Prs.Rls. Management',10,'','','','',1,NULL,1,NULL),('System.Sipadmin.Prs.Sca','sipadmin','SCA List','{@home:url}/sipadmin/sca_subscriptions_list',NULL,NULL,'',1,'System.Sipadmin.Prs',80,'','','','',1,NULL,1,NULL),('System.Sipadmin.Prs.Watchers','sipadmin','Watchers List','{@home:url}/sipadmin/watchers_list',NULL,NULL,'',1,'System.Sipadmin.Prs.Management',20,'','','','',1,NULL,1,NULL),('System.Sipadmin.Prs.Xcap','sipadmin','XCAP List','{@home:url}/sipadmin/xcap_list',NULL,NULL,'',1,'System.Sipadmin.Prs',70,'','','','',1,NULL,1,NULL),('System.Sipadmin.Rtg','sipadmin','Routing Services','',NULL,NULL,'',1,'System.Sipadmin',40,'','','','',1,NULL,1,NULL),('System.Sipadmin.Rtg.CarrierFailureRoute.List','sipadmin','CR Failure List','{@home:url}/sipadmin/carrierfailureroute_list',NULL,NULL,'',1,'System.Sipadmin.Rtg.CarrierRoute.Management',20,'','','','',1,NULL,1,NULL),('System.Sipadmin.Rtg.CarrierName.List','sipadmin','CR Name List','{@home:url}/sipadmin/carrier_name_list',NULL,NULL,'',1,'System.Sipadmin.Rtg.CarrierRoute.Management',30,'','','','',1,NULL,1,NULL),('System.Sipadmin.Rtg.CarrierRoute.List','sipadmin','CR Route List','{@home:url}/sipadmin/carrierroute_list',NULL,NULL,'',1,'System.Sipadmin.Rtg.CarrierRoute.Management',10,'','','','',1,NULL,1,NULL),('System.Sipadmin.Rtg.CarrierRoute.Management','sipadmin','CarrierRoute Management','',NULL,NULL,'',1,'System.Sipadmin.Rtg',60,'','','','',1,NULL,1,NULL),('System.Sipadmin.Rtg.CRDomainName.List','sipadmin','CR Domain List','{@home:url}/sipadmin/domain_name_list',NULL,NULL,'',1,'System.Sipadmin.Rtg.CarrierRoute.Management',40,'','','','',1,NULL,1,NULL),('System.Sipadmin.Rtg.Dispatcher.List','sipadmin','Dispatcher List','{@home:url}/sipadmin/dispatcher_list',NULL,NULL,'',1,'System.Sipadmin.Rtg',10,'','','','',1,NULL,1,NULL),('System.Sipadmin.Rtg.DrGateways.List','sipadmin','Dr Gateways List','{@home:url}/sipadmin/dr_gateways_list',NULL,NULL,'',1,'System.Sipadmin.Rtg.Drouting.Management',10,'','','','',1,NULL,1,NULL),('System.Sipadmin.Rtg.DrGroups.List','sipadmin','Dr Groups List','{@home:url}/sipadmin/dr_groups_list',NULL,NULL,'',1,'System.Sipadmin.Rtg.Drouting.Management',20,'','','','',1,NULL,1,NULL),('System.Sipadmin.Rtg.DrGwLists.List','sipadmin','Dr Gateways Ways Lists List','{@home:url}/sipadmin/dr_gw_lists_list',NULL,NULL,'',1,'System.Sipadmin.Rtg.Drouting.Management',30,'','','','',1,NULL,1,NULL),('System.Sipadmin.Rtg.Drouting.Management','sipadmin','Drouting Management','',NULL,NULL,'',1,'System.Sipadmin.Rtg',70,'','','','',1,NULL,1,NULL),('System.Sipadmin.Rtg.DrRules.List','sipadmin','Dr Rules List','{@home:url}/sipadmin/dr_rules_list',NULL,NULL,'',1,'System.Sipadmin.Rtg.Drouting.Management',40,'','','','',1,NULL,1,NULL),('System.Sipadmin.Rtg.Lcr.Management','sipadmin','LCR Management','',NULL,NULL,'',1,'System.Sipadmin.Rtg',30,'','','','',1,NULL,1,NULL),('System.Sipadmin.Rtg.LcrGw.List','sipadmin','LCR Gateway List','{@home:url}/sipadmin/lcr_gw_list',NULL,NULL,'',1,'System.Sipadmin.Rtg.Lcr.Management',10,'','','','',1,NULL,1,NULL),('System.Sipadmin.Rtg.LcrRule.List','sipadmin','LCR Rule List','{@home:url}/sipadmin/lcr_rule_list',NULL,NULL,'',1,'System.Sipadmin.Rtg.Lcr.Management',20,'','','','',1,NULL,1,NULL),('System.Sipadmin.Rtg.LcrRuleTarget.List','sipadmin','LCR Target List','{@home:url}/sipadmin/lcr_rule_target_list',NULL,NULL,'',1,'System.Sipadmin.Rtg.Lcr.Management',30,'','','','',1,NULL,1,NULL),('System.Sipadmin.Rtg.Pdt.List','sipadmin','Pdt List','{@home:url}/sipadmin/pdt_list',NULL,NULL,'',1,'System.Sipadmin.Rtg',20,'','','','',1,NULL,1,NULL),('System.Sipadmin.Sbs','sipadmin','Subscriber Services','',NULL,NULL,'',0,'System.Sipadmin',10,'','','','',1,NULL,1,NULL),('System.Sipadmin.Sbs.Aliasdb.List','sipadmin','Aliases DB List','{@home:url}/sipadmin/aliasdb_list',NULL,NULL,'',1,'System.Sipadmin.Sbs',30,'','','','',1,NULL,1,NULL),('System.Sipadmin.Sbs.Globalblacklist.List','sipadmin','Global Black List','{@home:url}/sipadmin/globalblacklist_list',NULL,NULL,'',1,'System.Sipadmin.Sbs.Userblacklist.Management',20,'','','','',1,NULL,1,NULL),('System.Sipadmin.Sbs.Location.List','sipadmin','Location List','{@home:url}/sipadmin/location_list',NULL,NULL,'',1,'System.Sipadmin.Sbs.Location.Management',10,'','','','',1,NULL,1,NULL),('System.Sipadmin.Sbs.Location.Management','sipadmin','Location Management','',NULL,NULL,'',1,'System.Sipadmin.Sbs',70,'','','','',1,NULL,1,NULL),('System.Sipadmin.Sbs.LocationAttrs.List','sipadmin','Location Attrs List','{@home:url}/sipadmin/location_attrs_list',NULL,NULL,'',1,'System.Sipadmin.Sbs.Location.Management',20,'','','','',1,NULL,1,NULL),('System.Sipadmin.Sbs.Msilo.List','sipadmin','Messages List','{@home:url}/sipadmin/silo_list',NULL,NULL,'',1,'System.Sipadmin.Sbs',80,'','','','',1,NULL,1,NULL),('System.Sipadmin.Sbs.Speeddial.List','sipadmin','Speed Dial List','{@home:url}/sipadmin/speed_dial_list',NULL,NULL,'',1,'System.Sipadmin.Sbs',40,'','','','',1,NULL,1,NULL),('System.Sipadmin.Sbs.Subscriber.List','sipadmin','Subscriber List','{@home:url}/sipadmin/subscriber_list',NULL,NULL,'',1,'System.Sipadmin.Sbs',20,'','','','',1,NULL,1,NULL),('System.Sipadmin.Sbs.Uridb.List','sipadmin','URI DB List','{@home:url}/sipadmin/uri_list',NULL,NULL,'',1,'System.Sipadmin.Sbs',60,'','','','',1,NULL,1,NULL),('System.Sipadmin.Sbs.Userblacklist.List','sipadmin','User Black List','{@home:url}/sipadmin/userblacklist_list',NULL,NULL,'',1,'System.Sipadmin.Sbs.Userblacklist.Management',10,'','','','',1,NULL,1,NULL),('System.Sipadmin.Sbs.Userblacklist.Management','sipadmin','Blacklist Management','',NULL,NULL,'',1,'System.Sipadmin.Sbs',90,'','','','',1,NULL,1,NULL),('System.Sipadmin.Sbs.UsrPreferences.List','sipadmin','User Preferences','{@home:url}/sipadmin/usr_preferences_list',NULL,NULL,'',1,'System.Sipadmin.Sbs',50,'','','','',1,NULL,1,NULL),('System.Sipadmin.Srv','sipadmin','Server Services','',NULL,NULL,'',1,'System.Sipadmin',20,'','','','',1,NULL,1,NULL),('System.Sipadmin.Srv.Dialog.List','sipadmin','Dialog List','{@home:url}/sipadmin/dialog_list',NULL,NULL,'',1,'System.Sipadmin.Srv.Dialog.Management',40,'','','','',1,NULL,1,NULL),('System.Sipadmin.Srv.Dialog.Management','sipadmin','Dialog Management','',NULL,NULL,'',1,'System.Sipadmin.Srv',40,'','','','',1,NULL,1,NULL),('System.Sipadmin.Srv.DialogVars.List','sipadmin','Dialog Vars List','{@home:url}/sipadmin/dialog_vars_list',NULL,NULL,'',1,'System.Sipadmin.Srv.Dialog.Management',50,'','','','',1,NULL,1,NULL),('System.Sipadmin.Srv.Dialplan.List','sipadmin','Dialplan List','{@home:url}/sipadmin/dialplan_list',NULL,NULL,'',1,'System.Sipadmin.Srv',30,'','','','',1,NULL,1,NULL),('System.Sipadmin.Srv.Domain.List','sipadmin','Domain List','{@home:url}/sipadmin/domain_list',NULL,NULL,'',1,'System.Sipadmin.Srv.Domain.Management',10,'','','','',1,NULL,1,NULL),('System.Sipadmin.Srv.Domain.Management','sipadmin','Domain Management','',NULL,NULL,'',1,'System.Sipadmin.Srv',10,'','','','',1,NULL,1,NULL),('System.Sipadmin.Srv.DomainAttrs.List','sipadmin','Domain Attrs List','{@home:url}/sipadmin/domain_attrs_list',NULL,NULL,'',1,'System.Sipadmin.Srv.Domain.Management',20,'','','','',1,NULL,1,NULL),('System.Sipadmin.Srv.Htable.List','sipadmin','HTable List','{@home:url}/sipadmin/htable_list',NULL,NULL,'',1,'System.Sipadmin.Srv',20,'','','','',1,NULL,1,NULL),('System.Sipadmin.Srv.Mtree.List','sipadmin','MTree List','{@home:url}/sipadmin/mtree_list',NULL,NULL,'',1,'System.Sipadmin.Srv.Mtrees.Management',20,'','','','',1,NULL,1,NULL),('System.Sipadmin.Srv.Mtrees.List','sipadmin','MTrees List','{@home:url}/sipadmin/mtrees_list',NULL,NULL,'',1,'System.Sipadmin.Srv.Mtrees.Management',10,'','','','',1,NULL,1,NULL),('System.Sipadmin.Srv.Mtrees.Management','sipadmin','MTrees Management','',NULL,NULL,'',1,'System.Sipadmin.Srv',80,'','','','',1,NULL,1,NULL),('System.Sipadmin.Srv.Rtpengine.List','sipadmin','RTPEngine List','{@home:url}/sipadmin/rtpengine_list',NULL,NULL,'',1,'System.Sipadmin.Msc',10,'','','','',1,NULL,1,NULL),('System.Sipadmin.Srv.Rtpproxy.List','sipadmin','RTPProxy List','{@home:url}/sipadmin/rtpproxy_list',NULL,NULL,'',1,'System.Sipadmin.Msc',20,'','','','',1,NULL,1,NULL),('System.Sipadmin.Srv.SipTrace.List','sipadmin','SIP Trace List','{@home:url}/sipadmin/sip_trace_list',NULL,NULL,'',1,'System.Sipadmin.Srv',60,'','','','',1,NULL,1,NULL),('System.Sipadmin.Srv.Topos.Management','sipadmin','Topos Management','',NULL,NULL,'',1,'System.Sipadmin.Srv',90,'','','','',1,NULL,1,NULL),('System.Sipadmin.Srv.ToposD.List','sipadmin','ToposD List','{@home:url}/sipadmin/topos_d_list',NULL,NULL,'',1,'System.Sipadmin.Srv.Topos.Management',10,'','','','',1,NULL,1,NULL),('System.Sipadmin.Srv.ToposT.List','sipadmin','ToposT List','{@home:url}/sipadmin/topos_t_list',NULL,NULL,'',1,'System.Sipadmin.Srv.Topos.Management',20,'','','','',1,NULL,1,NULL),('System.Sipadmin.Srv.UACReg.List','sipadmin','UACReg List','{@home:url}/sipadmin/uacreg_list',NULL,NULL,'',1,'System.Sipadmin.Srv',70,'','','','',1,NULL,1,NULL),('System.Sipadmin.Srv.Version.List','sipadmin','Version List','{@home:url}/sipadmin/version_list',NULL,NULL,'',1,'System.Sipadmin.Msc',40,'','','','',1,NULL,1,NULL),('System.Sipadmin.SummaryStatsAcc','sipadmin','Acc Summary','{@home:url}/sipadmin/summary_stats_acc',NULL,NULL,'',1,'System.Sipadmin.Charts',80,'','','','',1,NULL,1,NULL),('System.Sipuser','sipuser','SIP User Menu','/sipuser/sipuser_default',NULL,NULL,'',1,'',45,'SIPUser.Administer_Modules','spacer.gif','','SIP Profile Management',1,NULL,1,NULL),('System.Sipuser.Acs','sipuser','Accounting','',NULL,NULL,'',1,'System.Sipuser',20,'','','','',1,NULL,1,NULL),('System.Sipuser.Acs.Acc.List','sipuser','Initiated Calls','{@home:url}/sipuser/acc_list',NULL,NULL,'',1,'System.Sipuser.Acs',20,'','','','',1,NULL,1,NULL),('System.Sipuser.Acs.Cdrs.List','sipuser','Call Data Records','{@home:url}/sipuser/cdrs_list',NULL,NULL,'',1,'System.Sipuser.Acs',40,'','','','',1,NULL,1,NULL),('System.Sipuser.Acs.MissedCalls.List','sipuser','Missed Calls','{@home:url}/sipuser/missed_calls_list',NULL,NULL,'',1,'System.Sipuser.Acs',30,'','','','',1,NULL,1,NULL),('System.Sipuser.Sbs','sipuser','Own SIP Profile','',NULL,NULL,'',1,'System.Sipuser',10,'','','','',1,NULL,1,NULL),('System.Sipuser.Sbs.Aliasdb.List','sipuser','Aliases DB Records','{@home:url}/sipuser/aliasdb_list',NULL,NULL,'',1,'System.Sipuser.Sbs',40,'','','','',1,NULL,1,NULL),('System.Sipuser.Sbs.Location.List','sipuser','Location Records','{@home:url}/sipuser/location_list',NULL,NULL,'',1,'System.Sipuser.Sbs',30,'','','','',1,NULL,1,NULL),('System.Sipuser.Sbs.Msilo.List','sipuser','Stored Messages','{@home:url}/sipuser/silo_list',NULL,NULL,'',1,'System.Sipuser.Sbs',60,'','','','',1,NULL,1,NULL),('System.Sipuser.Sbs.Speeddial.List','sipuser','Speed Dial Records','{@home:url}/sipuser/speed_dial_list',NULL,NULL,'',1,'System.Sipuser.Sbs',50,'','','','',1,NULL,1,NULL),('System.Sipuser.Sbs.Subscriber.List','sipuser','Subscriber Data','{@home:url}/sipuser/subscriber_list',NULL,NULL,'',1,'System.Sipuser.Sbs',20,'','','','',1,NULL,1,NULL),('System.Theme','theme','Theme','',NULL,NULL,'',1,'System',50,'','spacer.gif','icon_theme','Theme Management',1,NULL,1,NULL),('System.Theme.Manage','theme','Manage Theme','/theme/manage_theme',NULL,NULL,'',1,'System.Theme',10,'','','','',1,NULL,1,NULL),('System.Translation','translation','Translation','',NULL,NULL,'',1,'System',50,'','spacer.gif','icon_translation','Translation Management',1,NULL,1,NULL),('System.Translation.language','translation','Manage Languages','/translation/manage_language',NULL,NULL,'',1,'System.Translation',30,'','','','',1,NULL,1,NULL),('System.Translation.translation','translation','Manage UI Translation','/translation/manage_translation',NULL,NULL,'',1,'System.Translation',20,'','','','',1,NULL,1,NULL),('System.User','system','Users','',NULL,NULL,'',1,'System',5,'User.Administer_Users','spacer.gif','icon_user','System User Management',1,NULL,1,'2020-07-22 00:48:49'),('System.User.Detail','system','User Detail','/system/user_detail',NULL,NULL,'',1,'System.User.List',10,'','','','',1,NULL,1,NULL),('System.User.List','system','User Management','/system/user_list',NULL,NULL,'',1,'System.User',10,'','','','',1,NULL,1,NULL);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_do`
--

DROP TABLE IF EXISTS `meta_do`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_do` (
  `name` varchar(100) NOT NULL,
  `module` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `dbname` varchar(100) DEFAULT NULL,
  `table` varchar(100) DEFAULT NULL,
  `data` text,
  `fields` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_do`
--

LOCK TABLES `meta_do` WRITE;
/*!40000 ALTER TABLE `meta_do` DISABLE KEYS */;
/*!40000 ALTER TABLE `meta_do` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_form`
--

DROP TABLE IF EXISTS `meta_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_form` (
  `name` varchar(100) NOT NULL,
  `module` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `dataobj` varchar(100) DEFAULT NULL,
  `template` varchar(100) DEFAULT NULL,
  `data` text,
  `elements` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_form`
--

LOCK TABLES `meta_form` WRITE;
/*!40000 ALTER TABLE `meta_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `meta_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_view`
--

DROP TABLE IF EXISTS `meta_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_view` (
  `name` varchar(100) NOT NULL,
  `module` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `template` varchar(100) DEFAULT NULL,
  `data` text,
  `forms` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_view`
--

LOCK TABLES `meta_view` WRITE;
/*!40000 ALTER TABLE `meta_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `meta_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT '1',
  `author` varchar(64) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `openbiz_version` varchar(64) DEFAULT NULL,
  `depend_on` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (1,'system','system module, only administrator can access',1,'Rocky','0.1','2.4',''),(2,'menu','menu management module',1,'Jixian, Rocky','0.1','2.4','system'),(3,'cache','Cache management module',1,'Jixian','0.1','2.4','system,menu'),(4,'contact','contact management module',1,'','0.1','2.4','system,menu'),(5,'cronjob','cronjob management module',1,'','0.1','2.4','system,menu'),(6,'eventlog','Event log module, only administrator can access',1,'Rocky','0.1','2.4',''),(7,'help','help management module',0,'','0.1','2.4','system,menu'),(8,'sipadmin','SIP Admin Modules',1,'','5.3','2.4','system,menu'),(9,'sipuser','SIP User module',1,'','4.0','2.4','system,menu'),(10,'theme','Theme management module',1,'Jixian','0.1','2.4','system,menu'),(11,'translation','UI translation management module',1,'Jixian','0.2','2.4','system,menu'),(12,'user','usr login, my account edit, password reset',1,'Rocky, Jixian','0.1','2.4','system,menu');
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pass_token`
--

DROP TABLE IF EXISTS `pass_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pass_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(64) NOT NULL,
  `expiration` datetime DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pass_token`
--

LOCK TABLES `pass_token` WRITE;
/*!40000 ALTER TABLE `pass_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `pass_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT '1',
  `default` int(2) DEFAULT '0',
  `startpage` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `default` (`default`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Administrator','System administrator',0,0,'/system/general_default'),(2,'Sipadmin','General SIP admins',1,0,'/sipadmin/sipadmin_default'),(3,'Sipuser','General SIP users',1,0,'/sipuser/sipuser_default');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL DEFAULT '',
  `enctype` varchar(64) NOT NULL DEFAULT 'SHA1',
  `email` varchar(64) DEFAULT '',
  `status` int(2) DEFAULT '1',
  `lastlogin` datetime DEFAULT NULL,
  `lastlogout` datetime DEFAULT NULL,
  `create_by` int(10) DEFAULT '1',
  `create_time` datetime DEFAULT NULL,
  `update_by` int(10) DEFAULT '1',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','ce04f2af2895e36bf1f570a1966204a2920d88f5','SHA1','gtroyal@gmail.com',1,'2020-08-20 22:06:46','2009-08-24 13:24:14',1,'2010-05-01 01:19:57',1,'2020-08-20 22:06:46'),(2,'member','6467baa3b187373e3931422e2a8ef22f3e447d77','SHA1','member@yourcompany.com',0,'2010-05-01 01:19:57','2009-08-23 23:39:37',1,'2010-05-01 01:19:57',1,'2020-07-10 02:42:27'),(3,'guest','35675e68f4b5af7b995d9205ad0fc43842f16450','SHA1','guest@yourcompany.com',0,NULL,NULL,NULL,'2010-01-12 02:20:10',1,'2020-07-08 17:21:43');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group`
--

DROP TABLE IF EXISTS `user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group`
--

LOCK TABLES `user_group` WRITE;
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1,1),(2,2,2),(3,3,3);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-21  7:57:00
