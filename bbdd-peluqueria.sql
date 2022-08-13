SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

# BASE DE DATOS Peluqueria-------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS `Peluqueria`;
USE `Peluqueria`;


# TABLA dueno ----------------------------------------------------------

#DROP TABLE IF EXISTS `dueno`;
CREATE TABLE IF NOT EXISTS `dueno`(
  `DNI` int(30) NOT NULL UNIQUE,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Telefono` varchar(30) NOT NULL,
  `Dirección` varchar(50) NOT NULL,
  PRIMARY KEY (`DNI`)
);


INSERT INTO `dueno` (`DNI`, `Nombre`, `Apellido`, `Telefono`, `Dirección`) VALUES
(33333333, 'Dario', 'Altamirano', '3333-3333', 'Rondeau 555'),
(44444444, 'Laura', 'Esquivel', '4444-4444', 'Lamartine 2226'),
(55555555, 'Francisco', 'Perez', '5555-5555', 'Rio Negro 666'),
(66666666, 'Karen', 'Lopez', '6666-6666', 'Velez Sarsfield 2521'),
(77777777, 'German', 'Castellano', '7777-7777', 'Colon 533');


# TABLA perro ----------------------------------------------------------------------------------------

#DROP TABLE IF EXISTS `perro`;
CREATE TABLE IF NOT EXISTS `perro` (
  `ID_Perro` int(5) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Fecha_nac` date NOT NULL,
  `Sexo` varchar(50) NOT NULL,
  `DNI_dueno` int(30) NOT NULL,
  PRIMARY KEY (`ID_Perro`),
  FOREIGN KEY (`DNI_dueno`)
  REFERENCES `dueno` (`DNI`)
);


INSERT INTO `perro` (`ID_Perro`, `Nombre`, `Fecha_nac`, `Sexo`, `DNI_dueno`) VALUES
(1, 'Toto', '2020-08-10', 'Macho', 33333333),
(2, 'Mara', '2018-09-10', 'Hembra', 44444444),
(3, 'Pepe', '2020-08-10', 'Macho', 66666666),
(4, 'Dali', '2018-09-10', 'Hembra', 77777777),
(5, 'Toby', '2020-08-10', 'Macho', 55555555);



# TABLA historial-----------------------------------------------------------------------

#DROP TABLE IF EXISTS `historial`;
CREATE TABLE IF NOT EXISTS `historial` (
  `ID_Historial` int(5) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Perro` int(5) NOT NULL,
  `Descripción` varchar(50) NOT NULL,
  `Monto` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Historial`),
  FOREIGN KEY (`Perro`) 
  REFERENCES `perro` (`ID_Perro`)
);

INSERT INTO `historial` (`ID_Historial`, `Fecha`, `Perro`, `Descripción`, `Monto`) VALUES
(1, '2022-02-15', 1, 'Baño', '600'),
(2, '2021-11-02', 2, 'Corte perro chico', '700'),
(3, '2018-01-15', 5, 'Baño', '750'),
(4, '2021-10-22', 3, 'Corte perro grande', '1100'),
(5, '2020-01-04', 4, 'Cortar uñas', '600');



COMMIT;
