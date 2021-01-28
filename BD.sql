-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.5.8-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para prueba_tecnica_ct
DROP DATABASE IF EXISTS `prueba_tecnica_ct`;
CREATE DATABASE IF NOT EXISTS `prueba_tecnica_ct` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `prueba_tecnica_ct`;

-- Volcando estructura para tabla prueba_tecnica_ct.a_usuario
DROP TABLE IF EXISTS `a_usuario`;
CREATE TABLE IF NOT EXISTS `a_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `aPaterno` varchar(100) NOT NULL,
  `aMaterno` varchar(100) NOT NULL,
  `edad` int(11) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla prueba_tecnica_ct.a_usuario: ~0 rows (aproximadamente)
DELETE FROM `a_usuario`;
/*!40000 ALTER TABLE `a_usuario` DISABLE KEYS */;
INSERT INTO `a_usuario` (`id`, `nombre`, `aPaterno`, `aMaterno`, `edad`, `sexo`, `userName`, `password`) VALUES
	(1, 'Alfredo', 'Ramirez', 'Sanchez', 24, 'M', 'root', 'root');
/*!40000 ALTER TABLE `a_usuario` ENABLE KEYS */;

-- Volcando estructura para tabla prueba_tecnica_ct.b_calidad_taza
DROP TABLE IF EXISTS `b_calidad_taza`;
CREATE TABLE IF NOT EXISTS `b_calidad_taza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `calidad` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla prueba_tecnica_ct.b_calidad_taza: ~3 rows (aproximadamente)
DELETE FROM `b_calidad_taza`;
/*!40000 ALTER TABLE `b_calidad_taza` DISABLE KEYS */;
INSERT INTO `b_calidad_taza` (`id`, `calidad`) VALUES
	(1, 'Baja'),
	(2, 'Alta'),
	(3, 'Media');
/*!40000 ALTER TABLE `b_calidad_taza` ENABLE KEYS */;

-- Volcando estructura para tabla prueba_tecnica_ct.c_color_taza
DROP TABLE IF EXISTS `c_color_taza`;
CREATE TABLE IF NOT EXISTS `c_color_taza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `colorTxt` varchar(100) NOT NULL,
  `colorHex` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla prueba_tecnica_ct.c_color_taza: ~4 rows (aproximadamente)
DELETE FROM `c_color_taza`;
/*!40000 ALTER TABLE `c_color_taza` DISABLE KEYS */;
INSERT INTO `c_color_taza` (`id`, `colorTxt`, `colorHex`) VALUES
	(1, 'Rojo', 'FF0000'),
	(2, 'Cafe', NULL),
	(3, 'Gris', NULL),
	(4, 'Blanco', NULL);
/*!40000 ALTER TABLE `c_color_taza` ENABLE KEYS */;

-- Volcando estructura para tabla prueba_tecnica_ct.d_dimension_taza
DROP TABLE IF EXISTS `d_dimension_taza`;
CREATE TABLE IF NOT EXISTS `d_dimension_taza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alto` float NOT NULL DEFAULT 0,
  `ancho` float NOT NULL DEFAULT 0,
  `altoAgarre` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla prueba_tecnica_ct.d_dimension_taza: ~1 rows (aproximadamente)
DELETE FROM `d_dimension_taza`;
/*!40000 ALTER TABLE `d_dimension_taza` DISABLE KEYS */;
INSERT INTO `d_dimension_taza` (`id`, `alto`, `ancho`, `altoAgarre`) VALUES
	(1, 10, 5, 4),
	(2, 15, 10, 5);
/*!40000 ALTER TABLE `d_dimension_taza` ENABLE KEYS */;

-- Volcando estructura para tabla prueba_tecnica_ct.e_capacidad_taza
DROP TABLE IF EXISTS `e_capacidad_taza`;
CREATE TABLE IF NOT EXISTS `e_capacidad_taza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `capacidad` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla prueba_tecnica_ct.e_capacidad_taza: ~1 rows (aproximadamente)
DELETE FROM `e_capacidad_taza`;
/*!40000 ALTER TABLE `e_capacidad_taza` DISABLE KEYS */;
INSERT INTO `e_capacidad_taza` (`id`, `capacidad`) VALUES
	(1, 100),
	(2, 155);
/*!40000 ALTER TABLE `e_capacidad_taza` ENABLE KEYS */;

