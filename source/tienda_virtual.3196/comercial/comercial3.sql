# DBTools DBMYSQL - MySQL Database Dump
#
# USEGO
# sencillo programa creado por Pakilprogramador(Santos Juarez)
# juares246@hotmail.com
# cualquier consulta  a mi email 

CREATE DATABASE `comercial3`;
# GO
USE `comercial3`;
# GO
SET FOREIGN_KEY_CHECKS=0;

# GO
# Dumping Table Structure for carrito

#
CREATE TABLE `carrito` (
  `codope` char(17) NOT NULL,
  `codpro` char(3) NOT NULL,
  `cant` int(11) NOT NULL,
  `total` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
# GO
#

# Dumping Data for carrito
#
BEGIN;
# GO
INSERT INTO `carrito` (codope, codpro, cant, total) VALUES ('20100527125638001', '002', 1, 3.87);
# GO
INSERT INTO `carrito` (codope, codpro, cant, total) VALUES ('20100526061704004', '003', 1, 14.49);
# GO
INSERT INTO `carrito` (codope, codpro, cant, total) VALUES ('20100526044849004', '', 1, 0);
# GO
INSERT INTO `carrito` (codope, codpro, cant, total) VALUES ('20100526044849004', '014', 1, 2.47);
# GO
INSERT INTO `carrito` (codope, codpro, cant, total) VALUES ('20100528111733001', '002', 1, 3.87);
# GO
INSERT INTO `carrito` (codope, codpro, cant, total) VALUES ('20100528111733001', '', 1, 0);
# GO
INSERT INTO `carrito` (codope, codpro, cant, total) VALUES ('20100527063955010', '025', 1, 5.05);
# GO
INSERT INTO `carrito` (codope, codpro, cant, total) VALUES ('20100526044849004', '001', 3, 14.97);
# GO
INSERT INTO `carrito` (codope, codpro, cant, total) VALUES ('20100528111733001', '014', 1, 2.47);
# GO
INSERT INTO `carrito` (codope, codpro, cant, total) VALUES ('20100528111733001', '004', 1, 3.87);
# GO
INSERT INTO `carrito` (codope, codpro, cant, total) VALUES ('20100528111055010', '020', 1, 10.14);
# GO
INSERT INTO `carrito` (codope, codpro, cant, total) VALUES ('20100528111055010', '', 1, 0);
# GO
INSERT INTO `carrito` (codope, codpro, cant, total) VALUES ('20100528111055010', '023', 10, 32.7);
# GO
INSERT INTO `carrito` (codope, codpro, cant, total) VALUES ('20100531060054004', '018', 1, 75.87);
# GO
INSERT INTO `carrito` (codope, codpro, cant, total) VALUES ('20100528061542010', '039', 1, 33.17);
# GO
INSERT INTO `carrito` (codope, codpro, cant, total) VALUES ('20100528061542010', '021', 1, 2.42);
# GO
COMMIT;
# GO
# Dumping Table Structure for categoria

#
CREATE TABLE `categoria` (
  `codcat` char(3) NOT NULL,
  `nomcat` varchar(20) NOT NULL,
  PRIMARY KEY  (`codcat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
# GO
#

# Dumping Data for categoria
#
BEGIN;
# GO
INSERT INTO `categoria` (codcat, nomcat) VALUES ('001', 'ABARROTES');
# GO
INSERT INTO `categoria` (codcat, nomcat) VALUES ('002', 'PANADERIA');
# GO
INSERT INTO `categoria` (codcat, nomcat) VALUES ('003', 'LACTEOS');
# GO
INSERT INTO `categoria` (codcat, nomcat) VALUES ('004', 'LIMPIEZA');
# GO
INSERT INTO `categoria` (codcat, nomcat) VALUES ('005', 'BEBIDAS');
# GO
INSERT INTO `categoria` (codcat, nomcat) VALUES ('006', 'ASEO');
# GO
INSERT INTO `categoria` (codcat, nomcat) VALUES ('007', 'CARNES');
# GO
INSERT INTO `categoria` (codcat, nomcat) VALUES ('008', 'FRUTAS');
# GO
INSERT INTO `categoria` (codcat, nomcat) VALUES ('009', 'COMPUTO');
# GO
INSERT INTO `categoria` (codcat, nomcat) VALUES ('010', 'PELICULAS DVD');
# GO
COMMIT;
# GO
# Dumping Table Structure for clientes

#
CREATE TABLE `clientes` (
  `codcli` char(3) NOT NULL,
  `apecli` varchar(30) NOT NULL,
  `nomcli` varchar(30) NOT NULL,
  `dircli` varchar(50) NOT NULL,
  `discli` varchar(30) default NULL,
  `ruccli` char(11) default NULL,
  `telcli` varchar(15) default NULL,
  `fncli` date default NULL,
  `sexo` char(1) NOT NULL,
  PRIMARY KEY  (`codcli`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
# GO
#

# Dumping Data for clientes
#
BEGIN;
# GO
INSERT INTO `clientes` (codcli, apecli, nomcli, dircli, discli, ruccli, telcli, fncli, sexo) VALUES ('001', 'Adrianzen Valencia', 'Angelo', 'Av.Los Manzanos', 'Bre', '10141512123', '4252623', '1984-05-12', 'm');
# GO
INSERT INTO `clientes` (codcli, apecli, nomcli, dircli, discli, ruccli, telcli, fncli, sexo) VALUES ('002', 'Terrazas Macedo', 'Richard', 'Residencial Henan Velarde', 'Jesus Maria', '10141512143', '4252624', '1986-09-10', 'm');
# GO
INSERT INTO `clientes` (codcli, apecli, nomcli, dircli, discli, ruccli, telcli, fncli, sexo) VALUES ('003', 'Castro Zarria', 'jhair', 'Av.Los Naranjos', 'Lince', '10141512125', '4645223', '1982-06-11', 'm');
# GO
INSERT INTO `clientes` (codcli, apecli, nomcli, dircli, discli, ruccli, telcli, fncli, sexo) VALUES ('004', 'Carpio Zelada', 'Raul', 'Av.San Jose 213', 'Arenales', '10141513125', '4546223', '1989-09-15', 'm');
# GO
INSERT INTO `clientes` (codcli, apecli, nomcli, dircli, discli, ruccli, telcli, fncli, sexo) VALUES ('005', 'Carranza zarria', 'Maria', 'Av.San Pedro 123', 'Pueblo Libre', '10141512126', '4546225', '1992-02-11', 'm');
# GO
INSERT INTO `clientes` (codcli, apecli, nomcli, dircli, discli, ruccli, telcli, fncli, sexo) VALUES ('006', 'Franco Fajardo', 'Vania', 'Av.Elias 125', 'Lince', '10141512146', '4546228', '0000-00-00', 'f');
# GO
INSERT INTO `clientes` (codcli, apecli, nomcli, dircli, discli, ruccli, telcli, fncli, sexo) VALUES ('007', 'Custodio Canales', 'Carlos', 'Av.Arequipa 128', 'La Molina', '10141512135', '4546338', '0000-00-00', 'm');
# GO
INSERT INTO `clientes` (codcli, apecli, nomcli, dircli, discli, ruccli, telcli, fncli, sexo) VALUES ('008', 'Torres Puertas', 'Jose', 'Av.Venezuela 156', 'Bre', '10141512145', '4546448', '0000-00-00', 'm');
# GO
INSERT INTO `clientes` (codcli, apecli, nomcli, dircli, discli, ruccli, telcli, fncli, sexo) VALUES ('009', 'Oliva Mendez', 'Nancy', 'Jr. Junin 129', 'Pueblo Libre', '10141512142', '4546445', '0000-00-00', 'f');
# GO
INSERT INTO `clientes` (codcli, apecli, nomcli, dircli, discli, ruccli, telcli, fncli, sexo) VALUES ('010', 'Zarate Claros', 'Patricia', 'Jr.Chincha 124', 'Lince', '10141512141', '4546442', '0000-00-00', 'f');
# GO
COMMIT;
# GO
# Dumping Table Structure for detalles

#
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detalles` AS select `c`.`codope` AS `codope`,`p`.`codpro` AS `codpro`,`p`.`nompro` AS `nompro`,`p`.`marpro` AS `marpro`,`c`.`cant` AS `cant`,`p`.`prepro` AS `prepro`,`c`.`total` AS `total` from (`carrito` `c` join `producto` `p`) where (`p`.`codpro` = `c`.`codpro`);
# GO
#

# Dumping Data for detalles
#
BEGIN;
# GO
INSERT INTO `detalles` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100527125638001', '002', 'Leche', 'La Suprema', 1, 3.87, 3.87);
# GO
INSERT INTO `detalles` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100526061704004', '003', 'Leche', 'Gloria', 1, 14.49, 14.49);
# GO
INSERT INTO `detalles` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100526044849004', '014', 'Gaseosa', 'Inca Kola', 1, 2.47, 2.47);
# GO
INSERT INTO `detalles` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100528111733001', '002', 'Leche', 'La Suprema', 1, 3.87, 3.87);
# GO
INSERT INTO `detalles` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100527063955010', '025', 'Yogurt', 'Milk', 1, 5.05, 5.05);
# GO
INSERT INTO `detalles` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100526044849004', '001', 'Aceite', 'Dacil', 3, 4.99, 14.97);
# GO
INSERT INTO `detalles` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100528111733001', '014', 'Gaseosa', 'Inca Kola', 1, 2.47, 2.47);
# GO
INSERT INTO `detalles` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100528111733001', '004', 'Azucar', 'Azucarera', 1, 3.87, 3.87);
# GO
INSERT INTO `detalles` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100528111055010', '020', 'Pollo', 'Metro', 1, 10.14, 10.14);
# GO
INSERT INTO `detalles` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100528111055010', '023', 'Platano', 'Metro', 10, 3.27, 32.7);
# GO
INSERT INTO `detalles` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100531060054004', '018', 'Azucar', 'BLUR', 1, 75.87, 75.87);
# GO
INSERT INTO `detalles` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100528061542010', '039', 'Pelicula', 'Sony', 1, 33.17, 33.17);
# GO
INSERT INTO `detalles` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100528061542010', '021', 'Pan', 'Metro', 1, 2.42, 2.42);
# GO
COMMIT;
# GO
# Dumping Table Structure for detfac

#
CREATE TABLE `detfac` (
  `nrofac` char(6) NOT NULL,
  `codpro` char(3) NOT NULL,
  `cant` int(11) default NULL,
  `total` double default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
# GO
#

# Dumping Data for detfac
#
BEGIN;
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000001', '002', 3, 7.5);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000001', '001', 1, 4.99);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000002', '001', 2, 9.98);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000005', '001', 1, 4.99);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000005', '022', 1, 2.43);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000005', '023', 1, 3.27);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000005', '020', 1, 10.14);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000005', '002', 1, 3.87);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000006', '023', 1, 3.27);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000006', '003', 1, 14.49);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000006', '001', 1, 4.99);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000007', '004', 1, 3.87);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000008', '026', 1, 1.41);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000008', '017', 1, 7.72);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000008', '021', 1, 2.42);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000009', '027', 1, 3.87);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000009', '020', 1, 10.14);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000009', '026', 1, 1.41);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000009', '021', 1, 2.42);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000010', '014', 1, 2.47);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000010', '006', 1, 3.4);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000010', '013', 1, 1.28);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000010', '021', 1, 2.42);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000011', '001', 3, 14.97);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000011', '014', 2, 4.94);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000011', '025', 2, 10.1);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000011', '010', 1, 4.57);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000012', '002', 1, 3.87);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000012', '004', 4, 15.48);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000013', '002', 1, 3.87);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000013', '014', 1, 2.47);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000014', '020', 1, 10.14);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000014', '006', 3, 10.2);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000015', '026', 1, 1.41);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000015', '004', 1, 3.87);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000016', '026', 6, 8.46);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000016', '005', 1, 2.87);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000003', '005', 3, 8.61);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000004', '020', 1, 10.14);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000004', '005', 1, 2.87);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000004', '026', 1, 1.41);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000004', '004', 1, 3.87);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000005', '020', 1, 10.14);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000005', '021', 20, 48.4);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000006', '021', 1, 2.42);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000007', '006', 1, 3.4);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000008', '014', 1, 2.47);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000009', '003', 120, 1738.8);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000010', '010', 1, 4.57);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000010', '004', 1, 3.87);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000010', '020', 1, 10.14);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000011', '030', 6, 125.1);
# GO
INSERT INTO `detfac` (nrofac, codpro, cant, total) VALUES ('000012', '032', 10, 158.7);
# GO
COMMIT;
# GO
# Dumping Table Structure for facturas

