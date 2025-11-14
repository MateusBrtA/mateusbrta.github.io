-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/11/2025 às 18:50
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jogo_backend`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `player`
--

CREATE TABLE `player` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `player`
--

INSERT INTO `player` (`id`, `name`, `email`, `pwd`) VALUES
(1, 'alexkid', 'alexkid@email.com', '1234'),
(2, 'mario', 'mario@email.com', '1234'),
(3, 'sonic', 'sonic@email.com', '1234');

-- --------------------------------------------------------

--
-- Estrutura para tabela `score`
--

CREATE TABLE `score` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `score`
--

INSERT INTO `score` (`id`, `player_id`, `date`, `score`) VALUES
(1, 2, '2024-01-01', 100),
(2, 2, '2024-01-02', 200);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `score`
--
ALTER TABLE `score`
  ADD UNIQUE KEY `ID` (`id`),
  ADD KEY `player_id` (`player_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `player`
--
ALTER TABLE `player`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `score`
--
ALTER TABLE `score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `score_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
