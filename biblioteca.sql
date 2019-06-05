-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2019 a las 03:19:57
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `categoriamaterial` (IN `id` INT, IN `descripcion_categoria` VARCHAR(256), IN `accion` VARCHAR(40))  NO SQL
case accion
	when 'nuevo' then
		insert into categorialmaterial(DescripcionCategoriaMaterial)
        values(descripcion_categoria);
    when 'editar' then
		update categorialmaterial set
        DescripcionCategoriaMaterial=descripcion_categoria
        where CategoriaID=id;
	when 'eliminar' then
		delete from categorialmaterial
        where CategoriaID=id;
	when 'consultar' then
		select * from categorialmaterial;
	end case$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `gestionareditorial` (IN `id` INT, IN `descripcion_editorial` VARCHAR(256), IN `telefono` VARCHAR(32), IN `direccion` VARCHAR(256), IN `accion` VARCHAR(40))  NO SQL
case accion
	when 'nuevo' then
		insert into editorial(DescripcionEditorial,Telefono,Direccion)
        values(descripcion_editorial,telefono,direccion);
    when 'editar' then
		update editorial set
        DescripcionEditorial=descripcion_editorial,
        Telefono=telefono,
        Direccion=direccion
        where EditorialID=id;
	when 'eliminar' then
		delete from editorial
        where EditorialID=id;
	when 'consultar' then
		select * from editorial;
	end case$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GestionarMaterial` (IN `id` INT, IN `descripcion_material` VARCHAR(256), IN `accion` VARCHAR(40))  NO SQL
case accion
	when 'nuevo' then
		insert into tipomaterial(DescripcionMaterial)
        values(descripcion_material);
    when 'editar' then
		update tipomaterial set
        DescripcionMaterial=descripcion_material
        where TipoMaterialID=id;
	when 'eliminar' then
		delete from tipomaterial
        where TipoMaterialID=id;
	when 'consultar' then
		select * from usuarios
        where TipoMaterialID=id;
	end case$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `AutorID` int(11) NOT NULL,
  `Apellido` varchar(128) NOT NULL,
  `Nombre` varchar(256) NOT NULL,
  `Telefono` varchar(32) DEFAULT NULL,
  `NacionalidadID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`AutorID`, `Apellido`, `Nombre`, `Telefono`, `NacionalidadID`) VALUES
