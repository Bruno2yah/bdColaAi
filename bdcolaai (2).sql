-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/05/2024 às 10:15
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

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
(4, 'ADM ', 'Padrão', '111111111111', '0000-00-00', 'admin@padrao.com', 'Senha12345#', NULL);

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
  `dataEvento` date NOT NULL,
  `faixaEtariaEvento` varchar(50) NOT NULL,
  `periodoEvento` varchar(30) NOT NULL,
  `valorEvento` varchar(30) NOT NULL,
  `espacoEvento` varchar(30) NOT NULL,
  `descEvento` varchar(1000) NOT NULL,
  `idOrganizacaoEvento` int(11) DEFAULT NULL,
  `imagemEvento` varchar(50) NOT NULL,
  `idSituacaoEvento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbevento`
--

INSERT INTO `tbevento` (`idEvento`, `nomeEvento`, `cepEvento`, `enderecoEvento`, `numeroEvento`, `complementoEvento`, `bairroEvento`, `cidadeEvento`, `ufEvento`, `dataEvento`, `faixaEtariaEvento`, `periodoEvento`, `valorEvento`, `espacoEvento`, `descEvento`, `idOrganizacaoEvento`, `imagemEvento`, `idSituacaoEvento`) VALUES
(10, 'Hora do Conto', '02030-100', 'Avenida Cruzeiro do Sul', '2630', '', 'Canindé', 'São Paulo', 'SP', '2024-05-25', '5', '2', '1', '4', 'Entre no mundo da aventura e imaginação!', 16, '7e4b9dc76fd472fe9dddaf32c722edb5.jpg', 1),
(11, 'Lê no ninho', '02030-100', 'Avenida Cruzeiro do Sul', '2630', '', 'Canindé', 'São Paulo', 'SP', '2024-05-26', '3', '1', '1', '4', 'Experiência de interação com a leitura para bebês e crianças de 6 meses a 4 anos.', 16, '5274336147f38e0259c444834bfd47aa.jpg', 1),
(12, 'Brincando e Aprendendo', '02030-100', 'Avenida Cruzeiro do Sul', '2630', '', 'Canindé', 'São Paulo', 'SP', '2024-05-16', '4', '2', '1', '4', 'Venha jogar e participar de gincanas com a gente.', 16, 'bc462d368a5f0487371b123d9a484faf.jpg', 1),
(14, 'Festa do sorvete', '08460-365', 'Rua Feliciano de Mendonça', '290', '', 'Jardim São Paulo(Zon', 'São Paulo', 'SP', '2024-05-11', '5', '2', '1', '4', 'Venha aproveitar nesse calor com sua família. Teremos sorvete de todos os sabores, mexerica, bis, feijoada e temaki. Aproveite!', 18, '9ff09e74b981417a1161eea333bcfb6c.jpg', 1),
(16, 'Anime Friends', '08537-330', 'Rua Ariovaldo Honório de Andrade', '21', '', 'Jardim Rosana', 'Ferraz de Vasconcelos', 'SP', '2024-05-25', '5', '2', '1', '1', 'ATA', 15, '22c7ebca44e36fdcc93b831024b85f6b.jpg', 1),
(17, 'Neyday', '08537-330', 'Rua Ariovaldo Honório de Andrade', '21', '', 'Jardim Rosana', 'Ferraz de Vasconcelos', 'SP', '2024-05-25', '4', '1', '1', '3', 'aaaaaaaaaaaaaaaa', 15, '020704bf1ba5262a9c1bbb03a553286d.jpg', 1);

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
(1, 5, 17),
(2, 5, 16);

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
(12, 'Centro Cultural de São Paulo', '49.269.244/0006-78', '01504000', 'Rua Vergueiro', '1000', '', 'Liberdade', 'São Paulo', 'SP', '(11)33974-002', 'centroculturalsp@gmail.com', 'Senha12345#', NULL, NULL, NULL, 2),
(15, 'Fabrica de Cultura Parque Belem', '00.000.000/0000-00', '03015-00', 'Avenida Celso Garcia', '2231', '', 'Brás', 'São Paulo', 'SP', '(11)26183-447', 'fabricadecultura@belem.com', 'Senha12345#', NULL, NULL, NULL, 2),
(16, 'Biblioteca de São Paulo', '00.000.000/0000-00', '02030-10', 'Avenida Cruzeiro do Sul', '2630', '', 'Canindé', 'São Paulo', 'SP', '(01)12089-0800', 'biblioteca@sp.com', 'Senha12345#', NULL, NULL, NULL, 2),
(17, 'Fabrica de Cultura Cidade Tiradentes', '08.698.186/0004-59', '08421-53', 'Avenida Henriqueta Noguez Brieba', '281', '', 'Conjunto Habitaciona', 'São Paulo', 'SP', '(11)25563-624', 'fabricadecultura@tiradentes.com', 'Senha12345#', NULL, NULL, NULL, 2),
(18, 'Etec de Guaianazes', '62.823.257/0119-01', '08460-36', 'Rua Feliciano de Mendonça', '290', 'ND', 'Jardim São Paulo(Zon', 'São Paulo', 'SP', '(11)92829-2829', 'qualquercoisa@gmail.com', '12345678@', NULL, NULL, NULL, 3);

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
(2, 'Teste', 'teste', NULL, 12, 2),
(3, 'teste 2 ', 'teste 2', NULL, 12, 1),
(4, 'Modo Circo', 'Evento que aconteceu hoje dia 29/05/2024 e se extenderá até julho. Venha participar!!!', NULL, 16, 1);

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
(5, 'Usuário', 'Teste', 'usuario@teste.com', '12345', '0000000000000', 'ac14d370b3e560c8f707404afcc258af.jpg', '');

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
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `idEvento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `tbfeedbackapp`
--
ALTER TABLE `tbfeedbackapp`
  MODIFY `idFeedBackApp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbinteresseevento`
--
ALTER TABLE `tbinteresseevento`
  MODIFY `idInteresseEvento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tborganizacaoevento`
--
ALTER TABLE `tborganizacaoevento`
  MODIFY `idOrganizacaoEvento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `tbpublicacao`
--
ALTER TABLE `tbpublicacao`
  MODIFY `idPublicacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
