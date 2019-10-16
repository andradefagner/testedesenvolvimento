-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Out-2019 às 19:24
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `desenvolvimento`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `idEmpresa` int(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `endereco` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cep` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `cidade` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categoria` enum('Eventos','Alimentação','Saúde','Esporte','Viagem') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`idEmpresa`, `titulo`, `telefone`, `endereco`, `cep`, `cidade`, `estado`, `descricao`, `categoria`) VALUES
(3, 'Curumin Festas', '(11)1111-1111', 'Alameda Yaya, 22', '00000-000', 'São Paulo', 'SP', 'Empresa de festas infantis com brinquedos e recreadores.', 'Eventos'),
(4, 'UBS Bauru', '(14)1414-1414', 'Av Getulio Vargas, 13-33', '11111-111', 'Bauru', 'SP', 'Posto de saúde publico.', 'Saúde'),
(5, 'Gol', '(22)1111-1111', 'Av Brasil, 1193', '32222-222', 'Rio de Janeiro', 'RJ', 'Companhia aérea.', 'Viagem'),
(6, 'SPFC', '(11)-2222-1111', 'Av Morumbi, 111', '12222-222', 'São Paulo', 'SP', 'Time de futebol.', 'Esporte'),
(7, 'Ricoy', '(12)2222-2222', 'Estrada de Itapecerica, S/N', '12222-111', 'São Paulo', 'SP', 'Supermercado.', 'Alimentação'),
(8, 'Você Sempre Bela', '(22)3333-3333', 'Av do Paraiso, 112', '21432-222', 'Ibitinga', 'SP', 'Clinica estética.', 'Saúde'),
(9, 'Café do Feirante', '(22)4444-4444', 'Av Pardal, 12', '23444-444', 'Bauru', 'SP', 'Cafeteria.', 'Alimentação'),
(10, 'Companhia Atletica', '(21)2222-2222', 'Av Morumbi, 122', '12121-222', 'São Paulo', 'SP', 'Academia.', 'Esporte'),
(11, 'Latam', '(44)4444-4444', 'Av do Prazer, 13', '33333-333', 'Campinas', 'SP', 'Companhia aérea.', 'Viagem'),
(12, 'McDonalds', '(88)9000-0000', 'Av Felicidade, 66', '66666-666', 'Pelotas', 'RS', 'Rede de Fastfood.', 'Alimentação');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`idEmpresa`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `empresa`
--
ALTER TABLE `empresa`
  MODIFY `idEmpresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
