-- ********** Tablas incluídas en el backup: **************************************
-- control_eliminar_producto
-- control_insertar_producto
-- control_insertar_productoVendido
-- gastos
-- producto
-- productoVendido
-- Usuario
-- ********************************************************************************** 

CREATE DATABASE  IF NOT EXISTS `proyecto_fotocopiadora_finkgarcia` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `proyecto_fotocopiadora_finkgarcia`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_fotocopiadora_finkgarcia
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Dumping data for table `control_eliminar_producto`
--

LOCK TABLES `control_eliminar_producto` WRITE;
/*!40000 ALTER TABLE `control_eliminar_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `control_eliminar_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `control_insertar_producto`
--

LOCK TABLES `control_insertar_producto` WRITE;
/*!40000 ALTER TABLE `control_insertar_producto` DISABLE KEYS */;
INSERT INTO `control_insertar_producto` VALUES (0,'2023-03-02',25,1,'root@localhost');
/*!40000 ALTER TABLE `control_insertar_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `control_insertar_productovendido`
--

LOCK TABLES `control_insertar_productovendido` WRITE;
/*!40000 ALTER TABLE `control_insertar_productovendido` DISABLE KEYS */;
INSERT INTO `control_insertar_productovendido` VALUES (1,'2023-03-03',3,'root@localhost');
/*!40000 ALTER TABLE `control_insertar_productovendido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `gastos`
--

LOCK TABLES `gastos` WRITE;
/*!40000 ALTER TABLE `gastos` DISABLE KEYS */;
INSERT INTO `gastos` VALUES (1234,4000,4,10),(5678,1400,50,5),(89755,1200,100,7),(897556,1000,25,1);
/*!40000 ALTER TABLE `gastos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Boligrafo Bic',30,70,1,100),(2,'Regla 20 cm',40,65,2,50),(3,'Fotocopia simple faz',5,15,2,1000),(4,'Boligrafo Bic',30,70,1,100),(5,'Regla 20 cm',40,65,2,50),(6,'Fotocopia simple faz',5,15,2,1000),(7,'Fotocopia doble faz',8,20,2,1000),(8,'Carpeta A4',300,500,3,100),(9,'Anillado',60,100,3,1000),(10,'Toner',800,1500,3,4),(11,'Anillos x 50 unid',15,35,3,500),(25,'Minas HB',50,150,3,200);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `productovendido`
--

LOCK TABLES `productovendido` WRITE;
/*!40000 ALTER TABLE `productovendido` DISABLE KEYS */;
INSERT INTO `productovendido` VALUES ('1 regla',345,1,2,8),('1 carpeta A4',456,2,8,4),('3 fotocopias simple faz',678,3,3,25),('2 boligrafos',1234,1,1,10),('Minas HB',5086886,1,3,2);
/*!40000 ALTER TABLE `productovendido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'MAPA',3636465757),(2,'fotocopiadoras pepito',85756475868),(3,'Grafito libreria',76767484994);
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Noelia','Fink Garcia','nfinkgarcia','noelia1234'),(2,'Ileana','Fink','ileanafink','soyileanafink'),(3,'Javier','Oesquer','joesquer','javieroesquer');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-17 19:07:38
