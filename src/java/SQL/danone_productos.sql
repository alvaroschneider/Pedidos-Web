CREATE DATABASE  IF NOT EXISTS `danone` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `danone`;
-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: danone
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `producto_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL DEFAULT '',
  `detalle` varchar(128) NOT NULL DEFAULT '',
  `tipo` int(11) NOT NULL DEFAULT '0',
  `pallet` int(11) NOT NULL DEFAULT '0',
  `litros` int(11) NOT NULL DEFAULT '0',
  `camada` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`producto_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8798 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (5023,'VV VID','Villavicencio Vidrio c/g 24x500cc.      ',2,49,12,7),(5024,'VV VID','Villavicencio Vidrio s/g 24x500cc.      ',2,49,12,7),(5043,'VV CG 1,5 ltrs','Villavicencio Pet c/g 6x1500cc. Con mas Gas',2,110,9,22),(5045,'VV CG 0,5 ltrs','Villavicencio Pet c/g 12x500cc. Con mas Gas',2,176,6,22),(5048,'VV SG 0.75 ltrs','Villavicencio Pet s/g 12x750cc. Sport',2,102,9,23),(5072,'VV SG 2 ltrs','Villavicencio Pet s/g 6x2000 Nva Bot',2,88,12,22),(5074,'VV SG 1,5 ltrs','Villavicencio Pet s/g 6x1500 Nva Bot',2,112,9,28),(5076,'VV SG 0,5 ltrs','Villavicencio Pet s/g 12x500 Nva Bot',2,182,6,26),(5107,'VDS SG 0,5 ltrs','Villa del Sur Pet s/g 12x500cc.',1,182,6,26),(5113,'VDS SG 1,65 ltrs','Villa del Sur Pet s/g 6x1650cc.',1,112,10,28),(5114,'VDS SG 1,5 ltrs','Villa del Sur Pet s/g 6x1500cc. Cristal ',1,112,9,28),(5148,'VDS 2.250 s/gas.','Villa del Sur Pet s/g 6x2250cc.FILM CONVENIENCIA',1,80,14,20),(5152,'VDS 2.250 s/gas.','Villa del Sur Pet s/g 6x2250cc.',1,80,14,20),(5157,'VDS Bidon.','Villa del Sur Bidon s/g 2x6000cc',1,84,12,21),(5158,'VDS 2.250 s/gas.','Villa del Sur Pet s/g 6x2250cc Impreso Experiencia',1,80,14,20),(5159,'VDS Bidon.','Villa del Sur Bidon s/g 2x6000cc Impreso Experiencia',1,84,12,21),(5270,'VDS Ana 0.5 ltrs','VDS Levite Anana Pet c/g 12x500cc',1,182,6,26),(5271,'VDS Ana 1.5 ltrs','VDS Levite Anana Pet c/g 6x1500cc',1,112,9,28),(5282,'VDS Pom 0,5 ltrs','VDS Levite Pomelo Pet s/g 12x500cc. AL',1,182,6,26),(5283,'VDS Pom 1,5 ltrs','VDS Levite Pomelo Pet s/g 6x1500cc. AL',1,112,9,28),(5284,'VDS Nar 0,5 ltrs','VDS Levite Naranja Pet s/g 12x500cc',1,182,6,26),(5285,'VDS Nar 1,5 ltrs','VDS Levite Naranja Pet s/g 6x1500cc',1,112,9,28),(5286,'VDS Man 0,5 ltrs','VDS Levite Manzana Pet s/g 12x500cc. AL',1,182,6,26),(5287,'VDS Man 1,5 ltrs','VDS Levite Manzana Pet s/g 6x1500cc. AL',1,112,9,28),(5288,'VDS PERA 0.5','VDS Levite Pera Pet s/g 12x500cc',1,182,6,26),(5289,'VDS PERA 1.5','VDS Levite Pera Pet s/g 6x1500cc',1,112,9,28),(5296,'VDS Pom 2,25 ltrs','VDS Levite Pomelo Pet s/g 6x2250cc',1,80,14,20),(5297,'VDS Nar 2,25 ltrs','VDS Levite Naranja Pet s/g 6x2250cc',1,80,14,20),(5298,'VDS Per 2,25 ltrs','VDS Levite Pera s/g 6x2250cc',1,80,14,20),(5304,'Soda Brio.','Brio Soda Botella 6x2250cc',4,80,14,20),(5305,'Soda Brio.','Brio Soda 6x1750cc. Cristal             ',4,100,10,20),(5308,'WKK','Waikiki Pet c/g 6x2000cc.               ',4,80,12,20),(5401,'Evian','EVIAN S/G 12x1000',4,78,12,13),(5402,'Evian','EVIAN S/G 12x1500',4,65,18,13),(5404,'Evian','EVIAN S/Gas 24x330',4,132,8,12),(5405,'Evian','EVIAN S/G 24x500',4,96,12,12),(5411,'Evian','Evian Vidrio s/g 12x750cc. Paul Smit',4,77,9,11),(5412,'Evian','Evian Vidrio s/g 12x750cc',4,65,9,11),(5421,'Evian','Badoit Vidrio s/g 12x750cc.',4,65,9,12),(5653,'V 0.25','V Suplemento Dietario 12x250cc. Lata',4,336,3,28),(5728,'Ser  Cit 1,5','Ser Citrus Passion Pet c/g 6x1500cc. Plus',3,112,9,28),(5729,'Ser  Cit 0,5','Ser Citrus Passion Pet c/g 12x500cc. Plus',3,176,6,22),(5736,'AQUA Pom 1.5 SG','Ser Aquafrut Pomelo Rosado Pet s/g 6x1500cc',3,112,9,28),(5737,'AQUA Pom 0.5 SG','Ser Aquafrut Pomelo Rosado Pet s/g 12x500cc',3,154,6,22),(5738,'AQUA Man 1.5 SG','Ser Aquafrut Manzana Pet s/g 6x1500cc',3,112,9,28),(5739,'AQUA Man 0.5 SG','Ser Aquafrut Manzana Pet s/g 12x500cc',3,154,6,22),(5740,'SER Pom 1.5 SG','Ser Pomelo Rosado Pet s/g 6x1500cc.',3,112,9,28),(5741,'SER Pom 0.5 SG','Ser Pomelo Rosado Pet s/g 12x500cc.',3,154,6,22),(5742,'SER Man 1.5 SG','Ser Manzana Pet s/g 6x1500cc.',3,112,9,28),(5743,'SER Man 0.5 SG','Ser Manzana Pet s/g 12x500cc.',3,154,6,22),(5761,'Ser L-Lim 2,0','Ser Lima Limon Pet c/g 6x2000cc. Plus',3,80,12,20),(5762,'Ser L-Lim 1,5','Ser Lima Limon Pet c/g 6x1500cc. Plus',3,112,9,28),(5763,'Ser L-Lim 0,5','Ser Lima Limon Pet c/g 12x500cc. Plus',3,176,6,22),(5764,'Ser Nar-Dur 2,0','Ser Naranja-Durazno Pet c/g 6x2000cc. Plus',3,80,12,20),(5765,'Ser Nar-Dur 1,5','Ser Naranja-Durazno Pet c/g 6x1500cc. Plus',3,112,9,28),(5766,'Ser Nar-Dur 0,5','Ser Naranja-Durazno Pet c/g 12x500cc. Plus',3,176,6,22),(5767,'Ser  Cit 2,0','Ser Citrus Pet c/g 6x2000cc. Plus',3,80,12,20),(5768,'Ser  Cit 1,5','Ser Citrus Pet c/g 6x1500cc. Plus',3,112,9,28),(5769,'Ser  Cit 0,5','Ser Citrus Pet c/g 12x500cc. Plus',3,176,6,22),(5773,'Ser  LF 2,0','Ser LemonFresh Pet c/g 6x2000cc. 0%',3,80,12,20),(5774,'Ser  LF 1,5','Ser LemonFresh Pet c/g 6x1500cc.',3,112,9,28),(5775,'Ser  LF 0,5','Ser LemonFresh Pet c/g 12x500cc.',3,176,6,22),(5781,'Dust Pera','Ser Dust Pera Dulce Caja x 8 displays',3,216,144,18),(5783,'Dust Limonada','Ser Dust Limonada Caja x 8 displays',3,216,144,18),(5784,'Dust Nar-Dur','Ser Dust Naranja-Durazno Caja x 8 displays',3,216,144,18),(5785,'Dust Nar','Ser Dust Naranja Caja x 8 displays',3,208,144,16),(5786,'Dust Pom-Ros','Ser Dust Pomelo Rosado Caja x 8 displays',3,216,144,18),(5787,'Dust Manzana tent','Ser Dust Manzana Tentaci¾n Caja x 8 Displays',3,208,144,16),(5794,'Dust Nar-Mand','Ser Dust Naranja-Mandarina Caja x 8 displays',3,208,144,16),(5795,'Dust Man Ver','Ser Dust Manzana Verde Caja x 8 displays',3,216,144,18),(5796,'Dust Ana','Ser Dust Ananá Caja x 8 displays',3,216,144,18),(5797,'Dust Nar Dul','Ser Dust Naranja Dulce Caja x 8 displays',3,208,144,16);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-09 18:27:47
