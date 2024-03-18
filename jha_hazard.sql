CREATE DATABASE  IF NOT EXISTS `jha` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jha`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: jha
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `hazard`
--

DROP TABLE IF EXISTS `hazard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hazard` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `author` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `steps` text,
  `consequences` text,
  `controls` text,
  `training` text,
  `equipment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hazard`
--

LOCK TABLES `hazard` WRITE;
/*!40000 ALTER TABLE `hazard` DISABLE KEYS */;
INSERT INTO `hazard` VALUES (1,'John Doe','Slippery Floor','The steps involved in handling the slippery floor hazard include cleaning the floor, mopping the area, and applying polish to enhance its appearance and safety.','The consequences of neglecting this hazard range from slips, trips, and falls to potential injuries, increasing the risk of accidents in the workplace.','To control this hazard, it is essential to use caution signs to warn individuals, implement non-slip mats in high-risk areas, and provide proper footwear to enhance traction and stability.','Training on handling spills and proper cleaning techniques is crucial for employees to effectively manage this hazard and maintain a safe working environment.','Equipment such as non-slip shoes, mop and bucket, and caution signs should be readily available to mitigate the risks associated with slippery floors.'),(2,'Jane Smith','Chemical Spill','Handling chemicals, transferring them, and storing them appropriately constitute the steps for managing the chemical spill hazard in the workplace.','Consequences of a chemical spill include chemical burns, inhalation hazards, and environmental contamination, posing serious risks to health and safety.','To control chemical spills, it is imperative to use appropriate personal protective equipment (PPE), implement spill containment procedures, and ensure proper ventilation in affected areas.','Employees should receive training on hazardous materials handling and emergency response protocols to effectively address chemical spills and minimize their impact.','Equipment such as gloves, goggles, and spill kits should be provided to personnel dealing with chemical substances to protect them from harm.'),(3,'Michael Johnson','Fall from Height','Setting up ladders, climbing up to elevated areas, and working on scaffolding are the primary steps involved in addressing the fall from height hazard.','Consequences of falls from height include severe injuries or fatalities, broken bones, and head trauma, highlighting the critical importance of fall prevention measures.','To control this hazard, fall protection equipment should be provided, guardrails or barriers should be erected in elevated work areas, and proper ladder safety procedures should be implemented.','Training programs focusing on fall protection and ladder safety are essential for employees working at heights to mitigate the risks associated with falls.','Equipment such as safety harnesses, guardrails, and safety helmets are necessary for personnel working in elevated positions to minimize the risk of falling.'),(4,'Emily Davis','Machine Entanglement','Operating machinery, loading materials, and clearing jams are the steps involved in managing the machine entanglement hazard in industrial settings.','Consequences of machine entanglement include amputation, crush injuries, and severe lacerations, emphasizing the need for robust safety measures when working with machinery.','To control this hazard, machine guarding should be implemented, lockout/tagout procedures should be followed during maintenance tasks, and employees should receive proper training on machinery operation and safety protocols.','Employees should undergo comprehensive machine safety training and be familiar with lockout/tagout procedures to prevent accidents related to machine entanglement.','Equipment such as safety guards, lockout/tagout devices, and emergency stop buttons should be installed on machinery to enhance worker safety and prevent accidents.');
/*!40000 ALTER TABLE `hazard` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 22:16:35