-- Volcando estructura para tabla prueba_tecnica_ct.f_material_taza
DROP TABLE IF EXISTS `f_material_taza`;
CREATE TABLE IF NOT EXISTS `f_material_taza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `material` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla prueba_tecnica_ct.f_material_taza: ~1 rows (aproximadamente)
DELETE FROM `f_material_taza`;
/*!40000 ALTER TABLE `f_material_taza` DISABLE KEYS */;
INSERT INTO `f_material_taza` (`id`, `material`) VALUES
	(1, 'Porcelana'),
	(2, 'Madera');
/*!40000 ALTER TABLE `f_material_taza` ENABLE KEYS */;

-- Volcando estructura para tabla prueba_tecnica_ct.g_taza
DROP TABLE IF EXISTS `g_taza`;
CREATE TABLE IF NOT EXISTS `g_taza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idCalidadTaza` int(11) NOT NULL,
  `idColorTaza` int(11) NOT NULL,
  `idDimensiones` int(11) NOT NULL,
  `idCapacidad` int(11) NOT NULL,
  `idMaterial` int(11) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `costoVenta` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_CalidadTaza` (`idCalidadTaza`),
  KEY `FK_ColorTaza` (`idColorTaza`),
  KEY `FK_DimensionTaza` (`idDimensiones`),
  KEY `FK_CapacidadTaza` (`idCapacidad`),
  KEY `FK_MaterialTaza` (`idMaterial`),
  CONSTRAINT `FK_CalidadTaza` FOREIGN KEY (`idCalidadTaza`) REFERENCES `b_calidad_taza` (`id`),
  CONSTRAINT `FK_CapacidadTaza` FOREIGN KEY (`idCapacidad`) REFERENCES `e_capacidad_taza` (`id`),
  CONSTRAINT `FK_ColorTaza` FOREIGN KEY (`idColorTaza`) REFERENCES `c_color_taza` (`id`),
  CONSTRAINT `FK_DimensionTaza` FOREIGN KEY (`idDimensiones`) REFERENCES `d_dimension_taza` (`id`),
  CONSTRAINT `FK_MaterialTaza` FOREIGN KEY (`idMaterial`) REFERENCES `f_material_taza` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla prueba_tecnica_ct.g_taza: ~3 rows (aproximadamente)
DELETE FROM `g_taza`;
/*!40000 ALTER TABLE `g_taza` DISABLE KEYS */;
INSERT INTO `g_taza` (`id`, `idCalidadTaza`, `idColorTaza`, `idDimensiones`, `idCapacidad`, `idMaterial`, `modelo`, `costoVenta`) VALUES
	(1, 2, 2, 1, 1, 1, 'Normal', 100),
	(15, 1, 3, 1, 1, 1, 'Cafetera', 60),
	(18, 1, 4, 2, 1, 2, 'Regalo Oferta', 0);
/*!40000 ALTER TABLE `g_taza` ENABLE KEYS */;

-- Volcando estructura para tabla prueba_tecnica_ct.h_almacen
DROP TABLE IF EXISTS `h_almacen`;
CREATE TABLE IF NOT EXISTS `h_almacen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idTaza` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `min` int(11) DEFAULT 5,
  `max` int(11) DEFAULT 100,
  PRIMARY KEY (`id`),
  KEY `FK_Taza` (`idTaza`),
  CONSTRAINT `FK_Taza` FOREIGN KEY (`idTaza`) REFERENCES `g_taza` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla prueba_tecnica_ct.h_almacen: ~3 rows (aproximadamente)
DELETE FROM `h_almacen`;
/*!40000 ALTER TABLE `h_almacen` DISABLE KEYS */;
INSERT INTO `h_almacen` (`id`, `idTaza`, `stock`, `min`, `max`) VALUES
	(1, 1, 1985, 10, 100),
	(12, 15, 1735, 5, 100),
	(13, 18, 1565, 5, 100);
/*!40000 ALTER TABLE `h_almacen` ENABLE KEYS */;

