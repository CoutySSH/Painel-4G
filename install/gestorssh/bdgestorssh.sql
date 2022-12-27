-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 14-Nov-2022 às 20:21
-- Versão do servidor: 10.1.48-MariaDB-0ubuntu0.18.04.1
-- versão do PHP: 7.3.33-8+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sshplus`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `arquivo`
--

CREATE TABLE `arquivo` (
  `id` int(11) NOT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `titulo` varchar(250) DEFAULT NULL,
  `descricao` varchar(250) DEFAULT NULL,
  `botao` varchar(250) DEFAULT NULL,
  `apn` varchar(250) DEFAULT NULL,
  `imagem` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `file` varchar(250) DEFAULT NULL,
  `tipo` varchar(250) DEFAULT NULL,
  `operadora` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `chave`
--

CREATE TABLE `chave` (
  `id` int(11) NOT NULL,
  `chave` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `chave`
--

INSERT INTO `chave` (`id`, `chave`) VALUES
(1, 'UPZCHUH1YLTHE0GZDU6H');

-- --------------------------------------------------------

--
-- Estrutura da tabela `configs`
--

CREATE TABLE `configs` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `configs`
--

INSERT INTO `configs` (`id`, `nome`, `valor`) VALUES
(10, 'msg_id', '04'),
(11, 'sesexp', '30'),
(12, 'logo', 'https://i.ibb.co/q1LnDVT/logo.png'),
(13, 'largura', ''),
(14, 'altura', ''),
(15, 'link', 'http://dominio'),
(16, 'titulo', 'Painel Conecta 4G');

-- --------------------------------------------------------

--
-- Estrutura da tabela `configuracoes`
--

CREATE TABLE `configuracoes` (
  `id` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL,
  `versao` int(11) NOT NULL DEFAULT '2',
  `notas` text COLLATE utf8mb4_unicode_ci,
  `sms` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `att` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contato` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `termos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkuser` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mensagem` text COLLATE utf8mb4_unicode_ci,
  `att_msg` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `config_suporte`
--

CREATE TABLE `config_suporte` (
  `id` int(11) NOT NULL,
  `id_cad` varchar(250) DEFAULT NULL,
  `SuportePaginacao` int(11) DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `icone_perfil`
--

CREATE TABLE `icone_perfil` (
  `id` int(11) NOT NULL,
  `imagem` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagem_perfil`
--

