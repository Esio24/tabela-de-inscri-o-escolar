-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10/09/2024 às 20:26
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `escola`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `id_cursos` int(25) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`id_cursos`, `nome`) VALUES
(1, 'ti'),
(2, 'adm');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estudantes`
--

CREATE TABLE `estudantes` (
  `id_estudantes` int(25) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `idade` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estudantes`
--

INSERT INTO `estudantes` (`id_estudantes`, `nome`, `idade`) VALUES
(1, 'Esio', 17),
(2, 'Nicolas', 18);

-- --------------------------------------------------------

--
-- Estrutura para tabela `inscriçoes`
--

CREATE TABLE `inscriçoes` (
  `id_inscrição` int(255) NOT NULL,
  `id_cursos` int(255) NOT NULL,
  `id_estudantes` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `inscriçoes`
--

INSERT INTO `inscriçoes` (`id_inscrição`, `id_cursos`, `id_estudantes`) VALUES
(1, 1, 1),
(2, 2, 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_cursos`);

--
-- Índices de tabela `estudantes`
--
ALTER TABLE `estudantes`
  ADD PRIMARY KEY (`id_estudantes`);

--
-- Índices de tabela `inscriçoes`
--
ALTER TABLE `inscriçoes`
  ADD PRIMARY KEY (`id_inscrição`),
  ADD KEY `id_estudantes` (`id_estudantes`),
  ADD KEY `id_cursos` (`id_cursos`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_cursos` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `estudantes`
--
ALTER TABLE `estudantes`
  MODIFY `id_estudantes` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `inscriçoes`
--
ALTER TABLE `inscriçoes`
  MODIFY `id_inscrição` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `inscriçoes`
--
ALTER TABLE `inscriçoes`
  ADD CONSTRAINT `inscriçoes_ibfk_1` FOREIGN KEY (`id_estudantes`) REFERENCES `estudantes` (`id_estudantes`) ON DELETE CASCADE,
  ADD CONSTRAINT `inscriçoes_ibfk_2` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
