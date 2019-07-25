-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-06-2019 a las 07:39:12
-- Versión del servidor: 10.1.40-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `other`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `AutorID` int(11) NOT NULL,
  `Apellido` varchar(64) DEFAULT NULL,
  `Nombre` varchar(64) DEFAULT NULL,
  `Telefono` varchar(64) DEFAULT NULL,
  `NacionalidadID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`AutorID`, `Apellido`, `Nombre`, `Telefono`, `NacionalidadID`) VALUES
(1, '	De Cervantes	', '	Miguel	', '	978564321	', 348),
(2, '	Faulkner	', '	William 	', '	964688411	', 143),
(3, '	SaintExupery	', '	Antoine 	', '	984245222	', 103),
(4, '	John	', '	Hersey	', '	934222422	', 121),
(5, '	Kissinger	', '	Henry 	', '	923231312	', 173),
(6, '	 Kelley	', '	Kitty	', '	942423265	', 128),
(7, '	Kennedy	', '	Paul	', '	987473472	', 111),
(8, '	Pérez Galdós	', '	JUAN	', '	972782378	', 146),
(9, '	Clarke	', '	Arthur C.	', '	937484872	', 124),
(10, '	Bujold	', '	L. McMaster	', '	982783272	', 173),
(11, '	Preston	', '	Douglas	', '	982728723	', 117),
(12, '	Guedj	', '	Denis	', '	927847842	', 302),
(13, '	Abbott Abbott	', '	Edwin	', '	949832983	', 107);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `CarreraID` int(11) NOT NULL,
  `DescripcionCarrera` varchar(64) DEFAULT NULL,
  `FechaCreacion` date DEFAULT NULL,
  `FechaModificacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`CarreraID`, `DescripcionCarrera`, `FechaCreacion`, `FechaModificacion`) VALUES
