-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: pedidos
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
INSERT INTO `productos` VALUES (5023,'Botella VID','Botella Vidrio c/g 24x500cc.      ',2,49,12,7),(5024,'Botella VID','Botella Vidrio s/g 24x500cc.      ',2,49,12,7),(5043,'Botella CG 1,5 ltrs','Botella Pet c/g 6x1500cc. Con mas Gas',2,110,9,22),(5045,'Botella CG 0,5 ltrs','Botella Pet c/g 12x500cc. Con mas Gas',2,176,6,22),(5048,'Botella SG 0.75 ltrs','Botella Pet s/g 12x750cc. Sport',2,102,9,23),(5072,'Botella SG 2 ltrs','Botella Pet s/g 6x2000 Nva Bot',2,88,12,22),(5074,'Botella SG 1,5 ltrs','Botella Pet s/g 6x1500 Nva Bot',2,112,9,28),(5076,'Botella SG 0,5 ltrs','Botella Pet s/g 12x500 Nva Bot',2,182,6,26),(5107,'Sabor SG 0,5 ltrs','Botella Sureña Pet s/g 12x500cc.',1,182,6,26),(5113,'Sabor SG 1,65 ltrs','Botella Sureña Pet s/g 6x1650cc.',1,112,10,28),(5114,'Sabor SG 1,5 ltrs','Botella Sureña Pet s/g 6x1500cc. Cristal ',1,112,9,28),(5148,'Sabor 2.250 s/gas.','Botella Sureña Pet s/g 6x2250cc.FILM CONVENIENCIA',1,80,14,20),(5152,'Sabor 2.250 s/gas.','Botella Sureña Pet s/g 6x2250cc.',1,80,14,20),(5157,'Sabor Bidon.','Botella Sureña Bidon s/g 2x6000cc',1,84,12,21),(5158,'Sabor 2.250 s/gas.','Botella Sureña Pet s/g 6x2250cc Impreso Experiencia',1,80,14,20),(5159,'Sabor Bidon.','Botella Sureña Bidon s/g 2x6000cc Impreso Experiencia',1,84,12,21),(5270,'Sabor Ana 0.5 ltrs','Botella Saborizada Anana Pet c/g 12x500cc',1,182,6,26),(5271,'Sabor Ana 1.5 ltrs','Botella Saborizada Anana Pet c/g 6x1500cc',1,112,9,28),(5282,'Sabor Pom 0,5 ltrs','Botella Saborizada Pomelo Pet s/g 12x500cc. AL',1,182,6,26),(5283,'Sabor Pom 1,5 ltrs','Botella Saborizada Pomelo Pet s/g 6x1500cc. AL',1,112,9,28),(5284,'Sabor Nar 0,5 ltrs','Botella Saborizada Naranja Pet s/g 12x500cc',1,182,6,26),(5285,'Sabor Nar 1,5 ltrs','Botella Saborizada Naranja Pet s/g 6x1500cc',1,112,9,28),(5286,'Sabor Man 0,5 ltrs','Botella Saborizada Manzana Pet s/g 12x500cc. AL',1,182,6,26),(5287,'Sabor Man 1,5 ltrs','Botella Saborizada Manzana Pet s/g 6x1500cc. AL',1,112,9,28),(5288,'Sabor PERA 0.5','Botella Saborizada Pera Pet s/g 12x500cc',1,182,6,26),(5289,'Sabor PERA 1.5','Botella Saborizada Pera Pet s/g 6x1500cc',1,112,9,28),(5296,'Sabor Pom 2,25 ltrs','Botella Saborizada Pomelo Pet s/g 6x2250cc',1,80,14,20),(5297,'Sabor Nar 2,25 ltrs','Botella Saborizada Naranja Pet s/g 6x2250cc',1,80,14,20),(5298,'Sabor Per 2,25 ltrs','Botella Saborizada Pera s/g 6x2250cc',1,80,14,20),(5304,'Soda Sifon.','Sifon Soda Botella 6x2250cc',4,80,14,20),(5305,'Soda Sifon.','Sifon Soda 6x1750cc. Cristal             ',4,100,10,20),(5308,'Sifon','Sifon Pet c/g 6x2000cc.               ',4,80,12,20),(5401,'Europ','EUROPEA S/G 12x1000',4,78,12,13),(5402,'Europ','EUROPEA S/G 12x1500',4,65,18,13),(5404,'Europ','EUROPEA S/Gas 24x330',4,132,8,12),(5405,'Europ','EUROPEA S/G 24x500',4,96,12,12),(5411,'Europ','EUROPEA Vidrio s/g 12x750cc. Paul Smit',4,77,9,11),(5412,'Europ','EUROPEA Vidrio s/g 12x750cc',4,65,9,11),(5421,'Europ','EUROPEA Vidrio s/g 12x750cc.',4,65,9,12),(5653,'V 0.25','ENERGIA 12x250cc. Lata',4,336,3,28),(5728,'Light  Cit 1,5','Citrica Pet c/g 6x1500cc. Plus',3,112,9,28),(5729,'Light  Cit 0,5','Citrica Pet c/g 12x500cc. Plus',3,176,6,22),(5736,'Cit Pom 1.5 SG','Citrica Pomelo Rosado Pet s/g 6x1500cc',3,112,9,28),(5737,'Cit Pom 0.5 SG','Citrica Pomelo Rosado Pet s/g 12x500cc',3,154,6,22),(5738,'Cit Man 1.5 SG','Citrica Manzana Pet s/g 6x1500cc',3,112,9,28),(5739,'Cit Man 0.5 SG','Citrica Manzana Pet s/g 12x500cc',3,154,6,22),(5740,'Light Pom 1.5 SG','Light Pomelo Rosado Pet s/g 6x1500cc.',3,112,9,28),(5741,'Light Pom 0.5 SG','Light Pomelo Rosado Pet s/g 12x500cc.',3,154,6,22),(5742,'Light Man 1.5 SG','Light Manzana Pet s/g 6x1500cc.',3,112,9,28),(5743,'Light Man 0.5 SG','Light Manzana Pet s/g 12x500cc.',3,154,6,22),(5761,'Light L-Lim 2,0','Light Lima Limon Pet c/g 6x2000cc. Plus',3,80,12,20),(5762,'Light L-Lim 1,5','Light Lima Limon Pet c/g 6x1500cc. Plus',3,112,9,28),(5763,'Light L-Lim 0,5','Light Lima Limon Pet c/g 12x500cc. Plus',3,176,6,22),(5764,'Light Nar-Dur 2,0','Light Naranja-Durazno Pet c/g 6x2000cc. Plus',3,80,12,20),(5765,'Light Nar-Dur 1,5','Light Naranja-Durazno Pet c/g 6x1500cc. Plus',3,112,9,28),(5766,'Light Nar-Dur 0,5','Light Naranja-Durazno Pet c/g 12x500cc. Plus',3,176,6,22),(5767,'Light  Cit 2,0','Light Citrus Pet c/g 6x2000cc. Plus',3,80,12,20),(5768,'Light  Cit 1,5','Light Citrus Pet c/g 6x1500cc. Plus',3,112,9,28),(5769,'Light  Cit 0,5','Light Citrus Pet c/g 12x500cc. Plus',3,176,6,22),(5773,'Light  LF 2,0','Light LemonFresh Pet c/g 6x2000cc. 0%',3,80,12,20),(5774,'Light  LF 1,5','Light LemonFresh Pet c/g 6x1500cc.',3,112,9,28),(5775,'Light  LF 0,5','Light LemonFresh Pet c/g 12x500cc.',3,176,6,22),(5781,'Jugo Pera','Light Jugo Pera Dulce Caja x 8 displays',3,216,144,18),(5783,'Jugo Limonada','Light Jugo Limonada Caja x 8 displays',3,216,144,18),(5784,'Jugo Nar-Dur','Light Jugo Naranja-Durazno Caja x 8 displays',3,216,144,18),(5785,'Jugo Nar','Light Jugo Naranja Caja x 8 displays',3,208,144,16),(5786,'Jugo Pom-Ros','Light Jugo Pomelo Rosado Caja x 8 displays',3,216,144,18),(5787,'Jugo Manzana tent','Light Jugo Manzana Tentaci¾n Caja x 8 Displays',3,208,144,16),(5794,'Jugo Nar-Mand','Light Jugo Naranja-Mandarina Caja x 8 displays',3,208,144,16),(5795,'Jugo Man Ver','Light Jugo Manzana Verde Caja x 8 displays',3,216,144,18),(5796,'Jugo Ana','Light Jugo Ananá Caja x 8 displays',3,216,144,18),(5797,'Jugo Nar Dul','Light Jugo Naranja Dulce Caja x 8 displays',3,208,144,16);
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

-- Dump completed on 2020-05-27 23:06:11
