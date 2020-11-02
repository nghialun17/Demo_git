-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: books_management
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `book_id` int NOT NULL,
  `author` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `image_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `total_pages` int DEFAULT NULL,
  `publisher_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `FKam9riv8y6rjwkua1gapdfew4j` (`category_id`),
  KEY `FKgtvt7p649s4x80y6f4842pnfq` (`publisher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Nghia','Bộ Sách Giáo Khoa Lớp 1 - Bộ Sách Cánh Diều','/images/cap1.1.jpg',1,'Tieng Viet 1',35,1,1),(2,'Nghia','Bộ Sách Giáo Khoa  1 - Bộ Sách Cánh Diều','/images/cap1.2.jpg',2,'Toan 1',35,1,1),(3,'Nghia','Bộ Sách Giáo Khoa  1 - Bộ Sách Cánh Diều','/images/cap1.3.jpg',1,'Khoa hoc Viet 1',35,1,1),(4,'Nghia','Bộ Sách Giáo Khoa  1 - Bộ Sách Cánh Diều','/images/cap1.4.jpg',1,'Khoa hoc Viet 1',35,1,1),(5,'Nghia','Bộ Sách Giáo Khoa  1 - Bộ Sách Cánh Diều','/images/cap1.5.jpg',1,'Khoa hoc Viet 1',35,1,1),(6,'Nghia','Bộ Sách Giáo Khoa  1 - Bộ Sách Cánh Diều','/images/cap1.6.jpg',1,'Khoa hoc Viet 1',35,1,1),(7,'Nghia','Bộ Sách Giáo Khoa  1 - Bộ Sách Cánh Diều','/images/cap1.7.jpg',1,'Khoa hoc Viet 1',35,1,1),(8,'Nghia','Bộ Sách Giáo Khoa  1 - Bộ Sách Cánh Diều','/images/cap1.8.jpg',1,'Khoa hoc Viet 1',35,1,1),(9,'Nghia','Bộ Sách Giáo Khoa  1 - Bộ Sách Cánh Diều','/images/cap1.9.jpg',1,'Khoa hoc Viet 1',35,1,1),(10,'Nghia','Bộ Sách Giáo Khoa  1 - Bộ Sách Cánh Diều','/images/cap1.10.jpg',1,'Khoa hoc Viet 1',35,1,1),(11,'Nghia','Bộ Sách Giáo Khoa  1 - Bộ Sách Cánh Diều','/images/cap2.1.jpg',1,'Khoa hoc Viet 1',35,1,1),(12,'Nghia','Bộ Sách Giáo Khoa  1 - Bộ Sách Cánh Diều','/images/cap2.2.jpg',1,'Khoa hoc Viet 1',35,1,1),(13,'Nghia','Bộ Sách Giáo Khoa  2 - Bộ Sách Hong Ha ','/images/cap2.3.jpg',1,'Lich su ',35,2,2),(14,'Nghia','Bộ Sách Giáo Khoa  2 - Bộ Sách Hong Ha','/images/cap2.4.jpg',1,'Dia ly',35,2,2),(15,'Nghia','Bộ Sách Giáo Khoa  2 - Bộ Sách Hong Ha','/images/cap2.5.jpg',1,'Toan',35,2,2),(16,'Nghia','Bộ Sách Giáo Khoa  2 - Bộ Sách Hong Ha','/images/cap2.6.jpg',1,'Van',35,2,2),(17,'Nghia','Bộ Sách Giáo Khoa  2 - Bộ Sách Hong Ha','/images/cap2.7.jpg',1,'Giao duc cong dan',35,2,2),(18,'Nghia','Bộ Sách Giáo Khoa  2 - Bộ Sách Hong Ha','/images/cap2.8.jpg',1,'Tieng Viet 1',35,2,2),(19,'Nghia','Bộ Sách Giáo Khoa  2 - Bộ Sách Hong Ha','/images/cap2.9.jpg',1,'Tieng Viet 1',35,2,2),(20,'Nghia','Bộ Sách Giáo Khoa  2 - Bộ Sách Hong Ha','/images/cap2.10.jpg',1,'Tieng Viet 1',35,2,2),(21,'Nghia','Bộ Sách Giáo Khoa  2 - Bộ Sách Hong Ha','/images/cap3.1.jpg',1,'Tieng Viet 1',35,2,2),(22,'Nghia','Bộ Sách Giáo Khoa  2 - Bộ Sách Hong Ha','/images/cap3.2.jpg',1,'Tieng Viet 1',35,2,2),(23,'Nghia','Bộ Sách Giáo Khoa  2 - Bộ Sách Hong Ha','/images/cap3.3.jpg',1,'Tieng Viet 1',35,2,2),(24,'Nghia','Bộ Sách Giáo Khoa  2 - Bộ Sách Hong Ha','/images/cap3.4.jpg',1,'Tieng Viet 1',35,2,2),(25,'Nghia','Bộ Sách Giáo Khoa Lớp 3 - Bộ Sách Cánh Diều','/images/cap3.5.jpg',1,'Toan hoc 1',35,3,3),(26,'Nghia','Bộ Sách Giáo Khoa Lớp 3 - Bộ Sách Cánh Diều','/images/cap3.6.jpg',1,'Toan Hoc 2',35,3,3),(27,'Nghia','Bộ Sách Giáo Khoa Lớp 3 - Bộ Sách Cánh Diều','/images/cap3.7.jpg',1,'Tieng Viet 1',35,3,3),(28,'Nghia','Bộ Sách Giáo Khoa Lớp 3 - Bộ Sách Cánh Diều','/images/cap3.8.jpg',1,'Tieng Viet 1',35,3,3),(29,'Nghia','Bộ Sách Giáo Khoa Lớp 3 - Bộ Sách Cánh Diều','/images/cap3.9.jpg',1,'Tieng Viet 1',35,3,3),(30,'Nghia','Bộ Sách Giáo Khoa Lớp 3 - Bộ Sách Cánh Diều','/images/cap3.10.jpg',1,'Tieng Viet 1',35,3,3),(31,'Nghia','Bộ Sách Giáo Khoa Lớp 3 - Bộ Sách Cánh Diều','/images/tv2.jpg',1,'Tieng Viet 1',35,3,3),(32,'Nghia','Bộ Sách Giáo Khoa Lớp 3 - Bộ Sách Cánh Diều','/images/tv2.jpg',1,'Tieng Viet 1',35,3,3),(33,'Nghia','Bộ Sách Giáo Khoa Lớp 3 - Bộ Sách Cánh Diều','/images/tv2.jpg',1,'Tieng Viet 1',35,3,3),(34,'Nghia','Bộ Sách Giáo Khoa Lớp 3 - Bộ Sách Cánh Diều','/images/tv2.jpg',1,'Tieng Viet 1',35,3,3),(35,'Nghia','Bộ Sách Giáo Khoa Lớp 3 - Bộ Sách Cánh Diều','/images/tv2.jpg',1,'Tieng Viet 1',35,3,3),(36,'Nghia','Bộ Sách Giáo Khoa Lớp 3 - Bộ Sách Cánh Diều','/images/tv2.jpg',1,'Tieng Viet 1',35,3,3);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL,
  `category_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(200) DEFAULT 'Null',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Sach giao khoa cap 1','Bộ sách giáo khoa cấp 1 danh cho các em học sinh từ lớp 1 đến lớp 5 . Trọn bộ và đầy đủ'),(2,'Sach giao khoa cap 2','Bộ sách giáo khoa cấp 1 danh cho các em học sinh từ lớp 6 đến lớp 9 . Trọn bộ và đầy đủ'),(3,'Sach giao khoa cap 3','Bộ sách giáo khoa cấp 1 danh cho các em học sinh từ lớp 10 đến lớp 12 . Trọn bộ và đầy đủ');
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
INSERT INTO `hibernate_sequence` VALUES (2);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publisher` (
  `publisher_id` int NOT NULL,
  `publisher_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`publisher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES (1,'NSX 1'),(2,'NSX 2'),(3,'NSX 3');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int NOT NULL,
  `role` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ADMIN');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL,
  `active` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'admin@gmail.com','a','a','$2a$10$rI6p5Nlskz399uHpyqNRF.1MWn6xqVUKzn4kEFH9mIwN60kjHs3ny');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1);
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

-- Dump completed on 2020-10-26  2:55:53
