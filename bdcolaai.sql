-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Jun-2024 às 21:03
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
(3, 'Admin', 'Teste', '111.111.111-11', '2004-06-02', 'admin@gmail.com', 'Senha12345$', 'e310347bb0e038aa3366f86519b386ae.jpg');

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
(23, 'Hoje O Escuro Vai Atrasar Para Que Possamos Conversar', '01504-000', 'Rua Vergueiro', '1000', '', 'Liberdade', 'São Paulo', 'SP', '2024-05-28', '2024-05-29', '5', '2', '1', '4', 'Hoje o escuro vai atrasar para que possamos conversar se passa em um triste vilarejo onde não vivem mais animais, nem domésticos e nem silvestres. Algo muito estranho aconteceu no passado que provocou a fuga dos bichinhos e os transformou em seres quase mitológicos, lembrados apenas nas aulas da professora Rafaela. \r\nNesse lugar misterioso, vivem os colegas Santi, Clara e Luna, que, depois de sofrer bullying de seus colegas também desapareceu. Desconfiados de que Luna teria sido raptada pelo Espírito do “não-sei-o-quê” do bosque, Santi e Clara partem floresta a dentro em busca da amiga. \r\nA encenação apresenta ao público delicados temas discutidos pela obra de Amós Oz, como os efeitos da discriminação e do tratamento indesejado, como o bullying isola as pessoas e a consciência de que o “outro” também tem medos, fragilidades e inseguranças. A ideia é fazer com que as crianças entendam a alteridade como uma extensão do eu, desconstruir o processo vicioso de desqualificação de um indivídu', 21, '7cc93252cead52beb64e857f6b011580.jpg', 1),
(25, 'Olimpíadas no Parque', '03719-000', 'Via Parque', '8055', '', 'Vila Santo Henrique', 'São Paulo', 'SP', '2024-06-01', '2024-06-29', '4', '2', '1', '1', 'Uma competição amigável com várias atividades esportivas adaptadas para o ambiente do parque, como corrida de saco, cabo de guerra, corrida de obstáculos simples e lançamento de frisbee. As crianças podem competir individualmente ou em equipes.', 20, '5b8493e294883f46705da5268e7034eb.jpg', 1),
(26, 'Festival de Pipas', '03719-000', 'Rua Guira', '8055 ', '', 'Jardim Santo Onofre', 'São Paulo', 'SP', '2024-05-04', '2024-06-30', '4', '2', '1', '1', 'Um dia dedicado a construir e voar pipas no parque. As crianças podem aprender a fazer suas próprias pipas simples utilizando papel, bambu e linha. Após a construção, elas podem competir em categorias como maior tempo de voo, maior altura alcançada e criatividade na decoração da pipa.', 20, 'a00e6d94e8e2a2d5b29f1237d550ce47.jpg', 1),
(27, 'Dia do Picnic Criativo', '03719-000', 'Rua Guira', '8055', '', 'Jardim Santo Onofre', 'São Paulo', 'SP', '2024-06-10', '2024-07-30', '4', '2', '2', '1', 'Um evento onde as crianças podem trazer suas cestas de picnic e participar de atividades criativas como pintura com giz de calçada, montagem de pequenos terrários com elementos naturais do parque, e contação de histórias ao redor de uma toalha estendida no gramado.', 20, '17039a9ae54a46e1c7bdeb8750ff93fa.jpg', 1),
(28, 'Observação de Estrelas', '03719-000', 'Rua Guira', '8055', '', 'Jardim Santo Onofre', 'São Paulo', 'SP', '2024-06-01', '2024-07-30', '4', '3', '1', '1', 'Um evento noturno onde as crianças têm a oportunidade de observar o céu estrelado usando telescópios e binóculos. Guiados por astrônomos amadores ou especialistas, podem aprender sobre constelações, planetas visíveis e curiosidades sobre o universo.\r\n', 20, '249544acff687329c832fcedc533ed49.jpg', 1),
(29, 'Oficina de Arte Interativa', '01413-100', 'Rua Augusta', '2823', '', 'Cerqueira César', 'São Paulo', 'SP', '2024-05-06', '2024-07-27', '4', '2', '1', '2', 'Uma oficina onde as crianças podem criar suas próprias obras de arte inspiradas nas coleções do museu. Podem usar diferentes técnicas como pintura, colagem, modelagem com argila ou até mesmo arte digital, dependendo das instalações do museu.', 15, 'cac89aeb5b6f24863f74df2f6e7da6e3.jpg', 1),
(30, 'Contação de Histórias Multissensorial', '01413-100', 'Rua Augusta', '2328', '', 'Cerqueira César', 'São Paulo', 'SP', '2024-05-04', '2024-06-27', '3', '2', '1', '2', 'Sessões de contação de histórias que envolvem não apenas a narrativa oral, mas também elementos sensoriais como músicas, aromas e texturas relacionadas aos temas das exposições do museu. Pode incluir histórias tradicionais, mitos culturais ou contos de aventura', 15, 'ec08d4010bc1600cc49d1ecb692c308d.jpg', 1),
(31, 'Festival de Culturas', '01413-100', 'Rua Augusta', '2328', '', 'Cerqueira César', 'São Paulo', 'SP', '2024-05-06', '2024-06-27', '3', '2', '1', '2', 'Um evento que celebra a diversidade cultural através de apresentações de danças folclóricas, músicas tradicionais, demonstrações culinárias e oficinas artísticas inspiradas em diferentes culturas representadas nas exposições do museu.', 15, 'bd2f722cdef63b29c30b2e437bbffc92.jpg', 1);

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

