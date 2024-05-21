-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Maio-2024 às 22:42
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

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
-- Estrutura da tabela `tbadmin`
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
-- Extraindo dados da tabela `tbadmin`
--

INSERT INTO `tbadmin` (`idAdmin`, `nomeAdmin`, `sobrenomeAdmin`, `cpfAdmin`, `dataNascAdmin`, `emailAdmin`, `senhaAdmin`, `fotoPerfilAdmin`) VALUES
(3, 'Admin', 'Teste', '111.111.111-11', '1111-01-01', 'admin@teste.com', '1234', 'e310347bb0e038aa3366f86519b386ae.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcategoriacontatoorganizacaoevento`
--

CREATE TABLE `tbcategoriacontatoorganizacaoevento` (
  `idCategoriaContatoOrganizacaoEvento` int(11) NOT NULL,
  `categoriaContatoOrganizacaoEvento` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcategoriacontatousuario`
--

CREATE TABLE `tbcategoriacontatousuario` (
  `idCategoriaContatoUsuario` int(11) NOT NULL,
  `categoriaContatoUsuario` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcontatoorganizacaoevento`
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
-- Estrutura da tabela `tbcontatousuario`
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
-- Estrutura da tabela `tbevento`
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
  `dataFimEvento` date DEFAULT NULL,
  `faixaEtariaEvento` varchar(30) NOT NULL,
  `periodoEvento` varchar(30) NOT NULL,
  `valorEvento` varchar(30) NOT NULL,
  `espacoEvento` varchar(30) NOT NULL,
  `descEvento` varchar(1000) NOT NULL,
  `idOrganizacaoEvento` int(11) DEFAULT NULL,
  `imagemEvento` varchar(50) NOT NULL,
  `idSituacaoEvento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbevento`
--

INSERT INTO `tbevento` (`idEvento`, `nomeEvento`, `cepEvento`, `enderecoEvento`, `numeroEvento`, `complementoEvento`, `bairroEvento`, `cidadeEvento`, `ufEvento`, `dataEvento`, `dataFimEvento`, `faixaEtariaEvento`, `periodoEvento`, `valorEvento`, `espacoEvento`, `descEvento`, `idOrganizacaoEvento`, `imagemEvento`, `idSituacaoEvento`) VALUES
(11, 'Peter Pan - Crescer é Preciso', '05402-600', 'Avenida Rebouças', '3970', '', 'Pinheiros', 'São Paulo', 'SP', '2024-05-18', NULL, '5', '2', '2', '3', '\"Peter Pan - Crescer é preciso\" é uma adaptação teatral inovadora que mergulha na jornada emocional de Peter e seus amigos, não apenas ao enfrentarem a transição para a vida adulta, mas também ao se depararem com a responsabilidade de cuidar do planeta e do futuro. Enquanto lidam com seus dilemas pessoais, os personagens confrontam a resistência de Peter em crescer, mas também se deparam com a urgência de preservar a Terra do Nunca, representando um reflexo do nosso próprio mundo, através dos sonhos e da imaginação. Assim, além de explorar a beleza e as dificuldades do crescimento pessoal, \"Peter Pan - Crescer é preciso\" também aborda a mensagem vital de cuidar do meio ambiente, a relação entre pais e filhos e o poder do perdão, inspirando ações ecológicas e responsáveis para as gerações futuras.', 14, '984965fd531c7a5b3b12c722f7a65256.jpg', 1),
(12, 'FANTASY - Uma Viagem Musical', '01413-100', 'Rua Augusta', '2823', '', 'Cerqueira César', 'São Paulo', 'SP', '2024-05-18', '2024-06-02', '5', '2', '2', '3', 'A super produção Fantasy convida você para uma experiência mágica e emocionante, repleta de aventura, música e muita diversão! Prepare-se para embarcar em uma jornada inesquecível, onde os contos de fadas ganham vida de forma surpreendente. Com uma duração total de 1 hora e 35 minutos, incluindo um intervalo de 15 minutos para você recarregar as energias, Fantasy promete encantar o público com suas 12 trocas de cenário, 50 deslumbrantes figurinos e 30 impressionantes efeitos especiais. Ao longo do espetáculo, você será transportado para um mundo mágico com 15 músicas emocionantes preenchendo o ar, efeitos de neve caindo no palco através dos poderes da incrível rainha da neve, gelo seco em diversos números, lasers, vôos aéreos em cena, ilusionismo e muito mais, criando uma atmosfera de pura fantasia.Fantasy traz ao palco: 18 personagens icônicos dos contos de fadas, como Aladdin, Gênio, Pinocchio, Cinderela, Rapunzel, Bela e a Fera, Ariel, Bela Adormecida, Malévola, Jafar, Rainha Má.', 15, '8e0949c3d452b927c1f4157aad229023.jpg', 1),
(13, 'As Três Porquinhas - E a Força da Imaginação', '01238-000', 'Avenida Higienópolis', '618', '', 'Higienópolis', 'São Paulo', 'SP', '2024-05-18', '2024-09-01', '5', '2', '2', '3', 'O espetáculo \"As Três Porquinhas - E a Força da Imaginação\" convida para uma viagem por um mundo encantado onde vivem três adoráveis porquinhas: Pepita, Pétala e Pérola. Com personalidades diferentes, elas se veem diante da grande missão de construir suas casinhas para se protegerem do Lobo Mau. Ao enfrentar os desafios e perigos que surgem pelo caminho, Pepita, Pétala e Pérola levam o público por aventuras inesquecíveis, onde a criatividade, a coragem e a solidariedade viram aliadas na superação dos obstáculos, fortalecendo a amizade e revelando a importância de acreditar em si mesmas. A história, repleta de música, dança e emoção, celebra a magia da infância, a força dos laços familiares e a capacidade transformadora da imaginação.', 16, '428393dc06c281118fa5eaef64102ed0.jpg', 1),
(14, 'A Bela e a Fera - O musical', '01329-000', 'Rua dos Ingleses', '209', '', 'Morro dos Ingleses', 'São Paulo', 'SP', '2024-05-18', '2024-08-25', '5', '2', '2', '3', 'Um musical cantado totalmente ao vivo, com cenários e figurinos deslumbrantes, conta a história de Bela, uma moradora de uma pequena aldeia francesa. Bela tem o pai capturado pela Fera e decide entregar sua vida ao estranho ser em troca da liberdade do seu pai. No castelo, ela conhece objetos mágicos e descobre que a Fera é na verdade um príncipe que precisa de amor para voltar à forma humana.', 17, '5b4b411224bd80acf6573fde8bab49aa.jpg', 1),
(15, 'Pinóquio', '03126-000', 'Rua Capitão Pacheco e Chaves', '313', '', 'Vila Prudente', 'São Paulo', 'SP', '2024-05-01', '2024-05-30', '5', '2', '2', '3', 'Pinóquio é um boneco de madeira que sonha em ser um menino de verdade. Para isso ele conta com a ajuda de um grilo falante que desempenha a nobre função de consciência para ajuda-lo a filtrar as tentações do mundo.', 18, '510a98d6efa083d129e7eb31fdaecc0b.jpg', 1),
(16, 'O Mágico de Oz ', '03126-000', 'Rua Capitão Pacheco e Chaves', '313', '', 'Vila Prudente', 'São Paulo', 'SP', '2024-05-01', '2024-05-30', 'Selecione a faixa etária', 'Selecione o turno', 'Selecione o valor', 'Selecione o valor', 'Doroty e seu cachorro Totó são levados para a Terra mágica de Oz quando um ciclone passa pela fazenda de seus avós em Kansas. Enquanto procura o caminho de volta para casa, acaba conhecendo grandes amigos, como o Espantalho, Homem de Lata e o Leão. E descobre que está num mundo de sonhos que viram realidade, de florestas encantadas e canções maravilhosas.', 18, 'd67630393e20403285a3f45681337804.jpg', 1),
(17, 'Teatro Para Bebês: Descobertas', '03126-000', 'Rua Capitão Pacheco e Chaves', '313', '', 'Vila Prudente', 'São Paulo', 'SP', '2024-05-18', '2024-06-29', '5', '2', '2', '3', 'Três Crianças acordam em um acampamento, e juntas, começam a explorar objetos, sons, cores, natureza e tudo o que encontram ao redor. Que som tem a água? Quantos dedos temos nas mãos? Quais as letras do alfabeto? Quais as cores do arco-íris? Esse é o cheiro da terra molhada? Interagindo com os diversos estímulos sensoriais que encontram pelo caminho, e explorando o mundo sob a percepção da criança em que tudo é novo, os três amigos superam os desafios do aprendizado. Espetáculo sensorial para a família inteira. Há interação total com o público! Algumas pessoas serão convidadas a subir no palco e participar do espetáculo. A plateia também tem uma participação especial com orientação e auxílio dos atores. Indicado para crianças 0 a 6 anos e totalmente adaptado para crianças com necessidades especiais.', 18, '4a811897b6c205de28ca6adc6f0c7205.jpg', 1),
(18, 'Moana e Maui, O Musical', '03126-000', 'Rua Capitão Pacheco e Chaves', '313', '', 'Vila Prudente', 'São Paulo', 'SP', '2024-05-18', '2024-06-23', '5', '2', '2', '3', 'Moana é uma corajosa jovem, filha única do chefe de uma tribo na Oceania, vinda de uma longa linhagem de navegadores. Quando os pescadores de sua ilha não conseguem pescar nenhum peixe e as colheitas falham, ela descobre que o semideus Maui causou a praga ao roubar o coração da deusa Te Fiti. Entusiasta das viagens marítimas, a jovem se vê querendo descobrir mais sobre seu passado e ajudar a comunidade, mesmo que a família queira proteger Moana a qualquer custo. Então, ela resolve partir em busca de seus ancestrais, habitantes de uma ilha mítica que ninguém sabe onde é. A única maneira de curar a ilha é persuadir Maui a devolver o coração de Te Fiti, então Moana parte em uma jornada épica pelo Pacífico. Moana começa sua jornada em mar aberto, onde enfrenta terríveis criaturas marinhas e descobre histórias do submundo.', 18, '9d8ce220b490e77803e7f92a73a926f4.jpg', 1),
(19, 'Rapha e Mandy Em As Melhores Férias Do Mundo', '03126-000', 'Rua Capitão Pacheco e Chaves', '313', '', 'Vila Prudente', 'São Paulo', 'SP', '2024-07-07', '2024-07-28', '5', '2', '2', '3', 'Rapha e Mandy são dois amigos cheios de energia e imaginação. Durante as férias escolares, todos os seus amigos foram viajar. Rapha e Mandy então decidem explorar o quintal de casa em busca de aventura e diversão. Eles adoram brincar de ser youtubers nas horas vagas, e usam a imaginação para criar vídeos divertidos. Ao longo de suas jornadas, Rapha e Mandy vivem grandes aventuras, encontram personagens e enfrentam perigos inesperados. Eles precisam usar toda a sua coragem e inteligência, superar seus medos para vencer obstáculos e desvendar mistérios. \"As Melhores Férias do Mundo\" é uma história emocionante que mostra a importância de explorar a imaginação, da amizade e criar memórias inesquecíveis. Prepare-se para embarcar nessa incrível jornada cheia de diversão e descobertas.', 18, 'cfc213aecb8f812f7b8b8aefbec99f89.jpg', 1),
(20, 'Futebol de Brinquedo', '01234-010', 'Praça Charles Miller', 's/n', '', 'Pacaembu', 'São Paulo', 'SP', '2023-10-12', '2024-05-31', '5', '4', '1', '2', 'Alguns dos brinquedos da mostra são raros e há itens com mais de 60 anos. Há também muitos itens inusitados, como figuras da Betty Boop, Smurfete, Mickey Mouse, Snoopy e Fofolete vestidos com a camisa da Seleção Brasileira. Os brinquedos mais recentes também foram incluídos na exposição, como vários minicraques – incluindo a recém-lançada jogadora Debinha – e os bonecos Funko. O público também vai poder ver uma mini-Barbie jogadora de futebol e uma Barbie treinadora, além de uma coleção de mascotes das Copas em pelúcia, desde o cachorrinho Striker (Copa masculina de 1994, nos Estados Unidos) à mais nova da turma, Tazuni (Copa de mulheres de 2023, na Austrália e Nova Zelândia).  ', 20, 'cca97cfb1044db29c08c642b47b0cd2b.jpg', 1),
(21, 'Contação de Histórias – Narrativas Sensoriais com Ver com Palavras', '01504-000', 'Rua Vergueiro', '1000', '', 'Liberdade', 'São Paulo', 'SP', '2024-06-25', '2024-06-26', '5', '2', '1', '4', 'Narrativas Sensoriais’ é uma programação que tem como objetivo buscar inclusão nas Contações de Histórias através dos sentidos. Neste encontro, convidamos o público presente a explorar um mundo de narrativas através da Língua Brasileira de Sinais (LIBRAS) e da magia das palavras adaptadas para pessoas cegas. Neste projeto, a comunicação transcende as barreiras físicas e se torna uma dança de gestos e sensações. Nossos contadores de histórias especializados conduzem o público por aventuras emocionantes. Seja um espectador surdo, cego, ou simplesmente alguém em busca de novas vivências inclusivas. ‘Narrativas Sensoriais’ busca trazer uma jornada de conexão, acessibilidade na leitura e entendimento.', 21, '2b1f2999a0f7ea0c354d4e087a290add.jpg', 1),
(22, 'Mundo Jardim: Conto de Todos os Cantos', '01504-000', 'Rua Vergueiro', '1000', '', 'Liberdade', 'São Paulo', 'SP', '2024-05-19', '2024-12-08', '5', '1', '1', '4', 'Bem-vindos ao “Mundo Jardim: Conto de Todos os Cantos”, uma experiência encantadora que floresce a imaginação e nutre o amor pela leitura! Neste evento envolvente, os participantes são convidados a explorar um universo de histórias e descobertas, guiados por mediadores apaixonados por contos. Em meio a um jardim literário, onde as pétalas são feitas de páginas e os rios são feitos de histórias, mergulhe em aventuras que revelam mundos desconhecidos e culturas fascinantes. Celebre a magia da leitura, onde os livros são sementes que germinam saberes e ideias, cultivando empatia e imaginação para leitores de todas as idades.', 21, 'e88d72f56bf4e8ee30e1fde2b6489a4e.jpg', 1),
(23, 'Hoje O Escuro Vai Atrasar Para Que Possamos Conversar', '01504-000', 'Rua Vergueiro', '1000', '', 'Liberdade', 'São Paulo', 'SP', '2024-05-28', '2024-05-29', '5', '2', '1', '4', 'Hoje o escuro vai atrasar para que possamos conversar se passa em um triste vilarejo onde não vivem mais animais, nem domésticos e nem silvestres. Algo muito estranho aconteceu no passado que provocou a fuga dos bichinhos e os transformou em seres quase mitológicos, lembrados apenas nas aulas da professora Rafaela. \r\nNesse lugar misterioso, vivem os colegas Santi, Clara e Luna, que, depois de sofrer bullying de seus colegas também desapareceu. Desconfiados de que Luna teria sido raptada pelo Espírito do “não-sei-o-quê” do bosque, Santi e Clara partem floresta a dentro em busca da amiga. \r\nA encenação apresenta ao público delicados temas discutidos pela obra de Amós Oz, como os efeitos da discriminação e do tratamento indesejado, como o bullying isola as pessoas e a consciência de que o “outro” também tem medos, fragilidades e inseguranças. A ideia é fazer com que as crianças entendam a alteridade como uma extensão do eu, desconstruir o processo vicioso de desqualificação de um indivídu', 21, '7cc93252cead52beb64e857f6b011580.jpg', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbfeedbackapp`
--

CREATE TABLE `tbfeedbackapp` (
  `idFeedBackApp` int(11) NOT NULL,
  `tituloFeedBackApp` varchar(50) DEFAULT NULL,
  `descFeedbackApp` varchar(300) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbinteresseevento`
--

CREATE TABLE `tbinteresseevento` (
  `idInteresseEvento` int(11) NOT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `idEvento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tborganizacaoevento`
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
-- Extraindo dados da tabela `tborganizacaoevento`
--

INSERT INTO `tborganizacaoevento` (`idOrganizacaoEvento`, `nomeOrganizacaoEvento`, `cnpjOrganizacaoEvento`, `cepOrganizacaoEvento`, `enderecoOrganizacaoEvento`, `numeroOrganizacaoEvento`, `complementoOrganizacaoEvento`, `bairroOrganizacaoEvento`, `cidadeOrganizacaoEvento`, `ufOrganizacaoEvento`, `telOrganizacaoEvento`, `emailOrganizacaoEvento`, `senhaOrganizacaoEvento`, `linkSiteOrganizacaoEvento`, `imagemOrganizacaoEvento`, `descOrganizacaoEvento`, `idSituacaoOrganizacaoEvento`) VALUES
(14, 'Teatro das Artes', '08.505.736/0003-95', '05402-60', 'Avenida Rebouças', '3970', '', 'Pinheiros', 'São Paulo', 'SP', '(11)30340-075', 'teatro@artes.com', 'Senha12345$', NULL, NULL, NULL, 2),
(15, 'Teatro Procópio Ferreira', '01.148.183/0001-50', '01413-10', 'Rua Augusta', '2823', '', 'Cerqueira César', 'São Paulo', 'SP', '(11)30834-475', 'teatroprocopio@ferreira.com', 'Senha12345$', NULL, NULL, NULL, 2),
(16, 'Teatro oul', '59.596.908/0001-52', '01238-00', 'Avenida Higienópolis', '618', '', 'Higienópolis', 'São Paulo', 'SP', '(11)38232-323', 'teatro@oul.com', 'Senha12345$', NULL, NULL, NULL, 2),
(17, 'Teatro Ruth Escobar', '28.624.310/0001-04', '01329-00', 'Rua dos Ingleses', '209', '', 'Morro dos Ingleses', 'São Paulo', 'SP', '(11)32892-358', 'teatroruth@escobar.com', 'Senha12345$', NULL, NULL, NULL, 2),
(18, 'Teatro Mooca', '16.515.454/0001-35', '03126-00', 'Rua Capitão Pacheco e Chaves', '313', '', 'Vila Prudente', 'São Paulo', 'SP', '(99)88500-22', 'teatro@mooca.com', 'Senha12345$', NULL, NULL, NULL, 2),
(19, 'Parque Ecológico do Tiête', '06.231.760/0001-96', '03719-00', 'Via Parque', '8055', '', 'Vila Santo Henrique', 'São Paulo', 'SP', '(11)28232-250', 'parque@ecologicotiete.com', 'Senha12345$', NULL, NULL, NULL, 3),
(20, 'Prefeitura de São Paulo', '63.002.141/0001-63', '01002-02', 'Viaduto do Chá', '15', '', 'Centro', 'São Paulo', 'SP', '(00)00000-0000', 'prefeitura@sp.com', 'Senha12345$', NULL, NULL, NULL, 2),
(21, 'Centro Cultural São Paulo', '49.269.244/0006-78', '01504-00', 'Rua Vergueiro', '1000', '', 'Liberdade', 'São Paulo', 'SP', '(11)33974-002', 'centrocultural@sp.com', 'Senha12345$', NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpublicacao`
--

CREATE TABLE `tbpublicacao` (
  `idPublicacao` int(11) NOT NULL,
  `tituloPublicacao` varchar(50) DEFAULT NULL,
  `descPublicacao` varchar(300) DEFAULT NULL,
  `LinkOrganizacaoEvento` varchar(2000) DEFAULT NULL,
  `idOrganizacaoEvento` int(11) DEFAULT NULL,
  `idSituacaoPublicacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbsituacaoevento`
--

CREATE TABLE `tbsituacaoevento` (
  `idSituacaoEvento` int(11) NOT NULL,
  `situacaoEvento` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbsituacaoevento`
--

INSERT INTO `tbsituacaoevento` (`idSituacaoEvento`, `situacaoEvento`) VALUES
(1, 'Ativo'),
(2, 'Arquivado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbsituacaoorganizacaoevento`
--

CREATE TABLE `tbsituacaoorganizacaoevento` (
  `idSituacaoOrganizacaoEvento` int(11) NOT NULL,
  `situacaoOrganizacaoEvento` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbsituacaoorganizacaoevento`
--

INSERT INTO `tbsituacaoorganizacaoevento` (`idSituacaoOrganizacaoEvento`, `situacaoOrganizacaoEvento`) VALUES
(1, 'Pendente'),
(2, 'Ativo'),
(3, 'Desativado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbsituacaopublicacao`
--

CREATE TABLE `tbsituacaopublicacao` (
  `idSituacaoPublicacao` int(11) NOT NULL,
  `situacaoPublicacao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbsituacaopublicacao`
--

INSERT INTO `tbsituacaopublicacao` (`idSituacaoPublicacao`, `situacaoPublicacao`) VALUES
(1, 'Ativo'),
(2, 'Arquivado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbtokenadmin`
--

CREATE TABLE `tbtokenadmin` (
  `idTokenAdmin` int(11) NOT NULL,
  `valorTokenAdmin` char(5) DEFAULT NULL,
  `idAdmin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbtokenorganizacaoevento`
--

CREATE TABLE `tbtokenorganizacaoevento` (
  `idTokenOrganizacaoEvento` int(11) NOT NULL,
  `valorTokenOrganizacaoEvento` char(5) DEFAULT NULL,
  `idOrganizacaoEvento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbtokenusuario`
--

CREATE TABLE `tbtokenusuario` (
  `idTokenUsuario` int(11) NOT NULL,
  `valorTokenUsuario` char(5) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbusuario`
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
-- Extraindo dados da tabela `tbusuario`
--

INSERT INTO `tbusuario` (`idUsuario`, `nomeUsuario`, `sobrenomeUsuario`, `emailUsuario`, `senhaUsuario`, `telUsuario`, `imagemPerfilUsuario`, `imagemBannerUsuario`) VALUES
(7, 'Usuário', 'Teste', 'usuario@teste.com', '1234', '(11)77777-7777', 'e948d34aa5220121b6cce26dd23858c8.jpg', '27dec93c909e14c0e868924ea98b101b.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbusuarioseguindo`
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
-- Índices para tabela `tbadmin`
--
ALTER TABLE `tbadmin`
  ADD PRIMARY KEY (`idAdmin`),
  ADD UNIQUE KEY `cpfAdmin` (`cpfAdmin`),
  ADD UNIQUE KEY `emailAdmin` (`emailAdmin`);

--
-- Índices para tabela `tbcategoriacontatoorganizacaoevento`
--
ALTER TABLE `tbcategoriacontatoorganizacaoevento`
  ADD PRIMARY KEY (`idCategoriaContatoOrganizacaoEvento`);

--
-- Índices para tabela `tbcategoriacontatousuario`
--
ALTER TABLE `tbcategoriacontatousuario`
  ADD PRIMARY KEY (`idCategoriaContatoUsuario`);

--
-- Índices para tabela `tbcontatoorganizacaoevento`
--
ALTER TABLE `tbcontatoorganizacaoevento`
  ADD PRIMARY KEY (`idContatoOrganizacaoEvento`),
  ADD KEY `idOrganizacaoEvento` (`idOrganizacaoEvento`),
  ADD KEY `fk_categoriaContato` (`idCategoriaContatoOrganizacaoEvento`);

--
-- Índices para tabela `tbcontatousuario`
--
ALTER TABLE `tbcontatousuario`
  ADD PRIMARY KEY (`idContatoUsuario`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `fk_categoriaContatoUsuario` (`idCategoriaContatoUsuario`);

--
-- Índices para tabela `tbevento`
--
ALTER TABLE `tbevento`
  ADD PRIMARY KEY (`idEvento`),
  ADD KEY `idOrganizacaoEvento` (`idOrganizacaoEvento`),
  ADD KEY `fk_situacaoEvento` (`idSituacaoEvento`);

--
-- Índices para tabela `tbfeedbackapp`
--
ALTER TABLE `tbfeedbackapp`
  ADD PRIMARY KEY (`idFeedBackApp`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Índices para tabela `tbinteresseevento`
--
ALTER TABLE `tbinteresseevento`
  ADD PRIMARY KEY (`idInteresseEvento`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idEvento` (`idEvento`);

--
-- Índices para tabela `tborganizacaoevento`
--
ALTER TABLE `tborganizacaoevento`
  ADD PRIMARY KEY (`idOrganizacaoEvento`),
  ADD KEY `fk_tbSituacaoOrganizacaoEvento` (`idSituacaoOrganizacaoEvento`);

--
-- Índices para tabela `tbpublicacao`
--
ALTER TABLE `tbpublicacao`
  ADD PRIMARY KEY (`idPublicacao`),
  ADD KEY `fk_OrganizacaoEvento_tbPub` (`idOrganizacaoEvento`),
  ADD KEY `fk_idSituacaoPub` (`idSituacaoPublicacao`);

--
-- Índices para tabela `tbsituacaoevento`
--
ALTER TABLE `tbsituacaoevento`
  ADD PRIMARY KEY (`idSituacaoEvento`);

--
-- Índices para tabela `tbsituacaoorganizacaoevento`
--
ALTER TABLE `tbsituacaoorganizacaoevento`
  ADD PRIMARY KEY (`idSituacaoOrganizacaoEvento`);

--
-- Índices para tabela `tbsituacaopublicacao`
--
ALTER TABLE `tbsituacaopublicacao`
  ADD PRIMARY KEY (`idSituacaoPublicacao`);

--
-- Índices para tabela `tbtokenadmin`
--
ALTER TABLE `tbtokenadmin`
  ADD PRIMARY KEY (`idTokenAdmin`),
  ADD KEY `idAdmin` (`idAdmin`);

--
-- Índices para tabela `tbtokenorganizacaoevento`
--
ALTER TABLE `tbtokenorganizacaoevento`
  ADD PRIMARY KEY (`idTokenOrganizacaoEvento`),
  ADD KEY `idOrganizacaoEvento` (`idOrganizacaoEvento`);

--
-- Índices para tabela `tbtokenusuario`
--
ALTER TABLE `tbtokenusuario`
  ADD PRIMARY KEY (`idTokenUsuario`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Índices para tabela `tbusuario`
--
ALTER TABLE `tbusuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Índices para tabela `tbusuarioseguindo`
--
ALTER TABLE `tbusuarioseguindo`
  ADD PRIMARY KEY (`idSeguindo`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idOrganizacaoEvento` (`idOrganizacaoEvento`);

--
-- AUTO_INCREMENT de tabelas despejadas
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
  MODIFY `idEvento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `tbfeedbackapp`
--
ALTER TABLE `tbfeedbackapp`
  MODIFY `idFeedBackApp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbinteresseevento`
--
ALTER TABLE `tbinteresseevento`
  MODIFY `idInteresseEvento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `tborganizacaoevento`
--
ALTER TABLE `tborganizacaoevento`
  MODIFY `idOrganizacaoEvento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tbcontatoorganizacaoevento`
--
ALTER TABLE `tbcontatoorganizacaoevento`
  ADD CONSTRAINT `fk_categoriaContato` FOREIGN KEY (`idCategoriaContatoOrganizacaoEvento`) REFERENCES `tbcategoriacontatoorganizacaoevento` (`idCategoriaContatoOrganizacaoEvento`),
  ADD CONSTRAINT `tbcontatoorganizacaoevento_ibfk_1` FOREIGN KEY (`idOrganizacaoEvento`) REFERENCES `tborganizacaoevento` (`idOrganizacaoEvento`);

--
-- Limitadores para a tabela `tbcontatousuario`
--
ALTER TABLE `tbcontatousuario`
  ADD CONSTRAINT `fk_categoriaContatoUsuario` FOREIGN KEY (`idCategoriaContatoUsuario`) REFERENCES `tbcategoriacontatousuario` (`idCategoriaContatoUsuario`),
  ADD CONSTRAINT `tbcontatousuario_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `tbusuario` (`idUsuario`);

--
-- Limitadores para a tabela `tbevento`
--
ALTER TABLE `tbevento`
  ADD CONSTRAINT `fk_situacaoEvento` FOREIGN KEY (`idSituacaoEvento`) REFERENCES `tbsituacaoevento` (`idSituacaoEvento`),
  ADD CONSTRAINT `tbevento_ibfk_1` FOREIGN KEY (`idOrganizacaoEvento`) REFERENCES `tborganizacaoevento` (`idOrganizacaoEvento`);

--
-- Limitadores para a tabela `tbfeedbackapp`
--
ALTER TABLE `tbfeedbackapp`
  ADD CONSTRAINT `tbfeedbackapp_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `tbusuario` (`idUsuario`);

--
-- Limitadores para a tabela `tbinteresseevento`
--
ALTER TABLE `tbinteresseevento`
  ADD CONSTRAINT `tbinteresseevento_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `tbusuario` (`idUsuario`),
  ADD CONSTRAINT `tbinteresseevento_ibfk_2` FOREIGN KEY (`idEvento`) REFERENCES `tbevento` (`idEvento`);

--
-- Limitadores para a tabela `tborganizacaoevento`
--
ALTER TABLE `tborganizacaoevento`
  ADD CONSTRAINT `fk_tbSituacaoOrganizacaoEvento` FOREIGN KEY (`idSituacaoOrganizacaoEvento`) REFERENCES `tbsituacaoorganizacaoevento` (`idSituacaoOrganizacaoEvento`);

--
-- Limitadores para a tabela `tbpublicacao`
--
ALTER TABLE `tbpublicacao`
  ADD CONSTRAINT `fk_OrganizacaoEvento_tbPub` FOREIGN KEY (`idOrganizacaoEvento`) REFERENCES `tborganizacaoevento` (`idOrganizacaoEvento`),
  ADD CONSTRAINT `fk_idSituacaoPub` FOREIGN KEY (`idSituacaoPublicacao`) REFERENCES `tbsituacaopublicacao` (`idSituacaoPublicacao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
