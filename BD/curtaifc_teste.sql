-- phpMyAdmin SQL Dump
-- version 4.0.10.1
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 15-Set-2022 às 10:43
-- Versão do servidor: 5.5.62-0ubuntu0.14.04.1
-- versão do PHP: 5.5.9-1ubuntu4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `curtaifc_teste`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE IF NOT EXISTS `ano` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` int(4) NOT NULL,
  PRIMARY KEY (`cod`),
  UNIQUE KEY `cod` (`cod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`cod`, `descricao`) VALUES
(1, 2016),
(2, 2017),
(3, 2018),
(4, 2019),
(5, 2020),
(6, 2021),
(7, 2022),
(8, 2023),
(9, 2024),
(10, 2025),
(11, 2026),
(12, 2027),
(13, 2028),
(14, 2029),
(15, 2030),
(16, 2031),
(17, 2032),
(18, 2033),
(19, 2034),
(20, 2035),
(21, 2036),
(22, 2037);

-- --------------------------------------------------------

--
-- Estrutura da tabela `assistir`
--

CREATE TABLE IF NOT EXISTS `assistir` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data_viu` date NOT NULL,
  `usuario` int(11) DEFAULT NULL,
  `curta` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod`),
  UNIQUE KEY `cod` (`cod`),
  KEY `usuario` (`usuario`),
  KEY `curta` (`curta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE IF NOT EXISTS `curso` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(40) NOT NULL,
  PRIMARY KEY (`cod`),
  UNIQUE KEY `cod` (`cod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`cod`, `descricao`) VALUES
(1, 'Informática'),
(2, 'Hospedagem');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curta`
--

CREATE TABLE IF NOT EXISTS `curta` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `video` varchar(60) DEFAULT NULL,
  `imagem` varchar(55) DEFAULT NULL,
  `sinopse` varchar(500) DEFAULT NULL,
  `duracao` time NOT NULL,
  `comentario` varchar(300) DEFAULT NULL,
  `ano` int(11) NOT NULL,
  `turma` int(11) DEFAULT NULL,
  `tema` int(11) DEFAULT NULL,
  `genero` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod`),
  UNIQUE KEY `cod` (`cod`),
  KEY `turma` (`turma`),
  KEY `tema` (`tema`),
  KEY `genero` (`genero`),
  KEY `ano` (`ano`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `curta`
--

INSERT INTO `curta` (`cod`, `titulo`, `video`, `imagem`, `sinopse`, `duracao`, `comentario`, `ano`, `turma`, `tema`, `genero`) VALUES
(1, 'Retrospecto', 'https://youtu.be/T7JAHY6mMYE', 'retrospecto.jpeg', NULL, '00:10:53', NULL, 4, 1, 5, 1),
(2, 'Helena', 'https://youtu.be/HA2J6oMBgqM', 'helena.jpeg', NULL, '00:14:05', NULL, 4, 3, 1, 1),
(3, '1943', 'https://youtu.be/F9Btmj3Vdg8', 'milenove.jpeg', NULL, '00:06:43', NULL, 2, 2, 5, 2),
(4, 'Dualidade', 'https://youtu.be/6tah0051Yf0', 'dualidade.jpeg', NULL, '00:09:19', NULL, 4, 1, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `genero`
--

CREATE TABLE IF NOT EXISTS `genero` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(25) NOT NULL,
  PRIMARY KEY (`cod`),
  UNIQUE KEY `cod` (`cod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `genero`
--

INSERT INTO `genero` (`cod`, `descricao`) VALUES
(1, 'Drama'),
(2, 'Documentário'),
(3, 'Comédia'),
(4, 'Terror'),
(5, 'Suspense'),
(6, 'Romance');

-- --------------------------------------------------------

--
-- Estrutura da tabela `imgpremiacao`
--

CREATE TABLE IF NOT EXISTS `imgpremiacao` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `ano` date NOT NULL,
  `cod_curta` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod`),
  UNIQUE KEY `cod` (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tema`
--

CREATE TABLE IF NOT EXISTS `tema` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(25) NOT NULL,
  PRIMARY KEY (`cod`),
  UNIQUE KEY `cod` (`cod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `tema`
--

INSERT INTO `tema` (`cod`, `descricao`) VALUES
(1, 'Abuso Infantil'),
(2, 'Homofobia'),
(3, 'Intolerância Religiosa'),
(4, 'Racismo'),
(5, 'Violência a Mulher'),
(6, 'Xenofobia'),
(7, 'Luta Agrária');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE IF NOT EXISTS `turma` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(15) NOT NULL,
  PRIMARY KEY (`cod`),
  UNIQUE KEY `cod` (`cod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`cod`, `descricao`) VALUES
(1, '1A'),
(2, '1B'),
(3, '1H'),
(4, '2A'),
(5, '2B'),
(6, '2H'),
(7, '3A'),
(8, '3B'),
(9, '3H');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `matricula` int(10) NOT NULL,
  `data_nasc` date DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `senha` int(8) NOT NULL,
  `curso` int(11) DEFAULT NULL,
  `turma` int(11) DEFAULT NULL,
  `nivel` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`cod`),
  UNIQUE KEY `cod` (`cod`),
  UNIQUE KEY `matricula` (`matricula`),
  UNIQUE KEY `senha` (`senha`),
  KEY `curso` (`curso`),
  KEY `turma` (`turma`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`cod`, `nome`, `matricula`, `data_nasc`, `email`, `senha`, `curso`, `turma`, `nivel`) VALUES
(13, 'admin', 2012323232, '0000-00-00', 'curtaifc.tcc@gmail.com', 20212021, 1, 1, 2);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `assistir`
--
ALTER TABLE `assistir`
  ADD CONSTRAINT `assistir_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`cod`),
  ADD CONSTRAINT `assistir_ibfk_2` FOREIGN KEY (`curta`) REFERENCES `curta` (`cod`);

--
-- Limitadores para a tabela `curta`
--
ALTER TABLE `curta`
  ADD CONSTRAINT `curta_ibfk_1` FOREIGN KEY (`turma`) REFERENCES `turma` (`cod`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `curta_ibfk_2` FOREIGN KEY (`tema`) REFERENCES `tema` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `curta_ibfk_3` FOREIGN KEY (`genero`) REFERENCES `genero` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `curta_ibfk_4` FOREIGN KEY (`ano`) REFERENCES `ano` (`cod`);

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`curso`) REFERENCES `curso` (`cod`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`turma`) REFERENCES `turma` (`cod`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
