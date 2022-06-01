-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Maio-2022 às 23:48
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `eco_tech`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cad_clientes`
--

CREATE TABLE `cad_clientes` (
  `cod` int(11) NOT NULL,
  `nome_cliente` varchar(75) NOT NULL,
  `fone` varchar(13) NOT NULL,
  `cnpj` varchar(14) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `cep` varchar(8) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `email` varchar(60) NOT NULL,
  `senha` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cad_clientes`
--

INSERT INTO `cad_clientes` (`cod`, `nome_cliente`, `fone`, `cnpj`, `cpf`, `endereco`, `cep`, `cidade`, `uf`, `email`, `senha`) VALUES
(1, 'joão', '5134850176', '1234567890', '1234567890', 'Rua Albino Becker', '98798-98', 'Viamão', 'RS', 'joao@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pcompra`
--

CREATE TABLE `pcompra` (
  `cod_p` int(11) NOT NULL,
  `descricao` text DEFAULT NULL,
  `pesagem` double DEFAULT NULL,
  `pgto` double DEFAULT NULL,
  `dat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cad_clientes`
--
ALTER TABLE `cad_clientes`
  ADD PRIMARY KEY (`cod`);

--
-- Índices para tabela `pcompra`
--
ALTER TABLE `pcompra`
  ADD PRIMARY KEY (`cod_p`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cad_clientes`
--
ALTER TABLE `cad_clientes`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `pcompra`
--
ALTER TABLE `pcompra`
  MODIFY `cod_p` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