CREATE TABLE `imagem_perfil` (
  `id` int(11) NOT NULL,
  `imagem` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `id_cad` int(11) NOT NULL DEFAULT '0',
  `acesso` int(11) NOT NULL DEFAULT '3',
  `nome` varchar(250) DEFAULT NULL,
  `login` varchar(250) DEFAULT NULL,
  `senha` varchar(250) DEFAULT NULL,
  `senha2` varchar(250) DEFAULT NULL,
  `expiredate` varchar(250) DEFAULT NULL,
  `cota` varchar(250) NOT NULL DEFAULT '0',
  `operadora` varchar(250) DEFAULT NULL,
  `derrubado` varchar(250) DEFAULT '0',
  `bloqueado` varchar(11) NOT NULL DEFAULT 'N',
  `LimiteTeste` varchar(250) NOT NULL DEFAULT '0',
  `data` varchar(250) DEFAULT NULL,
  `ValorCobrado` varchar(250) DEFAULT NULL,
  `msginterna` longtext,
  `email` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id`, `id_cad`, `acesso`, `nome`, `login`, `senha`, `senha2`, `expiredate`, `cota`, `operadora`, `derrubado`, `bloqueado`, `LimiteTeste`, `data`, `ValorCobrado`, `msginterna`, `email`) VALUES
(1, 1, 1, 'admin', 'admin', 'admin', '', '', '999999', '', '0', 'N', '0', '', '10.00', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `id` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL,
  `msg` mediumtext COLLATE utf8mb4_unicode_ci,
  `att` int(11) DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `payloads`
--

CREATE TABLE `payloads` (
  `id` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL,
  `Name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `FLAG` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Payload` text COLLATE utf8mb4_unicode_ci,
  `SNI` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TlsIP` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProxyIP` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProxyPort` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `portas`
--

CREATE TABLE `portas` (
  `id` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL,
  `Porta` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `relatorio`
--

CREATE TABLE `relatorio` (
  `id` int(11) NOT NULL,
  `id_cad` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `data` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servidor`
--

CREATE TABLE `servidor` (
  `id` int(11) NOT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `server` varchar(250) DEFAULT NULL,
  `porta` varchar(250) DEFAULT NULL,
  `user` varchar(250) DEFAULT NULL,
  `senha` varchar(250) DEFAULT NULL,
  `icone` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servidores`
--

CREATE TABLE `servidores` (
  `id` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL,
  `Name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TYPE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'premium',
  `FLAG` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'br.png',
  `ServerIP` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CheckUser` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ServerPort` int(11) DEFAULT '22',
  `SSLPort` int(11) DEFAULT NULL,
  `USER` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PASS` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sessao`
--

CREATE TABLE `sessao` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expira` int(100) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sms`
--

CREATE TABLE `sms` (
  `id` int(11) NOT NULL,
  `login` varchar(250) DEFAULT NULL,
  `senha` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `suporte`
--

CREATE TABLE `suporte` (
  `id` int(11) NOT NULL,
  `UserEmissor` varchar(250) DEFAULT NULL,
  `UserReceptor` varchar(250) DEFAULT NULL,
  `Assunto` varchar(250) DEFAULT NULL,
  `data` varchar(250) DEFAULT NULL,
  `anexo` varchar(250) DEFAULT NULL,
  `Mensagem` longtext,
  `LidaEmissor` varchar(11) NOT NULL DEFAULT 'N',
  `LidaReceptor` varchar(11) NOT NULL DEFAULT 'N',
  `PastaEmissor` int(11) NOT NULL DEFAULT '2',
  `PastaReceptor` int(11) NOT NULL DEFAULT '1',
  `Marcacao` int(11) NOT NULL DEFAULT '5',
  `Estrela` varchar(11) NOT NULL DEFAULT 'N',
  `ExcluirEmissor` varchar(11) NOT NULL DEFAULT 'N',
  `ExcluirReceptor` varchar(11) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `suporteresp`
--

CREATE TABLE `suporteresp` (
  `id` int(11) NOT NULL,
  `id_suporte` int(11) DEFAULT NULL,
  `UserEmissor` varchar(250) DEFAULT NULL,
  `mensagem` longtext,
  `anexo` varchar(250) DEFAULT NULL,
  `data` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `urlteste`
--

CREATE TABLE `urlteste` (
  `id` int(11) NOT NULL,
  `CadUser` varchar(2500) DEFAULT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'N',
  `tempo` int(11) DEFAULT NULL,
  `cemail` varchar(11) NOT NULL DEFAULT 'N',
  `email` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivel` int(11) NOT NULL DEFAULT '1',
  `banido` int(11) NOT NULL DEFAULT '0',
  `limite_pay` int(11) NOT NULL DEFAULT '4',
  `limite_ser` int(11) NOT NULL DEFAULT '15',
  `pasta_att` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `login`, `senha`, `nivel`, `banido`, `limite_pay`, `limite_ser`, `pasta_att`) VALUES
(1, 'Davidsdy', 'admin', '21232f297a57a5a743894a0e4a801fc3', 3, 0, 4, 15, 'admin');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `arquivo`
--
ALTER TABLE `arquivo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `chave`
--
ALTER TABLE `chave`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `configuracoes`
--
ALTER TABLE `configuracoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `config_suporte`
--
ALTER TABLE `config_suporte`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `icone_perfil`
--
ALTER TABLE `icone_perfil`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `imagem_perfil`
--
ALTER TABLE `imagem_perfil`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mensagens`
--
ALTER TABLE `mensagens`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `payloads`
--
ALTER TABLE `payloads`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `portas`
--
ALTER TABLE `portas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `relatorio`
--
ALTER TABLE `relatorio`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `servidor`
--
ALTER TABLE `servidor`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `servidores`
--
ALTER TABLE `servidores`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sessao`
--
ALTER TABLE `sessao`
  ADD UNIQUE KEY `id` (`id`,`uid`);

--
-- Índices para tabela `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `suporte`
--
ALTER TABLE `suporte`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `suporteresp`
--
ALTER TABLE `suporteresp`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `urlteste`
--
ALTER TABLE `urlteste`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `arquivo`
--
ALTER TABLE `arquivo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `chave`
--
ALTER TABLE `chave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `configuracoes`
--
ALTER TABLE `configuracoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `config_suporte`
--
ALTER TABLE `config_suporte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `icone_perfil`
--
ALTER TABLE `icone_perfil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `imagem_perfil`
--
ALTER TABLE `imagem_perfil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `payloads`
--
ALTER TABLE `payloads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `portas`
--
ALTER TABLE `portas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `relatorio`
--
ALTER TABLE `relatorio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `servidor`
--
ALTER TABLE `servidor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `servidores`
--
ALTER TABLE `servidores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `suporte`
--
ALTER TABLE `suporte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `suporteresp`
--
ALTER TABLE `suporteresp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `urlteste`
--
ALTER TABLE `urlteste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
