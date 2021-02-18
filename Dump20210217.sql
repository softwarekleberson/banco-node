CREATE DATABASE  IF NOT EXISTS `fulleletro` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fulleletro`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fulleletro
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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(60) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Geladeira'),(2,'Fogão'),(3,'Microondas'),(4,'Lava Roupas'),(5,'Lava Louças');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `email` varchar(30) NOT NULL,
  `msg` varchar(300) DEFAULT NULL,
  `dia` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id_produto` int NOT NULL AUTO_INCREMENT,
  `id_categoria` int NOT NULL,
  `categoria` varchar(60) NOT NULL,
  `descricao_produto` varchar(200) NOT NULL,
  `preco_real` char(20) NOT NULL,
  `preco_desc` char(20) NOT NULL,
  `imagem` varchar(200) NOT NULL,
  `marca` varchar(20) NOT NULL,
  PRIMARY KEY (`id_produto`),
  UNIQUE KEY `imagem` (`imagem`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,1,'geladeira','Geladeira/Refrigerador Side By Side Frost Free Inox Electrolux - 127V (504L)','7.789,05','1.449,90','geladeira.jpg','Electrolux'),(2,1,'geladeira','Refrigerador Electrolux Duplex DC35A - 127V (260L)','1.849,01','1.689,00','geladeira1.jpg','Electrolux'),(3,1,'geladeira','Refrigerador Consul Biplex - 127V (334L)','2.157,38','1.753,84','geladeira2.jpg','Consul'),(4,2,'fogao','Fogão 05 Bocas Mesa de Vidro - Electrolux - 127V','1.659,39','1.357,67','fogao.jpg','Electrolux'),(5,2,'fogao','Fogão 4 Bocas Electrolux - Automático com Forno (70L)','579,67','493,28','fogao1.jpg','Electrolux'),(6,3,'microondas','Forno de Micro-ondas - Prata - 127V (27 L)','563,67','498,20','microondas.jpg','Philco'),(7,3,'microondas','Micro-ondas Philco - 127V (30L)','554,67','489,27','microondas1.jpg','Philco'),(8,3,'microondas','Micro-ondas Brastemp Inox - 127V (20L)','554,67','489,27','microondas2.jpg','Brastemp'),(9,4,'lavaRoupa','Lavadora Electrolux - Branca - 220V (13 Kg)','2.084,62','1.489,99','lavroupa.jpg','Electrolux'),(10,4,'lavaRoupa','Lavadora de Roupas Brastemp com Turbo Agitação - 220V (11kg)','2.056,97','1.719,99','lavroupa1.jpg','Brastemp'),(11,5,'lavaLouca','Lava-Louças Inox 14 Serviços - 220V','3.548,79','2.233,25','lavlouça.jpg','Inox'),(12,5,'lavaLouca','Lava-louças 8 Serviços Brastemp Ative! - 220V','2.368,79','1.804,85','lavlouça1.jpg','Brastemp');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-17 20:43:21
