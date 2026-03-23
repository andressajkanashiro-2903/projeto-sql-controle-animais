-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: banco
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `vermifugacao`
--

DROP TABLE IF EXISTS `vermifugacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vermifugacao` (
  `id_vermifugacao` int NOT NULL,
  `data` date NOT NULL,
  `dose_compr` int DEFAULT NULL,
  `peso_animal` decimal(10,2) DEFAULT NULL,
  `id_animal` int NOT NULL,
  `id_vermifugo` int NOT NULL,
  PRIMARY KEY (`id_vermifugacao`),
  KEY `id_animal` (`id_animal`),
  KEY `id_vermifugo` (`id_vermifugo`),
  CONSTRAINT `vermifugacao_ibfk_1` FOREIGN KEY (`id_animal`) REFERENCES `animais` (`id_animal`),
  CONSTRAINT `vermifugacao_ibfk_2` FOREIGN KEY (`id_vermifugo`) REFERENCES `vermifugo` (`id_vermifugo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vermifugacao`
--

LOCK TABLES `vermifugacao` WRITE;
/*!40000 ALTER TABLE `vermifugacao` DISABLE KEYS */;
INSERT INTO `vermifugacao` VALUES (1,'2025-02-20',1,1.50,2,1),(2,'2025-03-16',1,4.00,2,2),(3,'2025-04-10',1,8.10,2,2),(4,'2025-12-11',2,22.00,2,3),(5,'2026-02-11',3,26.00,2,7),(6,'2026-02-12',3,26.00,2,7),(7,'2026-02-13',3,26.00,2,7),(8,'2026-02-27',3,26.00,2,7),(9,'2025-12-11',3,30.00,1,3),(10,'2024-08-10',1,1.55,1,3),(11,'2024-08-25',1,3.10,1,5),(12,'2024-09-09',1,5.70,1,2),(13,'2024-09-24',1,8.30,1,1),(14,'2025-12-11',3,30.00,4,3),(15,'2026-02-11',3,30.00,4,7),(16,'2026-02-11',3,31.00,1,7),(17,'2026-02-12',3,31.00,1,7),(18,'2026-02-13',3,31.00,1,7),(19,'2026-02-27',3,31.00,1,7),(20,'2023-10-14',1,4.60,5,6),(21,'2025-12-11',2,20.00,5,3),(22,'2023-10-10',1,3.80,3,3),(23,'2025-12-11',3,29.00,3,3),(24,'2026-02-11',3,30.00,3,7),(25,'2026-02-11',2,20.00,5,7);
/*!40000 ALTER TABLE `vermifugacao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-23 14:49:31
