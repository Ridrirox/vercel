-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 09-Set-2022 às 01:18
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `burger`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `ordem` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `data_registro` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `alias`, `descricao`, `ordem`, `img`, `status`, `data_registro`) VALUES
(1, 'LANCHES', 'lanches', '', 1, 'icon_lanches.png', 1, '0000-00-00 00:00:00'),
(2, 'BEBIDAS', 'bebidas', '', 5, 'icon_bebidas.png', 1, '0000-00-00 00:00:00'),
(3, 'PORÇÕES', 'porcoes', '', 3, 'icon_porcoes.png', 1, '0000-00-00 00:00:00'),
(4, 'COMBOS', 'combos', '', 4, 'icon_kit.png', 1, '0000-00-00 00:00:00'),
(5, 'ADICIONAIS', 'adicionais', '', 2, 'icon_adicionais.png', 1, '0000-00-00 00:00:00'),
(6, 'REMOVER', 'remover', '', 7, 'sem_imagem.png', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `notas` longtext,
  `data_registro` varchar(20) DEFAULT NULL,
  `entrega` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `telefone`, `celular`, `cep`, `rua`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `notas`, `data_registro`, `entrega`) VALUES
(1, 'RODRIGO', 'digaotekwondo@hotmail.com', '988503864', '4188808153', '83075130', 'Videira', '576', 'Casa', 'Borda do Campo', 'SJP', 'PR', 'xfrango baccon', '11/11/2016 14:01:15', 3),
(2, 'PRISCILA', '', '988120212', '655', '', 'videira,576', '', '', '', '', '', 'pao com ovo', '10/08/2018 01:11:03', 2),
(4, 'ISABELLY', NULL, '999101536', NULL, NULL, 'chapeco,550', NULL, '', NULL, NULL, NULL, '', '25/09/2018', 13),
(3, 'JUCELINO', NULL, '33845756', NULL, NULL, 'canoinhas,576', NULL, 'x-baccon', NULL, NULL, NULL, 'baccon', '25/09/2018', NULL),
(5, 'RODRIGO LUIZ XAVIER', NULL, '988503864', NULL, NULL, 'Rua Videira, 576', NULL, 'X-frango c/ Baccon', NULL, NULL, NULL, '', '19/11/2018', 3),
(6, 'JUCELINO DA SILVA', NULL, '33845756', NULL, NULL, 'Rua Canoinhas, 576', NULL, 'X-baccon', NULL, NULL, NULL, '', '13/12/2018', 24),
(7, 'MAHARA SILVA XAVIER', NULL, '988120419', NULL, NULL, 'Rua Videira, 576', NULL, 'pao com duas vinas', NULL, NULL, NULL, '', '13/12/2018', 5),
(8, 'JUCELINE DA SILVA', NULL, '9885236', NULL, NULL, 'Rua Videira, 576', NULL, 'X-baccon', NULL, NULL, NULL, '', '18/12/2018', 3),
(9, 'NILDA SA SILVA', NULL, '3345756', NULL, NULL, 'Canoinhas, 518', NULL, 'xfrango', NULL, NULL, NULL, '', '07/01/2019', 3),
(10, 'JULIA SUSKI', NULL, '2193', NULL, NULL, 'centro', NULL, 'simplao', NULL, NULL, NULL, '', '31/01/2020', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `texto_guiche` mediumtext NOT NULL,
  `razao_social` varchar(100) NOT NULL,
  `nome_fantasia` varchar(100) NOT NULL,
  `cnpj_cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `complemento` varchar(100) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `config`
--

INSERT INTO `config` (`id`, `texto_guiche`, `razao_social`, `nome_fantasia`, `cnpj_cpf`, `telefone`, `celular`, `email`, `website`, `cep`, `rua`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `logo`) VALUES
(1, 'TESTE', 'teste', 'Nome', '000.000.000/0001-00', '(00) 0000-0000', '(00) 0000-0000', 'meuemail@mail.com', 'www.meusite.com.br', '00000-000', 'Avenida Brasil', '1000', '', 'Centro', 'Cascavel', 'PR', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `guiche`
--

CREATE TABLE `guiche` (
  `id` int(11) NOT NULL,
  `pedido` varchar(5) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_pedidos`
--

CREATE TABLE `itens_pedidos` (
  `id` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `nome_produto` varchar(40) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `itens_pedidos`
--

INSERT INTO `itens_pedidos` (`id`, `id_pedido`, `id_produto`, `nome_produto`, `quantidade`, `valor`) VALUES
(1, 1, -10, 'Desconto', 1, 0),
(2, 1, -1, 'Dinheiro', 1, 10),
(3, 1, 1, 'teste ', 1, 5),
(4, 1, 1, 'teste ', 1, 5),
(5, 2, -10, 'Desconto', 1, 0),
(6, 2, -1, 'Dinheiro', 1, 10),
(7, 2, 1, 'teste 2 g', 1, 5),
(8, 2, 1, 'teste 2 g', 1, 5),
(9, 3, -10, 'Desconto', 1, 0),
(10, 3, 0, 'Troco', 1, 4),
(11, 3, -1, 'Dinheiro', 1, 20),
(12, 3, 2, 'X-Baccon 15 g', 1, 7),
(13, 3, 1, 'X-Salada 2 g', 1, 5),
(14, 3, 3, 'Refrigerante 30 g', 1, 4),
(22, 4, 0, 'Troco', 1, 38),
(21, 4, -10, 'Desconto', 1, 0),
(23, 4, -1, 'Dinheiro', 1, 50),
(24, 4, 1, 'X-Salada 2 g', 1, 5),
(25, 4, 2, 'X-Baccon 15 g', 1, 7),
(26, 5, 0, 'Troco', 1, 15),
(27, 5, -1, 'Dinheiro', 1, 35),
(28, 5, 1, 'X-Salada 2 g', 1, 5),
(29, 5, 2, 'X-Baccon 15 g', 1, 7),
(30, 5, 3, 'Refrigerante 30 g', 1, 4),
(31, 5, 3, 'Refrigerante 30 g', 1, 4),
(35, 6, 0, 'Troco', 1, 8),
(34, 6, -10, 'Desconto', 1, 0),
(36, 6, -1, 'Dinheiro', 1, 20),
(37, 6, 1, 'X-Salada 2 g', 1, 5),
(38, 6, 2, 'X-Baccon 15 g', 1, 7),
(45, 7, 1, 'X-Salada 2 g', 1, 5),
(44, 7, -1, 'Dinheiro', 1, 10),
(43, 7, 0, 'Troco', 1, 1),
(46, 7, 3, 'Refrigerante 30 g', 1, 4),
(55, 8, 2, 'X-Baccon 15 g', 1, 7),
(54, 8, 1, 'X-Salada 2 g', 1, 5),
(53, 8, -1, 'Dinheiro', 1, 80),
(52, 8, 0, 'Troco', 1, 64),
(56, 8, 3, 'Refrigerante 30 g', 1, 4),
(57, 9, -10, 'Desconto', 1, 0),
(58, 9, 0, 'Troco', 1, 68),
(59, 9, -1, 'Dinheiro', 1, 80),
(60, 9, 1, 'X-Salada 2 g', 1, 5),
(61, 9, 2, 'X-Baccon 15 g', 1, 7),
(70, 10, 2, 'X-Baccon 15 g', 1, 7),
(69, 10, 1, 'X-Salada 2 g', 1, 5),
(68, 10, 3, 'Refrigerante 30 g', 1, 4),
(86, 11, 3, 'Refrigerante 30 g', 1, 4),
(85, 11, -1, 'Dinheiro', 1, 10),
(84, 11, 0, 'Troco', 1, 3.5),
(83, 11, -10, 'Desconto', 1, 0),
(87, 11, 4, 'Agua 500 ml', 1, 2.5),
(88, 12, 4, 'Agua 500 ml', 1, 2.5),
(93, 13, 8, 'Ml 2 g', 1, 1),
(92, 13, 3, 'Refrigerante 30 g', 1, 4),
(94, 13, 2, 'X-Baccon 15 g', 1, 7),
(107, 14, 3, 'Refrigerante 30 g', 1, 4),
(104, 14, -10, 'Desconto', 1, 0),
(105, 14, -3, 'Cartão de Débito', 1, 13.5),
(106, 14, 2, 'X-Baccon 15 g', 1, 7),
(108, 14, 4, 'Agua 500 ml', 1, 2.5),
(109, 15, 1, 'X-Salada 2 g', 1, 5),
(117, 16, 0, 'Troco', 1, 18),
(118, 16, -1, 'Dinheiro', 1, 30),
(116, 16, -10, 'Desconto', 1, 0),
(119, 16, 3, 'Refrigerante 30 g', 1, 4),
(120, 16, 8, 'Ml 2 g', 1, 1),
(121, 16, 2, 'X-Baccon 15 g', 1, 7),
(131, 17, 3, 'Refrigerante 30 g', 1, 4),
(130, 17, -1, 'Dinheiro', 1, 20),
(129, 17, 0, 'Troco', 1, 9),
(128, 17, -10, 'Desconto', 1, 0),
(132, 17, 8, 'Ml 2 g', 1, 1),
(133, 17, 8, 'Ml 2 g', 1, 1),
(134, 17, 1, 'X-Salada 2 g', 1, 5),
(142, 18, 2, 'X-Baccon 15 g', 1, 7),
(141, 18, -1, 'Dinheiro', 1, 50),
(140, 18, 0, 'Troco', 1, 27.01),
(139, 18, -10, 'Desconto', 1, 0),
(143, 18, 9, 'Esepcial Carne 600 g', 1, 15.99);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mesas`
--

CREATE TABLE `mesas` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `lugares` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `data` varchar(20) NOT NULL,
  `hora` time NOT NULL,
  `id_cliente` int(11) DEFAULT '0',
  `cliente` varchar(50) NOT NULL,
  `quantidade` int(13) NOT NULL,
  `entrega` double NOT NULL,
  `desconto` double DEFAULT '0',
  `total` double DEFAULT NULL,
  `obs` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos_espera_html`
--

CREATE TABLE `pedidos_espera_html` (
  `id` int(11) NOT NULL,
  `html` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `unidade` varchar(5) DEFAULT NULL,
  `quantidade` double DEFAULT NULL,
  `adicional` tinyint(1) NOT NULL DEFAULT '0',
  `imprimir` tinyint(4) NOT NULL,
  `imagem` varchar(40) NOT NULL DEFAULT 'sem_imagem.png',
  `valor` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `descricao_completa` longtext NOT NULL,
  `data_registro` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `categoria`, `nome`, `descricao`, `unidade`, `quantidade`, `adicional`, `imprimir`, `imagem`, `valor`, `status`, `descricao_completa`, `data_registro`) VALUES
(1, 1, 'X-Salada', 'Salada', 'g', 2, 0, 1, 'xsalada.jpg', 5, 1, '', '10/11/2016 10:25:39'),
(2, 1, 'X-Baccon', 'Baccon', 'g', 15, 0, 1, 'baccon.jpg', 7, 1, '', '11/11/2016 13:57:49'),
(3, 2, 'Refrigerante', 'coca', 'g', 30, 0, 1, 'refri.jpg', 4, 1, '', '11/11/2016 13:58:25'),
(4, 2, 'Agua', 'agua', 'ml', 500, 0, 1, 'refri1.jpg', 2.5, 1, '', '11/11/2016 14:42:35'),
(9, 1, 'Esepcial Carne', 'ovo, cebola', 'g', 600, 0, 1, 'especial.jpg', 15.99, 1, 'Gostoso', '17/11/2018 14:28:17'),
(8, 5, 'Ml', 'jhj', 'g', 2, 0, 1, 'clientes.gif', 1, 1, '', '11/11/2016 14:49:49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `notas` longtext NOT NULL,
  `data_log` varchar(20) NOT NULL,
  `data_registro` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `usuario`, `telefone`, `celular`, `senha`, `status`, `notas`, `data_log`, `data_registro`) VALUES
(1, 'Administrador', 'admin', '(00) 0000-0000', '(00) 0000-0000', 'c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec', 1, '', '21/05/2014 09:56:26', '25/06/2015 10:26:06');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL,
  `data` varchar(20) NOT NULL,
  `hora` time NOT NULL,
  `id_cliente` int(11) DEFAULT '0',
  `cliente` varchar(50) NOT NULL,
  `quantidade` int(13) NOT NULL,
  `entrega` double NOT NULL,
  `desconto` double DEFAULT '0',
  `total` double DEFAULT NULL,
  `obs` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guiche`
--
ALTER TABLE `guiche`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itens_pedidos`
--
ALTER TABLE `itens_pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pedidos_espera_html`
--
ALTER TABLE `pedidos_espera_html`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`usuario`);

--
-- Indexes for table `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `guiche`
--
ALTER TABLE `guiche`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `itens_pedidos`
--
ALTER TABLE `itens_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `mesas`
--
ALTER TABLE `mesas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pedidos_espera_html`
--
ALTER TABLE `pedidos_espera_html`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
