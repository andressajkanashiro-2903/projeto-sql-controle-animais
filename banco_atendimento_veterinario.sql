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
-- Table structure for table `atendimento_veterinario`
--

DROP TABLE IF EXISTS `atendimento_veterinario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `atendimento_veterinario` (
  `id_consulta` int NOT NULL,
  `data_consulta` date NOT NULL,
  `diagnostico` varchar(50) NOT NULL,
  `valor_consulta` decimal(10,2) DEFAULT NULL,
  `id_veterinario` int NOT NULL,
  `id_animal` int NOT NULL,
  PRIMARY KEY (`id_consulta`),
  KEY `id_animal` (`id_animal`),
  KEY `id_veterinario` (`id_veterinario`),
  CONSTRAINT `atendimento_veterinario_ibfk_1` FOREIGN KEY (`id_animal`) REFERENCES `animais` (`id_animal`),
  CONSTRAINT `atendimento_veterinario_ibfk_2` FOREIGN KEY (`id_veterinario`) REFERENCES `veterinario` (`id_veterinario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atendimento_veterinario`
--

LOCK TABLES `atendimento_veterinario` WRITE;
/*!40000 ALTER TABLE `atendimento_veterinario` DISABLE KEYS */;
INSERT INTO `atendimento_veterinario` VALUES (1,'2025-10-25','castração',600.00,1,4),(2,'2025-02-19','castração',647.00,1,3),(3,'2025-03-11','consulta',302.70,1,3),(4,'2025-06-03','consulta',260.00,1,2),(5,'2025-06-10','cirurgia',700.00,1,2),(6,'2025-12-01','consulta',425.00,1,1),(7,'2025-12-13','atestado',50.00,1,1),(8,'2024-01-16','consulta',291.40,1,3),(9,'2024-03-30','castração',500.00,1,5),(10,'2025-12-13','atestado',50.00,1,2),(11,'2025-12-13','atestado',50.00,1,3),(12,'2025-12-13','atestado',50.00,1,4),(13,'2025-12-13','atestado',50.00,1,5);
/*!40000 ALTER TABLE `atendimento_veterinario` ENABLE KEYS */;
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
