-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: login
-- ------------------------------------------------------
-- Server version	5.6.28

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(255) DEFAULT NULL,
  `Last_Name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (14,'devan','Wong','devan.wong@yahoo.com','$2b$12$A96w3gvg2Za/Z8R22MmX8ucSxzw/bdoZpDKqdQ87M47Uk5Hc2b/ce','2016-09-21 20:07:19','2016-09-21 20:07:19'),(15,'devan','Wong','devan.wong@yahoo.com','$2b$12$QJCpaPnlfzxovI6CuXKCy.wnahbYEa2SpmW2bVFc9.EV/M0itaJGS','2016-09-21 20:08:07','2016-09-21 20:08:07'),(16,'devan','Wong','devan.wong@yahoo.com','$2b$12$GyCJjSzyL2Hxy2KBHTPiN.Cg2kRRpxZxHVsC9tP1yYuFUOaf.1C8q','2016-09-21 20:22:27','2016-09-21 20:22:27'),(17,'JESS','PERR','hi@Aol.com','$2b$12$8O/5SeO4bXVfNAi75WXrdew56.aTUs5nP0PvQA.DwbjSMRqroZZ3u','2016-09-21 20:25:03','2016-09-21 20:25:03'),(18,'Jill','Robs','jillybob@aol.com','$2b$12$KLATH8lqjC0ZEwbuLtMg0OwKrqb0npYJTg83PUygiFajyXW2jfE06','2016-09-22 11:22:42','2016-09-22 11:22:42'),(19,'Jill','Robs','jillybob@aol.com','$2b$12$kanhEUUX0DCupy5ainh/Tu8gcn5x0IFhEOTIsbYSPNqkxOcXUAv86','2016-09-22 11:23:53','2016-09-22 11:23:53'),(20,'marmar','cant','mar@yahoo.com','$2b$12$LRjNYmI.RkUtucMn/nLKUOY0uVOvQ2fWIZrkE/kn8MLOaXqQZ7lxu','2016-09-22 13:04:28','2016-09-22 13:04:28'),(21,'marmar','cant','mar@yahoo.com','$2b$12$p30HHvJilIe0lN6i3W5i..uiPJxYfeSRVqkFjtwTIegD6B/a3fGpW','2016-09-22 13:04:41','2016-09-22 13:04:41'),(22,'jessica','albo','jess@aol.com','$2b$12$Gk8FKyAJNNnrvx2s5f/ExOKulWtmf6VSv8fGQu4haDubQUjiEDjf.','2016-09-22 13:24:31','2016-09-22 13:24:31'),(23,'Elliot','Young','e@e.com','$2b$12$IYOyBtF/fqIxnMj8zbahD.a0ncf18FAq8ZFDjkC9ErlnXAM7bqdTq','2016-09-22 18:10:09','2016-09-22 18:10:09');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-22 21:47:38
