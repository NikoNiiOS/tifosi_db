CREATE DATABASE tifosi;

USE tifosi;

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, RELOAD, SHUTDOWN, PROCESS, FILE, REFERENCES, INDEX, ALTER, SHOW DATABASES, SUPER, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE, REPLICATION SLAVE, REPLICATION CLIENT, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, CREATE USER, EVENT, TRIGGER, CREATE TABLESPACE, CREATE ROLE, DROP ROLE ON *.* TO `tifosi_admin`@`%` WITH GRANT OPTION;

CREATE TABLE `boisson` (
  `id_boisson` int NOT NULL AUTO_INCREMENT,
  `nom_boisson` varchar(45) NOT NULL,
  PRIMARY KEY (`id_boisson`)
);

CREATE TABLE `focaccia` (
  `id_focaccia` int NOT NULL AUTO_INCREMENT,
  `nom_focaccia` varchar(45) NOT NULL,
  `prix_focaccia` float NOT NULL,
  PRIMARY KEY (`id_focaccia`)
);

CREATE TABLE `client` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(45) NOT NULL,
  `age` int DEFAULT NULL,
  `cp_client` int DEFAULT NULL,
  PRIMARY KEY (`id_client`)
);

CREATE TABLE `ingredient` (
  `id_ingredient` int NOT NULL AUTO_INCREMENT,
  `nom_ingredient` varchar(45) NOT NULL,
  PRIMARY KEY (`id_ingredient`)
);

CREATE TABLE `marque` (
  `id_marque` int NOT NULL AUTO_INCREMENT,
  `nom_marque` varchar(45) NOT NULL,
  PRIMARY KEY (`id_marque`)
);

CREATE TABLE `menu` (
  `id_menu` int NOT NULL AUTO_INCREMENT,
  `nom_menu` varchar(45) NOT NULL,
  `prix_menu` float NOT NULL,
  PRIMARY KEY (`id_menu`)
);

CREATE TABLE `achete` (
  `id_client` int NOT NULL,
  `id_focaccia` int NOT NULL,
  `jour` date DEFAULT NULL,
  PRIMARY KEY (`id_client`,`id_focaccia`),
  KEY `id_focaccia` (`id_focaccia`),
  FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE `appartient` (
  `id_boisson` int NOT NULL,
  `id_marque` int NOT NULL,
  PRIMARY KEY (`id_boisson`,`id_marque`),
  KEY `id_marque` (`id_marque`),
  FOREIGN KEY (`id_boisson`) REFERENCES `boisson` (`id_boisson`) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (`id_marque`) REFERENCES `marque` (`id_marque`) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE `comprend` (
  `id_focaccia` int NOT NULL,
  `id_ingredient` int NOT NULL,
  PRIMARY KEY (`id_focaccia`,`id_ingredient`),
  KEY `id_ingredient` (`id_ingredient`),
  FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (`id_ingredient`) REFERENCES `ingredient` (`id_ingredient`) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE `contient` (
  `id_menu` int NOT NULL,
  `id_boisson` int NOT NULL,
  PRIMARY KEY (`id_menu`,`id_boisson`),
  KEY `id_boisson` (`id_boisson`),
  FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (`id_boisson`) REFERENCES `boisson` (`id_boisson`) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE `est_constitue` (
  `id_menu` int NOT NULL,
  `id_focaccia` int NOT NULL,
  PRIMARY KEY (`id_menu`,`id_focaccia`),
  KEY `id_focaccia` (`id_focaccia`),
  FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE `paye` (
  `id_client` int NOT NULL,
  `id_menu` int NOT NULL,
  `jour` date DEFAULT NULL,
  PRIMARY KEY (`id_client`,`id_menu`),
  KEY `id_menu` (`id_menu`),
  FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE RESTRICT ON UPDATE CASCADE
);