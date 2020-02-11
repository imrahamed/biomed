CREATE DATABASE  IF NOT EXISTS `userauth` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `userauth`;
-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: userauth
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.19.04.2

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
-- Table structure for table `app`
--

DROP TABLE IF EXISTS `app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `date` text NOT NULL,
  `time` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `regtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app`
--

LOCK TABLES `app` WRITE;
/*!40000 ALTER TABLE `app` DISABLE KEYS */;
INSERT INTO `app` VALUES (16,'Soumyadip Chowdhury','testUser@gmail.com','6/20/2019','10:00pm','Fever','2019-06-08 12:22:26'),(17,'Soumyadip Chowdhury','testUser@gmail.com','6/19/2019','11:00pm','Fever','2019-06-08 12:22:08'),(18,'Soumyadip Chowdhury','hello@gmail.com','6/4/2019','12:30am','Cold','2019-06-08 13:04:17'),(19,'Soumyadip Chowdhury','abc@teamcg.com','6/5/2019','12:30am','Fever','2019-06-14 11:40:45'),(21,'Soumyadip Chowdhury','testUser@gmail.com','7/3/2019','3:30am','Fever','2019-07-03 08:36:17'),(28,'Imran Ahmed','imrahamed1@gmail.com','2/20/2020','12:30am','','2020-02-10 11:51:10');
/*!40000 ALTER TABLE `app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (61),(61);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicine` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `medicine_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `imageURL` varchar(255) DEFAULT NULL,
  `actual_price` double(10,2) DEFAULT NULL,
  `discount_price` double(10,2) DEFAULT NULL,
  `quantity` int(6) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES (34,'Sample','This is Desc',NULL,1000.00,200.00,112100,0);
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `medicine_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (58,34,1,27),(59,34,1,27),(60,34,1,27);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `authority` varchar(255) DEFAULT NULL,
  `lastseen` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'36983cce-975b-4a92-bf73-a4f41978e01c','soumyadip.note@gmail.com',_binary '','Soumyadip','MALE','Chowdhury','soumyadip','ROLE_ADMIN','Wed Feb 12 02:41:12 IST 2020'),(2,'ByAdmin-Panel','soumyadip@gmail.com',_binary '','Soumyadip','Male','Chowdhury','default','ROLE_DOCTOR','Fri Jun 14 17:11:47 IST 2019'),(4,'ByAdmin-Panel','a.note@gmail.com',_binary '','Soumyadip','MALE','Chowdhury','default','ROLE_DOCTOR','Wed Jul 03 14:06:52 IST 2019'),(6,'ByAdmin-Panel','soumyadip.ote@gmail.com',_binary '','Soumyadip','MALE','Chowdhury','default','ROLE_DOCTOR','Tue Aug 06 17:15:20 IST 2019'),(7,'ByAdmin-Panel','soumydip.cmp@gmail.com',_binary '','Mr. Soumyadip','MALE','Chowdhury','default','ROLE_ADMIN','Sat Jun 08 18:25:03 IST 2019'),(12,'a6866ee4-f568-47a9-9a23-2297ec37c293','testUser@gmail.com',_binary '','Soumyadip','Male','Chowdhury','soumyadip','ROLE_USER','Tue Aug 06 17:13:58 IST 2019'),(20,'ByAdmin-Panel','s@teamcg.com',_binary '','Sanket','Male','Sarkar','default','ROLE_DOCTOR','Fri Jun 14 17:14:51 IST 2019'),(22,'ByAdmin-Panel','aashifathahasin@gmail.com',_binary '','aashifa','F','thahasin','default','ROLE_DOCTOR','Wed Feb 12 02:43:31 IST 2020'),(24,'ByAdmin-Panel','aashifathahasin1@gmail.com',_binary '','aashifa','F','thahasin','default','ROLE_DOCTOR','Tue Feb 11 17:53:31 IST 2020'),(25,'ce13a68d-9dc3-4ba9-844f-ef69f3b0bfa0','sampler@gmail.com',_binary '\0','imran','Male','ahamed',NULL,'ROLE_USER',NULL),(26,'4eb27083-98bc-4138-8ad2-d8d12674e1ad','sampler1@gmail.com',_binary '\0','imran','Male','ahamed','default','ROLE_USER',NULL),(27,'c64094e5-4cfa-4af5-b557-57d397cf7879','imrahamed1@gmail.com',_binary '','Imran','Male','Ahmed','default','ROLE_USER','Wed Feb 12 02:12:07 IST 2020'),(29,'ByAdmin-Panel','ramkumar@examly.in',_binary '','ram','F','kumar','default','ROLE_DOCTOR',NULL),(30,'ByAdmin-Panel','sellerram@examly.in',_binary '','Seller','M','ram','default','ROLE_DOCTOR',NULL),(31,'ByAdmin-Panel','imran1@examly.in',_binary '','imran','M','ahamed','default','ROLE_DOCTOR',NULL),(32,'ByAdmin-Panel','imran12@examly.in',_binary '','imran','M','ahamed','default','ROLE_DOCTOR',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-12  2:44:25