#
CREATE TABLE `facturas` (
  `nrofac` char(6) NOT NULL,
  `codcli` char(3) NOT NULL,
  `fecfac` date default NULL,
  `stfac` double default NULL,
  `igvfac` double default NULL,
  `mpfac` double default NULL,
  `codven` char(2) NOT NULL,
  PRIMARY KEY  (`nrofac`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
# GO
#

# Dumping Data for facturas
#
BEGIN;
# GO
INSERT INTO `facturas` (nrofac, codcli, fecfac, stfac, igvfac, mpfac, codven) VALUES ('000002', '001', '0000-00-00', 12.58, 2.39, 14.97, '02');
# GO
INSERT INTO `facturas` (nrofac, codcli, fecfac, stfac, igvfac, mpfac, codven) VALUES ('000012', '006', '2010-05-28', 133.36, 25.34, 158.7, '02');
# GO
INSERT INTO `facturas` (nrofac, codcli, fecfac, stfac, igvfac, mpfac, codven) VALUES ('000011', '005', '2010-05-28', 105.13, 19.97, 125.1, '02');
# GO
INSERT INTO `facturas` (nrofac, codcli, fecfac, stfac, igvfac, mpfac, codven) VALUES ('000010', '005', '2010-05-28', 15.61, 2.97, 18.58, '02');
# GO
INSERT INTO `facturas` (nrofac, codcli, fecfac, stfac, igvfac, mpfac, codven) VALUES ('000009', '006', '2010-05-28', 1, 277.62, 1, '02');
# GO
INSERT INTO `facturas` (nrofac, codcli, fecfac, stfac, igvfac, mpfac, codven) VALUES ('000008', '008', '2010-05-27', 2.08, 0.39, 2.47, '02');
# GO
INSERT INTO `facturas` (nrofac, codcli, fecfac, stfac, igvfac, mpfac, codven) VALUES ('000007', '009', '2010-05-27', 2.86, 0.54, 3.4, '02');
# GO
INSERT INTO `facturas` (nrofac, codcli, fecfac, stfac, igvfac, mpfac, codven) VALUES ('000006', '006', '2010-05-27', 2.03, 0.39, 2.42, '02');
# GO
INSERT INTO `facturas` (nrofac, codcli, fecfac, stfac, igvfac, mpfac, codven) VALUES ('000005', '008', '2010-05-27', 49.19, 9.35, 58.54, '02');
# GO
INSERT INTO `facturas` (nrofac, codcli, fecfac, stfac, igvfac, mpfac, codven) VALUES ('000004', '005', '2010-05-26', 15.37, 2.92, 18.29, '02');
# GO
INSERT INTO `facturas` (nrofac, codcli, fecfac, stfac, igvfac, mpfac, codven) VALUES ('000003', '007', '2010-05-26', 7.24, 1.37, 8.61, '02');
# GO
COMMIT;
# GO
# Dumping Table Structure for producto

#
CREATE TABLE `producto` (
  `codpro` char(3) NOT NULL,
  `nompro` varchar(25) NOT NULL,
  `despro` varchar(35) NOT NULL,
  `marpro` varchar(15) NOT NULL,
  `prepro` decimal(7,2) default NULL,
  `stockpro` int(11) default NULL,
  `codcat` char(3) NOT NULL,
  `fotopro` varchar(60) NOT NULL,
  PRIMARY KEY  (`codpro`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
# GO
#

# Dumping Data for producto
#
BEGIN;
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('001', 'Aceite', 'Botella 1 litro', 'Dacil', 4.99, 95, '001', 'foto001.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('002', 'Leche', '1 Caja', 'La Suprema', 3.87, 77, '003', 'foto002.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('003', 'Leche', 'Pack de 6', 'Gloria', 14.49, -36, '003', 'foto003.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('004', 'Azucar', 'Blanca Bolsa 1 Kg.', 'Azucarera', 3.87, 89, '001', 'foto004.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('005', 'Fideos', 'Para Sopas y Tallirenes', 'Molitalia', 2.87, 94, '001', 'foto005.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('006', 'Gaseosa', '1 Litro', 'Coca Cola', 3.40, 89, '005', 'foto006.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('007', 'Azucar', 'Rubia 1 Kg.', 'Costeña', 2.76, 91, '001', 'foto007.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('008', 'Aceite', 'Botella 1 litro', 'Capri', 5.70, 100, '001', 'foto008.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('009', 'Arroz', 'Graneado Bolsa 1 Kg.', 'Costeño', 2.97, 100, '001', 'foto009.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('010', 'Jabon Bolivar vida', 'Pack * 2', 'Bolivar', 4.57, 95, '004', 'foto010.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('011', 'Café', 'Lata 950mg', 'Nescafé', 2.84, 100, '001', 'foto011.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('012', 'Mermelada', 'Envase 1Lt', 'Fanny', 4.67, 100, '001', 'foto012.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('013', 'Mantequilla', '200Mg', 'Gloria', 1.28, 99, '003', 'foto013.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('014', 'Gaseosa', '1 Litro', 'Inca Kola', 2.47, 55, '005', 'foto014.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('015', 'Arroz', 'Graneado Bolsa 1 Kg.', 's/m', 3.87, 64, '001', 'foto015.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('016', 'Harina', 'Bolsa 800Mg', 'Blanca Flor', 2.47, 100, '001', 'foto016.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('017', 'Papel', 'Pack * 6', 'Elite', 7.72, -8476, '004', 'foto017.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('018', 'Azucar', 'Saco 50 Kg.', 'BLUR', 75.87, 100, '001', 'foto018.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('019', 'Duraznos en Mitades', 'Lata 450 Mg', 'Del Monte', 4.57, 100, '001', 'foto019.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('020', 'Pollo', '1 Kg.', 'Metro', 10.14, -21, '007', 'foto020.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('021', 'Pan', 'Bolsa * 8 Und.', 'Metro', 2.42, 65, '002', 'foto021.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('022', 'Sandia', 'Unidad', 'Metro', 2.43, 97, '008', 'foto022.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('023', 'Platano', '15 Und.', 'Metro', 3.27, 98, '008', 'foto023.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('024', 'Azucar', 'Bolsa 1Kg.', 'RAR', 4.76, 100, '001', 'foto024.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('025', 'Yogurt', 'Caja', 'Milk', 5.05, 96, '003', 'foto025.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('026', 'Jabon', '1 Und.', 'GMail', 1.41, 14, '006', 'foto026.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('027', 'Manzanas', '1Kg.', 'Metro', 3.87, 97, '008', 'foto027.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('029', 'Laptop ', 'lAPTON C2', 'HP', 1548.23, 94, '009', 'laptop.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('030', 'Matrix ', 'DVD', 'SONY ', 20.85, 114, '010', 'matrix.gif');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('031', 'pelicula', 'Dvd.', 'Sony', 10.87, 87, '010', '1.gif');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('032', 'pelicula', 'Dvd.', 'Sony', 15.87, 88, '010', '2.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('033', 'pelicula', 'Dvd.', 'Sony', 16.87, 97, '010', '3.gif');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('034', 'pelicula', 'Dvd.', 'Sony', 50.87, 93, '010', '4.gif');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('035', 'Pelicula', 'Dvd.', 'Sony', 43.87, 28, '010', '5.jpg');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('036', 'Pelicula', 'Dvd.', 'Sony', 40.87, 28, '010', '6.gif');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('037', 'Pelicula', 'Dvd.', 'Sony', 33.87, 23, '010', '7.gif');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('038', 'Pelicula', 'Dvd.', 'Sony', 63.87, 28, '010', '8.gif');
# GO
INSERT INTO `producto` (codpro, nompro, despro, marpro, prepro, stockpro, codcat, fotopro) VALUES ('039', 'Pelicula', 'Dvd.', 'Sony', 33.17, 20, '010', '9.gif');
# GO
COMMIT;
# GO
# Dumping Table Structure for vendedores

#
CREATE TABLE `vendedores` (
  `codven` char(2) NOT NULL,
  `apeven` varchar(25) NOT NULL,
  `nomven` varchar(25) NOT NULL,
  PRIMARY KEY  (`codven`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
# GO
#

# Dumping Data for vendedores
#
BEGIN;
# GO
INSERT INTO `vendedores` (codven, apeven, nomven) VALUES ('01', 'Garcia', 'Karen');
# GO
INSERT INTO `vendedores` (codven, apeven, nomven) VALUES ('02', 'Caceres', 'Carlos');
# GO
COMMIT;
# GO
# Dumping Table Structure for vista

#
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista` AS select `c`.`codope` AS `codope`,`p`.`codpro` AS `codpro`,`p`.`nompro` AS `nompro`,`p`.`marpro` AS `marpro`,`c`.`cant` AS `cant`,`p`.`prepro` AS `prepro`,`c`.`total` AS `total` from (`carrito` `c` join `producto` `p`) where (`p`.`codpro` = `c`.`codpro`);
# GO
#

# Dumping Data for vista
#
BEGIN;
# GO
INSERT INTO `vista` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100527125638001', '002', 'Leche', 'La Suprema', 1, 3.87, 3.87);
# GO
INSERT INTO `vista` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100526061704004', '003', 'Leche', 'Gloria', 1, 14.49, 14.49);
# GO
INSERT INTO `vista` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100526044849004', '014', 'Gaseosa', 'Inca Kola', 1, 2.47, 2.47);
# GO
INSERT INTO `vista` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100528111733001', '002', 'Leche', 'La Suprema', 1, 3.87, 3.87);
# GO
INSERT INTO `vista` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100527063955010', '025', 'Yogurt', 'Milk', 1, 5.05, 5.05);
# GO
INSERT INTO `vista` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100526044849004', '001', 'Aceite', 'Dacil', 3, 4.99, 14.97);
# GO
INSERT INTO `vista` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100528111733001', '014', 'Gaseosa', 'Inca Kola', 1, 2.47, 2.47);
# GO
INSERT INTO `vista` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100528111733001', '004', 'Azucar', 'Azucarera', 1, 3.87, 3.87);
# GO
INSERT INTO `vista` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100528111055010', '020', 'Pollo', 'Metro', 1, 10.14, 10.14);
# GO
INSERT INTO `vista` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100528111055010', '023', 'Platano', 'Metro', 10, 3.27, 32.7);
# GO
INSERT INTO `vista` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100531060054004', '018', 'Azucar', 'BLUR', 1, 75.87, 75.87);
# GO
INSERT INTO `vista` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100528061542010', '039', 'Pelicula', 'Sony', 1, 33.17, 33.17);
# GO
INSERT INTO `vista` (codope, codpro, nompro, marpro, cant, prepro, total) VALUES ('20100528061542010', '021', 'Pan', 'Metro', 1, 2.42, 2.42);
# GO
COMMIT;
# GO
# Dumping Views
CREATE VIEW `detalles` AS SELECT
 `c`.`codope` AS `codope`,
 `p`.`codpro` AS `codpro`,
 `p`.`nompro` AS `nompro`,
 `p`.`marpro` AS `marpro`,
 `c`.`cant` AS `cant`,
 `p`.`prepro` AS `prepro`,
 `c`.`total` AS `total`
FROM
(`carrito` `c` JOIN
`producto` `p`)
WHERE
(`p`.`codpro` = `c`.`codpro`);
# GO

CREATE VIEW `vista` AS SELECT
 `c`.`codope` AS `codope`,
 `p`.`codpro` AS `codpro`,
 `p`.`nompro` AS `nompro`,
 `p`.`marpro` AS `marpro`,
 `c`.`cant` AS `cant`,
 `p`.`prepro` AS `prepro`,
 `c`.`total` AS `total`
FROM
(`carrito` `c` JOIN
`producto` `p`)
WHERE
(`p`.`codpro` = `c`.`codpro`);
# GO

# Dumping User Defined Functions
# Dumping Stored Procedures
SET FOREIGN_KEY_CHECKS=1

# GO
