-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/11/2023 às 19:34
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
-- Banco de dados: `autismo`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `contato`
--

CREATE TABLE `contato` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `Mensagem` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contato`
--

INSERT INTO `contato` (`id`, `nome`, `telefone`, `email`, `Mensagem`) VALUES


-- --------------------------------------------------------

--
-- Estrutura para tabela `img`
--

CREATE TABLE `img` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `sobre` varchar(255) NOT NULL,
  `SobreTitulo` varchar(255) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `img`
--

INSERT INTO `img` (`id`, `nome`, `imagem`, `sobre`, `SobreTitulo`, `tipo`) VALUES
(1, 'Dia do Altismo', 'imagens/diaAltismo.jpg', 'O Dia Internacional da Consciencialização do Autismo, celebrado em 2 de abril, é uma data dedicada a aumentar a conscientização sobre o autismo em todo o mundo. Essa iniciativa busca promover a inclusão e a compreensão das pessoas com Transtorno do Espect', 'O Dia Internacional da Consciencialização do Autismo', 'destaque'),
(2, 'Numero de Autistas', 'imagens\\numeroAltismo.png', 'De acordo com os Centros de Controle e Prevenção de Doenças (CDC) dos Estados Unidos, a prevalência do TEA está aumentando, e as estimativas mais recentes sugerem que cerca de 1 em cada 44 crianças pode ter TEA nos EUA.', 'Quantos autistas a por habitantes', 'destaque'),
(3, 'Palestra com Dr.', 'imagens\\palestraAutismo.jpg', 'Uma palestra sobre os cuidados com pessoas autistas pode ser uma oportunidade valiosa para fornecer informações, sensibilizar o público e promover uma compreensão mais profunda das necessidades específicas das pessoas com Transtorno do Espectro Autista', 'palestra sobre os cuidados com os autistas ', 'destaque'),
(4, 'Autismo sem Tabu', 'imagens\\AutismoSem.jpg', 'No entanto, de maneira geral, projetos e campanhas que promovem \"Autismo sem Tabu\" geralmente buscam desmistificar estigmas e preconceitos associados ao autismo. Eles têm como objetivo principal aumentar a conscientização, compreensão e aceitação das pess', '......', 'normal'),
(5, 'campanha', 'imagens\\campanha1.png', 'A AMA é uma organização que muitas vezes oferece suporte, serviços e recursos para pessoas com autismo e suas famílias. Eles podem fornecer orientação, terapia, atividades e até mesmo programas educacionais ou escolares específicos para crianças e jovens', ' Escola para altistas em Umuarama', 'normal'),
(6, 'Dia do Altismo', 'imagens/diaAltismo.jpg', 'O Dia Internacional da Consciencialização do Autismo, celebrado em 2 de abril, é uma data dedicada a aumentar a conscientização sobre o autismo em todo o mundo. Essa iniciativa busca promover a inclusão e a compreensão das pessoas com Transtorno do Espect', 'O Dia Internacional da Consciencialização do Autismo', 'normal');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `img`
--
ALTER TABLE `img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
