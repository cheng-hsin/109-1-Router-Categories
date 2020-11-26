-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: blogen_123456789
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category_89`
--

DROP TABLE IF EXISTS `category_89`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category_89` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_89`
--

LOCK TABLES `category_89` WRITE;
/*!40000 ALTER TABLE `category_89` DISABLE KEYS */;
INSERT INTO `category_89` VALUES (1,'Web Development','2018-05-10'),(2,'Tech Gadgets','2018-05-11'),(3,'Business','2018-05-17'),(4,'Health & Wellness','2018-10-28');
/*!40000 ALTER TABLE `category_89` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_89`
--

DROP TABLE IF EXISTS `post_89`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `post_89` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `article` text,
  PRIMARY KEY (`id`),
  KEY `fk1_idx` (`cat_id`),
  KEY `fk2_idx` (`user_id`),
  CONSTRAINT `fk1` FOREIGN KEY (`cat_id`) REFERENCES `category_89` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk2` FOREIGN KEY (`user_id`) REFERENCES `user_89` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_89`
--

LOCK TABLES `post_89` WRITE;
/*!40000 ALTER TABLE `post_89` DISABLE KEYS */;
INSERT INTO `post_89` VALUES (3,'Post 3',1,4,'2018-12-14','<p>this is the post 3</p>\r\n'),(4,'Post Four',2,4,'2018-12-15','<p>this is post four</p>\r\n'),(5,'Post Five',3,4,'2018-09-18','<p>this is the post five</p>\r\n'),(6,'Post Six',3,2,'2018-12-18','<p>this is post six</p>\r\n'),(9,'Post 10',4,2,'2018-12-16','<p>This is post 10.</p>\r\n'),(10,'Post 7',4,1,'2018-12-16','<p>This is post 7</p>\r\n'),(11,'Post 11',6,3,'2020-10-06','<p>THis is post 11<p>');
/*!40000 ALTER TABLE `post_89` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_89`
--

DROP TABLE IF EXISTS `user_89`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_89` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`name`),
  KEY `foreign_user_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_89`
--

LOCK TABLES `user_89` WRITE;
/*!40000 ALTER TABLE `user_89` DISABLE KEYS */;
INSERT INTO `user_89` VALUES (1,'John Doe','jdoe@gmail.com','123456789'),(2,'Harry White','harry@yahoo.com','789456123'),(3,'Mary Johnson','mary@gmail.com','abcdefg123'),(4,'Robert','robert@gmail.com','123456'),(5,'Mary Smith','marysmith@gmail.com','msmith'),(6,'Hsingtai Chung','123456789@mail.tku.edu.tw','123456');
/*!40000 ALTER TABLE `user_89` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 21:01:40
