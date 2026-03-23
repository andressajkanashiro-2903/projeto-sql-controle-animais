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
-- Table structure for table `vacinacao`
--

DROP TABLE IF EXISTS `vacinacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vacinacao` (
  `id_vacinacao` int NOT NULL,
  `data_vacinacao` date NOT NULL,
  `dose` varchar(20) NOT NULL,
  `id_animal` int NOT NULL,
  `id_vacina` int NOT NULL,
  PRIMARY KEY (`id_vacinacao`),
  KEY `id_animal` (`id_animal`),
  KEY `id_vacina` (`id_vacina`),
  CONSTRAINT `vacinacao_ibfk_1` FOREIGN KEY (`id_animal`) REFERENCES `animais` (`id_animal`),
  CONSTRAINT `vacinacao_ibfk_2` FOREIGN KEY (`id_vacina`) REFERENCES `vacinas` (`id_vacina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacinacao`
--

LOCK TABLES `vacinacao` WRITE;
/*!40000 ALTER TABLE `vacinacao` DISABLE KEYS */;
INSERT INTO `vacinacao` VALUES (1,'2023-10-10','1ª Dose',3,1),(2,'2023-11-01','2ª Dose',3,1),(3,'2023-11-01','1ª Dose',3,2),(4,'2023-12-02','3ª Dose',3,1),(5,'2023-12-02','2ª Dose',3,2),(6,'2023-12-02','1ª Dose',3,3),(7,'2025-11-17','reforco anual',3,1),(8,'2025-11-17','reforco anual',3,4),(9,'2023-09-23','1ª Dose',5,5),(10,'2023-10-14','2ª Dose',5,1),(11,'2023-10-14','1ª Dose',5,2),(12,'2023-11-04','3ª Dose',5,1),(13,'2023-11-04','2ª Dose',5,2),(14,'2023-11-04','1ª Dose',5,3),(15,'2025-11-17','reforco anual',5,1),(16,'2025-11-17','reforco anual',5,4),(17,'2021-09-23','1ª Dose',4,7),(18,'2021-10-15','2ª Dose',4,1),(19,'2021-11-06','3ª Dose',4,1),(20,'2023-02-10','1ª Dose',4,9),(21,'2025-11-20','reforco anual',4,4),(22,'2025-11-20','reforco anual',4,1),(23,'2025-03-01','1ª Dose',2,6),(24,'2025-03-22','2ª Dose',2,7),(25,'2025-04-13','3ª Dose',2,7),(26,'2025-06-03','4ª Dose',2,1),(27,'2025-06-03','1ª Dose',2,8),(28,'2024-09-06','1ª Dose',1,6),(29,'2024-09-27','2ª Dose',1,7),(30,'2024-11-02','3ª Dose',1,7),(31,'2024-11-25','4ª Dose',1,1),(32,'2024-11-02','1ª Dose',1,2),(33,'2024-11-25','2ª Dose',1,2),(34,'2024-12-25','1ª Dose',1,8),(35,'2025-11-20','reforco anual',1,4),(36,'2025-11-20','reforco anual',1,1);
/*!40000 ALTER TABLE `vacinacao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-23 14:49:32
