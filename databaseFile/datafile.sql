-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: today
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` bigint NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (60,'Vegetables'),(62,'Fruits'),(64,'dairy products');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (84),(84),(84);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` bigint NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_description` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` int NOT NULL,
  `product_unit` int NOT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (65,'/resources/1632889885933.jpg','15/Kg','Tomato',15,1,60),(66,'/resources/1632889899293.jfif','15/Kg','Apple',70,1,62),(67,'/resources/1632883714050.jfif','40/Kg','Orange',40,1,62),(68,'/resources/1632884104883.jfif','35/L','Milk',35,1,64),(69,'/resources/1632885060345.jfif','30/Kg','Onion',30,1,60),(70,'/resources/1632885128560.jfif','12/Kg','Green Peas',12,1,60),(71,'/resources/1632885519507.jfif','22/Kg','Garlic',22,1,60),(72,'/resources/1632885728190.jfif','30/dozen','Bannana',30,1,62),(73,'/resources/1632886015582.jfif','35/kg','Grapes',35,1,62),(74,'/resources/1632886308190.jfif','30','Watermelon',30,1,62),(75,'/resources/1632886614085.jfif','80/L','Yogurt',80,1,64),(76,'/resources/1632886797787.webp','40/kg','Carrot',40,1,60),(77,'/resources/1632886870342.jfif','120/Kg','Mango',120,1,62),(78,'/resources/1632886954361.jfif','35/Kg','Guava',35,1,62),(79,'/resources/1632887032152.jfif','25','Pumkin',25,1,60),(80,'/resources/1632887249053.jfif','50/L','Buttter milk',50,1,64),(83,'/resources/1632985607893.jfif','50','Cheese',50,1,64);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` bigint NOT NULL,
  `active` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'admin@gmail.com','Avinash','Kafle','$2a$10$uA7FXFWM7Mf2vVm2/EABZeW7lDkITMuzBSCY3VGliJlkAJ7OCb8D.','ADMIN'),(27,1,'user@gmail.com','John','Don','$2a$10$AHHjLDLVpIcQqgsoiMHlpu/tduIjf9CD2uB7htAzjkfw1fZiVNz9O','USER'),(30,1,'manager@gmail.com','Richard','ZimmerMan','$2a$10$0DkGENe88Hd1rbEhpC6rA.Qj0Tlqp71FfwO11569.9tpzBPtjyFy.','MANAGER'),(81,1,'pbhoite06@gmail.com','Prashant','Bhoite','$2a$10$wGBH9yHoDBUWu78/syC9JOFoy2/d2/Vj31.N7wutEv3ntCeo/mk6W','user'),(82,1,'shilpapawale@gmail.com','shilpa ','pawale','$2a$10$iAwpXgPHOY2yL7H1vSUkquJ81ZpIUtQOOSiw9Nm3d/ak.c5Ln9wl.','user');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_product_list`
--

DROP TABLE IF EXISTS `user_product_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_product_list` (
  `user_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  KEY `FK3004e70hlvx5lgevqfpaum5c9` (`product_id`),
  KEY `FKp2whfea0ftxvb6lybnqmy8o8` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_product_list`
--

LOCK TABLES `user_product_list` WRITE;
/*!40000 ALTER TABLE `user_product_list` DISABLE KEYS */;
INSERT INTO `user_product_list` VALUES (23,21),(1,22),(1,20),(1,22),(1,61),(27,65),(30,61),(27,65),(27,65),(27,65),(27,65),(27,65),(27,66),(27,65),(30,69),(81,66),(81,65),(82,83),(82,68);
/*!40000 ALTER TABLE `user_product_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-30 13:42:51
