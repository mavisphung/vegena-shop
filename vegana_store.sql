CREATE DATABASE  IF NOT EXISTS `vegana_store` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vegana_store`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: vegana_store
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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `categoryId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Snack'),(2,'Cookies'),(3,'Milk'),(4,'Drinks'),(5,'Candy'),(8,'demo cate');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customerId` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `roleId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('admin','adminvegana@gmail.com',_binary '','T??i l?? admin','$2a$10$1iPiIh9Mw/8jFkmrTzVhs.CrY8rBMn1hWHVSw2NPn92hRTK4kYwHu','','1'),('dong123','huudong297@gmail.com',_binary '','Tr???n H???u ?????ng','$2a$10$o55Jm17qNsCBwUSjL.dMEuJTNxUl.rYw2Fd1dhrJkk08kd/feemuu','','0'),('thaochi6404','thaochi6404@gmail.com',_binary '','Tr???n Th???o Chi','$2a$10$s0mCvOK38vTl.BPhuChlCu.xi7wtRD95kAI0X/0JHSLbPJefGxI8.','','0'),('user1','tranhuuthach06@gmail.com',_binary '','Tr???n H???u Th???ch','$2a$10$nuHvdvtj/NfY87UyjHRJGOaJfxxAJmV4d3UUkzijFzMh2rL5thsku','','0'),('user2','user@gmail.com',_binary '','user2','$2a$10$rCkHrJ.6OW0j5m3bcZREuux/nvKKXDHCEDju2Cgj463zWa6XnmdUu','','0'),('user8','user8@gmail.com',_binary '','demo h??? t??n','$2a$10$i1BznT2AZlVshE8d/jVUguFzdMjuwRYlYVSNn46e1fByBgLJQouY.','','0');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `orderDetailId` int NOT NULL AUTO_INCREMENT,
  `discount` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `orderId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  PRIMARY KEY (`orderDetailId`),
  KEY `FK3ohml2o6a85wh1nn65snnaind` (`orderId`),
  KEY `FK5pie1uapfd704usnm2loi3tex` (`productId`),
  CONSTRAINT `FK3ohml2o6a85wh1nn65snnaind` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderId`),
  CONSTRAINT `FK5pie1uapfd704usnm2loi3tex` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,NULL,60,2,'???? Thanh To??n',120,1,5),(2,NULL,40,3,'???? Thanh To??n',120,2,4),(3,NULL,300,2,'??ang Giao D???ch',540,3,25),(4,NULL,400,1,'???? Thanh To??n',360,4,27),(5,NULL,650,1,'???? Thanh To??n',585,5,43),(6,NULL,20,2,'??ang Ch??? X??? L??',36,6,2),(7,NULL,50,1,'??ang Ch??? X??? L??',45,6,3),(8,NULL,60,1,'??ang Ch??? X??? L??',54,6,5),(9,NULL,200,1,'??ang Ch??? X??? L??',200,7,26),(10,NULL,200,1,'??ang Ch??? X??? L??',200,8,26),(11,NULL,100,2,'??ang Ch??? X??? L??',200,9,12),(12,NULL,100,1,'??ang Ch??? X??? L??',100,10,12),(13,NULL,110,1,'??ang Ch??? X??? L??',104.5,10,13),(14,NULL,110,1,'??ang Ch??? X??? L??',104.5,11,13),(17,NULL,300,2,'??ang Ch??? X??? L??',570,14,20),(18,NULL,50,1,'??ang Ch??? X??? L??',50,14,8),(19,NULL,100,1,'??ang Ch??? X??? L??',100,14,12),(20,NULL,65,1,'??ang Ch??? X??? L??',65,15,32),(21,NULL,110,1,'??ang Ch??? X??? L??',104.5,15,13),(22,NULL,400,1,'??ang Ch??? X??? L??',360,16,27),(23,NULL,65,1,'??ang Ch??? X??? L??',65,17,32),(24,NULL,200,1,'??ang Ch??? X??? L??',200,18,26),(25,NULL,120,1,'??ang Ch??? X??? L??',114,19,37),(26,NULL,50,1,'??ang Ch??? X??? L??',45,20,3),(27,NULL,80,1,'??ang Ch??? X??? L??',80,21,30),(28,NULL,60,1,'??ang Ch??? X??? L??',54,22,5),(29,NULL,60,1,'??ang Ch??? X??? L??',57,23,11),(30,NULL,600,1,'??ang Ch??? X??? L??',570,24,41),(31,NULL,200,1,'??ang Ch??? X??? L??',200,25,26),(32,NULL,65,1,'??ang Ch??? X??? L??',65,26,32),(33,NULL,125,1,'??ang Ch??? X??? L??',118.75,27,38),(34,NULL,50,1,'??ang Ch??? X??? L??',45,28,3),(35,NULL,50,1,'??ang Ch??? X??? L??',50,28,8),(36,NULL,110,1,'??ang Ch??? X??? L??',104.5,29,13),(37,NULL,50,1,'??ang Ch??? X??? L??',45,30,3),(38,NULL,50,1,'??ang Ch??? X??? L??',45,31,3),(39,NULL,200,1,'???? Thanh To??n',180,32,24),(40,NULL,125,2,'??ang Ch??? X??? L??',237.5,33,38),(41,NULL,110,1,'???? Thanh To??n',104.5,34,13);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `requireDate` date DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `customerId` varchar(255) DEFAULT NULL,
  `orderDetailId` int DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `FK1bpj2iini89gbon333nm7tvht` (`customerId`),
  KEY `FK1gy3b3hqr3p2p1y5i8xuj6l5h` (`orderDetailId`),
  CONSTRAINT `FK1bpj2iini89gbon333nm7tvht` FOREIGN KEY (`customerId`) REFERENCES `customers` (`customerId`),
  CONSTRAINT `FK1gy3b3hqr3p2p1y5i8xuj6l5h` FOREIGN KEY (`orderDetailId`) REFERENCES `orderdetails` (`orderDetailId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'68 Trung Ti???t, Tp. H?? T??nh',0,NULL,'2021-09-02','0917291997','Tr???n H???u ?????ng',NULL,120,'admin',NULL),(2,'68 Trung Ti???t, Tp. H?? T??nh',0,NULL,'2021-09-02','0917291997','Tr???n H???u ?????ng',NULL,114,'dong123',NULL),(3,'68 Trung Ti???t, Tp. H?? T??nh',0,NULL,'2021-09-02','0917291997','Tr???n H???u ?????ng',NULL,540,'dong123',NULL),(4,'68 Trung Ti???t, Tp. H?? T??nh',0,NULL,'2021-09-03','0915767465','Tr???n H???u Th???ch',NULL,360,'dong123',NULL),(5,'266 D??ng s?? Thanh Kh?? -  ???? N???ng',0,NULL,'2021-09-03','0915999999','Nguy???n Ng???c Kh??nh',NULL,585,'dong123',NULL),(6,'Tp.Hu???',0,NULL,'2021-09-03','0915767465','Nguy???n Thanh Lam',NULL,135,'dong123',NULL),(7,'266 D??ng s?? Thanh Kh?? -  ???? N???ng',0,NULL,'2021-09-03','0976704644','Nguy???n Ng???c Kh??nh',NULL,200,'dong123',NULL),(8,'266 D??ng s?? Thanh Kh?? -  ???? N???ng',0,NULL,'2021-09-03','0976704644','Nguy???n Ng???c Kh??nh',NULL,200,'dong123',NULL),(9,'266 D??ng s?? Thanh Kh?? -  ???? N???ng',0,NULL,'2021-09-04','0915767465','Tr???n Ho??i Nam',NULL,200,'dong123',NULL),(10,'TP. H?? T??nh',0,NULL,'2021-09-04','0976704644','Nguy???n V??n T??',NULL,204.5,'dong123',NULL),(11,'TP. H?? T??nh',0,NULL,'2021-09-04','0915767465','Tr???n Ho??i Nam',NULL,104.5,'dong123',NULL),(12,'68 Trung Ti???t, Tp. H?? T??nh',0,NULL,'2021-09-04','0915999999','Tr???n H???u Th???ch',NULL,142.5,'user1',NULL),(13,'266 D??ng s?? Thanh Kh?? -  ???? N???ng',0,NULL,'2021-09-05','0943231996','Tr???n Ho??i Nam',NULL,72,NULL,NULL),(14,'Tp.Hu???',0,NULL,'2021-09-05','0915767465','Nguy???n Thanh Lam',NULL,720,'dong123',NULL),(15,'68 Trung Ti???t, Tp. H?? T??nh',0,'N?????c Revive v?? socola Misura','2021-09-05','0915767465','Tr???n H???u Th???ch',NULL,169.5,'user1',NULL),(16,'266 D??ng s?? Thanh Kh?? -  ???? N???ng',0,'Nh??n h???t ??c ch?? Sunrise','2021-09-06','0915999999','Tr???n Ho??i Nam',NULL,360,'dong123',NULL),(17,'266 D??ng s?? Thanh Kh?? -  ???? N???ng',0,'N?????c Revive','2021-09-06','0915767465','Nguy???n Ng???c Kh??nh',NULL,65,'dong123',NULL),(18,'Tp.Hu???',0,'H???t Macca Dinh D?????ng','2021-09-06','0917291997','Nguy???n Thanh Lam',NULL,200,'dong123',NULL),(19,'266 D??ng s?? Thanh Kh?? -  ???? N???ng',0,'Coca-Cola v??? Original','2021-09-06','0915999999','Nguy???n Thanh Lam',NULL,114,'dong123',NULL),(20,'68 Trung Ti???t, Tp. H?? T??nh',0,'Snack Oishi Tom Toms','2021-09-06','0915767465','Tr???n H???u ?????ng',NULL,45,'dong123',NULL),(21,'Tp.Hu???',0,'Mountain Dew','2021-09-06','0915999999','Nguy???n Thanh Lam',NULL,80,'dong123',NULL),(22,'TP. Qu???ng Tr???',0,'Snack Oishi Pillows','2021-09-06','0915767465','Nguy???n Ng???c Kh??nh',NULL,54,'dong123',NULL),(23,'68 Trung Ti???t, Tp. H?? T??nh',0,'Snack Th??i Martys','2021-09-06','0917291997','Tr???n H???u ?????ng',NULL,57,'dong123',NULL),(24,'Tp.Hu???',0,'DIELAC ALPHA GOLD','2021-09-06','0915767465','Nguy???n Thanh Lam',NULL,570,'dong123',NULL),(25,'68 Trung Ti???t, Tp. H?? T??nh',0,'H???t Macca Dinh D?????ng','2021-09-06','0976704644','Nguy???n V??n T??',NULL,200,'dong123',NULL),(26,'266 D??ng s?? Thanh Kh?? -  ???? N???ng',0,'N?????c Revive','2021-09-06','0915767465','Nguy???n Thanh Lam',NULL,65,'dong123',NULL),(27,'68 Trung Ti???t, Tp. H?? T??nh',0,'Coca-Cola','2021-09-06','0915999999','Nguy???n Thanh Lam',NULL,118.75,'dong123',NULL),(28,'TP. H?? T??nh',0,'Demo m?? t???','2021-09-09','0915767465','Tr???n Ho??i Nam',NULL,95,'user1',NULL),(29,'TP. H?? T??nh',0,'Demo m?? t???','2021-09-09','0915767465','Nguy???n Ng???c Kh??nh',NULL,104.5,'dong123',NULL),(30,'demo dia chi',0,'Demo m?? t???','2021-09-11','0915999999','demo user',NULL,45,'user2',NULL),(31,'TP. H?? T??nh',0,'Demo m?? t???','2021-09-12','0915999999','Tr???n Ho??i Nam',NULL,45,'dong123',NULL),(32,'Tp.Hu???',0,'Demo m?? t???','2021-09-12','0915767465','Nguy???n Thanh Lam',NULL,180,'dong123',NULL),(33,'Tp.Hu???',0,'Demo m?? t???','2021-09-12','0915999999','Nguy???n Thanh Lam',NULL,237.5,'user8',NULL),(34,'demo dia chi',0,'Demo m?? t???','2021-09-12','0625648565','Tr???n Th???o Chi',NULL,104.5,'thaochi6404',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `enteredDate` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  `supplierId` int DEFAULT NULL,
  PRIMARY KEY (`productId`),
  KEY `FKej2ob3ifydf846t2a2tntna4e` (`categoryId`),
  KEY `FKs2xbxi7wmu948op6qiho9yr8d` (`supplierId`),
  CONSTRAINT `FKej2ob3ifydf846t2a2tntna4e` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`categoryId`),
  CONSTRAINT `FKs2xbxi7wmu948op6qiho9yr8d` FOREIGN KEY (`supplierId`) REFERENCES `suppliers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'Snack b?? ????? v??? b?? n?????ng Oishi (45g/g??i)',10,'2021-09-02','snack-bi-do.jpg','Snack b?? ????? Oishi',20,30,1,3),(3,'Snack b???p v??? ph?? mai Oishi Tom Toms (45g/g??i)',10,'2021-09-02','snack-oishi-toms.jpg','Snack Oishi Tom Toms',50,30,1,3),(4,'Snack b???p ng???t Oishi (45g/g??i)',5,'2021-09-02','snack-bap-ngot.jpg','Snack b???p ng???t Oishi',40,300,1,3),(5,'Snack nh??n s?? c?? la Oishi Pillows (100g) ',10,'2021-09-01','snack-pillows.jpg','Snack Oishi Pillows',60,60,1,3),(6,'Snack khoai t??y v??? mu???i Oishi Flutes (40g)',5,'2021-09-02','snack-flutes.jpg','Snack Oishi Flutes',40,60,1,3),(7,'Snack nh??n s???a d???a Oishi Pillows (100g)',10,'2021-09-01','snack-nhan-pillows.jpg','Snack s???a d???a Oishi Pillows',80,80,1,3),(8,'Snack khoai t??y poca (30) gr',0,'2021-09-02','snack-poca.jpg','Snack khoai t??y Poca',50,300,1,3),(9,'Snack cua v??? s???t chua ng???t Oishi Crab Me! (45g/g??i)',10,'2021-09-02','snack-crabme.jpg','Snack Oishi Crab Me',60,40,1,3),(10,'Snack v??? b?? b??t t???t poca steack (40g)',10,'2021-09-02','snack-poca-cay.jpg','Snack Poca Steack',80,60,1,3),(11,'Snack bim bim th??i (40g)',5,'2021-09-02','snack-martys.jpg','Snack Th??i Martys',60,40,1,3),(12,'Y???n m???ch h???nh nh??n Dan-D Pak (350g) ',0,'2021-09-02','Y???n-m???ch-h???nh-nh??n-Dan-D-Pak-350g.jpg','Dan-D Pak',100,50,2,4),(13,'B??nh Quy Vi??n S?? C?? La Misura 290g',5,'2021-09-03','banh-mizura.jpg','S?? C?? La Misura',110,30,2,4),(14,'B??nh quy Cosy nh??n m???t v??? t??o h???p 240g',10,'2021-09-02','banh-tik.jpg','Cookies Tik ',120,10,2,4),(15,'B??nh g???o n?????ng An v??? c?? Nh???t th?????ng h???ng Orion g??i 117.6g',0,'2021-09-02','banh-orion.jpg','B??nh Orion',90,60,2,4),(16,'B??nh ??n s??ng C???est Bon s???i th???t g?? l?? l???a ch???n ho??n h???o cho b???a ??n s??ng h??ng ng??y c???a c??? nh??',5,'2021-09-02','banh-orion-bon.jpg','B??nh C???est Bon',150,50,2,4),(17,'B??nh quy mini kem socola Oreo (23g)',0,'2021-09-03','banh-mini-oreo.jpg','B??nh quy socola Oreo',20,10,2,4),(18,'B??nh quy cacao nh??n kem h???nh nh??n YBC 18 c??i (115.2g)',10,'2021-09-07','banh-noir.jpg','B??nh quy cacao',120,30,2,3),(19,'B??nh quy dinh d?????ng h???t M???c ca k???t h???p Ngh??? - H???p 12 b??nh 45g',5,'2021-09-04','banh-mac-ca.jpg','B??nh quy h???t M???c ca',200,10,2,4),(20,'B??nh quy Danisa ???????c s???n xu???t t??? c??ng th???c ch??nh g???c c???a ??an M???ch, v???i nguy??n li???u ???????c l???a ch???n k??? c??ng, tinh t??y nh???t, s??? d???ng lo???i b?? th?????ng h???ng gi??u h????ng v??? g??p ph???n t???o n??n s??? kh??c bi???t ?????c ????o so v???i c??c d??ng b??nh quy b?? kh??c.',5,'2021-09-05','banh-danisa.jpg','B??nh Danisa',300,50,2,4),(21,'K???o d???o Jellyc H???i H?? kotobuki 100g',0,'2021-09-03','chip-chip-panda.jpg','Chip Chip HAIHA',40,100,5,6),(22,'K???o AnyTime H??n Qu???c 60 gram ( v??? s???a v?? b???c h??) thanh m??t.',0,'2021-09-14','keo-anytime.jpg','K???o AnyTime',50,200,5,6),(23,'K???o Cao Su Doublemint V??? B???c H??',10,'2021-09-01','keo-doublemint.jpg','K???o Doublemint',60,100,5,6),(24,'H???p H???t H???nh Nh??n Dinh D?????ng Cho M??? REAL FOOD STORE (250g) ',10,'2021-09-15','hat-hanh-nhan.jpg','H???t H???nh Nh??n',200,200,5,6),(25,'H???t h???nh nh??n nguy??n ch???t Kirkland Almonds M??? 1.36kg',10,'2021-09-10','hat-almonds.jpg','H???t h???nh nh??n Kirkland',300,100,5,6),(26,'T??i H???t Macca Dinh D?????ng Cho M??? Real Food Store (500g)',0,'2021-09-08','hat-nuts.jpg','H???t Macca Dinh D?????ng',200,100,5,6),(27,'Nh??n H???t ??c Ch?? Sunrise (120gr) H???t Dinh D?????ng ???? T??ch V??? Qu??? ??c Ch??.Nh???p Kh???u M???',10,'2021-09-10','hat-oc-cho.jpg','Nh??n H???t ??c Ch?? Sunrise',400,300,5,6),(28,'L???c 3 H???p S???a H???t H???nh Nh??n Nguy??n Ch???t 137 180ml',0,'2021-09-03','sua-hanh-nhan.jpg','S???a H???t H???nh Nh??n ',60,100,3,2),(29,'N?????c ng???t Mirinda h????ng cam chai 1.5 l??t',10,'2021-09-10','nuoc-mirinda-cam.jpg','Mirinda v??? cam',100,60,4,5),(30,'N?????c ng???t Mountain Dew 390 ml',0,'2021-09-16','nuoc-mountain.jpg','Mountain Dew',80,300,4,5),(31,'Tr?? ?? long TEA 350ml',5,'2021-09-11','tra-o-long.jpg','Tr?? TEA+',45,50,4,5),(32,'N?????c u???ng Isotonic v??? chanh mu???i',0,'2021-09-17','nuoc-revive.jpg','N?????c Revive',65,200,4,5),(33,'N?????c u???ng ????ng chai Aquafina (500ml)',0,'2021-09-09','nuoc-aquafina.jpg','Aquafina',20,300,4,5),(34,'N?????c ng???t 7Up',0,'2021-09-08','nuoc-7-up.jpg','7Up',35,200,4,5),(35,'Tr?? Lipton ICE Tea',20,'2021-09-06','lipton-tea.jpg','Lipton Tea',85,300,4,5),(36,'N?????c gi???i kh??t Coca-Cola Plus (330ml)',0,'2021-09-11','coca-cola-plus.jpg','Coca-Cola Plus',100,100,4,5),(37,'N?????c Gi???i Kh??t Coca-Cola v??? Nguy??n B???n Original 320mlx6 | N?????c c?? gas',5,'2021-09-19','coca-cola-original.jpg',' Coca-Cola v???  Original',120,200,4,5),(38,'N?????c Gi???i Kh??t Coca-Cola | N?????c c?? gas',5,'2021-09-17','coca-cola.jpg','Coca-Cola',125,300,4,5),(39,'S???a Dielac Grow Plus 1+ M??u Xanh T??ng C??n, 1-2 tu???i, Vinamilk',10,'2021-09-11','sua-dielac-grow-plus.jpg','S???a Dielac Grow Plus',500,300,3,1),(40,'S???A B???T GOLD YOKO 1 VINAMILK 850G D??NH CHO B?? T??? 0 - 1 Tu???i | S???a cho b?? d?????i 24 th??ng',10,'2021-09-09','sua-bot-yoko.jpg','S???A B???T GOLD YOKO',700,100,3,1),(41,'H???P S???A B???T VINAMILK DIELAC ALPHA GOLD IQ 1 (400G) (CHO TR??? T??? 0 - 6 TH??NG TU???I) ',5,'2021-09-12','sua-alpha.jpg','DIELAC ALPHA GOLD',600,300,3,1),(42,'S???a b???t Vinamilk Dielac Optimum s??? 2 - h???p thi???c 900g (d??nh cho tr??? t??? 6-12 th??ng tu???i)',15,'2021-09-11','sua-optimum.jpg','Dielac Optimum',500,100,3,1),(43,'S???a dielac grow plus 1+ 900g d??nh cho tr??? t??? 1-2 tu???i',10,'2021-09-08','sua-grow-plus.jpg','S???a Dielac Grow Plus-Red',650,300,3,1),(44,'S???a t????i ti???t tr??ng Vinamilk 100% c?? ???????ng 180ml (1 h???p)',5,'2021-09-11','sua-tuoi-vinamilk.jpg','S???a T????i Vinamilk',35,200,3,1),(45,'S???a Nestle Milo n?????c (Lon 240ml)',0,'2021-09-09','nestle-milo.jpg',' S???a Nestle Milo',25,200,3,2),(46,'S???a L??a M???ch Nestl?? MILO Lon Th??ng 24 Lon x 240 ml (4x6x240ml) | S???a T????i',0,'2021-09-11','milo-thung.jpg','S???a L??a M???ch Nestl?? MILO',300,200,3,2),(47,'TH??NG S???A ?????U N??NH VINAMILK H???T ??C CH?? -48 H???P 180ML | S???a T????i',0,'2021-09-11','sua-oc-cho.jpg','S???a H???t ??c Ch??',45,200,3,1),(48,'T??i Nh??n H???t ??c Ch?? Dinh D?????ng Cho M??? Real Food (200g) | Dinh d?????ng cho m???',10,'2021-09-12','hat-occho.jpg','T??i Nh??n H???t ??c Ch??',250,300,1,3),(49,'Combo 3 h???p s???a h???t d??? 1L 137 Degrees Th??i Lan',5,'2021-09-05','sua-pistachio.jpg','S???a H???t D???',45,100,3,2),(54,'m?? t???',5,'2021-09-09','den_mk052_1_0ddcbcb5ca3d4d3e8bb6ac99fcb7c23f_grande.jpg','test',1000000,20,1,1),(55,'demo m?? t???',5,'2021-10-02','den_mk048_2_2ecd969cffd94dfeaeac94f5e1e072c7_grande.jpg','demo s???n ph???m',1000000,300,8,2);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  `customerId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcotftqap7by5m4ibph3ss3xvo` (`customerId`),
  CONSTRAINT `FKcotftqap7by5m4ibph3ss3xvo` FOREIGN KEY (`customerId`) REFERENCES `customers` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_ADMIN','admin');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'vinamilk@gmail.com','Vinamilk','0915999999'),(2,'nestle@gmail.com','Nestle','0915999988'),(3,'snack@gmail.com','Snack','0915999966'),(4,'cookies@gmail.com','Cookies','0915999666'),(5,'pepsicola@gmail.com','Pepsi Cola','0915998888'),(6,'bibica@gmail.com','Bibica','0915998668');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-13 17:09:58
