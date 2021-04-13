-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 07/04/2021 às 20:41
-- Versão do servidor: 10.4.18-MariaDB
-- Versão do PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `blog_guiaPress`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `categoryId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `body`, `createdAt`, `updatedAt`, `categoryId`) VALUES
(6, 'IA e ML', 'IA-e-ML', '<p>Artigo sobre Machine Learning</p>', '2021-04-06 16:09:22', '2021-04-06 16:09:22', 1),
(7, 'Robotica', 'Robotica', '<p>Artigo sobre robotica</p>', '2021-04-06 16:09:48', '2021-04-06 16:09:48', 2),
(8, 'BlockChain', 'BlockChain', '<p>Artigo sobre BLOCKChain</p>', '2021-04-06 16:10:06', '2021-04-06 16:10:06', 3),
(9, 'Aries', 'Aries', '<p>Artigo sobre Aries, indy ....</p>', '2021-04-06 16:10:23', '2021-04-06 16:10:23', 4),
(10, 'O que é Node', 'O-que-e-Node', '<div class=\"big-preview single-big\"><a class=\"lightbox-added\" title=\"Node.js &ndash; O que &eacute;, como funciona e quais as vantagens\" href=\"https://www.opus-software.com.br/wp-content/uploads/2018/09/nodejs.jpg\"><img class=\"attachment-entry_without_sidebar size-entry_without_sidebar wp-post-image\" src=\"https://www.opus-software.com.br/wp-content/uploads/2018/09/nodejs-1000x423.jpg\" alt=\"\" width=\"1000\" height=\"423\" /></a></div>\r\n<div class=\"blog-meta\">&nbsp;</div>\r\n<div class=\"entry-content-wrapper clearfix standard-content\">&nbsp;</div>\r\n<div class=\"entry-content-wrapper clearfix standard-content\"><header class=\"entry-content-header\">\r\n<h1 class=\"post-title entry-title\"><a title=\"Link permanente: Node.js &ndash; O que &eacute;, como funciona e quais as vantagens\" href=\"https://www.opus-software.com.br/node-js/\" rel=\"bookmark\">Node.js &ndash; O que &eacute;, como funciona e quais as vantagens</a></h1>\r\n<span class=\"post-meta-infos\"><time class=\"date-container minor-meta updated\">05/09/2018</time><span class=\"text-sep text-sep-date\">/</span><span class=\"blog-author minor-meta\">por&nbsp;<span class=\"entry-author-link\"><span class=\"vcard author\"><span class=\"fn\"><a title=\"Posts de lenon\" href=\"https://www.opus-software.com.br/author/lenon/\" rel=\"author\">lenon</a></span></span></span></span></span></header>\r\n<div class=\"entry-content\">\r\n<p>O Node.js pode ser definido como um&nbsp;<strong>ambiente de execu&ccedil;&atilde;o Javascript&nbsp;<em>server-side</em></strong>.</p>\r\n<p>Isso significa que com o Node.js &eacute; poss&iacute;vel criar aplica&ccedil;&otilde;es Javascript para rodar como uma aplica&ccedil;&atilde;o&nbsp;<em>standalone</em>&nbsp;em uma m&aacute;quina, n&atilde;o dependendo de um browser para a execu&ccedil;&atilde;o, como estamos acostumados.</p>\r\n<p>Apesar de recente, o Node.js j&aacute; &eacute; utilizado por grandes empresas no mercado de tecnologia, como Netflix, Uber e LinkedIn.</p>\r\n<p>O principal motivo de sua ado&ccedil;&atilde;o &eacute; a sua&nbsp;<strong>alta capacidade de escala</strong>. Al&eacute;m disso, sua arquitetura, flexibilidade e baixo custo, o tornam uma boa escolha para implementa&ccedil;&atilde;o de&nbsp;<a href=\"https://www.opus-software.com.br/micro-servicos-arquietura-monolitica/\" target=\"_blank\" rel=\"noopener noreferrer\">Microsservi&ccedil;os</a>&nbsp;e componentes da arquitetura&nbsp;<a href=\"https://www.opus-software.com.br/serverless-applications/\" target=\"_blank\" rel=\"noopener noreferrer\"><em>Serverless</em></a>. Inclusive, os principais fornecedores de produtos e servi&ccedil;os Cloud j&aacute; t&ecirc;m suporte para desenvolvimento de solu&ccedil;&otilde;es escal&aacute;veis utilizando o Node.js.</p>\r\n<p>Neste artigo, vamos trazer a hist&oacute;ria, caracter&iacute;sticas e vantagens que tornam o Node.js uma tecnologia &uacute;nica.</p>\r\n<h2>O surgimento do Node.js</h2>\r\n<p>Apesar do Javascript ter mais de 20 anos, o seu uso&nbsp;<em>server-side</em>&nbsp;&eacute; bem recente.</p>\r\n<p>A linguagem Javascript foi criada em 1995, e se tornou a linguagem padr&atilde;o dos&nbsp;<em>browsers</em>&nbsp;e consequentemente da&nbsp;<em>Web</em>&nbsp;para o desenvolvimento&nbsp;<em>client-side</em>.</p>\r\n<p>Desde ent&atilde;o, houveram diversas tentativas de implementar sua execu&ccedil;&atilde;o&nbsp;<em>server-side</em>. Todas elas fracassaram, devido &agrave; sua performance ser extremamente baixa comparado com as linguagens existentes no mercado, como o PHP ou Java.</p>\r\n<p>Por&eacute;m, com a r&aacute;pida evolu&ccedil;&atilde;o da&nbsp;<em>Web</em>&nbsp;nos &uacute;ltimos anos, a linguagem Javascript e seus motores de execu&ccedil;&atilde;o passaram por diversas melhorias, tornando vi&aacute;vel sua execu&ccedil;&atilde;o com outros prop&oacute;sitos al&eacute;m da manipula&ccedil;&atilde;o de p&aacute;ginas HTML.</p>\r\n<p>Com essa nova fase no uso do Javascript, aplica&ccedil;&otilde;es&nbsp;<em>server-side</em>&nbsp;passaram a ser implementadas, e em 2009 foi criado o primeiro ambiente de execu&ccedil;&atilde;o Javascript com este prop&oacute;sito:&nbsp;<strong>O Node.js</strong>.</p>\r\n<h2>Caracter&iacute;sticas</h2>\r\n<p>A principal caracter&iacute;stica que diferencia o Node.JS de outras tecnologias, como PHP, Java, C#, &eacute; o fato de&nbsp;<strong>sua execu&ccedil;&atilde;o ser&nbsp;<em>single-thread</em></strong>. Ou seja, apenas uma thread &eacute; respons&aacute;vel por executar o c&oacute;digo Javascript da aplica&ccedil;&atilde;o, enquanto que nas outras linguagens a execu&ccedil;&atilde;o &eacute;&nbsp;<em>multi-thread</em>.</p>\r\n<p><strong>Mas o que isso significa na pr&aacute;tica?</strong></p>\r\n<p>Em um servidor web utilizando linguagens tradicionais, para cada requisi&ccedil;&atilde;o recebida &eacute; criada uma nova&nbsp;<em>thread</em>&nbsp;para trat&aacute;-la. A cada requisi&ccedil;&atilde;o, ser&atilde;o demandados recursos computacionais (mem&oacute;ria RAM, por exemplo) para a cria&ccedil;&atilde;o dessa nova<em>&nbsp;thread</em>. Uma vez que esses recursos s&atilde;o limitados, as&nbsp;<em>threads</em>&nbsp;n&atilde;o ser&atilde;o criadas infinitamente, e quando esse limite for atingido, as novas requisi&ccedil;&otilde;es ter&atilde;o que esperar a libera&ccedil;&atilde;o desses recursos alocados para serem tratadas.</p>\r\n<p>A figura abaixo representa esse cen&aacute;rio em um servidor tradicional:</p>\r\n<p><img class=\"wp-image-9711 aligncenter\" src=\"https://www.opus-software.com.br/wp-content/uploads/2019/04/Captura-de-Tela-2019-04-22-a%CC%80s-15.10.55-1-300x216.png\" sizes=\"(max-width: 577px) 100vw, 577px\" srcset=\"https://www.opus-software.com.br/wp-content/uploads/2019/04/Captura-de-Tela-2019-04-22-às-15.10.55-1-300x216.png 300w, https://www.opus-software.com.br/wp-content/uploads/2019/04/Captura-de-Tela-2019-04-22-às-15.10.55-1-768x553.png 768w, https://www.opus-software.com.br/wp-content/uploads/2019/04/Captura-de-Tela-2019-04-22-às-15.10.55-1-1030x742.png 1030w, https://www.opus-software.com.br/wp-content/uploads/2019/04/Captura-de-Tela-2019-04-22-às-15.10.55-1-705x508.png 705w, https://www.opus-software.com.br/wp-content/uploads/2019/04/Captura-de-Tela-2019-04-22-às-15.10.55-1-450x324.png 450w, https://www.opus-software.com.br/wp-content/uploads/2019/04/Captura-de-Tela-2019-04-22-às-15.10.55-1.png 1138w\" alt=\"\" width=\"577\" height=\"415\" /></p>\r\n<p>&nbsp;</p>\r\n<p>No modelo Node.js, apenas uma&nbsp;<em>thread</em>&nbsp;&eacute; respons&aacute;vel por tratar as requisi&ccedil;&otilde;es. Essa thread &eacute; chamada de&nbsp;<em><strong>Event Loop</strong></em>, e leva esse nome pois cada requisi&ccedil;&atilde;o &eacute; tratada como um evento. O&nbsp;<em>Event Loop</em>&nbsp;fica em execu&ccedil;&atilde;o esperando novos eventos para tratar, e para cada requisi&ccedil;&atilde;o, um novo evento &eacute; criado.</p>\r\n<p>Apesar de ser&nbsp;<strong><em>single-threaded</em></strong>, &eacute; poss&iacute;vel tratar requisi&ccedil;&otilde;es concorrentes em um servidor Node.js. Enquanto o servidor tradicional utiliza o sistema&nbsp;<em>multi-thread</em>&nbsp;para tratar requisi&ccedil;&otilde;es concorrentes, o Node.js consegue o mesmo efeito atrav&eacute;s de chamadas de E/S (entrada e sa&iacute;da)&nbsp;<strong>n&atilde;o-bloqueantes</strong>. Isso significa que as opera&ccedil;&otilde;es de entrada e sa&iacute;da (ex: acesso a banco de dados e leitura de arquivos do sistema) s&atilde;o ass&iacute;ncronas e n&atilde;o bloqueiam a&nbsp;<em>thread</em>. Diferentemente dos servidores tradicionais, a<em>&nbsp;thread</em>&nbsp;n&atilde;o fica esperando que essas opera&ccedil;&otilde;es sejam conclu&iacute;das para continuar sua execu&ccedil;&atilde;o.</p>\r\n<p>A figura abaixo representa a diferen&ccedil;a de funcionamento de um servidor web tradicional e um Node.JS:</p>\r\n<p><img class=\"wp-image-9716 aligncenter\" src=\"https://www.opus-software.com.br/wp-content/uploads/2019/04/Captura-de-Tela-2019-04-22-a%CC%80s-15.26.05-274x300.png\" sizes=\"(max-width: 682px) 100vw, 682px\" srcset=\"https://www.opus-software.com.br/wp-content/uploads/2019/04/Captura-de-Tela-2019-04-22-às-15.26.05-274x300.png 274w, https://www.opus-software.com.br/wp-content/uploads/2019/04/Captura-de-Tela-2019-04-22-às-15.26.05-768x842.png 768w, https://www.opus-software.com.br/wp-content/uploads/2019/04/Captura-de-Tela-2019-04-22-às-15.26.05-940x1030.png 940w, https://www.opus-software.com.br/wp-content/uploads/2019/04/Captura-de-Tela-2019-04-22-às-15.26.05-643x705.png 643w, https://www.opus-software.com.br/wp-content/uploads/2019/04/Captura-de-Tela-2019-04-22-às-15.26.05-450x493.png 450w, https://www.opus-software.com.br/wp-content/uploads/2019/04/Captura-de-Tela-2019-04-22-às-15.26.05.png 998w\" alt=\"\" width=\"682\" height=\"747\" /></p>\r\n<p>No servidor Node.js, o<em>&nbsp;Event Loop</em>&nbsp;&eacute; a &uacute;nica&nbsp;<em>thread</em>&nbsp;que trata as requisi&ccedil;&otilde;es, enquanto que no modelo tradicional uma nova&nbsp;<em>thread</em>&nbsp;&eacute; criada para cada requisi&ccedil;&atilde;o. Enquanto o&nbsp;<em>Event Loop</em>&nbsp;delega uma opera&ccedil;&atilde;o de E/S para uma&nbsp;<em>thread</em>&nbsp;do sistema de forma ass&iacute;ncrona e continua tratando as outras requisi&ccedil;&otilde;es que aparecerem em sua pilha de eventos, as&nbsp;<em>threads</em>&nbsp;do modelo tradicional esperam a conclus&atilde;o das opera&ccedil;&otilde;es de E/S, consumindo recursos computacionais durante todo esse per&iacute;odo de espera.</p>\r\n<p>Apesar do Node.js ser&nbsp;<em>single-threaded</em>, sua arquitetura possibilita um n&uacute;mero maior de requisi&ccedil;&otilde;es concorrentes sejam tratadas em compara&ccedil;&atilde;o com o modelo tradicional, que &eacute; limitado devido ao alto consumo computacional pela cria&ccedil;&atilde;o e manuten&ccedil;&atilde;o de&nbsp;<em>threads</em>&nbsp;a cada requisi&ccedil;&atilde;o.</p>\r\n<h2>Vantagens de uso do Node.js</h2>\r\n<h3>Flexibilidade</h3>\r\n<p>O NPM (Node Package Manager) &eacute; o gerenciador de pacotes do Node.js e tamb&eacute;m &eacute; o maior reposit&oacute;rio de softwares do mundo. Isso faz do Node.js uma plataforma com potencial para ser utilizada em qualquer situa&ccedil;&atilde;o. O pacote mais conhecido se chama Express.js e &eacute; um framework completo para desenvolvimento de aplica&ccedil;&otilde;es Web.</p>\r\n<h3>Leveza</h3>\r\n<p>Criar um ambiente Node.js e subir uma aplica&ccedil;&atilde;o &eacute; uma tarefa que n&atilde;o exige muitos recursos computacionais em compara&ccedil;&atilde;o com outras tecnologias mais tradicionais. Se utilizado em conjunto com ferramentas como o Docker, o ganho na velocidade de&nbsp;<em>deploy</em>&nbsp;e replica&ccedil;&atilde;o de m&aacute;quinas pode ser muito significativo e em ambientes escal&aacute;veis isso significa menos custo e mais efici&ecirc;ncia.</p>\r\n<p>Tanto sua leveza quanto flexibilidade fazem do Node.JS uma tecnologia indicada para a implementa&ccedil;&atilde;o de servi&ccedil;os e componentes de arquiteturas como a de&nbsp;<strong>microsservi&ccedil;os e serverless</strong>. Al&eacute;m disso, conta com suporte das principais empresas de produtos e servi&ccedil;os Cloud do mercado, como a AWS, Google Cloud e Microsoft Azure que oferecem na maioria de seus produtos suporte nativo ao Node.JS.</p>\r\n<h3>Produtividade da equipe</h3>\r\n<p><strong>Maior reposit&oacute;rio do mundo:&nbsp;</strong>O NPM fornece pacotes de c&oacute;digo reus&aacute;veis e provavelmente aquela integra&ccedil;&atilde;o que voc&ecirc; precisa fazer com outro sistema ou banco de dados j&aacute; est&aacute; implementado e dispon&iacute;vel gratuitamente para instalar via NPM.</p>\r\n<p><strong>Mesma linguagem no frontend e backend:&nbsp;</strong>Javascript &eacute; a linguagem padr&atilde;o para desenvolvimento web&nbsp;<em>client-side</em>. Empresas de desenvolvimento Web contam como esse&nbsp;<em>know-how</em>&nbsp;como um ponto de partida importante para iniciar o uso do Node.js. Al&eacute;m disso, esse fator pode representar ganhos de reutiliza&ccedil;&atilde;o de c&oacute;digo e cria&ccedil;&atilde;o de equipes multidisciplinares, com melhor aproveitamento de recursos.</p>\r\n<p><strong>Ambiente de inova&ccedil;&atilde;o:&nbsp;</strong>Possibilidade de deploys e itera&ccedil;&otilde;es mais r&aacute;pidas, e resolu&ccedil;&atilde;o de problemas&nbsp;<em>On the Fly</em>. Isso tamb&eacute;m permite a cria&ccedil;&atilde;o de solu&ccedil;&otilde;es pr&oacute;prias e inovadoras,&nbsp;<a href=\"https://foundation.nodejs.org/wp-content/uploads/sites/50/2017/09/Nodejs-at-Uber.pdf\" target=\"_blank\" rel=\"noreferrer noopener\" aria-label=\" (abre em uma nova aba)\">como fez o Uber</a>&nbsp;criando produtos em Node.js para resolver alguns de seus problemas.</p>\r\n<h2>Casos de uso mais comuns</h2>\r\n<h3>Aplica&ccedil;&otilde;es em Tempo Real</h3>\r\n<p>Um exemplo comum &eacute; uma aplica&ccedil;&atilde;o de conversa (chat). Tal aplica&ccedil;&atilde;o exige muito pouco processamento e basicamente consiste em transferir as mensagens de um lado para outro.</p>\r\n<h3>Ambientes Escal&aacute;veis</h3>\r\n<p>O Node.js &eacute; bastante indicado para ambientes escal&aacute;veis (com grande n&uacute;mero de conex&otilde;es concorrentes), j&aacute; que tem potencial para suportar um n&uacute;mero maior de conex&otilde;es simult&acirc;neas do que servidores tradicionais.</p>\r\n<h3>Camada de Entrada do Servidor</h3>\r\n<p>O Node.js faz pouco processamento de dados e apenas passa a requisi&ccedil;&atilde;o para frente, se comunicando com servi&ccedil;os de&nbsp;<em>backend</em>.</p>\r\n<h3>Mocks e Prot&oacute;tipos</h3>\r\n<p>Por utilizar uma linguagem bastante conhecida no mundo Web, o Node.js possibilita criar&nbsp;<em>mocks</em>&nbsp;e prot&oacute;tipos de APIs e servi&ccedil;os de&nbsp;<em>backend</em>&nbsp;com grande rapidez, podendo assim simular a comunica&ccedil;&atilde;o com um servi&ccedil;o externo, por exemplo.</p>\r\n<h3>API com NoSQL por tr&aacute;s</h3>\r\n<p>As base de dados NoSQL s&atilde;o baseadas em JSON (<em>JavaScript Object Notation</em>), portanto, sua comunica&ccedil;&atilde;o com Node.js &eacute; bastante intuitiva. Com isso, n&atilde;o &eacute; necess&aacute;rio converter modelos de dados, por exemplo, pois os mesmos objetos JavaScript armazenados na base de dados podem ser enviados para o front-end sem a necessidade de nenhum tipo de tratamento ou convers&atilde;o.</p>\r\n</div>\r\n</div>\r\n<div class=\"entry-content-wrapper clearfix standard-content\">&nbsp;</div>', '2021-04-06 16:19:38', '2021-04-06 16:19:38', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `createdAt`, `updatedAt`) VALUES
(1, 'IA e MACHINE LEARNIG ou Aprendizado de maquina', 'IA-e-MACHINE-LEARNIG-ou-Aprendizado-de-maquina', '2021-04-06 14:42:27', '2021-04-06 15:28:34'),
(2, 'Robotica no agronecio', 'Robotica-no-agronecio', '2021-04-06 14:42:40', '2021-04-06 14:42:40'),
(3, 'BlockChain nas finanças', 'BlockChain-nas-financas', '2021-04-06 14:42:57', '2021-04-06 14:42:57'),
(4, 'Aries, indy what is it?', 'Aries-indy-what-is-it', '2021-04-06 14:43:24', '2021-04-06 14:43:24');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Índices de tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
