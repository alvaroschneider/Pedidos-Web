-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.54-1ubuntu4


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;



--
-- Create schema `j2ee-web`
--

CREATE DATABASE IF NOT EXISTS `j2ee-web`;
USE `j2ee-web`;

--
-- Definition of table `j2ee-web`.`alumnos`
--

DROP TABLE IF EXISTS `j2ee-web`.`alumnos`;
CREATE TABLE  `j2ee-web`.`alumnos` (
  `alumno_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL DEFAULT '',
  `apellido` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`alumno_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `j2ee-web`.`alumnos`
--

/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
LOCK TABLES `alumnos` WRITE;
INSERT INTO `j2ee-web`.`alumnos` VALUES  (1,'Alvaro','Schneider'),
 (2,'Federico','Schneider'),
 (5,'Camilo','Schneider'),
 (4,'Irma','Rios');
UNLOCK TABLES;
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;


--
-- Definition of table `j2ee-web`.`cabecera`
--

DROP TABLE IF EXISTS `j2ee-web`.`cabecera`;
CREATE TABLE  `j2ee-web`.`cabecera` (
  `nro_p` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_p` int(11) NOT NULL,
  `sucursal_p` int(11) NOT NULL,
  `oc_p` int(11) NOT NULL,
  `fecha_entrega_p` datetime NOT NULL,
  PRIMARY KEY (`nro_p`)
) ENGINE=MyISAM AUTO_INCREMENT=1014 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `j2ee-web`.`cabecera`
--

/*!40000 ALTER TABLE `cabecera` DISABLE KEYS */;
LOCK TABLES `cabecera` WRITE;
INSERT INTO `j2ee-web`.`cabecera` VALUES  (1,132888,2,123123,'0000-00-00 00:00:00'),
 (1000,258475,104,123123,'0000-00-00 00:00:00'),
 (1001,252917,16,654321,'0000-00-00 00:00:00'),
 (1002,132888,2,654321,'0000-00-00 00:00:00'),
 (1003,252917,12,654666,'0000-00-00 00:00:00'),
 (1004,349456,2,999999,'0000-00-00 00:00:00'),
 (1005,132888,2,222222,'0000-00-00 00:00:00'),
 (1006,132888,6,777777,'0000-00-00 00:00:00'),
 (1007,349456,8,1111111,'0000-00-00 00:00:00'),
 (1008,132888,3,9879879,'0000-00-00 00:00:00'),
 (1009,132888,7,999999,'0000-00-00 00:00:00'),
 (1010,132888,12,888888,'0000-00-00 00:00:00'),
 (1011,132888,2,111111,'0000-00-00 00:00:00'),
 (1012,132888,2,123123,'0000-00-00 00:00:00'),
 (1013,132888,2,111111,'0000-00-00 00:00:00');
UNLOCK TABLES;
/*!40000 ALTER TABLE `cabecera` ENABLE KEYS */;


--
-- Definition of table `j2ee-web`.`cuerpo`
--

DROP TABLE IF EXISTS `j2ee-web`.`cuerpo`;
CREATE TABLE  `j2ee-web`.`cuerpo` (
  `nro_p` int(11) NOT NULL,
  `cod_p` int(11) NOT NULL,
  `cantFact_p` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `j2ee-web`.`cuerpo`
--

/*!40000 ALTER TABLE `cuerpo` DISABLE KEYS */;
LOCK TABLES `cuerpo` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `cuerpo` ENABLE KEYS */;


--
-- Definition of table `j2ee-web`.`productos`
--

DROP TABLE IF EXISTS `j2ee-web`.`productos`;
CREATE TABLE  `j2ee-web`.`productos` (
  `producto_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL DEFAULT '',
  `detalle` varchar(128) NOT NULL DEFAULT '',
  `tipo` int(10) unsigned NOT NULL DEFAULT '0',
  `pallet` int(10) unsigned NOT NULL DEFAULT '0',
  `litros` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`producto_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8798 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `j2ee-web`.`productos`
--

/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
LOCK TABLES `productos` WRITE;
INSERT INTO `j2ee-web`.`productos` VALUES  (5074,'VV SG 1,5 ltrs','Villavicencio Pet s/g 6x1500 Nva Bot',2,112,9),
 (5072,'VV SG 2 ltrs','Villavicencio Pet s/g 6x2000 Nva Bot',2,88,12),
 (5048,'VV SG 0.75 ltrs','Villavicencio Pet s/g 12x750cc. Sport',2,102,9),
 (5045,'VV CG 0,5 ltrs','Villavicencio Pet c/g 12x500cc. Con mas Gas',2,176,6),
 (5043,'VV CG 1,5 ltrs','Villavicencio Pet c/g 6x1500cc. Con mas Gas',2,110,9),
 (5024,'VV VID','Villavicencio Vidrio s/g 24x500cc.      ',2,49,12),
 (5023,'VV VID','Villavicencio Vidrio c/g 24x500cc.      ',2,49,12),
 (5076,'VV SG 0,5 ltrs','Villavicencio Pet s/g 12x500 Nva Bot',2,182,6),
 (5107,'VDS SG 0,5 ltrs','Villa del Sur Pet s/g 12x500cc.',1,182,6),
 (5113,'VDS SG 1,65 ltrs','Villa del Sur Pet s/g 6x1650cc.',1,112,10),
 (5114,'VDS SG 1,5 ltrs','Villa del Sur Pet s/g 6x1500cc. Cristal ',1,112,9),
 (5148,'VDS 2.250 s/gas.','Villa del Sur Pet s/g 6x2250cc.FILM CONVENIENCIA',1,80,14),
 (5152,'VDS 2.250 s/gas.','Villa del Sur Pet s/g 6x2250cc.',1,80,14),
 (5157,'VDS Bidon.','Villa del Sur Bidon s/g 2x6000cc',1,84,12),
 (5158,'VDS 2.250 s/gas.','Villa del Sur Pet s/g 6x2250cc Impreso Experiencia',1,80,14),
 (5159,'VDS Bidon.','Villa del Sur Bidon s/g 2x6000cc Impreso Experiencia',1,84,12),
 (5270,'VDS Ana 0.5 ltrs','VDS Levite Anana Pet c/g 12x500cc',1,182,6),
 (5271,'VDS Ana 1.5 ltrs','VDS Levite Anana Pet c/g 6x1500cc',1,112,9),
 (5282,'VDS Pom 0,5 ltrs','VDS Levite Pomelo Pet s/g 12x500cc. AL',1,182,6),
 (5283,'VDS Pom 1,5 ltrs','VDS Levite Pomelo Pet s/g 6x1500cc. AL',1,112,9),
 (5284,'VDS Nar 0,5 ltrs','VDS Levite Naranja Pet s/g 12x500cc',1,182,6),
 (5285,'VDS Nar 1,5 ltrs','VDS Levite Naranja Pet s/g 6x1500cc',1,112,9),
 (5286,'VDS Man 0,5 ltrs','VDS Levite Manzana Pet s/g 12x500cc. AL',1,182,6),
 (5287,'VDS Man 1,5 ltrs','VDS Levite Manzana Pet s/g 6x1500cc. AL',1,112,9),
 (5288,'VDS PERA 0.5','VDS Levite Pera Pet s/g 12x500cc',1,182,6),
 (5289,'VDS PERA 1.5','VDS Levite Pera Pet s/g 6x1500cc',1,112,9),
 (5296,'VDS Pom 2,25 ltrs','VDS Levite Pomelo Pet s/g 6x2250cc',1,80,14),
 (5297,'VDS Nar 2,25 ltrs','VDS Levite Naranja Pet s/g 6x2250cc',1,80,14),
 (5298,'VDS Per 2,25 ltrs','VDS Levite Pera s/g 6x2250cc',1,80,14),
 (5728,'Ser  Cit 1,5','Ser Citrus Passion Pet c/g 6x1500cc. Plus',3,112,9),
 (5729,'Ser  Cit 0,5','Ser Citrus Passion Pet c/g 12x500cc. Plus',3,176,6),
 (5736,'AQUA Pom 1.5 SG','Ser Aquafrut Pomelo Rosado Pet s/g 6x1500cc',3,112,9),
 (5737,'AQUA Pom 0.5 SG','Ser Aquafrut Pomelo Rosado Pet s/g 12x500cc',3,154,6),
 (5738,'AQUA Man 1.5 SG','Ser Aquafrut Manzana Pet s/g 6x1500cc',3,112,9),
 (5739,'AQUA Man 0.5 SG','Ser Aquafrut Manzana Pet s/g 12x500cc',3,154,6),
 (5740,'SER Pom 1.5 SG','Ser Pomelo Rosado Pet s/g 6x1500cc.',3,112,9),
 (5741,'SER Pom 0.5 SG','Ser Pomelo Rosado Pet s/g 12x500cc.',3,154,6),
 (5742,'SER Man 1.5 SG','Ser Manzana Pet s/g 6x1500cc.',3,112,9),
 (5743,'SER Man 0.5 SG','Ser Manzana Pet s/g 12x500cc.',3,154,6),
 (5761,'Ser L-Lim 2,0','Ser Lima Limon Pet c/g 6x2000cc. Plus',3,80,12),
 (5762,'Ser L-Lim 1,5','Ser Lima Limon Pet c/g 6x1500cc. Plus',3,112,9),
 (5763,'Ser L-Lim 0,5','Ser Lima Limon Pet c/g 12x500cc. Plus',3,176,6),
 (5764,'Ser Nar-Dur 2,0','Ser Naranja-Durazno Pet c/g 6x2000cc. Plus',3,80,12),
 (5765,'Ser Nar-Dur 1,5','Ser Naranja-Durazno Pet c/g 6x1500cc. Plus',3,112,9),
 (5766,'Ser Nar-Dur 0,5','Ser Naranja-Durazno Pet c/g 12x500cc. Plus',3,176,6),
 (5767,'Ser  Cit 2,0','Ser Citrus Pet c/g 6x2000cc. Plus',3,80,12),
 (5768,'Ser  Cit 1,5','Ser Citrus Pet c/g 6x1500cc. Plus',3,112,9),
 (5769,'Ser  Cit 0,5','Ser Citrus Pet c/g 12x500cc. Plus',3,176,6),
 (5773,'Ser  LF 2,0','Ser LemonFresh Pet c/g 6x2000cc. 0%',3,80,12),
 (5774,'Ser  LF 1,5','Ser LemonFresh Pet c/g 6x1500cc.',3,112,9),
 (5775,'Ser  LF 0,5','Ser LemonFresh Pet c/g 12x500cc.',3,176,6),
 (5781,'Dust Pera','Ser Dust Pera Dulce Caja x 8 displays',3,216,144),
 (5783,'Dust Limonada','Ser Dust Limonada Caja x 8 displays',3,216,144),
 (5784,'Dust Nar-Dur','Ser Dust Naranja-Durazno Caja x 8 displays',3,216,144),
 (5785,'Dust Nar','Ser Dust Naranja Caja x 8 displays',3,208,144),
 (5786,'Dust Pom-Ros','Ser Dust Pomelo Rosado Caja x 8 displays',3,216,144),
 (5787,'Dust Manzana tent','Ser Dust Manzana Tentaci¾n Caja x 8 Displays',3,208,144),
 (5794,'Dust Nar-Mand','Ser Dust Naranja-Mandarina Caja x 8 displays',3,208,144),
 (5795,'Dust Man Ver','Ser Dust Manzana Verde Caja x 8 displays',3,216,144),
 (5796,'Dust Ana','Ser Dust Ananá Caja x 8 displays',3,216,144),
 (5797,'Dust Nar Dul','Ser Dust Naranja Dulce Caja x 8 displays',3,208,144),
 (6761,'Ser L-Lim 2,0','Ser Lima-Limon Pet FG 6x2000cc. Promo Mujer',3,80,12),
 (6762,'Ser L-Lim 1,5','Ser Lima-Limon Pet FG 6x1500cc. Promo Mujer',3,112,9),
 (6763,'Ser L-Lim 0,5','Ser Lima-Limon Pet FG 12x500cc. Promo Mujer',3,176,6),
 (6764,'Ser Nar-Dur 2,0','Ser Nar-Dur Pet FG 6x2000cc. Promo Mujer',3,80,12),
 (6765,'Ser Nar-Dur 1,5','Ser Nar-Dur Pet FG 6x1500cc. Promo Mujer',3,112,9),
 (6766,'Ser Nar-Dur 0,5','Ser Nar-Dur Pet FG 12x500cc. Promo Mujer',3,176,6),
 (6767,'Ser  Cit 2,0','Ser Citrus Pet FG 6x2000cc. Promo Mujer',3,80,12),
 (6768,'Ser  Cit 1,5','Ser Citrus Pet FG 6x1500cc. Promo Mujer',3,112,9),
 (6769,'Ser  Cit 0,5','Ser Citrus Pet FG 12x500cc. Promo Mujer',3,176,6),
 (6773,'Ser  LF 2,0','Ser LemonFresh Pet c/g 6x2000cc. 0%',3,80,12),
 (6774,'Ser  LF 1,5','Ser LemonFresh Pet c/g 6x1500cc.',3,112,9),
 (6775,'Ser  LF 0,5','Ser LemonFresh Pet c/g 12x500cc.',3,176,6),
 (8781,'Dust Pera','Ser Dust Pera Dulce Display x 18 sobres',3,1440,18),
 (8783,'Dust Limonada','Ser Dust Limonada Display x 18 sobres',3,1440,18),
 (8784,'Dust Nar-Dur','Ser Dust Naranja-Durazno Display x 18 sobres',3,1440,18),
 (8785,'Dust Nar','Ser Dust Naranja Display x 18 sobres',3,1440,18),
 (8786,'Dust Pom-Ros','Ser Dust Pomelo Rosado Display x 18 sobres',3,1440,18),
 (8787,'Dust Manzana tent','Ser Dust Manzana Tentaci¾n Display x 18 sobres',3,1440,18),
 (8794,'Dust Nar-Mand','Ser Dust Naranja-Mandarina Display x 18 sobres',3,1440,18),
 (8795,'Dust Man Ver','Ser Dust Manzana Verde Display x 18 sobres',3,1440,18),
 (8796,'Dust Ana','Ser Dust Ananá Display x 18 sobres',3,1440,18),
 (8797,'Dust Nar Dul','Ser Dust Naranja Dulce Display x 18 sobres',3,1440,18);
UNLOCK TABLES;
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;


--
-- Definition of table `j2ee-web`.`usuarios`
--

DROP TABLE IF EXISTS `j2ee-web`.`usuarios`;
CREATE TABLE  `j2ee-web`.`usuarios` (
  `usuario_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL DEFAULT '',
  `password` varchar(45) NOT NULL DEFAULT '',
  `nombre` varchar(45) NOT NULL DEFAULT '',
  `apellido` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`usuario_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `j2ee-web`.`usuarios`
--

/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
LOCK TABLES `usuarios` WRITE;
INSERT INTO `j2ee-web`.`usuarios` VALUES  (1,'alvaro','redhot','Alvaro','Schneider'),
 (2,'fede','fede','Fede','Schneider');
UNLOCK TABLES;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
