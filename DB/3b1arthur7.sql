-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 18-Ago-2021 às 20:35
-- Versão do servidor: 10.4.10-MariaDB
-- versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `3b1arthur7`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

DROP TABLE IF EXISTS `veiculo`;
CREATE TABLE IF NOT EXISTS `veiculo` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modelo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fabricante` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ano` int(10) NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`id`, `nome`, `modelo`, `placa`, `fabricante`, `ano`, `status`) VALUES
(2, 'eded', 'dede', 'dedx', 'qeqq', 222, 'Alugado'),
(3, 'eded', 'dede', 'dedx', 'qeqq', 222, 'Alugado'),
(4, 'Arthur', 'GTI', 'hud333', 'VW', 22222, 'Disponivel');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