(1, 'Valencia', 'Omar', '666', 1),
(2, 'Baily', 'Jaime', '666', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `CarreraID` int(11) NOT NULL,
  `DescripcionCarrera` varchar(64) NOT NULL,
  `FechaCreacion` date NOT NULL,
  `FechaModificacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`CarreraID`, `DescripcionCarrera`, `FechaCreacion`, `FechaModificacion`) VALUES
(1, 'SISTEMAS', '2018-11-11', '2018-11-11'),
(2, 'ARQUITECTURA', '2018-12-07', '2018-12-07'),
(3, 'INDUSTRIAL', '2018-12-07', '2018-12-07'),
(4, 'MECANICA', '2018-12-11', '2018-12-11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorialmaterial`
--

CREATE TABLE `categorialmaterial` (
  `CategoriaID` int(11) NOT NULL,
  `DescripcionCategoriaMaterial` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorialmaterial`
--

INSERT INTO `categorialmaterial` (`CategoriaID`, `DescripcionCategoriaMaterial`) VALUES
(2, 'Algoritmos'),
(3, 'Base de Datos'),
(5, 'Comunicacion'),
(6, 'Logica'),
(1, 'Matematica'),
(4, 'Moviles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleprestamo`
--

CREATE TABLE `detalleprestamo` (
  `DetallePrestamoID` int(11) NOT NULL,
  `DescripcionDetallePrestamo` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalleprestamo`
--

INSERT INTO `detalleprestamo` (`DetallePrestamoID`, `DescripcionDetallePrestamo`) VALUES
(1, 'BIBLIOTECA'),
(2, 'DOMICILIO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE `editorial` (
  `EditorialID` int(11) NOT NULL,
  `DescripcionEditorial` varchar(256) NOT NULL,
  `Telefono` varchar(32) DEFAULT NULL,
  `Direccion` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `editorial`
--

INSERT INTO `editorial` (`EditorialID`, `DescripcionEditorial`, `Telefono`, `Direccion`) VALUES
(1, 'Bruno', '98989898', 'Arequipa'),
(2, 'Caja Negra', '979797', 'Arequipa'),
(3, 'Macro', '969696', 'Arequipa'),
(4, 'Palestra Editores', '95959595', 'Lima'),
(5, 'Universidad Lima', '919191', 'Lima'),
(6, 'Ediciones Peisa', '939393', 'Lima');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `FacultadID` int(11) NOT NULL,
  `DescripcionFacultad` varchar(64) NOT NULL,
  `FechaCreacion` date NOT NULL,
  `FechaModificacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`FacultadID`, `DescripcionFacultad`, `FechaCreacion`, `FechaModificacion`) VALUES
(0, 'INGENIERIAS', '2018-11-11', '2018-11-11'),
(1, 'MEDICINA', '2018-12-05', '2018-12-05'),
(2, 'ADMINISTRACION', '2018-12-05', '2018-12-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

CREATE TABLE `material` (
  `MaterialID` int(11) NOT NULL,
  `Descripcion` varchar(256) NOT NULL,
  `EditorialID` int(11) NOT NULL,
  `Edicion` varchar(128) DEFAULT NULL,
  `CodigoISBN` varchar(128) DEFAULT NULL,
  `Volumen` int(11) NOT NULL,
  `CantPaginas` int(11) NOT NULL,
  `StockMin` int(11) NOT NULL,
  `StockMax` int(11) NOT NULL,
  `StockActual` int(11) NOT NULL,
  `DetallePrestamoID` int(11) NOT NULL,
  `FechaPublicacion` date NOT NULL,
  `FechaCreacion` date NOT NULL,
  `FechaModificacion` date NOT NULL,
  `UbicacionID` int(11) NOT NULL,
  `TipoMaterialID` int(11) NOT NULL,
  `CategoriaID` int(11) NOT NULL,
  `AutorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `material`
--

INSERT INTO `material` (`MaterialID`, `Descripcion`, `EditorialID`, `Edicion`, `CodigoISBN`, `Volumen`, `CantPaginas`, `StockMin`, `StockMax`, `StockActual`, `DetallePrestamoID`, `FechaPublicacion`, `FechaCreacion`, `FechaModificacion`, `UbicacionID`, `TipoMaterialID`, `CategoriaID`, `AutorID`) VALUES
(14, 'Programando con Omar', 2, '1', '98989898', 1, 69, 4, 10, 10, 1, '2018-12-06', '2018-12-11', '2018-12-11', 1, 212, 6, 2),
(15, 'Programacion web', 1, '1', 'null', 1, 2, 2, 0, 0, 1, '2018-12-01', '2018-12-12', '2018-12-12', 10, 192, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nacionalidad`
--

CREATE TABLE `nacionalidad` (
  `NacionalidadID` int(11) NOT NULL,
  `DescripcionNacionalidad` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nacionalidad`
--

INSERT INTO `nacionalidad` (`NacionalidadID`, `DescripcionNacionalidad`) VALUES
(1, 'Peru'),
(2, 'Brasil'),
(3, 'Ecuador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `SolicitudID` int(11) NOT NULL,
  `DescripcionMaterial` varchar(128) NOT NULL,
  `EstadoPrestamo` varchar(16) NOT NULL,
  `FechaPrestamo` date NOT NULL,
  `FechaDevolucion` date NOT NULL,
  `DetallePrestamoID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL,
  `MaterialID` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`SolicitudID`, `DescripcionMaterial`, `EstadoPrestamo`, `FechaPrestamo`, `FechaDevolucion`, `DetallePrestamoID`, `UsuarioID`, `MaterialID`, `Cantidad`) VALUES
(1, 'programacion', 'nuevo', '2018-11-11', '2018-11-11', 1, 1, 14, 2),
(3, 'i have problems', 'Devuelto', '2018-12-11', '2018-12-11', 1, 1, 14, 2),
(4, 'sin problemas', 'Devuelto', '2018-12-11', '2018-12-11', 1, 1, 14, 2),
(5, 'sin problemas', 'Devuelto', '2018-12-12', '2018-12-12', 1, 1, 14, 2),
(6, 'programacion', 'No Entregado', '2018-12-12', '2018-12-20', 2, 1, 15, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipomaterial`
--

CREATE TABLE `tipomaterial` (
  `TipoMaterialID` int(11) NOT NULL,
  `DescripcionMaterial` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipomaterial`
--

INSERT INTO `tipomaterial` (`TipoMaterialID`, `DescripcionMaterial`) VALUES
(202, 'Articulo Cientifico'),
(211, 'Critica'),
(213, 'Ensayo'),
(208, 'Informe'),
(212, 'Libro'),
(192, 'Monografia'),
(217, 'Periodico'),
(204, 'Proyecto de Investigacion'),
(214, 'Revista'),
(199, 'Tesis');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `TipoUsuarioID` int(11) NOT NULL,
  `DescripcionTipoUsuario` varchar(64) NOT NULL,
  `FechaCreacion` date NOT NULL,
  `FechaModificacion` date NOT NULL,
  `CarreraID` int(11) DEFAULT NULL,
  `FacultadID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`TipoUsuarioID`, `DescripcionTipoUsuario`, `FechaCreacion`, `FechaModificacion`, `CarreraID`, `FacultadID`) VALUES
(1, 'ESTUDIANTE', '2018-12-11', '2018-12-11', 1, 1),
(2, 'DOCENTE', '2018-12-11', '2018-12-11', 1, 1),
(3, 'PERSONAL', '2018-12-11', '2018-12-11', 1, 1),
(4, 'EXTRAUTP', '2018-12-11', '2018-12-11', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `UbicacionID` int(11) NOT NULL,
  `nivel` varchar(16) NOT NULL,
  `estante` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`UbicacionID`, `nivel`, `estante`) VALUES
(1, 'A', '1'),
(2, 'A', '2'),
(3, 'A', '3'),
(4, 'A', '4'),
(5, 'A', '5'),
(6, 'B', '1'),
(7, 'B', '2'),
(8, 'B', '3'),
(9, 'B', '4'),
(10, 'B', '5'),
(11, 'C', '1'),
(12, 'C', '2'),
(13, 'C', '3'),
(14, 'C', '4'),
(15, 'C', '5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `UsuarioID` int(11) NOT NULL,
  `Nombre` varchar(128) NOT NULL,
  `Apellido` varchar(128) NOT NULL,
  `Telefono` varchar(16) NOT NULL,
  `DocumentoIdentidad` varchar(16) NOT NULL,
  `NacionalidadID` int(11) NOT NULL,
  `Direccion` varchar(128) NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `TipoUsuarioID` int(11) NOT NULL,
  `FechaCreacion` date NOT NULL,
  `FechaModificacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`UsuarioID`, `Nombre`, `Apellido`, `Telefono`, `DocumentoIdentidad`, `NacionalidadID`, `Direccion`, `FechaNacimiento`, `TipoUsuarioID`, `FechaCreacion`, `FechaModificacion`) VALUES
(1, 'alsaro', 'santa', '666', '767676', 1, 'characato', '1992-10-12', 1, '2018-12-11', '2018-12-11'),
(2, 'Elmer', 'Mamani', '989898', '464646', 1, 'Vallecito', '2017-11-23', 1, '2018-12-11', '2018-12-11'),
(3, 'Omar', 'Valencia', '9999999', '46464646', 1, 'characato', '2018-12-12', 2, '2018-12-12', '2018-12-12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`AutorID`),
  ADD UNIQUE KEY `Nombre` (`Nombre`),
  ADD KEY `Autor_fk0` (`NacionalidadID`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`CarreraID`);

--
-- Indices de la tabla `categorialmaterial`
--
ALTER TABLE `categorialmaterial`
  ADD PRIMARY KEY (`CategoriaID`),
  ADD UNIQUE KEY `DescripcionCategoriaMaterial` (`DescripcionCategoriaMaterial`);

--
-- Indices de la tabla `detalleprestamo`
--
ALTER TABLE `detalleprestamo`
  ADD PRIMARY KEY (`DetallePrestamoID`);

--
-- Indices de la tabla `editorial`
--
ALTER TABLE `editorial`
  ADD PRIMARY KEY (`EditorialID`),
  ADD UNIQUE KEY `DescripcionEditorial` (`DescripcionEditorial`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD PRIMARY KEY (`FacultadID`);

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`MaterialID`),
  ADD KEY `Material_fk0` (`EditorialID`),
  ADD KEY `Material_fk1` (`DetallePrestamoID`),
  ADD KEY `Material_fk2` (`UbicacionID`),
  ADD KEY `Material_fk3` (`TipoMaterialID`),
  ADD KEY `Material_fk4` (`CategoriaID`),
  ADD KEY `Material_fk5` (`AutorID`);

--
-- Indices de la tabla `nacionalidad`
--
ALTER TABLE `nacionalidad`
  ADD PRIMARY KEY (`NacionalidadID`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`SolicitudID`),
  ADD KEY `Solicitud_fk2` (`MaterialID`);

--
-- Indices de la tabla `tipomaterial`
--
ALTER TABLE `tipomaterial`
  ADD PRIMARY KEY (`TipoMaterialID`),
  ADD UNIQUE KEY `DescripcionMaterial` (`DescripcionMaterial`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`TipoUsuarioID`),
  ADD KEY `TipoUsuario_fk0` (`CarreraID`),
  ADD KEY `TipoUsuario_fk1` (`FacultadID`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`UbicacionID`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`UsuarioID`),
  ADD KEY `Usuario_fk0` (`NacionalidadID`),
  ADD KEY `Usuario_fk1` (`TipoUsuarioID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `AutorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `CarreraID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categorialmaterial`
--
ALTER TABLE `categorialmaterial`
  MODIFY `CategoriaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `detalleprestamo`
--
ALTER TABLE `detalleprestamo`
  MODIFY `DetallePrestamoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `editorial`
--
ALTER TABLE `editorial`
  MODIFY `EditorialID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `facultad`
--
ALTER TABLE `facultad`
  MODIFY `FacultadID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `material`
--
ALTER TABLE `material`
  MODIFY `MaterialID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `nacionalidad`
--
ALTER TABLE `nacionalidad`
  MODIFY `NacionalidadID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `SolicitudID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipomaterial`
--
ALTER TABLE `tipomaterial`
  MODIFY `TipoMaterialID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `TipoUsuarioID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `UbicacionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `UsuarioID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `autor`
--
ALTER TABLE `autor`
  ADD CONSTRAINT `Autor_fk0` FOREIGN KEY (`NacionalidadID`) REFERENCES `nacionalidad` (`NacionalidadID`);

--
-- Filtros para la tabla `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `Material_fk0` FOREIGN KEY (`EditorialID`) REFERENCES `editorial` (`EditorialID`),
  ADD CONSTRAINT `Material_fk1` FOREIGN KEY (`DetallePrestamoID`) REFERENCES `detalleprestamo` (`DetallePrestamoID`),
  ADD CONSTRAINT `Material_fk2` FOREIGN KEY (`UbicacionID`) REFERENCES `ubicacion` (`UbicacionID`),
  ADD CONSTRAINT `Material_fk3` FOREIGN KEY (`TipoMaterialID`) REFERENCES `tipomaterial` (`TipoMaterialID`),
  ADD CONSTRAINT `Material_fk4` FOREIGN KEY (`CategoriaID`) REFERENCES `categorialmaterial` (`CategoriaID`),
  ADD CONSTRAINT `Material_fk5` FOREIGN KEY (`AutorID`) REFERENCES `autor` (`AutorID`);

--
-- Filtros para la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD CONSTRAINT `Solicitud_fk2` FOREIGN KEY (`MaterialID`) REFERENCES `material` (`MaterialID`);

--
-- Filtros para la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD CONSTRAINT `TipoUsuario_fk0` FOREIGN KEY (`CarreraID`) REFERENCES `carrera` (`CarreraID`),
  ADD CONSTRAINT `TipoUsuario_fk1` FOREIGN KEY (`FacultadID`) REFERENCES `facultad` (`FacultadID`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `Usuario_fk0` FOREIGN KEY (`NacionalidadID`) REFERENCES `nacionalidad` (`NacionalidadID`),
  ADD CONSTRAINT `Usuario_fk1` FOREIGN KEY (`TipoUsuarioID`) REFERENCES `tipousuario` (`TipoUsuarioID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
