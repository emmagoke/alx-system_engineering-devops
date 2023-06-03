-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: hbnb_dev_db
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenities` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `state_id` varchar(60) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES ('01b54160-0e38-451f-a4b7-81060c4eceb9','2023-05-30 09:45:34','2023-05-30 09:45:34','448f16ea-cc5c-45da-b6e6-a6f32215af72','New Orleans'),('0f919c87-f62d-44ca-a877-63f5b5945e14','2023-05-30 09:42:22','2023-05-30 09:42:22','e980db45-dbec-49a3-8b80-5bac73ee5904','Pearl city'),('276e5028-4d67-47b4-b580-4457da9d7a7d','2023-05-30 09:43:49','2023-05-30 09:43:49','315e814e-8bf6-4f15-8ab2-e0d2aac3fea4','Peoria'),('29485263-46ed-485e-8290-081969eb7ec1','2023-05-30 09:44:53','2023-05-30 09:44:53','448f16ea-cc5c-45da-b6e6-a6f32215af72','Baton rouge'),('3f838a2a-7689-4ce7-8a56-fbfd7c3fa438','2023-05-30 09:39:36','2023-05-30 09:39:36','c73e3e1c-63a7-4126-8e0f-3cbf6b8591e6','San Jose'),('41282d8b-2f95-4ad0-9cf0-6e26de2b58cb','2023-05-30 09:44:06','2023-05-30 09:44:06','315e814e-8bf6-4f15-8ab2-e0d2aac3fea4','Urbana'),('41c7975e-f7d2-4399-92f1-3d4c3187d323','2023-05-30 09:40:09','2023-05-30 09:40:09','595545bb-96da-46ee-8929-2583ee3bc757','Denver'),('44fa9e81-c5c1-40e4-a2ab-56396e9c7155','2023-05-30 02:59:36','2023-05-30 02:59:36','c73e3e1c-63a7-4126-8e0f-3cbf6b8591e6','San Francisco'),('487b87ab-1754-4459-853d-3f94312e9955','2023-05-30 09:43:12','2023-05-30 09:43:12','315e814e-8bf6-4f15-8ab2-e0d2aac3fea4','Joliet'),('5ab469e1-2605-4e9e-a161-27967a5ecd61','2023-05-30 09:41:24','2023-05-30 09:41:24','e980db45-dbec-49a3-8b80-5bac73ee5904','Honolulu'),('5f351456-9b43-4f1c-8c7a-69968ce5fa2a','2023-05-30 03:21:07','2023-05-30 03:21:07','421a55f1-7d82-45d9-b54c-a76916479545','Calera'),('6b7a5764-8828-4b24-8f68-fd7f0bbc2246','2023-05-30 09:40:37','2023-05-30 09:40:37','541a53be-631b-4cd0-8b03-6f71434185a6','Miami'),('6da21eec-be16-42ee-8e53-b84bed43cb40','2023-05-30 03:21:41','2023-05-30 03:21:41','421a55f1-7d82-45d9-b54c-a76916479545','Fairfield'),('6f28ae17-7df8-4caa-89a8-423f25c3da2a','2023-05-30 09:15:54','2023-05-30 09:15:54','7d4dd2c2-baa4-4570-8b5c-f91a224d8490','Tempe'),('7df39fc2-f9e4-4bb9-ab9e-37294977f4b8','2023-05-30 09:14:32','2023-05-30 09:14:32','7d4dd2c2-baa4-4570-8b5c-f91a224d8490','Douglas'),('80ddf3f6-dd11-4c8a-bc06-19c1f4cc75ce','2023-05-30 09:38:16','2023-05-30 09:38:16','c73e3e1c-63a7-4126-8e0f-3cbf6b8591e6','Sonoma'),('9ca6f475-d1bd-4064-b0ba-94e582691dd1','2023-05-30 03:20:30','2023-05-30 03:20:30','421a55f1-7d82-45d9-b54c-a76916479545','Babbie'),('a33b77c2-2171-4a75-bde3-1a11be498e89','2023-05-30 09:40:58','2023-05-30 09:40:58','541a53be-631b-4cd0-8b03-6f71434185a6','Orlando'),('ab109e88-522e-4f6e-96a5-e2b43c3f401d','2023-05-30 09:45:11','2023-05-30 09:45:11','448f16ea-cc5c-45da-b6e6-a6f32215af72','Lafayette'),('b26e11f8-9dfc-4241-b4af-487f50ebe7bd','2023-05-30 09:19:18','2023-05-30 09:19:18','c73e3e1c-63a7-4126-8e0f-3cbf6b8591e6','Napa'),('bd81e968-42ce-4ca5-a8ec-e9d2e72bb095','2023-05-30 09:18:35','2023-05-30 09:18:35','c73e3e1c-63a7-4126-8e0f-3cbf6b8591e6','Fremont'),('c0e3cc3c-1132-4e49-8c1d-c7e6ebefe3fc','2023-05-30 09:42:51','2023-05-30 09:42:51','315e814e-8bf6-4f15-8ab2-e0d2aac3fea4','Chicago'),('d069f0f4-6d7c-48d8-b577-9d15bec8c4bf','2023-05-30 09:15:09','2023-05-30 09:15:09','7d4dd2c2-baa4-4570-8b5c-f91a224d8490','Kearny'),('d34bdcb2-623b-4365-8626-929f50a41b17','2023-05-30 09:41:55','2023-05-30 09:41:55','e980db45-dbec-49a3-8b80-5bac73ee5904','Kailua'),('dcb9b5ce-530b-4b09-a552-4de280697503','2023-05-30 03:19:39','2023-05-30 03:19:39','421a55f1-7d82-45d9-b54c-a76916479545','Akron'),('f3d54cf8-8e53-4bcc-a997-636f61f519b1','2023-05-30 09:43:31','2023-05-30 09:43:31','315e814e-8bf6-4f15-8ab2-e0d2aac3fea4','Naperville');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place_amenity`
--

