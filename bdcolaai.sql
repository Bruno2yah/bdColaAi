-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/05/2024 às 17:51
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
-- Banco de dados: `bdcolaai`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbadmin`
--

CREATE TABLE `tbadmin` (
  `idAdmin` int(11) NOT NULL,
  `nomeAdmin` varchar(60) DEFAULT NULL,
  `sobrenomeAdmin` varchar(60) DEFAULT NULL,
  `cpfAdmin` char(14) DEFAULT NULL,
  `dataNascAdmin` date DEFAULT NULL,
  `emailAdmin` varchar(60) DEFAULT NULL,
  `senhaAdmin` varchar(30) DEFAULT NULL,
  `fotoPerfilAdmin` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbadmin`
--

INSERT INTO `tbadmin` (`idAdmin`, `nomeAdmin`, `sobrenomeAdmin`, `cpfAdmin`, `dataNascAdmin`, `emailAdmin`, `senhaAdmin`, `fotoPerfilAdmin`) VALUES
(2, 'Bruno', 'Geanini', '574.489.768-22', '2004-05-25', 'Bruno@gmail.com', '1234', '2ae6b30e3edbeb47c6af0c4d97103cad.jpg'),
(3, 'Stephanie', 'silva', '444.444.444-44', '1999-01-29', 'admin@teste.com', '1234', 'e310347bb0e038aa3366f86519b386ae.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbcategoriacontatoorganizacaoevento`
--

CREATE TABLE `tbcategoriacontatoorganizacaoevento` (
  `idCategoriaContatoOrganizacaoEvento` int(11) NOT NULL,
  `categoriaContatoOrganizacaoEvento` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbcategoriacontatousuario`
--

CREATE TABLE `tbcategoriacontatousuario` (
  `idCategoriaContatoUsuario` int(11) NOT NULL,
  `categoriaContatoUsuario` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbcontatoorganizacaoevento`
--

CREATE TABLE `tbcontatoorganizacaoevento` (
  `idContatoOrganizacaoEvento` int(11) NOT NULL,
  `tituloContatoOrganizacaoEvento` varchar(50) DEFAULT NULL,
  `descContatoOrganizacaoEvento` varchar(300) DEFAULT NULL,
  `idOrganizacaoEvento` int(11) NOT NULL,
  `idCategoriaContatoOrganizacaoEvento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbcontatousuario`
--

CREATE TABLE `tbcontatousuario` (
  `idContatoUsuario` int(11) NOT NULL,
  `tituloContatoUsuario` varchar(50) DEFAULT NULL,
  `descContatoUsuario` varchar(300) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `idCategoriaContatoUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbevento`
--

CREATE TABLE `tbevento` (
  `idEvento` int(11) NOT NULL,
  `nomeEvento` varchar(100) DEFAULT NULL,
  `cepEvento` char(9) DEFAULT NULL,
  `enderecoEvento` varchar(40) DEFAULT NULL,
  `numeroEvento` varchar(5) DEFAULT NULL,
  `complementoEvento` varchar(6) DEFAULT NULL,
  `bairroEvento` varchar(20) DEFAULT NULL,
  `cidadeEvento` varchar(30) DEFAULT NULL,
  `ufEvento` char(2) DEFAULT NULL,
  `dataEvento` date DEFAULT NULL,
  `faixaEtariaEvento` varchar(30) NOT NULL,
  `periodoEvento` varchar(30) NOT NULL,
  `valorEvento` varchar(30) NOT NULL,
  `espacoEvento` varchar(30) NOT NULL,
  `descEvento` varchar(500) NOT NULL,
  `idOrganizacaoEvento` int(11) DEFAULT NULL,
  `imagemEvento` varchar(50) NOT NULL,
  `idSituacaoEvento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbevento`
--

INSERT INTO `tbevento` (`idEvento`, `nomeEvento`, `cepEvento`, `enderecoEvento`, `numeroEvento`, `complementoEvento`, `bairroEvento`, `cidadeEvento`, `ufEvento`, `dataEvento`, `faixaEtariaEvento`, `periodoEvento`, `valorEvento`, `espacoEvento`, `descEvento`, `idOrganizacaoEvento`, `imagemEvento`, `idSituacaoEvento`) VALUES
(8, 'Anime Friends', '08537-330', 'Rua Ariovaldo Honório de Andrade', '21', '', 'Jardim Rosana', 'Ferraz de Vasconcelos', 'SP', '2024-05-29', '5', '2', '2', '1', 'Evento para amantes de anime', 8, 'c9be61905092dff69279b128d828e4b8.jpg', 2),
(9, 'Bela e a Fera', '08160-370', 'Rua Rio do Ouro', '52', '', 'Parque Industrial', 'São Paulo', 'SP', '2024-05-16', '5', '3', '2', '3', 'teatro', 8, 'b63849eabf8a48c824126fa2787b5a95.jpg', 1),
(10, 'Campus Party ', '08160-370', 'Rua Rio do Ouro', '45', '', 'Parque Industrial', 'São Paulo', 'SP', '2024-05-15', '5', '1', '1', '4', 'evento bacana ', 12, 'a73c9884daa72da3b21e0b5382db276d.jpg', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbfeedbackapp`
--

CREATE TABLE `tbfeedbackapp` (
  `idFeedBackApp` int(11) NOT NULL,
  `tituloFeedBackApp` varchar(50) DEFAULT NULL,
  `descFeedbackApp` varchar(300) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbinteresseevento`
--

CREATE TABLE `tbinteresseevento` (
  `idInteresseEvento` int(11) NOT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `idEvento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbinteresseevento`
--

INSERT INTO `tbinteresseevento` (`idInteresseEvento`, `idUsuario`, `idEvento`) VALUES
(7, 6, 9),
(8, 1, 10),
(9, 1, 9),
(10, 7, 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tborganizacaoevento`
--

CREATE TABLE `tborganizacaoevento` (
  `idOrganizacaoEvento` int(11) NOT NULL,
  `nomeOrganizacaoEvento` varchar(60) DEFAULT NULL,
  `cnpjOrganizacaoEvento` char(18) DEFAULT NULL,
  `cepOrganizacaoEvento` char(8) DEFAULT NULL,
  `enderecoOrganizacaoEvento` varchar(40) DEFAULT NULL,
  `numeroOrganizacaoEvento` varchar(5) DEFAULT NULL,
  `complementoOrganizacaoEvento` varchar(6) DEFAULT NULL,
  `bairroOrganizacaoEvento` varchar(20) DEFAULT NULL,
  `cidadeOrganizacaoEvento` varchar(30) DEFAULT NULL,
  `ufOrganizacaoEvento` char(2) DEFAULT NULL,
  `telOrganizacaoEvento` char(15) NOT NULL,
  `emailOrganizacaoEvento` varchar(60) DEFAULT NULL,
  `senhaOrganizacaoEvento` varchar(30) DEFAULT NULL,
  `linkSiteOrganizacaoEvento` varchar(2000) DEFAULT NULL,
  `imagemOrganizacaoEvento` varchar(40) DEFAULT NULL,
  `descOrganizacaoEvento` varchar(500) DEFAULT NULL,
  `idSituacaoOrganizacaoEvento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tborganizacaoevento`
--

INSERT INTO `tborganizacaoevento` (`idOrganizacaoEvento`, `nomeOrganizacaoEvento`, `cnpjOrganizacaoEvento`, `cepOrganizacaoEvento`, `enderecoOrganizacaoEvento`, `numeroOrganizacaoEvento`, `complementoOrganizacaoEvento`, `bairroOrganizacaoEvento`, `cidadeOrganizacaoEvento`, `ufOrganizacaoEvento`, `telOrganizacaoEvento`, `emailOrganizacaoEvento`, `senhaOrganizacaoEvento`, `linkSiteOrganizacaoEvento`, `imagemOrganizacaoEvento`, `descOrganizacaoEvento`, `idSituacaoOrganizacaoEvento`) VALUES
(7, 'Museu', '00.000.000/0000-00', '00000-00', 'Rua A', '00000', 'logo a', 'Jardim rosana', 'Ferraz de Vasconcelos', 'SP', '(11)11111-1111', 'bruno@gmail.com', '1234', NULL, NULL, NULL, 2),
(8, 'Anime Friends', '111111111111111111', '08537330', 'Rua Francisco de paula', '1234', 'aaaa', 'Jardim bandeirantes', 'Ferraz', 'SP', '1111111111111', 'AnimeFriends@gmail.com', '1234', NULL, NULL, NULL, 2),
(9, 'Futebol', '111111111111111111', '08537330', 'Rua Francisco de paula', '1234', 'aaaa', 'Jardim bandeirantes', 'São Paulo', 'SP', '1111111111111', 'AnimeFriendsaaa@gmail.com', '1234', NULL, NULL, NULL, 3),
(10, 'Museu', '00.000.000/0000-00', '00000-00', 'Rua A', '2101', 'logo a', 'Jardim rosana', 'Ferraz de Vasconcelos', 'SP', '(00)00000-0000', 'bruno@gmail.com', '1234', NULL, NULL, NULL, 2),
(11, 'Ipiranga', '11.111.111/1111-11', '00000-00', 'Rua A', '2101', 'logo a', 'Jardim rosana', 'Ferraz de Vasconcelos', 'SP', '(00)00000-0000', 'FelipeGeanini12@gmail.com', '1234', NULL, NULL, NULL, 2),
(12, 'Fabrica de Cultura Itaquera', '55.555.555/5555-55', '01001-00', 'Praça da Sé', '281', 'lado í', 'Sé', 'São Paulo', 'SP', '(11)99999-9999', 'fabrica@teste.com', '1234', NULL, NULL, NULL, 2),
(13, 'CEU Inácio Monteiro', '44.444.444/4444-44', '08160-37', 'Rua Rio do Ouro', '281', '', 'Parque Industrial', 'São Paulo', 'SP', '(11)77777-7777', 'ceu@teste.com', 'asdsdasda!', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbpublicacao`
--

CREATE TABLE `tbpublicacao` (
  `idPublicacao` int(11) NOT NULL,
  `tituloPublicacao` varchar(50) DEFAULT NULL,
  `descPublicacao` varchar(300) DEFAULT NULL,
  `LinkOrganizacaoEvento` varchar(2000) DEFAULT NULL,
  `idOrganizacaoEvento` int(11) DEFAULT NULL,
  `idSituacaoPublicacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbpublicacao`
--

INSERT INTO `tbpublicacao` (`idPublicacao`, `tituloPublicacao`, `descPublicacao`, `LinkOrganizacaoEvento`, `idOrganizacaoEvento`, `idSituacaoPublicacao`) VALUES
(1, 'Hoje a tarde', 'Neymar vai estar na praça', NULL, 8, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbsituacaoevento`
--

CREATE TABLE `tbsituacaoevento` (
  `idSituacaoEvento` int(11) NOT NULL,
  `situacaoEvento` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbsituacaoevento`
--

INSERT INTO `tbsituacaoevento` (`idSituacaoEvento`, `situacaoEvento`) VALUES
(1, 'Ativo'),
(2, 'Arquivado');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbsituacaoorganizacaoevento`
--

CREATE TABLE `tbsituacaoorganizacaoevento` (
  `idSituacaoOrganizacaoEvento` int(11) NOT NULL,
  `situacaoOrganizacaoEvento` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbsituacaoorganizacaoevento`
--

INSERT INTO `tbsituacaoorganizacaoevento` (`idSituacaoOrganizacaoEvento`, `situacaoOrganizacaoEvento`) VALUES
(1, 'Pendente'),
(2, 'Ativo'),
(3, 'Desativado');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbsituacaopublicacao`
--

CREATE TABLE `tbsituacaopublicacao` (
  `idSituacaoPublicacao` int(11) NOT NULL,
  `situacaoPublicacao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbsituacaopublicacao`
--

INSERT INTO `tbsituacaopublicacao` (`idSituacaoPublicacao`, `situacaoPublicacao`) VALUES
(1, 'Ativo'),
(2, 'Arquivado');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbtokenadmin`
--

CREATE TABLE `tbtokenadmin` (
  `idTokenAdmin` int(11) NOT NULL,
  `valorTokenAdmin` char(5) DEFAULT NULL,
  `idAdmin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbtokenorganizacaoevento`
--

CREATE TABLE `tbtokenorganizacaoevento` (
  `idTokenOrganizacaoEvento` int(11) NOT NULL,
  `valorTokenOrganizacaoEvento` char(5) DEFAULT NULL,
  `idOrganizacaoEvento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbtokenusuario`
--

CREATE TABLE `tbtokenusuario` (
  `idTokenUsuario` int(11) NOT NULL,
  `valorTokenUsuario` char(5) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbusuario`
--

CREATE TABLE `tbusuario` (
  `idUsuario` int(11) NOT NULL,
  `nomeUsuario` varchar(60) DEFAULT NULL,
  `sobrenomeUsuario` varchar(60) DEFAULT NULL,
  `emailUsuario` varchar(60) DEFAULT NULL,
  `senhaUsuario` varchar(30) DEFAULT NULL,
  `telUsuario` char(15) NOT NULL,
  `imagemPerfilUsuario` varchar(40) DEFAULT NULL,
  `imagemBannerUsuario` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbusuario`
--

INSERT INTO `tbusuario` (`idUsuario`, `nomeUsuario`, `sobrenomeUsuario`, `emailUsuario`, `senhaUsuario`, `telUsuario`, `imagemPerfilUsuario`, `imagemBannerUsuario`) VALUES
(1, 'Bruno', 'Geanini', 'Bruno@gmail.com', '1234', '', '62fc43ff16f6a96c586773abefdfb542.jpg', ''),
(6, 'stephanie', 'Silva ', 'ste@teste.com', 'senha1234', '(11)95283-0532', NULL, NULL),
(7, 'Richard', 'Silva ', 'oi@teste.com', '1234', '(11)77777-7777', 'e948d34aa5220121b6cce26dd23858c8.jpg', '27dec93c909e14c0e868924ea98b101b.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbusuarioseguindo`
--

CREATE TABLE `tbusuarioseguindo` (
  `idSeguindo` int(11) NOT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `idOrganizacaoEvento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tbadmin`
--
ALTER TABLE `tbadmin`
  ADD PRIMARY KEY (`idAdmin`),
  ADD UNIQUE KEY `cpfAdmin` (`cpfAdmin`),
  ADD UNIQUE KEY `emailAdmin` (`emailAdmin`);

--
-- Índices de tabela `tbcategoriacontatoorganizacaoevento`
--
ALTER TABLE `tbcategoriacontatoorganizacaoevento`
  ADD PRIMARY KEY (`idCategoriaContatoOrganizacaoEvento`);

--
-- Índices de tabela `tbcategoriacontatousuario`
--
ALTER TABLE `tbcategoriacontatousuario`
  ADD PRIMARY KEY (`idCategoriaContatoUsuario`);

--
-- Índices de tabela `tbcontatoorganizacaoevento`
--
ALTER TABLE `tbcontatoorganizacaoevento`
  ADD PRIMARY KEY (`idContatoOrganizacaoEvento`),
  ADD KEY `idOrganizacaoEvento` (`idOrganizacaoEvento`),
  ADD KEY `fk_categoriaContato` (`idCategoriaContatoOrganizacaoEvento`);

--
-- Índices de tabela `tbcontatousuario`
--
ALTER TABLE `tbcontatousuario`
  ADD PRIMARY KEY (`idContatoUsuario`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `fk_categoriaContatoUsuario` (`idCategoriaContatoUsuario`);

--
-- Índices de tabela `tbevento`
--
ALTER TABLE `tbevento`
  ADD PRIMARY KEY (`idEvento`),
  ADD KEY `idOrganizacaoEvento` (`idOrganizacaoEvento`),
  ADD KEY `fk_situacaoEvento` (`idSituacaoEvento`);

--
-- Índices de tabela `tbfeedbackapp`
--
ALTER TABLE `tbfeedbackapp`
  ADD PRIMARY KEY (`idFeedBackApp`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Índices de tabela `tbinteresseevento`
--
ALTER TABLE `tbinteresseevento`
  ADD PRIMARY KEY (`idInteresseEvento`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idEvento` (`idEvento`);

--
-- Índices de tabela `tborganizacaoevento`
--
ALTER TABLE `tborganizacaoevento`
  ADD PRIMARY KEY (`idOrganizacaoEvento`),
  ADD KEY `fk_tbSituacaoOrganizacaoEvento` (`idSituacaoOrganizacaoEvento`);

--
-- Índices de tabela `tbpublicacao`
--
ALTER TABLE `tbpublicacao`
  ADD PRIMARY KEY (`idPublicacao`),
  ADD KEY `fk_OrganizacaoEvento_tbPub` (`idOrganizacaoEvento`),
  ADD KEY `fk_idSituacaoPub` (`idSituacaoPublicacao`);

--
-- Índices de tabela `tbsituacaoevento`
--
ALTER TABLE `tbsituacaoevento`
  ADD PRIMARY KEY (`idSituacaoEvento`);

--
-- Índices de tabela `tbsituacaoorganizacaoevento`
--
ALTER TABLE `tbsituacaoorganizacaoevento`
  ADD PRIMARY KEY (`idSituacaoOrganizacaoEvento`);

--
-- Índices de tabela `tbsituacaopublicacao`
--
ALTER TABLE `tbsituacaopublicacao`
  ADD PRIMARY KEY (`idSituacaoPublicacao`);

--
-- Índices de tabela `tbtokenadmin`
--
ALTER TABLE `tbtokenadmin`
  ADD PRIMARY KEY (`idTokenAdmin`),
  ADD KEY `idAdmin` (`idAdmin`);

--
-- Índices de tabela `tbtokenorganizacaoevento`
--
ALTER TABLE `tbtokenorganizacaoevento`
  ADD PRIMARY KEY (`idTokenOrganizacaoEvento`),
  ADD KEY `idOrganizacaoEvento` (`idOrganizacaoEvento`);

--
-- Índices de tabela `tbtokenusuario`
--
ALTER TABLE `tbtokenusuario`
  ADD PRIMARY KEY (`idTokenUsuario`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Índices de tabela `tbusuario`
--
ALTER TABLE `tbusuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Índices de tabela `tbusuarioseguindo`
--
ALTER TABLE `tbusuarioseguindo`
  ADD PRIMARY KEY (`idSeguindo`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idOrganizacaoEvento` (`idOrganizacaoEvento`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbadmin`
--
ALTER TABLE `tbadmin`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tbcategoriacontatoorganizacaoevento`
--
ALTER TABLE `tbcategoriacontatoorganizacaoevento`
  MODIFY `idCategoriaContatoOrganizacaoEvento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbcategoriacontatousuario`
--
ALTER TABLE `tbcategoriacontatousuario`
  MODIFY `idCategoriaContatoUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbcontatoorganizacaoevento`
--
ALTER TABLE `tbcontatoorganizacaoevento`
  MODIFY `idContatoOrganizacaoEvento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbcontatousuario`
--
ALTER TABLE `tbcontatousuario`
  MODIFY `idContatoUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbevento`
--
ALTER TABLE `tbevento`
  MODIFY `idEvento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `tbfeedbackapp`
--
ALTER TABLE `tbfeedbackapp`
  MODIFY `idFeedBackApp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbinteresseevento`
--
ALTER TABLE `tbinteresseevento`
  MODIFY `idInteresseEvento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `tborganizacaoevento`
--
ALTER TABLE `tborganizacaoevento`
  MODIFY `idOrganizacaoEvento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `tbpublicacao`
--
ALTER TABLE `tbpublicacao`
  MODIFY `idPublicacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tbsituacaoevento`
--
ALTER TABLE `tbsituacaoevento`
  MODIFY `idSituacaoEvento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tbsituacaoorganizacaoevento`
--
ALTER TABLE `tbsituacaoorganizacaoevento`
  MODIFY `idSituacaoOrganizacaoEvento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tbsituacaopublicacao`
--
ALTER TABLE `tbsituacaopublicacao`
  MODIFY `idSituacaoPublicacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tbtokenadmin`
--
ALTER TABLE `tbtokenadmin`
  MODIFY `idTokenAdmin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbtokenorganizacaoevento`
--
ALTER TABLE `tbtokenorganizacaoevento`
  MODIFY `idTokenOrganizacaoEvento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbtokenusuario`
--
ALTER TABLE `tbtokenusuario`
  MODIFY `idTokenUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbusuario`
--
ALTER TABLE `tbusuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tbusuarioseguindo`
--
ALTER TABLE `tbusuarioseguindo`
  MODIFY `idSeguindo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tbcontatoorganizacaoevento`
--
ALTER TABLE `tbcontatoorganizacaoevento`
  ADD CONSTRAINT `fk_categoriaContato` FOREIGN KEY (`idCategoriaContatoOrganizacaoEvento`) REFERENCES `tbcategoriacontatoorganizacaoevento` (`idCategoriaContatoOrganizacaoEvento`),
  ADD CONSTRAINT `tbcontatoorganizacaoevento_ibfk_1` FOREIGN KEY (`idOrganizacaoEvento`) REFERENCES `tborganizacaoevento` (`idOrganizacaoEvento`);

--
-- Restrições para tabelas `tbcontatousuario`
--
ALTER TABLE `tbcontatousuario`
  ADD CONSTRAINT `fk_categoriaContatoUsuario` FOREIGN KEY (`idCategoriaContatoUsuario`) REFERENCES `tbcategoriacontatousuario` (`idCategoriaContatoUsuario`),
  ADD CONSTRAINT `tbcontatousuario_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `tbusuario` (`idUsuario`);

--
-- Restrições para tabelas `tbevento`
--
ALTER TABLE `tbevento`
  ADD CONSTRAINT `fk_situacaoEvento` FOREIGN KEY (`idSituacaoEvento`) REFERENCES `tbsituacaoevento` (`idSituacaoEvento`),
  ADD CONSTRAINT `tbevento_ibfk_1` FOREIGN KEY (`idOrganizacaoEvento`) REFERENCES `tborganizacaoevento` (`idOrganizacaoEvento`);

--
-- Restrições para tabelas `tbfeedbackapp`
--
ALTER TABLE `tbfeedbackapp`
  ADD CONSTRAINT `tbfeedbackapp_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `tbusuario` (`idUsuario`);

--
-- Restrições para tabelas `tbinteresseevento`
--
ALTER TABLE `tbinteresseevento`
  ADD CONSTRAINT `tbinteresseevento_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `tbusuario` (`idUsuario`),
  ADD CONSTRAINT `tbinteresseevento_ibfk_2` FOREIGN KEY (`idEvento`) REFERENCES `tbevento` (`idEvento`);

--
-- Restrições para tabelas `tborganizacaoevento`
--
ALTER TABLE `tborganizacaoevento`
  ADD CONSTRAINT `fk_tbSituacaoOrganizacaoEvento` FOREIGN KEY (`idSituacaoOrganizacaoEvento`) REFERENCES `tbsituacaoorganizacaoevento` (`idSituacaoOrganizacaoEvento`);

--
-- Restrições para tabelas `tbpublicacao`
--
ALTER TABLE `tbpublicacao`
  ADD CONSTRAINT `fk_OrganizacaoEvento_tbPub` FOREIGN KEY (`idOrganizacaoEvento`) REFERENCES `tborganizacaoevento` (`idOrganizacaoEvento`),
  ADD CONSTRAINT `fk_idSituacaoPub` FOREIGN KEY (`idSituacaoPublicacao`) REFERENCES `tbsituacaopublicacao` (`idSituacaoPublicacao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
