-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: db_sweeney
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `tb_categorias`
--

DROP TABLE IF EXISTS `tb_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_categorias` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `presupuesto` float NOT NULL,
  `id_user` int NOT NULL,
  `estatus` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categorias`
--

LOCK TABLES `tb_categorias` WRITE;
/*!40000 ALTER TABLE `tb_categorias` DISABLE KEYS */;
INSERT INTO `tb_categorias` VALUES (1,'Comida',30,1,2),(3,'LPS',30,2,2),(4,'Comida',10,2,2),(5,'Littlest Pet Shop',30,2,2),(6,'Sims 3',30,2,2),(7,'Megacable',40,2,2),(8,'Sims 4',30,2,2),(9,'KUROMI MERCH',50,2,1);
/*!40000 ALTER TABLE `tb_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_categoriasgrupo`
--

DROP TABLE IF EXISTS `tb_categoriasgrupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_categoriasgrupo` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `id_grupo` int NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `id_creador` int NOT NULL,
  `presupuesto` float DEFAULT NULL,
  `estatus` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categoriasgrupo`
--

LOCK TABLES `tb_categoriasgrupo` WRITE;
/*!40000 ALTER TABLE `tb_categoriasgrupo` DISABLE KEYS */;
INSERT INTO `tb_categoriasgrupo` VALUES (1,1,'LPS Viajes',2,50,2),(2,1,'Sims 4',2,60,2);
/*!40000 ALTER TABLE `tb_categoriasgrupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_cuentas`
--

DROP TABLE IF EXISTS `tb_cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_cuentas` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `no_cuenta` varchar(45) NOT NULL,
  `fecha_vencimiento` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `saldo` float NOT NULL,
  `id_usuario` int NOT NULL,
  `estatus` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cuentas`
--

LOCK TABLES `tb_cuentas` WRITE;
/*!40000 ALTER TABLE `tb_cuentas` DISABLE KEYS */;
INSERT INTO `tb_cuentas` VALUES (1,'12345678','12345','ahorros',3.09,1,0),(3,'41414145','12/33','xddd',194600,2,1),(4,'41414143','12/27','cuenta de prueba',300,2,1);
/*!40000 ALTER TABLE `tb_cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_diamov`
--

DROP TABLE IF EXISTS `tb_diamov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_diamov` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_mov` int NOT NULL,
  `dia` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_diamov`
--

LOCK TABLES `tb_diamov` WRITE;
/*!40000 ALTER TABLE `tb_diamov` DISABLE KEYS */;
INSERT INTO `tb_diamov` VALUES (1,2,14),(2,3,14),(3,4,15),(4,5,15);
/*!40000 ALTER TABLE `tb_diamov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_estatus`
--

DROP TABLE IF EXISTS `tb_estatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_estatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estatus` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_estatus`
--

LOCK TABLES `tb_estatus` WRITE;
/*!40000 ALTER TABLE `tb_estatus` DISABLE KEYS */;
INSERT INTO `tb_estatus` VALUES (1,'Activo'),(2,'Inactivo');
/*!40000 ALTER TABLE `tb_estatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_estatuspagos`
--

DROP TABLE IF EXISTS `tb_estatuspagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_estatuspagos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estatus_pagos` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_estatuspagos`
--

LOCK TABLES `tb_estatuspagos` WRITE;
/*!40000 ALTER TABLE `tb_estatuspagos` DISABLE KEYS */;
INSERT INTO `tb_estatuspagos` VALUES (1,'pendiente'),(2,'liquidado'),(3,'reembolsado');
/*!40000 ALTER TABLE `tb_estatuspagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_grupos`
--

DROP TABLE IF EXISTS `tb_grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_grupos` (
  `id_grupo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `id_creador` int NOT NULL,
  `fondos` float NOT NULL DEFAULT '0',
  `token` varchar(12) NOT NULL,
  PRIMARY KEY (`id_grupo`,`token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_grupos`
--

LOCK TABLES `tb_grupos` WRITE;
/*!40000 ALTER TABLE `tb_grupos` DISABLE KEYS */;
INSERT INTO `tb_grupos` VALUES (1,'TERNURINESSS','xdddddd',2,8120.3,'bfc0aaebf1fe'),(2,'Cundina para comprar LPS','Pos una cundina para conprar LPS',1,0,'2a34efef81b1');
/*!40000 ALTER TABLE `tb_grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_miembrosgrupos`
--

DROP TABLE IF EXISTS `tb_miembrosgrupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_miembrosgrupos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_grupo` int NOT NULL,
  `id_usuario` int NOT NULL,
  `id_estatus` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_miembrosgrupos`
--

LOCK TABLES `tb_miembrosgrupos` WRITE;
/*!40000 ALTER TABLE `tb_miembrosgrupos` DISABLE KEYS */;
INSERT INTO `tb_miembrosgrupos` VALUES (1,1,2,1),(2,1,1,2),(3,2,1,1);
/*!40000 ALTER TABLE `tb_miembrosgrupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_movimientos`
--

DROP TABLE IF EXISTS `tb_movimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_movimientos` (
  `id_movimiento` int NOT NULL AUTO_INCREMENT,
  `id_pago` int DEFAULT '0',
  `id_usuario` int NOT NULL,
  `no_cuenta` varchar(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `monto` float NOT NULL,
  `fecha` date NOT NULL,
  `tipo_movimiento` int NOT NULL,
  PRIMARY KEY (`id_movimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_movimientos`
--

LOCK TABLES `tb_movimientos` WRITE;
/*!40000 ALTER TABLE `tb_movimientos` DISABLE KEYS */;
INSERT INTO `tb_movimientos` VALUES (1,0,2,'41414145','El Sims 4 Urbanitas',1600,'2024-10-16',2),(2,0,2,'41414145','El Sims 4 Cats and Dogs',10000,'2024-10-16',2),(3,0,2,'41414145','El Sims 4 Cats and Dogs',10000,'2024-10-16',2),(4,0,2,'41414145','El Sims 4 Cats and Dogs',10000,'2024-10-16',2),(5,0,2,'41414145','El Sims 4 Cats and Dogs',10000,'2024-10-16',2),(6,22,2,'41414145','El Sims 4 Vampirtos',300,'2024-10-16',2),(7,0,2,'41414145','Reembolso de pago',1600.12,'2024-10-16',1),(8,0,2,'41414145','Reembolso de pago',1600.12,'2024-10-16',1),(9,0,2,'41414145','Reembolso de pago',1600.12,'2024-10-16',1),(10,0,2,'41414145','Ajuste de pago',6000,'2024-10-17',1),(11,0,2,'41414145','Ajuste de pago',2000,'2024-10-17',1),(12,0,2,'41414145','Ajuste de pago',2000,'2024-10-17',1),(13,0,2,'41414145','Ajuste de pago',10000,'2024-10-18',1),(14,0,2,'41414145','Ajuste de pago',10000,'2024-10-18',1),(15,0,2,'41414145','Ajuste de pago',10000,'2024-10-18',1),(16,0,2,'41414145','Ajuste de pago',20000,'2024-10-18',1),(17,0,2,'41414145','Ajuste de pago',9000,'2024-10-18',1),(18,0,2,'41414145','Ajuste de pago',3000,'2024-10-18',1),(19,0,2,'41414145','Ajuste de pago',900,'2024-10-18',1),(20,0,2,'41414145','Ajuste de pago',20000,'2024-10-18',1),(21,0,2,'41414145','Ajuste de pago',5000,'2024-10-18',1),(22,0,2,'41414145','Ajuste de Pago - Reembolso',5000,'2024-10-18',3),(23,0,2,'41414145','Ajuste de Pago - Reembolso',14000,'2024-10-18',3),(24,23,2,'41414145','Prueba de no fondos',800000,'2024-10-18',2),(25,24,2,'41414145','Prueba de no fondos',800000,'2024-10-18',2),(26,0,2,'41414145','Adicion de fondos al grupo 1',200,'2024-10-20',2),(27,0,2,'41414145','Adicion de fondos al grupo 1',1000,'2024-10-22',2),(28,0,1,'12345678','Adicion de fondos al grupo 1',120,'2024-10-28',2);
/*!40000 ALTER TABLE `tb_movimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_movimientosgrupal`
--

DROP TABLE IF EXISTS `tb_movimientosgrupal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_movimientosgrupal` (
  `id_movimiento` int NOT NULL AUTO_INCREMENT,
  `id_grupo` int NOT NULL,
  `id_usuario` int NOT NULL,
  `tipo_movimiento` int NOT NULL,
  `id_pago` int DEFAULT NULL,
  `no_cuenta` varchar(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `monto` float NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_movimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_movimientosgrupal`
--

LOCK TABLES `tb_movimientosgrupal` WRITE;
/*!40000 ALTER TABLE `tb_movimientosgrupal` DISABLE KEYS */;
INSERT INTO `tb_movimientosgrupal` VALUES (1,1,2,1,0,'41414145','Adicion de fondos del usuario 2',100,'2024-10-20'),(2,1,2,1,0,'41414145','Adicion de fondos del usuario 2',100,'2024-10-20'),(3,1,2,1,0,'41414145','Adicion de fondos del usuario 2',200,'2024-10-20'),(4,1,2,2,1,'41414145','Esto es un testeo 3',500,'2024-10-20'),(7,1,2,1,1,'4141415','Ajuste de monto de pago con ID 1',99.5,'2024-10-20'),(8,1,2,2,1,'4141415','Ajuste de monto de pago con ID 1',499,'2024-10-20'),(9,1,2,3,1,'41414145','Reembolso de pago con ID 1',500,'2024-10-20'),(10,1,2,2,2,'41414145','Ternuri Accesorios',199,'2024-10-20'),(11,1,2,3,2,'41414145','Reembolso de pago con ID 2',199,'2024-10-20'),(12,1,2,2,3,'41414145','Pago programado de prueba',1000.1,'2024-10-22'),(13,1,2,2,4,'41414145','Pago programado de prueba',1000.1,'2024-10-22'),(14,1,2,3,0,'41414145','Ajuste de Pago - Reembolso',2000.5,'2024-10-22'),(15,1,2,1,0,'41414145','Adicion de fondos del usuario 2',1000,'2024-10-22'),(16,1,2,1,0,'41414145','Adicion de fondos del usuario 2',1000,'2024-10-22'),(17,1,2,1,0,'41414145','Adicion de fondos del usuario 2',1000,'2024-10-22'),(18,1,2,1,0,'41414145','Adicion de fondos del usuario 2',1000,'2024-10-22'),(19,1,2,1,0,'41414145','Adicion de fondos del usuario 2',1000,'2024-10-22'),(20,1,1,1,0,'12345678','Adicion de fondos del usuario 1',120,'2024-10-28'),(21,1,2,2,5,'41414145','Pago programado de prueba',1000,'2024-10-30'),(22,1,2,2,6,'41414145','Pago programado de prueba',1000,'2024-10-30'),(23,1,2,2,7,'41414145','Pago programado de prueba',1000,'2024-10-30'),(24,1,2,2,8,'41414145','Pago programado de prueba',1000,'2024-10-30');
/*!40000 ALTER TABLE `tb_movimientosgrupal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_movimientosprogramados`
--

DROP TABLE IF EXISTS `tb_movimientosprogramados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_movimientosprogramados` (
  `id_movimientoprogramado` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `no_cuenta` varchar(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `monto` float NOT NULL,
  `dia` int NOT NULL,
  `estatus` int NOT NULL,
  PRIMARY KEY (`id_movimientoprogramado`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_movimientosprogramados`
--

LOCK TABLES `tb_movimientosprogramados` WRITE;
/*!40000 ALTER TABLE `tb_movimientosprogramados` DISABLE KEYS */;
INSERT INTO `tb_movimientosprogramados` VALUES (1,2,'41414145','Este es un deposito de prueba',500.5,13,1);
/*!40000 ALTER TABLE `tb_movimientosprogramados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_movimientosprogramados_grupal`
--

DROP TABLE IF EXISTS `tb_movimientosprogramados_grupal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_movimientosprogramados_grupal` (
  `id_movimiento` int NOT NULL AUTO_INCREMENT,
  `id_grupo` int NOT NULL,
  `id_usuario` int NOT NULL,
  `no_cuenta` varchar(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `monto` float NOT NULL,
  `dia` int NOT NULL,
  `estatus` int NOT NULL,
  PRIMARY KEY (`id_movimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_movimientosprogramados_grupal`
--

LOCK TABLES `tb_movimientosprogramados_grupal` WRITE;
/*!40000 ALTER TABLE `tb_movimientosprogramados_grupal` DISABLE KEYS */;
INSERT INTO `tb_movimientosprogramados_grupal` VALUES (1,1,2,'41414145','Adicion de fondos del usuario 2',1000,22,1);
/*!40000 ALTER TABLE `tb_movimientosprogramados_grupal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_negocios`
--

DROP TABLE IF EXISTS `tb_negocios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_negocios` (
  `id_negocio` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `tipo_negocio` int DEFAULT NULL,
  `id_creador` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_negocio`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_negocios`
--

LOCK TABLES `tb_negocios` WRITE;
/*!40000 ALTER TABLE `tb_negocios` DISABLE KEYS */;
INSERT INTO `tb_negocios` VALUES (1,'Amazon',1,0),(2,'Aliexpress',1,0),(3,'MercadoLibre',1,0),(4,'ebay',1,0),(5,'McDonalds',3,0),(6,'Burger King',3,0),(7,'CFE',4,0),(8,'JAPAMA',4,0),(9,'Netflix',5,0),(10,'Amazon Prime',5,0),(11,'HBO Max',5,0),(12,'Paramount +',5,0),(13,'Liverpool',2,0),(14,'Sears',2,0),(15,'Gamepass',6,0),(16,'Home Depot',2,0),(17,'Office Depot',2,0),(18,'Carls Jr',3,0),(19,'Megacable',4,0),(20,'Totalplay',4,0),(21,'Telmex',4,0),(22,'Walmart',2,0),(23,'Bodega Aurrera',2,0),(24,'Soriana',2,0),(25,'Oxxo',2,0),(26,'Steam',6,0),(27,'EA',6,0),(28,'Starbucks',3,0),(29,'Caffenio',3,0),(30,'Cinemex',7,0),(31,'Cinepolis',7,0),(32,'Waldos',2,0),(33,'Italian Coffee',3,0),(34,'Nay Ramen',3,0),(35,'Nintendo Switch Online',6,0),(36,'Play Station Network',6,0),(37,'Temu',1,0),(38,'Microsoft 365',12,0),(39,'Disney +',5,0),(40,'Chevron',11,0),(41,'Banorte',8,0),(42,'Nu',8,0),(43,'Santander',8,0),(44,'Banamex',8,0),(45,'BBVA',8,0),(46,'KFC',3,0),(47,'Farmacia del Ahorro',10,0),(48,'Uber',11,0),(49,'Uber eats',3,0),(50,'Didi',11,0),(51,'Didi Food',3,0),(52,'Crunchyroll',5,0),(53,'YouTube Premium',5,0),(54,'Suburbia',2,0),(55,'Apple Store',2,0),(56,'C&A',2,0),(57,'iTunes',5,0),(58,'Spotify',5,0),(59,'Telcel',9,0),(60,'AT&T',9,0),(61,'Google One',12,0),(62,'Amazon Kindle',7,0),(63,'Smartfit',13,0),(64,'Farmacias Similares',10,0),(65,'Farmacon',10,0),(66,'Nitroil',11,0),(67,'Epic Games Store',6,0),(68,'Roblox',6,0),(69,'Little Caesar',3,2);
/*!40000 ALTER TABLE `tb_negocios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pagos`
--

DROP TABLE IF EXISTS `tb_pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pagos` (
  `id_pago` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `no_cuenta` varchar(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `monto` float NOT NULL,
  `categoria` int NOT NULL,
  `subcategoria` int NOT NULL,
  `tipo_pago` int NOT NULL,
  `fecha` date NOT NULL,
  `pagos_hechos` int NOT NULL,
  `total_pagos` int NOT NULL,
  `estatus_pago` int NOT NULL,
  PRIMARY KEY (`id_pago`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pagos`
--

LOCK TABLES `tb_pagos` WRITE;
/*!40000 ALTER TABLE `tb_pagos` DISABLE KEYS */;
INSERT INTO `tb_pagos` VALUES (1,2,'41414145','COMPRAS NAVIDEÑAS DE ALIEXPRESS',1600.12,1,1,1,'2024-10-06',1,1,3),(2,2,'41414145','COMPRAS NAVIDEÑAS DE AMAZON',1600.12,1,1,1,'2024-10-06',1,1,3),(3,2,'41414145','ESTO ES PRUEBA DEL UPDATE DE PAGOS 3',7000,4,45,1,'2024-10-06',1,1,2),(4,2,'41414145','COMPRAS NAVIDEÑAS DE Steam',1600.12,1,1,1,'2024-10-07',1,1,2),(5,2,'41414145','COMPRAS DE LPS DE ALIEXPRESS',1600.12,1,1,1,'2024-10-09',1,1,2),(6,2,'41414145','COMPRAS DE LPS',1600.12,3,3,1,'2024-10-12',1,1,2),(7,2,'41414145','COMPRAS NAVIDEÑAS DE ALIEXPRESS',1600.12,4,45,1,'2024-10-12',1,1,2),(8,2,'41414145','COMPRAS NECESARIAS DE SANRIO',1000,4,45,2,'2024-10-13',1,3,1),(9,2,'41414145','COMPRAS NECESARIAS DE SANRIO',1000,4,45,2,'2024-10-13',2,3,1),(10,2,'41414145','COMPRAS NECESARIAS DE SANRIO',1000,4,45,2,'2024-10-13',3,3,2),(11,2,'41414145','Compra de Shein',1700,4,45,2,'2024-10-16',1,2,1),(12,2,'41414145','Compra de Lentes',2500,4,45,2,'2024-10-16',1,3,1),(13,2,'41414145','Compra de Shein',1700,4,45,2,'2024-10-16',2,2,2),(14,2,'41414145','Compra de Lentes',2500,4,45,2,'2024-10-16',2,3,1),(15,2,'41414145','Compra de Lentes',2500,4,45,2,'2024-10-16',3,3,2),(16,2,'41414145','El Sims 4 Urbanitas',1600,4,45,1,'2024-10-16',1,1,2),(17,2,'41414145','El Sims 4 Urbanitas',1600,4,45,1,'2024-10-16',1,1,2),(18,2,'41414145','El Sims 4 Cats and Dogs',10000,4,45,2,'2024-10-16',1,4,1),(19,2,'41414145','El Sims 4 Cats and Dogs',10000,4,45,2,'2024-10-16',2,5,1),(20,2,'41414145','El Sims 4 Cats and Dogs',10000,4,45,2,'2024-10-16',3,5,1),(21,2,'41414145','El Sims 4 Cats and Dogs',10000,4,45,2,'2024-10-16',4,5,1),(22,2,'41414145','El Sims 4 Vampirtos',300,4,45,1,'2024-10-16',1,1,2),(23,2,'41414145','Prueba de no fondos',800000,4,45,2,'2024-10-18',1,10,1),(24,2,'41414145','Prueba de no fondos',800000,4,45,2,'2024-10-18',1,10,1),(25,2,'41414145','COMPRA DE KUROMI MERCH',250,9,1,1,'2024-10-20',1,1,2);
/*!40000 ALTER TABLE `tb_pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pagos_pendientes_grupal`
--

DROP TABLE IF EXISTS `tb_pagos_pendientes_grupal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pagos_pendientes_grupal` (
  `id_pago_pendiente` int NOT NULL AUTO_INCREMENT,
  `id_grupo` int NOT NULL,
  `id_pago_programado` int NOT NULL,
  PRIMARY KEY (`id_pago_pendiente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pagos_pendientes_grupal`
--

LOCK TABLES `tb_pagos_pendientes_grupal` WRITE;
/*!40000 ALTER TABLE `tb_pagos_pendientes_grupal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_pagos_pendientes_grupal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pagosgrupal`
--

DROP TABLE IF EXISTS `tb_pagosgrupal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pagosgrupal` (
  `id_pago` int NOT NULL AUTO_INCREMENT,
  `id_grupo` int NOT NULL,
  `id_usuario` int NOT NULL,
  `no_cuenta` varchar(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `monto` float NOT NULL,
  `categoria` int NOT NULL,
  `subcategoria` int NOT NULL,
  `estatus` int NOT NULL DEFAULT '2',
  `fecha` date NOT NULL,
  `tipo_pago` int NOT NULL DEFAULT '1',
  `pagos_hechos` int NOT NULL DEFAULT '0',
  `total_pagos` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_pago`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pagosgrupal`
--

LOCK TABLES `tb_pagosgrupal` WRITE;
/*!40000 ALTER TABLE `tb_pagosgrupal` DISABLE KEYS */;
INSERT INTO `tb_pagosgrupal` VALUES (1,1,2,'41414145','Esto es un testeo 3',500,1,1,3,'2024-10-20',1,0,0),(2,1,2,'41414145','Ternuri Accesorios',199,1,1,3,'2024-10-20',1,0,0),(3,1,2,'41414145','Pago programado de prueba',1000.1,1,1,1,'2024-10-22',2,1,3),(4,1,2,'41414145','Pago programado de prueba',1000.1,1,1,1,'2024-10-22',2,2,3),(5,1,2,'41414145','Pago programado de prueba',1000,1,1,2,'2024-10-30',2,6,3),(6,1,2,'41414145','Pago programado de prueba',1000,1,1,2,'2024-10-30',2,7,3),(7,1,2,'41414145','Pago programado de prueba',1000,1,1,2,'2024-10-30',2,8,3),(8,1,2,'41414145','Pago programado de prueba',1000,1,1,2,'2024-10-30',2,9,3);
/*!40000 ALTER TABLE `tb_pagosgrupal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pagospendientes`
--

DROP TABLE IF EXISTS `tb_pagospendientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pagospendientes` (
  `id_pagopendiente` int NOT NULL AUTO_INCREMENT,
  `id_pagoprogramado` int NOT NULL,
  PRIMARY KEY (`id_pagopendiente`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pagospendientes`
--

LOCK TABLES `tb_pagospendientes` WRITE;
/*!40000 ALTER TABLE `tb_pagospendientes` DISABLE KEYS */;
INSERT INTO `tb_pagospendientes` VALUES (1,8),(2,8),(3,8),(4,8),(5,8),(6,8),(7,8),(8,8),(9,8),(10,8),(11,8);
/*!40000 ALTER TABLE `tb_pagospendientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pagosprogramados`
--

DROP TABLE IF EXISTS `tb_pagosprogramados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pagosprogramados` (
  `id_pagoprogramado` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `no_cuenta` varchar(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `monto` float NOT NULL,
  `categoria` int NOT NULL,
  `subcategoria` int NOT NULL,
  `dia_programado` int NOT NULL,
  `pagos_hechos` int NOT NULL,
  `total_pagos` int NOT NULL,
  `estatus_pago` int NOT NULL,
  `tipo_pago` int NOT NULL,
  PRIMARY KEY (`id_pagoprogramado`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pagosprogramados`
--

LOCK TABLES `tb_pagosprogramados` WRITE;
/*!40000 ALTER TABLE `tb_pagosprogramados` DISABLE KEYS */;
INSERT INTO `tb_pagosprogramados` VALUES (1,2,'41414145','Compra de Shein',1700,4,45,15,2,2,2,2),(2,2,'41414145','Compra de Lentes',2500,4,45,15,3,3,2,2),(3,2,'41414145','COMPRAS NECESARIAS DE SANRIO',1000,4,45,13,3,3,2,2),(4,2,'41414145','El Sims 4 Cats and Dogs',100,4,45,16,4,1,2,2),(5,2,'41414145','El sims 4 urbanitas',5000,4,45,18,5,3,2,1),(6,2,'41414145','El nendoroid de la umaruchan',2000,4,45,19,3,2,2,2),(7,2,'41414145','El nendoroid del light yagami',3000,4,45,19,4,2,2,2),(8,2,'41414145','Prueba de no fondos',800000,4,45,18,1,10,1,2);
/*!40000 ALTER TABLE `tb_pagosprogramados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pagosprogramadosgrupal`
--

DROP TABLE IF EXISTS `tb_pagosprogramadosgrupal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pagosprogramadosgrupal` (
  `id_pago` int NOT NULL AUTO_INCREMENT,
  `id_grupo` int NOT NULL,
  `id_usuario` int NOT NULL,
  `no_cuenta` varchar(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `monto` float NOT NULL,
  `categoria` int NOT NULL,
  `subcategoria` int NOT NULL,
  `dia_programado` int NOT NULL,
  `pagos_hechos` int NOT NULL,
  `total_pagos` int NOT NULL,
  `estatus_pago` int NOT NULL,
  PRIMARY KEY (`id_pago`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pagosprogramadosgrupal`
--

LOCK TABLES `tb_pagosprogramadosgrupal` WRITE;
/*!40000 ALTER TABLE `tb_pagosprogramadosgrupal` DISABLE KEYS */;
INSERT INTO `tb_pagosprogramadosgrupal` VALUES (1,1,2,'41414145','Pago programado de prueba',1000,1,1,23,9,3,2);
/*!40000 ALTER TABLE `tb_pagosprogramadosgrupal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_subcategoriasgrupo`
--

DROP TABLE IF EXISTS `tb_subcategoriasgrupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_subcategoriasgrupo` (
  `id_subcategoria` int NOT NULL AUTO_INCREMENT,
  `id_grupo` int NOT NULL,
  `id_categoria` int NOT NULL,
  `id_negocio` int NOT NULL,
  `id_creador` int NOT NULL,
  PRIMARY KEY (`id_subcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_subcategoriasgrupo`
--

LOCK TABLES `tb_subcategoriasgrupo` WRITE;
/*!40000 ALTER TABLE `tb_subcategoriasgrupo` DISABLE KEYS */;
INSERT INTO `tb_subcategoriasgrupo` VALUES (1,1,1,1,2),(2,1,1,2,1),(3,1,2,1,2),(4,2,1,2,1);
/*!40000 ALTER TABLE `tb_subcategoriasgrupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_subcategory`
--

DROP TABLE IF EXISTS `tb_subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_subcategory` (
  `id_subcategory` int NOT NULL AUTO_INCREMENT,
  `id_categoria` int NOT NULL,
  `id_negocio` int NOT NULL,
  `id_user` int NOT NULL,
  PRIMARY KEY (`id_subcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_subcategory`
--

LOCK TABLES `tb_subcategory` WRITE;
/*!40000 ALTER TABLE `tb_subcategory` DISABLE KEYS */;
INSERT INTO `tb_subcategory` VALUES (1,4,45,2),(3,4,46,2),(4,4,47,2),(5,4,48,2),(6,4,49,2),(7,9,1,2);
/*!40000 ALTER TABLE `tb_subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipomovimientos`
--

DROP TABLE IF EXISTS `tb_tipomovimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tipomovimientos` (
  `id_tipomovimiento` int NOT NULL AUTO_INCREMENT,
  `tipo_movimiento` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tipomovimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipomovimientos`
--

LOCK TABLES `tb_tipomovimientos` WRITE;
/*!40000 ALTER TABLE `tb_tipomovimientos` DISABLE KEYS */;
INSERT INTO `tb_tipomovimientos` VALUES (1,'Deposito'),(2,'Deduccion'),(3,'Reembolso');
/*!40000 ALTER TABLE `tb_tipomovimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tiponegocios`
--

DROP TABLE IF EXISTS `tb_tiponegocios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tiponegocios` (
  `id_tiponegocio` int NOT NULL AUTO_INCREMENT,
  `tipo_negocio` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tiponegocio`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tiponegocios`
--

LOCK TABLES `tb_tiponegocios` WRITE;
/*!40000 ALTER TABLE `tb_tiponegocios` DISABLE KEYS */;
INSERT INTO `tb_tiponegocios` VALUES (1,'E-comerce'),(2,'Tiendas'),(3,'Comida Rapida'),(4,'Servicio'),(5,'Streaming'),(6,'Videojuegos'),(7,'Entretenimiento'),(8,'Bancos'),(9,'Telefonia'),(10,'Salud'),(11,'Gasolina'),(12,'Tecnologia'),(13,'GYM'),(14,'Otro');
/*!40000 ALTER TABLE `tb_tiponegocios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipospagos`
--

DROP TABLE IF EXISTS `tb_tipospagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tipospagos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipospagos`
--

LOCK TABLES `tb_tipospagos` WRITE;
/*!40000 ALTER TABLE `tb_tipospagos` DISABLE KEYS */;
INSERT INTO `tb_tipospagos` VALUES (1,'unica exhibicion'),(2,'periodico');
/*!40000 ALTER TABLE `tb_tipospagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contra` varchar(255) NOT NULL,
  `ingresos_mensules` float DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (1,'andrik','gomez','kirna09@gmail.com','$2a$08$CdudC4wf2EuZuilcDbUgqO5DGveFZnOtNkeNRW5zD8Vsz36BJLRyK',0),(2,'ana','zepeda','gaby@gmail.com','$2a$08$1edld5RhUhfC8466EirLpO2Z6hSAMSZBSn5ll4vPDvQcOtV7cdDhO',500.5),(3,'gaby','ramirez','zepedaramireztics@gmail.com','$2a$08$EoSK6IHurRgHzi1P56U3POiPkSvPpUjbY2/spaKapBGWNT8d1zgKS',0);
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-30  1:24:56