--
-- Extraindo dados da tabela `tbinteresseevento`
--

INSERT INTO `tbinteresseevento` (`idInteresseEvento`, `idUsuario`, `idEvento`) VALUES
(15, 8, 11),
(16, 8, 13),
(17, 8, 25),
(18, 8, 23),
(19, 9, 11),
(20, 9, 13),
(21, 9, 25),
(22, 9, 23),
(23, 9, 12),
(24, 10, 11),
(25, 10, 13),
(26, 10, 25),
(27, 10, 20),
(28, 10, 23),
(29, 11, 11),
(30, 11, 12),
(31, 11, 14),
(32, 11, 25),
(33, 12, 25),
(34, 12, 11),
(35, 12, 14),
(36, 12, 20),
(37, 13, 25),
(38, 13, 14),
(39, 13, 11),
(40, 13, 23),
(42, 14, 12),
(43, 14, 11),
(44, 14, 20),
(45, 14, 23),
(47, 15, 14),
(48, 15, 11),
(49, 15, 12),
(50, 15, 15),
(52, 16, 11),
(53, 16, 12),
(54, 16, 17),
(55, 16, 25),
(56, 16, 20),
(58, 17, 13),
(59, 17, 11),
(60, 17, 12),
(61, 17, 14),
(62, 17, 25),
(63, 17, 20),
(64, 17, 23);

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
(14, 'Teatro das Artes', '08.505.736/0003-95', '05402-60', 'Avenida Rebouças', '3970', '', 'Pinheiros', 'São Paulo', 'SP', '11-30340-075', 'teatro@artes.com', 'Senha12345$', 'http://teatrodasartessp.com.br', '1c5eaf573934caedc41851389492da6e.jpg', 'Localizado no coração da cidade de São Paulo, junto à Av. Faria Lima e a Marginal Pinheiros, o Teatro das Artes tem capacidade para 769 lugares e está localizado no Shopping Eldorado, por onde circulam milhares de pessoas mensalmente.\r\nA casa caracteriza-se tanto como espaço de apresentação de espetáculos teatrais, como de realização de diversos generos, sendo dotada de uma estrutura dinâmica e elegante para recepcionar o público . Possui com um ampla bomboniére e salas complementares às instala', 2),
(15, 'Teatro Procópio Ferreira', '01.148.183/0001-50', '01413-10', 'Rua Augusta', '2823', '', 'Cerqueira César', 'São Paulo', 'SP', '11-30834-475', 'teatroprocopio@ferreira.com', 'Senha12345$', 'https://teatroprocopioferreira.com.br', 'd3c7be8b0435115a9032a062eacc0d4e.jpg', 'Construído em 1948, o Teatro Procópio Ferreira é hoje um dos principais pontos culturais da cidade de São Paulo. Durante seis anos, seu palco foi cenário do famoso programa humorístico \"Sai de Baixo\", exibido pela Rede Globo entre 1996 e 2002.', 2),
(16, 'Teatro oul', '59.596.908/0001-52', '01238-00', 'Avenida Higienópolis', '618', '', 'Higienópolis', 'São Paulo', 'SP', '11-38232-323', 'teatro@oul.com', 'Senha12345$', 'https://teatrouol.com.br', '37856cb0316baab47eecf9ad6268ef2c.jpg', 'O Teatro Uol é consagrado como um dos mais sofisticados espaços culturais da cidade, oferecendo ao público grande diversidade de linguagens artísticas e garantindo a qualidade de cada espetáculo.', 2),
(17, 'Teatro Ruth Escobar', '28.624.310/0001-04', '01329-00', 'Rua dos Ingleses', '209', '', 'Morro dos Ingleses', 'São Paulo', 'SP', '11-32892-358', 'teatroruth@escobar.com', 'Senha12345$', 'https://www.teatroruthescobar.com.br', '51cd228795603ed38c8fd0f8fb98a64b.jpg', 'O teatro Ruth Escobar foi fundado em 1963 na rua dos Ingleses em São Paulo, SP. O teatro leva o nome da atriz e antiga proprietária do terreno onde foi erguido, Ruth Escobar. A inauguração do teatro também contou com apoio da coletividade portuguesa de São Paulo.', 2),
(18, 'Teatro Mooca', '16.515.454/0001-35', '03126-00', 'Rua Capitão Pacheco e Chaves', '313', '', 'Vila Prudente', 'São Paulo', 'SP', '99-88500-22', 'teatro@mooca.com', 'Senha12345$', 'https://www.teatromooca.com.br', '69760fc6058232d2288ea9a8c473661f.jpg', 'Voltado para toda a família e público em geral, o Teatro Mooca possuí características únicas, aconchegante, com localização privilegiada em um dos melhores shopping centers da cidade, o Mooca Plaza Shopping, e totalmente pronto para receber os maiores espetáculos, shows e eventos.', 2),
(20, 'Prefeitura de São Paulo', '63.002.141/0001-63', '01002-02', 'Viaduto do Chá', '15', '', 'Centro', 'São Paulo', 'SP', '00-00000-0000', 'prefeitura@sp.com', 'Senha12345$', 'https://www.capital.sp.gov.br', 'ce2a101db8ac6ad6e82dfdd5709c1484.jpg', 'A Prefeitura de São Paulo desempenha um papel fundamental na gestão e no desenvolvimento da cidade, trabalhando para atender às necessidades e aos interesses dos cidadãos paulistanos.', 2),
(21, 'Centro Cultural São Paulo', '49.269.244/0006-78', '01504-00', 'Rua Vergueiro', '1000', '', 'Liberdade', 'São Paulo', 'SP', '11-33974-002', 'centrocultural@sp.com', 'Senha12345$', 'https://centrocultural.sp.gov.br/', '268da41786a1e91bf82438a8bbaf8b6c.jpg', 'Inaugurado em 1982, o Centro Cultural São Paulo é um dos primeiros centros culturais multidisciplinares do país. Lugar público por excelência, combina a oferta de programação e de serviços culturais – gratuitos ou a preços acessíveis.', 2);

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
(8, 'Otavio', 'Ferreira', 'otavioferreira@gmail.com', 'Senha12345$', '(11)94858-5332', '0c78775efd2907d22b88b997991a3e97.jpg', '97b658508e7496437e945e9cfb0de7aa.jpg'),
(9, 'Marcia', 'Stevão', 'marciaste090@gmail.com', 'Senha12345$', '(11)99485-8292', '513666f6ed44b78c3af963420606c78a.jpg', '21938780b374da769e72656f3c608001.jpg'),
(10, 'Sebastião', 'Mendonça', 'sebastiaomendonc542@gmail.com', 'Senha12345$', '(11)98573-6327', 'b132163a9b2fa5e6f5984bf140ee693d.jpg', '87b097306ee49e1fb8bfa670d936d796.jpg'),
(11, 'Rubia', 'Silveira', 'rubia3857@uol.com.br', 'Senha12345$', '(11)99683-7323', '39e991743617d1930c465afa9c55adc7.jpg', '50bf0d7dc1aeba56a0457573aa6cbb48.jpg'),
(12, 'Rafael ', 'dos Reis', 'rafaeldosreis@gmai.com', 'Senha12345$', '(11)43485-3384', 'a783fecb9e4f260785ad2580847f3ced.jpg', 'c44744b4ca0c565b822c831545b323e5.jpg'),
(13, 'Ivair', 'Almeida', 'ivaalmeida@bol.com', 'Senha12345$', '(11)45959-3930', '03bb7d75bd8b0bc50abe9162966875bf.jpg', '2e177dd754f3566269fbdace8d67ee1a.jpg'),
(14, 'Lucicleide', 'Carvalho', 'lucicarvalho0879@bol.com.br', 'Senha12345$', '(11)92747-5362', '02c4adad6b5549b000dd5b4fb8777d18.jpg', '9f05d1555f65c6cda26433c399c0f4d9.jpg'),
(15, 'Giovanna ', 'Gigante', 'giovannagigan0938@gmail.com', 'Senha12345$', '(11)94573-6289', '75b207f82218823bbc35c842612193d6.jpg', '0959294662ebe797cb3cd650ce218202.jpg'),
(16, 'Emily', 'Souza', 'emilysouza9583@oul.com', 'Senha12345$', '(11)94768-4837', 'bf8c6521d7a4e0eefd340969287dddc4.jpg', '32153e03f71733549bf83f9d19f382b6.jpg'),
(17, 'Joana', 'Magalhães', 'joanamaga9649@oul.com', 'Senha12345$', '(11)95738-2277', '4679625acc7ec5cbe4da533b53ee4757.jpg', 'b60716e5c377787ce1938c602571a227.jpg');

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
-- Extraindo dados da tabela `tbusuarioseguindo`
--

