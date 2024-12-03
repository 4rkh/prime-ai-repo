## Prime AI

## Índice
- [Descrição do projeto](#descrição-do-projeto)
- [Documentação](#documentação)
- [Como executar o projeto](#como-executar-o-projeto)
- [Autores](#autores)

## Descrição do projeto
O projeto é protótipo de um site de um ecommerce de produtos de informática focado em produtos para o público gamer. O principal foco do projeto é uma IA para auxiliar os usuários que não possuem conhecimento de computadores gamers. O usuário insere o jogo, a resolução, qualidade e o FPS, e a IA responde com um link da configuração necessárias para rodar os jogos nessas especificações.

## Documentação
[Clique aqui](https://docs.google.com/document/d/167WLa6arIzhO-j02bK-bY1sfWKWqHHk-1r8Q1Av6fOU/edit?usp=sharing) para acessar a documentação do projeto.

<hr>

### Como executar o Projeto

### Baixe os arquivos necessários
- Na página do repositório, clique no botão verde onde está escrito "< > Code" e, em seguida, clique na opção "Download ZIP".
- Depois, vá até o local onde o arquivo acabou de ser baixado, localize o arquivo e extraia em uma pasta o projeto; ele deve estar com o título ``prime-ai-repo``.
- [Clique aqui](https://www.oracle.com/java/technologies/downloads/#jdk23-windows) faça o download da versão jdk23 para o seu respectivo sistema operacional.
- Então instale o jdk23.
- [Clique aqui](https://netbeans.apache.org/front/main/download/nb23/) para baixar o aplicativo necessário para abrir o projeto, o ``Apache NetBeans versão 23``.
- Istale o NetBeans
<hr>

### Abrindo o projeto no NetBeans
- Vá até a Área de Trabalho do seu computador, e inicie o aplicativo ``Apache NetBeans IDE 23``.
- Quando ele abrir, clique em "File" no canto superior esquerdo, e depois em "Open Project...".
- Em sequida vá em "Add Platform" no canto inferior esquerdo.
- Então marque a opção "Download OpenJDK (via Footjay.io Disco API)"
- No dropdown selecione Oracle, vá em "Next" e então em finalize a instalação.
<hr>

### Instalando o Oracle JDK
- Após abrir o projeto, clicque com o botão direito em ``PRIME AI`` e va em "Proprities".
- Na janela que abriu, vá em "Libraries", localize o "Java Plataforms" e clique em "Manage Platforms...".
- Na janela que abrir, localize a pasta ``prime-ai-repo``.
- Entre na pasta, e após isso, clique em ``PRIME AI`` (a pasta com um ícone diferente), e depois clique em "Open Project".
<hr>

### Instalação do Servidor usado
- Clique com o botão direito sobre a opção "Servers", e depois clique em "Add Server...".
- Na janela que abrir, clique em "GlassFish Server", e depois em "Next".
- Em seguida, clique na seleção abaixo do campo "Choose a server to download:", e depois, localize e clique na opção "GlassFish Server 7.0.14".
- Depois, aceite os termos de serviço e depois, clique na opção de download e aguarde a instalação terminar.
- Quando terminar, finalize a instalação.
- Volte para a página "Projects". Depois, clique com o botão direito no projeto (``PRIME AI``).
- Em seguida, localize e clique na opção "Resolve Missing Server Problem...".
- Depois, clique em "GlassFish Server", e depois em "OK".
<hr>

### Conexão com o Banco de Dados
- Volte para a página "Services", e clique na seta para baixo ao lado da opção "Databases".
- Depois, clique com o botão direito em "Java DB", e depois em "Create Database...".
- No campo "Database Name:", escreva ``primedb``; no campo "User Name:", escreva ``usuario``; e nos campos "Password:" e "Confirm Password:", escreva ``usuario``.
- Quando aparecer a opção "jdbc:derby://localhost:1527/primedb [usuario on USUARIO]", clique com o botão direito na mesma, e depois selecione "Connect...".
- Em seguida, clique novamente com o botão direito, e selecione a opção "Execute Command...". Ao fazer isso, um campo será aberto.
- Vá até a [seção "Banco de Dados"](#banco-de-dados) deste documento, e copie o script.
- Depois, volte ao NetBeans, e no campo aberto, e cole o script. Após isso, aperte ao mesmo tempo as seguintes teclas do seu teclado: ``Ctrl+Shift+E``.
- Por fim, feche o NetBeans.
<hr>

### Configurando a Variável de Ambiente da IA
- [Clique aqui](https://console.groq.com/keys) para acessar o site do ``Groq``.
- No site, clique em "Login", e prossiga criando uma conta no site (ou entrando, caso já tenha uma).
- Em seguida, no campo "API Keys", clique no botão "Create API Key".
- Depois, no campo acima do botão preto "Submit", insira o nome que desejar.
- Depois, clique no botão preto "Copy", e depois em "Done".
- Depois, vá até a barra de pesquisa da barra de ferramentas (no canto inferior do seu computador) e pesquise por "Editar as variáveis de ambiente do sistema", clicando na mesma opção que aparecer logo em seguida.
- Na nova janela que abrir, clique em "Variáveis de Ambiente...", e depois em "Novo...".
- No campo "Nome da variável:", insira o seguinte nome dentro das aspas: ``GroqKey``; e no campo "Valor da variável:", cole o código copiado anteriormente.
- Por fim, clique em "OK", depois em "OK", e por último em "OK".
<hr>

### Executando o projeto
- Abra novamente o ``NetBeans``.
- Quando o aplicativo abrir e tudo acabar de carregar, clique no ícone da Terra, logo acima do nome do projeto, e então escolha o navegador de sua preferência.
- Depois, clique no nome do projeto ``PRIME AI``, e depois clique com o botão direito no mesmo lugar.
- Por fim, clique na opção "Run", e na nova janela, clique em "Permitir acesso".

<br>Quando o projeto abrir, você poderá explorar as funções dele normalmente.
<hr>

### Banco de Dados
Para o site funcionar corretamente ele precisa das referências do banco de dados <br>

```
CREATE TABLE usuarios(
idUsuario INT GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) PRIMARY KEY,
loginUsuario VARCHAR(50),
senhaUsuario VARCHAR(50),
emailUsuario VARCHAR(100)
);

CREATE TABLE produtos(
idProduto INT GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) PRIMARY KEY,
nomeProduto VARCHAR(100),
valorProduto NUMERIC(11,2),
imgProduto VARCHAR(100),
linkProduto VARCHAR(100)
);

CREATE TABLE carrinho(
idProduto INT,
idUsuario INT,
quantProduto NUMERIC (2),
CONSTRAINT produtofk FOREIGN KEY (idProduto) REFERENCES produtos (idProduto),
CONSTRAINT usuariofk FOREIGN KEY (idUsuario) REFERENCES usuarios (idUsuario)
);

CREATE TABLE benchmark(
idBench INT GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) PRIMARY KEY,
idProduto INT,
jogoBench VARCHAR(50),
resolucaoBench VARCHAR(20),
qualidadeBench VARCHAR(10),
fpsBench NUMERIC(5,1),
CONSTRAINT produtofkbench FOREIGN KEY (idProduto) REFERENCES produtos(idProduto)
);

INSERT INTO usuarios(loginUsuario,senhaUsuario,emailUsuario) VALUES('jose','asd','jose@gmail.com');
INSERT INTO usuarios(loginUsuario,senhaUsuario,emailUsuario) VALUES('uelinton','asd','uelinton@gmail.com');

INSERT INTO produtos(nomeProduto,valorProduto,imgProduto,linkProduto) VALUES('RTX 4060 OC GIGABYTE',1689.99,'rtx3060.png','http://localhost:8080/PRIME.AI/produtos/rtx3060.jsp');
INSERT INTO produtos(nomeProduto,valorProduto,imgProduto,linkProduto) VALUES('PC Ryzen 5 5500 16GB RTX4060 SSD1TB',7568.99,'pc2.png','http://localhost:8080/PRIME.AI/produtos/pc2.jsp');
INSERT INTO produtos(nomeProduto,valorProduto,imgProduto,linkProduto) VALUES('PC Ryzen 5 4600G 16GB RX6600 SSD1TB',5568.99,'pc_montado_1.png','http://localhost:8080/PRIME.AI/produtos/pc_montado_1.jsp');
INSERT INTO produtos(nomeProduto,valorProduto,imgProduto,linkProduto) VALUES('PC Intel i7 14700 32GB RTX4060 SSD1TB',7568.99,'pc_montado_2.png','http://localhost:8080/PRIME.AI/produtos/pc_montado_2.jsp');
INSERT INTO produtos(nomeProduto,valorProduto,imgProduto,linkProduto) VALUES('PC Ryzen 9 8950X3D 64GB RTX5090 SSD1TB',10568.99,'pc_montado_3.png','http://localhost:8080/PRIME.AI/produtos/pc_montado_3.jsp');

INSERT INTO benchmark(idProduto,jogoBench,resolucaoBench,qualidadeBench,fpsBench) VALUES (3,'Fortnite','FULLHD','Médio',120);
INSERT INTO benchmark(idProduto,jogoBench,resolucaoBench,qualidadeBench,fpsBench) VALUES (4,'Fortnite','2.5K','Alto',60);
INSERT INTO benchmark(idProduto,jogoBench,resolucaoBench,qualidadeBench,fpsBench) VALUES (5,'Fortnite','4K','Ultra',75);
INSERT INTO benchmark(idProduto,jogoBench,resolucaoBench,qualidadeBench,fpsBench) VALUES (3,'God of War','FULLHD','Baixo',54);
INSERT INTO benchmark(idProduto,jogoBench,resolucaoBench,qualidadeBench,fpsBench) VALUES (4,'God of War','2.5K','Alto',70);
INSERT INTO benchmark(idProduto,jogoBench,resolucaoBench,qualidadeBench,fpsBench) VALUES (5,'God of War','4K','Ultra',90);
INSERT INTO benchmark(idProduto,jogoBench,resolucaoBench,qualidadeBench,fpsBench) VALUES (3,'GTA VI','FULLHD','Médio',48);
INSERT INTO benchmark(idProduto,jogoBench,resolucaoBench,qualidadeBench,fpsBench) VALUES (4,'GTA VI','2.5K','Alto',60);
INSERT INTO benchmark(idProduto,jogoBench,resolucaoBench,qualidadeBench,fpsBench) VALUES (5,'GTA VI','4K','Ultra',80);
INSERT INTO benchmark(idProduto,jogoBench,resolucaoBench,qualidadeBench,fpsBench) VALUES (3,'League of Legends','FULLHD','Alto',120);
INSERT INTO benchmark(idProduto,jogoBench,resolucaoBench,qualidadeBench,fpsBench) VALUES (4,'League of Legends','2.5K','Ultra',180);
INSERT INTO benchmark(idProduto,jogoBench,resolucaoBench,qualidadeBench,fpsBench) VALUES (5,'League of Legends','4K','Ultra',240);
INSERT INTO benchmark(idProduto,jogoBench,resolucaoBench,qualidadeBench,fpsBench) VALUES (3,'Terraria','FULLHD','Alto',90);
INSERT INTO benchmark(idProduto,jogoBench,resolucaoBench,qualidadeBench,fpsBench) VALUES (4,'Terraria','2.5K','Alto',120);
INSERT INTO benchmark(idProduto,jogoBench,resolucaoBench,qualidadeBench,fpsBench) VALUES (5,'Terraria','4K','Alto',180);

INSERT INTO carrinho VALUES (1,1,3);
INSERT INTO carrinho VALUES (2,1,1);
INSERT INTO carrinho VALUES (3,2,1);
INSERT INTO carrinho VALUES (4,2,2);





```

## Autores
- [Arthur dos Santos Rodrigues](https://github.com/4rkh)
- [Luccas Nicolete Meireles](https://github.com/LuccasNico)