-- Volcando estructura para tabla prueba_tecnica_ct.i_orden_compra
DROP TABLE IF EXISTS `i_orden_compra`;
CREATE TABLE IF NOT EXISTS `i_orden_compra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) DEFAULT NULL,
  `idTaza` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `fechaCompra` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Usuario` (`idUsuario`),
  KEY `FK_TazaOC` (`idTaza`),
  CONSTRAINT `FK_TazaOC` FOREIGN KEY (`idTaza`) REFERENCES `g_taza` (`id`),
  CONSTRAINT `FK_Usuario` FOREIGN KEY (`idUsuario`) REFERENCES `a_usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla prueba_tecnica_ct.i_orden_compra: ~2 rows (aproximadamente)
DELETE FROM `i_orden_compra`;
/*!40000 ALTER TABLE `i_orden_compra` DISABLE KEYS */;
INSERT INTO `i_orden_compra` (`id`, `idUsuario`, `idTaza`, `cantidad`, `oferta`, `fechaCompra`) VALUES
	(5, NULL, 15, 100, 20, NULL);
/*!40000 ALTER TABLE `i_orden_compra` ENABLE KEYS */;

-- Volcando estructura para vista prueba_tecnica_ct.y_view_all_tazas
DROP VIEW IF EXISTS `y_view_all_tazas`;
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `y_view_all_tazas` (
	`id` INT(11) NOT NULL,
	`modelo` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`costoVenta` FLOAT(12) NOT NULL,
	`idCalidadTaza` INT(11) NOT NULL,
	`calidad` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`idColorTaza` INT(11) NOT NULL,
	`colorTxt` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`idDimensionTaza` INT(11) NOT NULL,
	`alto` FLOAT(12) NOT NULL,
	`ancho` FLOAT(12) NOT NULL,
	`altoAgarre` FLOAT(12) NOT NULL,
	`idCapacidadTaza` INT(11) NOT NULL,
	`capacidad` FLOAT(12) NOT NULL,
	`idMaterialTaza` INT(11) NOT NULL,
	`material` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`stock` INT(11) NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para procedimiento prueba_tecnica_ct.z_agregar_calidad_taza
DROP PROCEDURE IF EXISTS `z_agregar_calidad_taza`;
DELIMITER //
CREATE PROCEDURE `z_agregar_calidad_taza`(
	IN `calidadI` VARCHAR(100)
)
BEGIN
	INSERT INTO `prueba_tecnica_ct`.`b_calidad_taza` (`calidad`)
	VALUES (calidadI);
END//
DELIMITER ;

-- Volcando estructura para procedimiento prueba_tecnica_ct.z_agregar_capacidad_taza
DROP PROCEDURE IF EXISTS `z_agregar_capacidad_taza`;
DELIMITER //
CREATE PROCEDURE `z_agregar_capacidad_taza`(
	IN `capacidadI` INT
)
BEGIN
	INSERT INTO `prueba_tecnica_ct`.`e_capacidad_taza` (`capacidad`)
	VALUES (capacidadI);
END//
DELIMITER ;

-- Volcando estructura para procedimiento prueba_tecnica_ct.z_agregar_color_taza
DROP PROCEDURE IF EXISTS `z_agregar_color_taza`;
DELIMITER //
CREATE PROCEDURE `z_agregar_color_taza`(
	IN `colorTxtI` VARCHAR(100)
)
BEGIN
	INSERT INTO `prueba_tecnica_ct`.`c_color_taza` (`colorTxt`)
	VALUES (colorTxtI);
END//
DELIMITER ;

-- Volcando estructura para procedimiento prueba_tecnica_ct.z_agregar_dimension_taza
DROP PROCEDURE IF EXISTS `z_agregar_dimension_taza`;
DELIMITER //
CREATE PROCEDURE `z_agregar_dimension_taza`(
	IN `altoI` INT,
	IN `anchoI` INT,
	IN `altoAgarreI` INT
)
BEGIN
	INSERT INTO `prueba_tecnica_ct`.`d_dimension_taza` (`alto`, `ancho`, `altoAgarre`)
	VALUES (altoI, anchoI, altoAgarreI);
END//
DELIMITER ;

-- Volcando estructura para procedimiento prueba_tecnica_ct.z_agregar_ingreso_taza
DROP PROCEDURE IF EXISTS `z_agregar_ingreso_taza`;
DELIMITER //
CREATE PROCEDURE `z_agregar_ingreso_taza`(
	IN `modeloI` VARCHAR(100),
	IN `costoVentaI` INT,
	IN `idCalidadTazaI` INT,
	IN `calidadI` VARCHAR(100),
	IN `idColorTazaI` INT,
	IN `colorTxtI` VARCHAR(100),
	IN `idDimensionTazaI` INT,
	IN `altoI` INT,
	IN `anchoI` INT,
	IN `altoAgarreI` INT,
	IN `idCapacidadTazaI` INT,
	IN `capacidadI` INT,
	IN `idMaterialTazaI` INT,
	IN `materialI` VARCHAR(100),
	IN `stockI` INT
)
BEGIN
	INSERT INTO `prueba_tecnica_ct`.`g_taza` (`idCalidadTaza`, `idColorTaza`, `idDimensiones`, `idCapacidad`, `idMaterial`, `modelo`, `costoVenta`) 
	VALUES (idCalidadTazaI, idColorTazaI, idDimensionTazaI, idCapacidadTazaI, idMaterialTazaI, modeloI, costoVentaI);
	
	INSERT INTO `prueba_tecnica_ct`.`h_almacen` (`idTaza`, `stock`)
	VALUES ((SELECT id from g_taza order by g_taza.id DESC LIMIT 1), stockI);
END//
DELIMITER ;

-- Volcando estructura para procedimiento prueba_tecnica_ct.z_agregar_material_taza
DROP PROCEDURE IF EXISTS `z_agregar_material_taza`;
DELIMITER //
CREATE PROCEDURE `z_agregar_material_taza`(
	IN `materialI` VARCHAR(100)
)
BEGIN
	INSERT INTO `prueba_tecnica_ct`.`f_material_taza` (`material`)
	VALUES (materialI);
END//
DELIMITER ;

-- Volcando estructura para procedimiento prueba_tecnica_ct.z_agregar_orden_compra
DROP PROCEDURE IF EXISTS `z_agregar_orden_compra`;
DELIMITER //
CREATE PROCEDURE `z_agregar_orden_compra`(
	IN `idTazaI` INT,
	IN `cantidadI` INT,
	IN `ofertaI` INT
)
BEGIN
	INSERT INTO `prueba_tecnica_ct`.`i_orden_compra` (`idTaza`, `cantidad`, `oferta`)
	VALUES (idTazaI, cantidadI, ofertaI);
	
	UPDATE `prueba_tecnica_ct`.`h_almacen` 
	SET `stock`= (SELECT `stock` FROM `h_almacen` WHERE `idTaza` = idTazaI) - cantidadI WHERE `idTaza` = idTazaI;
	
	UPDATE `prueba_tecnica_ct`.`h_almacen` 
	SET `stock`= (SELECT `stock` FROM `h_almacen` WHERE `idTaza` = (SELECT `id` FROM `g_taza` WHERE `modelo` LIKE 'Regalo Oferta')) - ofertaI 
	WHERE `idTaza` = (SELECT `id` FROM `g_taza` WHERE `modelo` LIKE 'Regalo Oferta');
END//
DELIMITER ;

-- Volcando estructura para procedimiento prueba_tecnica_ct.z_get_taza_by_id
DROP PROCEDURE IF EXISTS `z_get_taza_by_id`;
DELIMITER //
CREATE PROCEDURE `z_get_taza_by_id`(
	IN `idI` INT
)
BEGIN
	SELECT 
	taza.id, taza.modelo, taza.costoVenta, 
	calidad_taza.id AS idCalidadTaza, calidad_taza.calidad,
	color_taza.id AS idColorTaza, color_taza.colorTxt,
	dimension_taza.id AS idDimensionTaza, dimension_taza.alto, dimension_taza.ancho, dimension_taza.altoAgarre,
	capacidad_taza.id AS idCapacidadTaza, capacidad_taza.capacidad,
	material_taza.id AS idMaterialTaza, material_taza.material,
	almacen.stock
	FROM g_taza AS taza

	INNER JOIN b_calidad_taza AS calidad_taza
	ON calidad_taza.id = taza.idCalidadTaza

	INNER JOIN c_color_taza AS color_taza
	ON color_taza.id = taza.idColorTaza

	INNER JOIN d_dimension_taza AS dimension_taza
	ON dimension_taza.id = taza.idDimensiones

	INNER JOIN e_capacidad_taza AS capacidad_taza
	ON capacidad_taza.id = taza.idCapacidad

	INNER JOIN f_material_taza AS material_taza
	ON material_taza.id = taza.idMaterial

	INNER JOIN h_almacen AS almacen
	ON almacen.idTaza = taza.id

	WHERE taza.id = idI;
END//
DELIMITER ;

-- Volcando estructura para vista prueba_tecnica_ct.y_view_all_tazas
DROP VIEW IF EXISTS `y_view_all_tazas`;
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `y_view_all_tazas`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `y_view_all_tazas` AS SELECT 
taza.id, taza.modelo, taza.costoVenta, 
calidad_taza.id AS idCalidadTaza, calidad_taza.calidad,
color_taza.id AS idColorTaza, color_taza.colorTxt,
dimension_taza.id AS idDimensionTaza, dimension_taza.alto, dimension_taza.ancho, dimension_taza.altoAgarre,
capacidad_taza.id AS idCapacidadTaza, capacidad_taza.capacidad,
material_taza.id AS idMaterialTaza, material_taza.material,
almacen.stock
FROM g_taza AS taza

INNER JOIN b_calidad_taza AS calidad_taza
ON calidad_taza.id = taza.idCalidadTaza

INNER JOIN c_color_taza AS color_taza
ON color_taza.id = taza.idColorTaza

INNER JOIN d_dimension_taza AS dimension_taza
ON dimension_taza.id = taza.idDimensiones

INNER JOIN e_capacidad_taza AS capacidad_taza
ON capacidad_taza.id = taza.idCapacidad

INNER JOIN f_material_taza AS material_taza
ON material_taza.id = taza.idMaterial

INNER JOIN h_almacen AS almacen
ON almacen.idTaza = taza.id ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
