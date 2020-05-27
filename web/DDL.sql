DROP TABLE IF EXISTS j2ee-web.usuarios;
CREATE TABLE usuarios (
  usuario_id int(10) unsigned NOT NULL auto_increment,
  username varchar(45) NOT NULL default '',
  password varchar(45) NOT NULL default '',
  nombre varchar(45) NOT NULL default '',
  apellido varchar(45) NOT NULL default '',
  PRIMARY KEY  (usuario_id)
) ENGINE=MyISAM;

DROP TABLE IF EXISTS j2ee-web.productos;
CREATE TABLE productos (
  producto_id int(10) unsigned NOT NULL auto_increment,
  nombre varchar(45) NOT NULL default '',
  detalle varchar(128) NOT NULL default '',
  tipo int(10) unsigned NOT NULL default '0',
  precio float NOT NULL default '0',
  stock int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (producto_id)
) ENGINE=MyISAM;

INSERT INTO productos VALUES
(1, 'Taza', 'bla bla', 2, 4.5, 5),
(2, 'Mantel', 'bla bla', 2, 21.5, 10),
(3, 'Plato', 'bla bla', 2, 5.8, 100),
(4, 'Tenedor', 'bla bla', 2, 1.5, 10),
(5, 'Buscando a Nemo', 'bla bla', 1, 25, 10),
(6, 'Tango & Cash', 'bla bla', 1, 22, 10),
(7, 'Troya', 'bla bla', 1, 33, 25),
(8, 'Gladiator', 'bla bla', 1, 30, 50),
(9, 'Reproductor de MP3', 'bla bla', 3, 230, 10),
(10, 'TV 21', 'bla bla', 3, 550, 10),
(11, 'Mini-componente AIWA', 'bla bla', 3, 750, 10),
(12, 'Home Theatre', 'bla bla', 3, 1210, 10);