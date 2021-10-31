
DROP TABLE IF EXISTS `citas`;
CREATE TABLE IF NOT EXISTS `citas` (
  `idCita` int(11) NOT NULL AUTO_INCREMENT,
  `nombrePaciente` varchar(30) NOT NULL DEFAULT '',
  `apPpaciente` varchar(30) NOT NULL,
  `apMpaciente` varchar(30) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `idEmpleado` int(11) NOT NULL,
  `idPaciente` int(11) NOT NULL,
  PRIMARY KEY (`idCita`),
  KEY `idEmpleado` (`idEmpleado`),
  KEY `idPaciente` (`idPaciente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `fisioterapeuta`;
CREATE TABLE IF NOT EXISTS `fisioterapeuta` (
  `idEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `apPaterno` varchar(30) NOT NULL,
  `apMaterno` varchar(30) NOT NULL,
  `dir` varchar(250) NOT NULL,
  `contacto1` varchar(10) NOT NULL,
  `contacto2` varchar(10) NOT NULL,
  `puesto` varchar(20) NOT NULL,
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  PRIMARY KEY (`idEmpleado`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `paciente`;
CREATE TABLE IF NOT EXISTS `paciente` (
  `idPaciente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `edad` int(11) NOT NULL,
  `diagnostico` varchar(600) NOT NULL,
  `tratamiento` varchar(600) NOT NULL,
  PRIMARY KEY (`idPaciente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