INSERT INTO `tbusuarioseguindo` (`idSeguindo`, `idUsuario`, `idOrganizacaoEvento`) VALUES
(1, 8, 16),
(2, 8, 20),
(3, 8, 21),
(4, 9, 14),
(5, 9, 16),
(7, 9, 20),
(8, 9, 21),
(9, 9, 15),
(10, 10, 14),
(11, 10, 16),
(12, 10, 20),
(13, 10, 21),
(14, 11, 14),
(15, 11, 15),
(16, 11, 17),
(17, 11, 20),
(18, 12, 20),
(19, 12, 14),
(20, 12, 17),
(21, 13, 20),
(22, 13, 17),
(23, 13, 14),
(24, 13, 21),
(25, 14, 20),
(26, 14, 15),
(27, 14, 14),
(28, 14, 21),
(29, 15, 14),
(30, 15, 17),
(31, 15, 15),
(32, 15, 18),
(33, 16, 14),
(34, 16, 15),
(35, 16, 18),
(36, 16, 20),
(37, 17, 14),
(38, 17, 16),
(39, 17, 15),
(40, 17, 17),
(41, 17, 20);

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
  MODIFY `idEvento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `tbfeedbackapp`
--
ALTER TABLE `tbfeedbackapp`
  MODIFY `idFeedBackApp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbinteresseevento`
--
ALTER TABLE `tbinteresseevento`
  MODIFY `idInteresseEvento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

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
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `tbusuarioseguindo`
--
ALTER TABLE `tbusuarioseguindo`
  MODIFY `idSeguindo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

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