(1, '	Ingeniería Aeronáutica	', '0000-00-00', NULL),
(2, '	Ingeniería Automotriz	', '0000-00-00', NULL),
(3, '	Ingeniería Biomédica	', '0000-00-00', NULL),
(4, '	Ingeniería Civil	', '0000-00-00', NULL),
(5, '	Ingeniería de Diseño Gráfico	', '0000-00-00', NULL),
(6, '	Ingeniería de Redes y Comunicaciones	', '0000-00-00', NULL),
(7, '	Ingeniería en Seguridad Laboral y Ambiental	', '0000-00-00', NULL),
(8, '	Ingeniería de Seguridad y Auditoría Informática	', '0000-00-00', NULL),
(9, '	Ingeniería de Sistemas e Informática	', '0000-00-00', NULL),
(10, '	Ingeniería de Software	', '0000-00-00', NULL),
(11, '	Ingeniería de Telecomunicaciones	', '0000-00-00', NULL),
(12, '	Ingeniería Electrónica	', '0000-00-00', NULL),
(13, '	Ingeniería Empresarial	', '0000-00-00', NULL),
(14, '	Ingeniería Electromecánica	', '0000-00-00', NULL),
(15, '	Ingeniería Eléctrica y de Potencia	', '0000-00-00', NULL),
(16, '	Ingeniería Industrial	', '0000-00-00', NULL),
(17, '	Ingeniería Marítima	', '0000-00-00', NULL),
(18, '	Ingeniería Mecánica	', '0000-00-00', NULL),
(19, '	Ingeniería Mecatrónica	', '0000-00-00', NULL),
(20, '	Ingeniería Textil y de Confecciones	', '0000-00-00', NULL),
(21, '	Administración de Empresas	', '0000-00-00', NULL),
(22, '	Administración de Negocios Internacionales	', '0000-00-00', NULL),
(23, '	Administración y Marketing	', '0000-00-00', NULL),
(24, '	Administración Hotelera y de Turismo	', '0000-00-00', NULL),
(25, '	Administración de Banca y Finanzas	', '0000-00-00', NULL),
(26, '	Contabilidad	', '0000-00-00', NULL),
(27, '	Derecho	', '0000-00-00', NULL),
(28, '	Ciencias de la Comunicación	', '0000-00-00', NULL),
(29, '	Diseño Digital Publicitario	', '0000-00-00', NULL),
(30, '	Comunicación y Publicidad	', '0000-00-00', NULL),
(31, '	Psicología	', '0000-00-00', NULL),
(32, '	Enfermería	', '0000-00-00', NULL),
(33, '	Obstetricia	', '0000-00-00', NULL),
(34, '	Nutrición y Dietética	', '0000-00-00', NULL),
(35, '	Terapia Física	', '0000-00-00', NULL),
(36, '	Arquitectura	', '0000-00-00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriamaterial`
--

CREATE TABLE `categoriamaterial` (
  `CategoriaID` int(11) NOT NULL,
  `DescripcionCategoriaMaterial` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoriamaterial`
--

INSERT INTO `categoriamaterial` (`CategoriaID`, `DescripcionCategoriaMaterial`) VALUES
(1, 'CIENCIAS'),
(2, 'MATEMATICAS'),
(3, 'HISTORIA'),
(4, 'COMUNICACION'),
(5, 'BASE DE DATOS'),
(6, 'PROGRAMACION'),
(7, 'SEGURIDAD INFORMATICA'),
(8, 'HTML'),
(9, 'JAVA'),
(10, 'INTELIGENCIA ARTIFICIAL'),
(11, 'SISTEMAS OPERATIVOS'),
(12, 'ARQUITECTURAS'),
(13, 'SOCIAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE `editorial` (
  `EditorialID` int(11) NOT NULL,
  `DescripcionEditorial` varchar(64) DEFAULT NULL,
  `Telefono` varchar(64) DEFAULT NULL,
  `Direccion` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `editorial`
--

INSERT INTO `editorial` (`EditorialID`, `DescripcionEditorial`, `Telefono`, `Direccion`) VALUES
(1, '	CAJA NEGRA	', '	(511) 715 8897 / 961 100 307	', '	Jr. Chongoyape 264, Maranga - San Miguel	'),
(2, '	DIDÁCTICA	', '	(511) 221 5988 / 441 0473	', '	Jr. Azángaro 776	'),
(3, '	PEISA	', '	(511) 273 1547	', '	Av. Las Camelias 511, Of. 601 - San Isidro	'),
(4, '	ESTRUENDOMUDO	', '	(511) 955 923 719	', '	Psje. Perez Esquivel 385, Urb. Reducto – Surquillo	'),
(5, '	NSTITUTO DE ESTUDIOS PERUANOS   	', '	(511) 332 6194 Anexo 1201	', '	Av. Horacio Urteaga 694 - Jesús María	'),
(6, '	LA CASA DEL LIBRO VIEJO	', '	(511) 421 5922	', '	Calle Percy Gibson 363 - Lince	'),
(7, '	 EDITORIAL MACRO	', '	(511) 748 0566	', '	Av. Paseo de la Republica 5613 - Miraflores	'),
(8, '	 PALESTRA EDITORES	', '	(511) 637 8902 / 637 8903	', '	Plaza de la Bandera 125 – Pueblo Libre	'),
(9, '	PONTIFICIA UNIVERSIDAD CATÓLICA DEL PERÚ	', '	(511) 626 2660 / 980 123 376	', '	Av. Universitaria 1801 San Miguel	'),
(10, '	 UNIVERSIDAD DE LIMA	', '	(511) 437 6767 Anexos 31225, 31224	', '	Av. Javier Prado Este cdra. 4600	'),
(11, '	UNIVERSIDAD ALAS PERUANAS	', '	(511) 472 5595	', '	Av. Paseo de la República 1773 - La Victoria	'),
(12, '	 UNIVERSIDAD CÉSAR VALLEJO	', '	(511) 202 4342 Anexo 2132	', '	Av. Alfredo Mendiola 6232 - Los Olivos	'),
(13, '	UNIVERSIDAD NACIONAL MAYOR DE SAN MARCOS	', '	(511) 6197000 Anexo 7529-7530-7531	', '	Calle Germán Amézaga 375	'),
(14, '	  UNIVERSIDAD RICARDO PALMA	', '	Av. Benavides 5440 - Surco	', '	Av. Benavides 5440 - Surco	'),
(15, '	 YACHAYPUCLLAYPACHA	', '	(511) 225 40542 / 999 173 235	', '	Alameda Las Palmas 155, La Encantada	');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejemplar`
--

CREATE TABLE `ejemplar` (
  `EjemplarID` int(11) NOT NULL,
  `DetalleEjemplar` varchar(264) DEFAULT NULL,
  `EstadoPrestamo` tinyint(1) DEFAULT NULL,
  `MaterialID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ejemplar`
--

INSERT INTO `ejemplar` (`EjemplarID`, `DetalleEjemplar`, `EstadoPrestamo`, `MaterialID`) VALUES
(1, 'NUEVO', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `FacultadID` int(11) NOT NULL,
  `DescripcionFacultad` varchar(64) DEFAULT NULL,
  `FechaCreacion` date DEFAULT NULL,
  `FechaModificacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`FacultadID`, `DescripcionFacultad`, `FechaCreacion`, `FechaModificacion`) VALUES
(1, '	Facultad de Ciencias e Ingeniería	', '0000-00-00', NULL),
(2, '	Facultad de Gestión y Negocios	', '0000-00-00', NULL),
(3, '	Facultad de Humanidades	', '0000-00-00', NULL),
(4, '	Facultad de Ciencias de la Salud	', '0000-00-00', NULL),
(5, '	Facultad de Arquitectura	', '0000-00-00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

CREATE TABLE `material` (
  `MaterialID` int(11) NOT NULL,
  `DescripcionMaterial` varchar(64) DEFAULT NULL,
  `EditorialID` int(11) DEFAULT NULL,
  `Edicion` varchar(64) DEFAULT NULL,
  `CodigoISBN` varchar(128) DEFAULT NULL,
  `Volumen` int(11) DEFAULT NULL,
  `CantPaginas` int(11) DEFAULT NULL,
  `StockMin` int(11) DEFAULT NULL,
  `StockMax` int(11) DEFAULT NULL,
  `StockActual` int(11) DEFAULT NULL,
  `FechaPublicacion` date DEFAULT NULL,
  `FechaCreacion` date DEFAULT NULL,
  `FechaModificacion` date DEFAULT NULL,
  `UbicacionID` int(11) DEFAULT NULL,
  `TipoMaterialID` int(11) DEFAULT NULL,
  `CategoriaID` int(11) DEFAULT NULL,
  `AutorID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `material`
--

INSERT INTO `material` (`MaterialID`, `DescripcionMaterial`, `EditorialID`, `Edicion`, `CodigoISBN`, `Volumen`, `CantPaginas`, `StockMin`, `StockMax`, `StockActual`, `FechaPublicacion`, `FechaCreacion`, `FechaModificacion`, `UbicacionID`, `TipoMaterialID`, `CategoriaID`, `AutorID`) VALUES
(1, 'BASE DE DATOS', 9, '01', '23341', 2, 456, 2, 5, 4, '0000-00-00', '0000-00-00', NULL, 4, 1, 5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nacionalidad`
--

CREATE TABLE `nacionalidad` (
  `NacionalidadID` int(11) NOT NULL,
  `DescripcionNacionalidad` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nacionalidad`
--

INSERT INTO `nacionalidad` (`NacionalidadID`, `DescripcionNacionalidad`) VALUES
(101, '	ALBANIA	'),
(102, '	AUSTRIA	'),
(103, '	BELGICA	'),
(104, '	BULGARIA	'),
(106, '	CHIPRE	'),
(107, '	DINAMARCA	'),
(108, '	ESPAÑA	'),
(109, '	FINLANDIA	'),
(110, '	FRANCIA	'),
(111, '	GRECIA	'),
(112, '	HUNGRIA	'),
(113, '	IRLANDA	'),
(114, '	ISLANDIA	'),
(115, '	ITALIA	'),
(116, '	LIECHTENSTEIN	'),
(117, '	LUXEMBURGO	'),
(118, '	MALTA	'),
(119, '	MONACO	'),
(120, '	NORUEGA	'),
(121, '	PAISES BAJOS	'),
(122, '	POLONIA	'),
(123, '	PORTUGAL	'),
(124, '	ANDORRA	'),
(125, '	REINO UNIDO	'),
(126, '	ALEMANIA	'),
(128, '	RUMANIA	'),
(129, '	SAN MARINO	'),
(130, '	SANTA SEDE	'),
(131, '	SUECIA	'),
(132, '	SUIZA	'),
(135, '	UCRANIA	'),
(136, '	LETONIA	'),
(137, '	MOLDAVIA	'),
(138, '	BELARUS	'),
(139, '	GEORGIA	'),
(141, '	ESTONIA	'),
(142, '	LITUANIA	'),
(143, '	REPUBLICA CHECA	'),
(144, '	REPUBLICA ESLOVACA	'),
(145, '	BOSNIA Y HERZEGOVINA	'),
(146, '	CROACIA	'),
(147, '	ESLOVENIA	'),
(148, '	ARMENIA	'),
(154, '	RUSIA	'),
(156, '	MACEDONIA 	'),
(157, '	SERBIA	'),
(173, '	ISLA DE MAN	'),
(174, '	GIBRALTAR	'),
(175, '	ISLAS DEL CANAL	'),
(176, '	JERSEY	'),
(177, '	ISLAS ALAND	'),
(198, '	OTROS PAISES O TERRITORIOS DE LA UNION EUROPEA	'),
(199, '	OTROS PAISES O TERRITORIOS DEL RESTO DE EUROPA	'),
(201, '	BURKINA FASO	'),
(202, '	ANGOLA	'),
(203, '	ARGELIA	'),
(204, '	BENIN	'),
(205, '	BOTSWANA	'),
(206, '	BURUNDI	'),
(207, '	CABO VERDE	'),
(208, '	CAMERUN	'),
(209, '	COMORES	'),
(210, '	CONGO	'),
(211, '	COSTA DE MARFIL	'),
(212, '	DJIBOUTI	'),
(213, '	EGIPTO	'),
(214, '	ETIOPIA	'),
(215, '	GABON	'),
(216, '	GAMBIA	'),
(217, '	GHANA	'),
(218, '	GUINEA	'),
(219, '	GUINEA-BISSAU	'),
(220, '	GUINEA ECUATORIAL	'),
(221, '	KENIA	'),
(222, '	LESOTHO	'),
(223, '	LIBERIA	'),
(224, '	LIBIA	'),
(225, '	MADAGASCAR	'),
(226, '	MALAWI	'),
(227, '	MALI	'),
(228, '	MARRUECOS	'),
(229, '	MAURICIO	'),
(230, '	MAURITANIA	'),
(231, '	MOZAMBIQUE	'),
(232, '	NAMIBIA	'),
(233, '	NIGER	'),
(234, '	NIGERIA	'),
(235, '	REPUBLICA CENTROAFRICANA	'),
(236, '	SUDAFRICA	'),
(237, '	RUANDA	'),
(238, '	SANTO TOME Y PRINCIPE	'),
(239, '	SENEGAL	'),
(240, '	SEYCHELLES	'),
(241, '	SIERRA LEONA	'),
(242, '	SOMALIA	'),
(243, '	SUDAN	'),
(244, '	SWAZILANDIA	'),
(245, '	TANZANIA	'),
(246, '	CHAD	'),
(247, '	TOGO	'),
(248, '	TUNEZ	'),
(249, '	UGANDA	'),
(250, '	REP.DEMOCRATICA DEL CONGO	'),
(251, '	ZAMBIA	'),
(252, '	ZIMBABWE	'),
(253, '	ERITREA	'),
(260, '	SANTA HELENA	'),
(261, '	REUNION	'),
(262, '	MAYOTTE	'),
(263, '	SAHARA OCCIDENTAL	'),
(299, '	OTROS PAISES O TERRITORIOS DE AFRICA	'),
(301, '	CANADA	'),
(302, '	ESTADOS UNIDOS DE AMERICA	'),
(303, '	MEXICO	'),
(310, '	ANTIGUA Y BARBUDA	'),
(311, '	BAHAMAS	'),
(312, '	BARBADOS	'),
(313, '	BELICE	'),
(314, '	COSTA RICA	'),
(315, '	CUBA	'),
(316, '	DOMINICA	'),
(317, '	EL SALVADOR	'),
(318, '	GRANADA	'),
(319, '	GUATEMALA	'),
(320, '	HAITI	'),
(321, '	HONDURAS	'),
(322, '	JAMAICA	'),
(323, '	NICARAGUA	'),
(324, '	PANAMA	'),
(325, '	SAN VICENTE Y LAS GRANADINAS	'),
(326, '	REPUBLICA DOMINICANA	'),
(327, '	TRINIDAD Y TOBAGO	'),
(328, '	SANTA LUCIA	'),
(329, '	SAN CRISTOBAL Y NIEVES	'),
(340, '	ARGENTINA	'),
(341, '	BOLIVIA	'),
(342, '	BRASIL	'),
(343, '	COLOMBIA	'),
(344, '	CHILE	'),
(345, '	ECUADOR	'),
(346, '	GUYANA	'),
(347, '	PARAGUAY	'),
(348, '	PERU	'),
(349, '	SURINAM	'),
(350, '	URUGUAY	'),
(351, '	VENEZUELA	'),
(370, '	SAN PEDRO Y MIQUELON 	'),
(371, '	GROENLANDIA	'),
(380, '	ISLAS CAIMÁN	'),
(381, '	ISLAS TURCAS Y CAICOS	'),
(382, '	ISLAS VÍRGENES DE LOS ESTADOS UNIDOS	'),
(383, '	GUADALUPE	'),
(384, '	ANTILLAS HOLANDESAS	'),
(385, '	SAN MARTIN (PARTE FRANCESA)	'),
(386, '	ARUBA	'),
(387, '	MONTSERRAT	'),
(388, '	ANGUILLA	'),
(389, '	SAN BARTOLOME	'),
(390, '	MARTINICA	'),
(391, '	PUERTO RICO	'),
(392, '	BERMUDAS	'),
(393, '	ISLAS VIRGENES BRITANICAS	'),
(394, '	GUAYANA FRANCESA	'),
(395, '	ISLAS MALVINAS	'),
(396, '	OTROS PAISES  O TERRITORIOS DE AMERICA DEL NORTE	'),
(398, '	OTROS PAISES O TERRITORIOS DEL CARIBE Y AMERICA CENTRAL	'),
(399, '	OTROS PAISES O TERRITORIOS  DE SUDAMERICA	'),
(401, '	AFGANISTAN	'),
(402, '	ARABIA SAUDI	'),
(403, '	BAHREIN	'),
(404, '	BANGLADESH	'),
(405, '	MYANMAR	'),
(407, '	CHINA	'),
(408, '	EMIRATOS ARABES UNIDOS	'),
(409, '	FILIPINAS	'),
(410, '	INDIA	'),
(411, '	INDONESIA	'),
(412, '	IRAQ	'),
(413, '	IRAN	'),
(414, '	ISRAEL	'),
(415, '	JAPON	'),
(416, '	JORDANIA	'),
(417, '	CAMBOYA	'),
(418, '	KUWAIT	'),
(419, '	LAOS	'),
(420, '	LIBANO	'),
(421, '	MALASIA	'),
(422, '	MALDIVAS	'),
(423, '	MONGOLIA	'),
(424, '	NEPAL	'),
(425, '	OMAN	'),
(426, '	PAKISTAN	'),
(427, '	QATAR	'),
(430, '	COREA	'),
(431, '	COREA DEL NORTE 	'),
(432, '	SINGAPUR	'),
(433, '	SIRIA	'),
(434, '	SRI LANKA	'),
(435, '	TAILANDIA	'),
(436, '	TURQUIA	'),
(437, '	VIETNAM	'),
(439, '	BRUNEI	'),
(440, '	ISLAS MARSHALL	'),
(441, '	YEMEN	'),
(442, '	AZERBAIYAN	'),
(443, '	KAZAJSTAN	'),
(444, '	KIRGUISTAN	'),
(445, '	TADYIKISTAN	'),
(446, '	TURKMENISTAN	'),
(447, '	UZBEKISTAN	'),
(448, '	ISLAS MARIANAS DEL NORTE	'),
(449, '	PALESTINA	'),
(450, '	HONG KONG	'),
(453, '	BHUTÁN	'),
(454, '	GUAM	'),
(455, '	MACAO	'),
(499, '	OTROS PAISES O TERRITORIOS DE ASIA	'),
(501, '	AUSTRALIA	'),
(502, '	FIJI	'),
(504, '	NUEVA ZELANDA	'),
(505, '	PAPUA NUEVA GUINEA	'),
(506, '	ISLAS SALOMON	'),
(507, '	SAMOA	'),
(508, '	TONGA	'),
(509, '	VANUATU	'),
(511, '	MICRONESIA	'),
(512, '	TUVALU	'),
(513, '	ISLAS COOK	'),
(515, '	NAURU	'),
(516, '	PALAOS	'),
(517, '	TIMOR ORIENTAL	'),
(520, '	POLINESIA FRANCESA	'),
(521, '	ISLA NORFOLK	'),
(522, '	KIRIBATI	'),
(523, '	NIUE	'),
(524, '	ISLAS PITCAIRN	'),
(525, '	TOKELAU	'),
(526, '	NUEVA CALEDONIA	'),
(527, '	WALLIS Y FORTUNA	'),
(528, '	SAMOA AMERICANA	');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudcabesera`
--

CREATE TABLE `solicitudcabesera` (
  `SolicitudID` int(11) NOT NULL,
  `UsuarioID` int(11) DEFAULT NULL,
  `FechaPrestamo` date DEFAULT NULL,
  `FechaEntragas` date DEFAULT NULL,
  `FechaDevolucion` date DEFAULT NULL,
  `Estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `solicitudcabesera`
--

INSERT INTO `solicitudcabesera` (`SolicitudID`, `UsuarioID`, `FechaPrestamo`, `FechaEntragas`, `FechaDevolucion`, `Estado`) VALUES
(1, 1, '0000-00-00', '0000-00-00', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicituddetalle`
--

CREATE TABLE `solicituddetalle` (
  `EjemplarID` int(11) DEFAULT NULL,
  `SolicitudID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipomaterial`
--

CREATE TABLE `tipomaterial` (
  `TipoMaterialID` int(11) NOT NULL,
  `DescripcionMaterial` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipomaterial`
--

INSERT INTO `tipomaterial` (`TipoMaterialID`, `DescripcionMaterial`) VALUES
(1, 'LIBRO'),
(2, 'REVISTAS Y PERIODICOS'),
(3, 'TESIS'),
(4, 'MONOGRAFIA'),
(5, 'ARTICULOS'),
(6, 'DICCIONARIO'),
(7, 'COMICS'),
(8, 'MANUSCRITOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `UbicacionID` int(11) NOT NULL,
  `nivel` varchar(64) DEFAULT NULL,
  `estante` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`UbicacionID`, `nivel`, `estante`) VALUES
(1, '1', '1'),
(2, '1', '2'),
(3, '1', '3'),
(4, '1', '4'),
(5, '1', '5'),
(6, '2', '1'),
(7, '2', '2'),
(8, '2', '3'),
(9, '2', '4'),
(10, '2', '5'),
(11, '3', '1'),
(12, '3', '2'),
(13, '3', '3'),
(14, '3', '4'),
(15, '3', '5'),
(16, '4', '1'),
(17, '4', '2'),
(18, '4', '3'),
(19, '4', '4'),
(20, '4', '5'),
(21, '5', '1'),
(22, '5', '2'),
(23, '5', '3'),
(24, '5', '4'),
(25, '5', '5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `UsuarioID` int(11) NOT NULL,
  `Login` varchar(64) DEFAULT NULL,
  `Password` varchar(64) DEFAULT NULL,
  `Nombre` varchar(64) DEFAULT NULL,
  `Apellido` varchar(64) DEFAULT NULL,
  `Telefono` varchar(64) DEFAULT NULL,
  `DocumentoIdentidad` varchar(16) DEFAULT NULL,
  `NacionalidadID` int(11) DEFAULT NULL,
  `Direccion` varchar(64) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `FechaCreacion` date DEFAULT NULL,
  `FacultadID` int(11) DEFAULT NULL,
  `CarreraID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`UsuarioID`, `Login`, `Password`, `Nombre`, `Apellido`, `Telefono`, `DocumentoIdentidad`, `NacionalidadID`, `Direccion`, `FechaNacimiento`, `FechaCreacion`, `FacultadID`, `CarreraID`) VALUES
(1, 'DACALVIZ', '12345', 'DAVID', 'ALVIZ CUADROS', '987654321', '76543218', 348, 'SANTA CRUZ S-10 SOCABAYA', '0000-00-00', '0000-00-00', 1, 9),
(2, 'ALSARO', '12345', 'ALONSO', 'SANTA MARIA', '987654321', '73232218', 348, 'CHARACATO', '0000-00-00', '0000-00-00', 1, 9),
(3, 'ELMER_ADOLFO', '12345', 'ELMER', 'MAMANI', '997454321', '73243218', 348, 'VALLECITO', '0000-00-00', '0000-00-00', 1, 9);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`AutorID`),
  ADD KEY `NacionalidadID` (`NacionalidadID`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`CarreraID`);

--
-- Indices de la tabla `categoriamaterial`
--
ALTER TABLE `categoriamaterial`
  ADD PRIMARY KEY (`CategoriaID`);

--
-- Indices de la tabla `editorial`
--
ALTER TABLE `editorial`
  ADD PRIMARY KEY (`EditorialID`);

--
-- Indices de la tabla `ejemplar`
--
ALTER TABLE `ejemplar`
  ADD PRIMARY KEY (`EjemplarID`),
  ADD KEY `MaterialID` (`MaterialID`);

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
  ADD KEY `EditorialID` (`EditorialID`),
  ADD KEY `UbicacionID` (`UbicacionID`),
  ADD KEY `TipoMaterialID` (`TipoMaterialID`),
  ADD KEY `CategoriaID` (`CategoriaID`),
  ADD KEY `AutorID` (`AutorID`);

--
-- Indices de la tabla `nacionalidad`
--
ALTER TABLE `nacionalidad`
  ADD PRIMARY KEY (`NacionalidadID`);

--
-- Indices de la tabla `solicitudcabesera`
--
ALTER TABLE `solicitudcabesera`
  ADD PRIMARY KEY (`SolicitudID`),
  ADD KEY `UsuarioID` (`UsuarioID`);

--
-- Indices de la tabla `solicituddetalle`
--
ALTER TABLE `solicituddetalle`
  ADD KEY `EjemplarID` (`EjemplarID`),
  ADD KEY `SolicitudID` (`SolicitudID`);

--
-- Indices de la tabla `tipomaterial`
--
ALTER TABLE `tipomaterial`
  ADD PRIMARY KEY (`TipoMaterialID`);

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
  ADD KEY `NacionalidadID` (`NacionalidadID`),
  ADD KEY `FacultadID` (`FacultadID`),
  ADD KEY `CarreraID` (`CarreraID`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `autor`
--
ALTER TABLE `autor`
  ADD CONSTRAINT `autor_ibfk_1` FOREIGN KEY (`NacionalidadID`) REFERENCES `nacionalidad` (`NacionalidadID`);

--
-- Filtros para la tabla `ejemplar`
--
ALTER TABLE `ejemplar`
  ADD CONSTRAINT `ejemplar_ibfk_1` FOREIGN KEY (`MaterialID`) REFERENCES `material` (`MaterialID`);

--
-- Filtros para la tabla `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `material_ibfk_1` FOREIGN KEY (`EditorialID`) REFERENCES `editorial` (`EditorialID`),
  ADD CONSTRAINT `material_ibfk_2` FOREIGN KEY (`UbicacionID`) REFERENCES `ubicacion` (`UbicacionID`),
  ADD CONSTRAINT `material_ibfk_3` FOREIGN KEY (`TipoMaterialID`) REFERENCES `tipomaterial` (`TipoMaterialID`),
  ADD CONSTRAINT `material_ibfk_4` FOREIGN KEY (`CategoriaID`) REFERENCES `categoriamaterial` (`CategoriaID`),
  ADD CONSTRAINT `material_ibfk_5` FOREIGN KEY (`AutorID`) REFERENCES `autor` (`AutorID`);

--
-- Filtros para la tabla `solicitudcabesera`
--
ALTER TABLE `solicitudcabesera`
  ADD CONSTRAINT `solicitudcabesera_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `usuario` (`UsuarioID`);

--
-- Filtros para la tabla `solicituddetalle`
--
ALTER TABLE `solicituddetalle`
  ADD CONSTRAINT `solicituddetalle_ibfk_1` FOREIGN KEY (`EjemplarID`) REFERENCES `ejemplar` (`EjemplarID`),
  ADD CONSTRAINT `solicituddetalle_ibfk_2` FOREIGN KEY (`SolicitudID`) REFERENCES `solicitudcabesera` (`SolicitudID`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`NacionalidadID`) REFERENCES `nacionalidad` (`NacionalidadID`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`FacultadID`) REFERENCES `facultad` (`FacultadID`),
  ADD CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`CarreraID`) REFERENCES `carrera` (`CarreraID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