DROP TABLE IF EXISTS `place_amenity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place_amenity` (
  `place_id` varchar(60) NOT NULL,
  `amenity_id` varchar(60) NOT NULL,
  PRIMARY KEY (`place_id`,`amenity_id`),
  KEY `amenity_id` (`amenity_id`),
  CONSTRAINT `place_amenity_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`),
  CONSTRAINT `place_amenity_ibfk_2` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_amenity`
--

LOCK TABLES `place_amenity` WRITE;
/*!40000 ALTER TABLE `place_amenity` DISABLE KEYS */;
/*!40000 ALTER TABLE `place_amenity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `places` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `city_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `number_rooms` int NOT NULL,
  `number_bathrooms` int NOT NULL,
  `max_guest` int NOT NULL,
  `price_by_night` int NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `places_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `places_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `place_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `text` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `place_id` (`place_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES ('0a4078f4-9b89-4a7b-a22e-95739bd7840f','2023-05-30 03:11:33','2023-05-30 03:11:33','Indiana'),('315e814e-8bf6-4f15-8ab2-e0d2aac3fea4','2023-05-30 03:10:50','2023-05-30 03:10:50','Illinois'),('33a70785-afa8-4904-945f-8bc06393f31d','2023-05-30 03:13:22','2023-05-30 03:13:22','Mississippi'),('35801541-88da-4d2e-aab6-29784547c179','2023-05-30 03:13:54','2023-05-30 03:13:54','Oregon'),('421a55f1-7d82-45d9-b54c-a76916479545','2017-03-25 19:42:40','2017-03-25 19:42:40','Alabama'),('44526650-edba-4076-8fa4-8bfc2a24180a','2023-05-30 03:12:42','2023-05-30 03:12:42','Minnesota'),('448f16ea-cc5c-45da-b6e6-a6f32215af72','2023-05-30 03:12:10','2023-05-30 03:12:10','Louisiana'),('541a53be-631b-4cd0-8b03-6f71434185a6','2023-05-30 03:08:32','2023-05-30 03:08:32','Florida'),('595545bb-96da-46ee-8929-2583ee3bc757','2023-05-30 03:07:55','2023-05-30 03:07:55','Colorado'),('7d4dd2c2-baa4-4570-8b5c-f91a224d8490','2023-05-30 03:07:24','2023-05-30 03:07:24','Arizona'),('c73e3e1c-63a7-4126-8e0f-3cbf6b8591e6','2023-05-30 02:58:07','2023-05-30 02:58:07','California'),('e980db45-dbec-49a3-8b80-5bac73ee5904','2023-05-30 03:10:16','2023-05-30 03:10:16','Hawaii'),('ed50b20c-0d8b-4f48-bda2-1dda4e2bb476','2023-05-30 03:09:05','2023-05-30 03:09:05','Georgia');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2023-06-02 16:55:20
