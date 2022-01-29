-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: e_commerce
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `admin_type`
--

DROP TABLE IF EXISTS `admin_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_type` varchar(50) DEFAULT NULL,
  `permissions` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_type`
--

LOCK TABLES `admin_type` WRITE;
/*!40000 ALTER TABLE `admin_type` DISABLE KEYS */;
INSERT INTO `admin_type` VALUES (1,'admin','yes','2022-01-28 04:47:20','2022-01-28 04:47:20'),(2,'local admin','yes','2022-01-28 04:48:58','2022-01-28 04:48:58'),(3,'user','no','2022-01-28 04:49:02','2022-01-28 04:49:02'),(4,'visitor','no','2022-01-28 04:49:21','2022-01-28 04:49:21');
/*!40000 ALTER TABLE `admin_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user`
--

DROP TABLE IF EXISTS `admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  `password` tinytext,
  `email` varchar(50) DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `login` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `admin_user_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `admin_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user`
--

LOCK TABLES `admin_user` WRITE;
/*!40000 ALTER TABLE `admin_user` DISABLE KEYS */;
INSERT INTO `admin_user` VALUES (1,'harsha kiran','harsha@5273','harsha@gmail.com',1,'2022-01-28 05:10:22','2022-01-28 05:10:22'),(2,'mahendra murthy','mahendra@965','mahendra@gmail.com',3,'2022-01-28 05:12:35','2022-01-28 05:12:35'),(3,'bhavani','54bhavani','bhavani@gmail.com',4,'2022-01-28 05:13:18','2022-01-28 05:13:18'),(4,'vidyasri','sri@sri','vidya@gmail.com',3,'2022-01-28 05:14:56','2022-01-28 05:14:56'),(5,'haridas','dasroy','hari@gmail.com',4,'2022-01-28 05:14:59','2022-01-28 05:14:59'),(6,'dilli rani','dilli@8462','dillirani@gmail.com',2,'2022-01-28 05:16:20','2022-01-28 05:16:20'),(7,'simran bhatia','simran521','simran@gmail.com',2,'2022-01-28 05:17:34','2022-01-28 05:17:34'),(8,'apparao','rao673','apparao@gmail.com',4,'2022-01-28 05:18:32','2022-01-28 05:18:32'),(9,'keerthireddy','reddy@963','keerthi@gmail.com',3,'2022-01-28 05:19:35','2022-01-28 05:19:35'),(10,'kousalya','kou@645','kousalya@gmail.com',4,'2022-01-28 05:20:35','2022-01-28 05:20:35');
/*!40000 ALTER TABLE `admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(50) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `brands_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (2,'samsung',8,'2022-01-27 12:24:11'),(3,'vivo',1,'2022-01-27 12:26:47'),(4,'malabar',2,'2022-01-27 12:26:50'),(5,'joyalukas',7,'2022-01-27 12:26:53'),(6,'adidas',5,'2022-01-27 12:26:57'),(7,'nike',3,'2022-01-27 12:26:59'),(8,'nike',10,'2022-01-27 12:27:02'),(9,'armani',NULL,'2022-01-27 12:27:05'),(10,'himalaya',6,'2022-01-27 12:27:07'),(11,'patanjali',4,'2022-01-27 12:27:11');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'mobiles',1,'2022-01-27 12:36:47'),(2,'mobiles',8,'2022-01-27 12:36:50'),(3,'jewellery',2,'2022-01-27 12:36:52'),(4,'jewellery',7,'2022-01-27 12:36:54'),(5,'ethnic wear',3,'2022-01-27 12:36:58'),(6,'ethnic wear',9,'2022-01-27 12:37:19'),(7,'party wear',5,'2022-01-27 12:37:22'),(8,'party wear',10,'2022-01-27 12:37:24'),(9,'party wear',10,'2022-01-27 12:37:27'),(10,'Beauty & Face',4,'2022-01-27 12:37:32'),(11,'Beauty & Face',6,'2022-01-27 12:37:34');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,2,1,42375,'2022-01-28 03:58:58','2022-01-28 03:58:58',4),(2,8,1,31086,'2022-01-28 04:01:33','2022-01-28 04:01:33',2),(3,9,2,5939.02,'2022-01-28 04:03:23','2022-01-28 04:03:23',5),(4,5,1,1392.73,'2022-01-28 04:04:54','2022-01-28 04:04:54',7),(5,4,2,694,'2022-01-28 04:06:05','2022-01-28 04:06:05',3),(6,1,2,29800,'2022-01-28 04:07:25','2022-01-28 04:07:25',9),(7,10,5,52164.1,'2022-01-28 04:09:45','2022-01-28 04:09:45',8);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `total_amount` float DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `payment_process` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,42375,4,'online payment','2022-01-28 04:14:25','2022-01-28 04:14:25'),(2,3,5939,5,'credit card','2022-01-28 04:17:19','2022-01-28 04:17:19'),(3,4,1392.73,7,'paypal','2022-01-28 04:18:14','2022-01-28 04:18:14'),(4,7,52164.1,8,'debit card','2022-01-28 04:19:21','2022-01-28 04:19:21'),(5,5,694,3,'cash','2022-01-28 04:20:21','2022-01-28 04:20:21'),(6,2,31086,2,'phonepe','2022-01-28 04:21:08','2022-01-28 04:21:08');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) DEFAULT NULL,
  `description` text,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'vivo','one of the best latest mobiles in recent times',20001,25.5,1,2,'2022-01-27 11:58:54','2022-01-27 11:58:54'),(2,'anklet','best for your neck',50000,15.25,2,3,'2022-01-27 12:03:46','2022-01-27 12:03:46'),(3,'t-shirt','very comfortable',5000,10,3,6,'2022-01-27 12:05:09','2022-01-27 12:05:09'),(4,'neem jel','to glow your skin',500,30.6,5,9,'2022-01-27 12:06:14','2022-01-27 12:06:14'),(5,'torn jeans','best party wear',1599,12.9,4,5,'2022-01-27 12:07:57','2022-01-27 12:07:57'),(6,'sun screen','to look fresh in sunlight',700.59,20,5,8,'2022-01-27 12:09:47','2022-01-27 12:09:47'),(7,'bracelet','best jewellery for traditional occasions',16999,25.36,2,4,'2022-01-27 12:11:07','2022-01-27 12:11:07'),(8,'samsung galaxy','best sellable product',36999,15.98,1,1,'2022-01-27 12:13:19','2022-01-27 12:13:19'),(9,'saree','blue and velvet mixed colour dress',5999,50.5,3,5,'2022-01-27 12:15:22','2022-01-27 12:15:22'),(10,'kurtha','party wear mixed with tradition',15000.5,30.45,4,6,'2022-01-27 12:16:54','2022-01-27 12:16:54');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'bharath','kumar','hyderabad','telangana','bharath@gmail.com','8524569713','2022-01-27 11:35:43','2022-01-27 11:35:43'),(2,'sumith','rao','nandyal','andhra pradesh','sumith@gmail.com','7896541230','2022-01-27 11:37:02','2022-01-27 11:37:02'),(3,'vidya','sri','adilabad','telangana','vidya@gmail.com','2581479630','2022-01-27 11:37:57','2022-01-27 11:37:57'),(4,'krishna','kumari','nagpur','maharastra','krishna@gmail.com','1597536248','2022-01-27 11:38:50','2022-01-27 11:38:50'),(5,'padma','rani','kurnool','andhra pradesh','padma@gmail.com','9512346870','2022-01-27 11:40:02','2022-01-27 11:40:02'),(6,'sudeep','kumar','varanasi','uttar pradesh','sudeep@gmail.com','4862793150','2022-01-27 11:41:02','2022-01-27 11:41:02'),(7,'sekhar','prasad','mysore','karnataka','sekhar@gmail.com','9513574862','2022-01-27 11:42:09','2022-01-27 11:42:09'),(8,'keerthi','reddy','chennai','tamil nadu','keerthi@gmail.com','1597536482','2022-01-27 11:43:18','2022-01-27 11:43:18'),(9,'ramesh','naidu','mumbai','maharastra','ramesh@gmail.com','2486597135','2022-01-27 11:44:39','2022-01-27 11:44:39'),(10,'mahendra','murthy','bangalore','karnataka','mahendra@gmail.com','9715634825','2022-01-27 11:46:03','2022-01-27 11:46:03');
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

-- Dump completed on 2022-01-29 15:30:18
