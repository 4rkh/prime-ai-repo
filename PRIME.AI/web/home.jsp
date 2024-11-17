<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Prime Tech</title>
        <style>

            /* Resetting default margin and padding */
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: 'Arial', sans-serif;
                background-color: #ababab;
                color: #333;
                line-height: 1.6;
            }

            /* Top bar - Menu */
            .top-bar {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 15px 20px;
                background-color: #333;
                color: white;
                box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            }

            .top-bar a {
                color: white;
                text-decoration: none;
                margin: 0 15px;
                font-weight: bold;
                transition: color 0.3s;
            }

            .top-bar a:hover {
                color: red;
            }

            .logo img {
                max-width: 200px;
                height: auto;
            }
            /* Banner */
            .banner img {
                width: 100%;
                height: auto;
                display: block;
                border-radius: 8px;
                transition: transform 0.5s ease;
            }

            .banner img:hover {
                transform: scale(1.05);
            }

            /* Menu de Categorias abaixo do banner */
            .categories-menu {
                display: flex;
                justify-content: center;
                background-color: #f8f8f8;
                padding: 10px 0;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            }

            .categories-menu a {
                text-decoration: none;
                color: #333;
                font-weight: bold;
                margin: 0 20px;
                font-size: 18px;
                padding: 10px 15px;
                border-radius: 5px;
                transition: background-color 0.3s, color 0.3s;
            }

            .categories-menu a:hover {
                background-color: #eaeaea;
                color: red;
            }

            /* Categorias Section */
            .categories {
                text-align: center;
                padding: 30px 0;
                font-size: 28px;
                font-weight: bold;
                background-color: #333;
                color: white;
                margin-bottom: 30px;
            }

            .categories-grid {
                display: flex;
                justify-content: space-evenly;
                flex-wrap: wrap;
                gap: 20px;
                margin: 0 20px;
            }

            .categories-grid div {
                background-color: white;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                width: 220px;
                text-align: center;
                transition: transform 0.3s ease, box-shadow 0.3s ease;
                border: 2px solid black;
            }

            .categories-grid div:hover {
                transform: translateY(-10px);
                box-shadow: 0 10px 15px rgba(0, 0, 0, 0.2);
                border: 2px solid black;
            }

            .categories-grid img {
                width: 100%;
                height: auto;
                border-radius: 8px;
                transition: transform 0.3s ease;
            }

            .categories-grid div:hover img {
                transform: scale(1.05);
            }

            .categories-grid p {
                margin-top: 10px;
                font-weight: bold;
            }

            /* Promoções Section */
            .promotions {
                text-align: center;
                padding: 30px 0;
                font-size: 28px;
                font-weight: bold;
                background-color: red;
                color: white;
                margin-top: 30px;
                margin-bottom: 30px;
            }

            .promotions-grid {
                display: grid;
                grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
                gap: 20px;
                margin: 0 20px;
            }

            .promotions-grid div {
                background-color: #ababab;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                text-align: center;
                transition: transform 0.3s ease, box-shadow 0.3s ease;
                border: 1px solid black;
                background-color: white;
            }

            .promotions-grid div:hover {
                transform: translateY(-10px);
                box-shadow: 0 10px 15px rgba(0, 0, 0, 0.2);
            }

            .promotions-grid img {
                width: 100%;
                height: auto;
                border-radius: 8px;
                transition: transform 0.3s ease;
                border: 1px solid black;
            }

            .promotions-grid div:hover img {
                transform: scale(1.05);
            }

            .promotions-grid p {
                margin-top: 15px;
                font-size: 20px;
                font-weight: bold;

            }

            .promotions-grid span {
                color: green;
                font-size: 18px;
                font-weight: normal;
            }

            .buy-button {
                display: inline-block;
                padding: 12px 25px;
                background-color: red; /* Red color */
                color: white;
                text-transform: uppercase;
                font-weight: bold;
                border-radius: 5px;
                text-decoration: none;
                margin-top: 15px;
                transition: background-color 0.15s;
            }

            .buy-button:hover {
                background-color: #6d0404;
            }

            /* Footer */
            footer {
                background-color: #333;
                color: white;
                padding: 30px 20px;
                text-align: center;
                font-size: 16px;
            }

            footer a {
                color: white;
                text-decoration: none;
                font-weight: bold;
            }

            footer a:hover {
                color: #ff6600;
            }

            /* Responsivity for smaller devices */
            @media (max-width: 768px) {
                .top-bar {
                    flex-direction: column;
                    align-items: flex-start;
                }

                .search-bar input {
                    width: 90%;
                    margin-top: 5px;
                }

                .categories-menu {
                    flex-direction: column;
                    gap: 10px;
                }

                .categories-grid {
                    flex-direction: column;
                    gap: 30px;
                }

                .promotions-grid {
                    grid-template-columns: 1fr 1fr;
                    gap: 20px;
                }
            }
            .menu-container {
                width: 80%; /* Define uma largura fixa (ajustável) */
                margin: 20px auto; /* Centraliza horizontalmente e adiciona espaço superior */
            }
            .menu {
                display: flex;
                justify-content: center;
                background-color: #f4f4f4;
                border: 1px solid black;
                padding: 0;
                margin: 0;
                list-style: none;
            }

            .menu li {
                position: relative;
            }

            .menu > li {
                flex: 1;
                text-align: center;
            }

            .menu a {
                display: block;
                padding: 10px 20px;
                text-decoration: none;
                color: black;
                font-weight: bold;
                background: linear-gradient(to bottom, #e60000, #990000);
                border: 1px solid black;
                color: white;
            }

            .menu a:hover {
                background: linear-gradient(to bottom, #f4f4f4, #cccccc);
                color: black;
            }

            /* Submenu */
            .submenu {
                display: none;
                position: absolute;
                top: 100%; /* Aparece abaixo do botão pai */
                left: 0;
                background-color: #f4f4f4;
                border: 1px solid black;
                z-index: 10;
            }

            .submenu-nested {
                display: none;
                position: absolute;
                top: 0;
                left: 100%; /* Aparece à direita do botão pai */
                background-color: #f4f4f4;
                border: 1px solid black;
                z-index: 10;
            }

            .submenu li {
                border-bottom: 1px solid #ccc;
            }

            .submenu li:last-child {
                border-bottom: none;
            }

            .submenu a, .submenu-nested a {
                background: linear-gradient(to bottom, #f4f4f4, #cccccc);
                padding: 10px;
                text-align: left;
                color: black;
            }

            .submenu a:hover, .submenu-nested a:hover {
                background: linear-gradient(to bottom, #e60000, #990000);
                color: white;
            }

            /* Mostra o submenu ao passar o mouse */
            .menu li:hover .submenu {
                display: block;
            }

            /* Mostra o submenu aninhado ao passar o mouse no item pai */
            .submenu li:hover .submenu-nested {
                display: block;
            }
            .menu, .submenu, .submenu-nested {
                list-style: none; /* Remove os bullets */

            }
.submit-image {
    background: url('<%=request.getContextPath()%>/images/magnifier.png') no-repeat center center;
    background-color: white;
    background-size: contain;
    border: none; /* Remove borda padrão */
    width: 25px; /* Largura do ícone da lupa */
    height: 25px; /* Altura do ícone da lupa */
    cursor: pointer; /* Adiciona o cursor de "clique" */
}

.search-container {
    display: flex; /* Alinha os elementos em linha */
    align-items: center; /* Alinha verticalmente */
    width: 50%; /* Ajusta a largura total ou conforme necessário */
    height: 50px;
    max-width: 2500px; /* Tamanho máximo da barra de busca */
    margin: 10px auto; /* Centraliza horizontalmente */
    border: 1px solid #ccc; /* Borda da barra de busca */
    border-radius: 5px; /* Bordas arredondadas */
    background-color: #fff; /* Fundo branco */
    padding: 5px 10px; /* Ajusta o espaçamento interno */
}
.search-input {
    flex-grow: 1; /* Faz a barra de busca preencher o restante do espaço disponível */
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 5px; /* Bordas arredondadas */
    font-size: 16px;
    text-align: left;
}

form {
    display: flex;
    width: 100%; /* Garante que o formulário ocupe toda a largura */
    align-items: center; /* Alinha verticalmente os itens dentro do form */
}

form input[type="text"] {
    flex-grow: 1; /* Barra de busca ocupa o espaço restante */
    margin-right: 10px; /* Espaçamento entre o campo de texto e o botão */
}

form input[type="submit"] {
    width: 35px; /* Largura do botão da lupa */
    height: 35px; /* Altura do botão da lupa */
}
        </style>
    </head>
    <body>
        <!-- Menu superior -->
        <div class="top-bar">
            <div class="logo">
                <a href="home.jsp"><img src="<%=request.getContextPath()%>/images/logo_sem_fundo.png" alt="Logo"></a>
            </div>
            <div class="search-container">
                <form action="<%=request.getContextPath()%>/produtos.jsp"">
                        <input type="text" class="search-input" placeholder="Search...">
                        <input type="submit" name="pesquisar" class="submit-image" value="">
                </form>
            </div>
            <div class="auth-links">
                <a href="register.jsp">Registrar-se</a>
                <a href="login.jsp">Login</a>
            </div>
        </div>

        <!-- Banner -->
        <div class="banner">
            <img src="<%=request.getContextPath()%>/images/banner.png" alt="Banner">
        </div>

        <!-- Menu de Categorias -->
        <div class="menu-container"><%@include file="WEB-INF/jspf/menuAcessoRapido.jspf" %></div>

        
        <!-- Categorias -->
        <div class="categories">CATEGORIAS</div>
        <div class="categories-grid">
            <div>
                <img src="<%=request.getContextPath()%>/images/pecas.png" alt="Peças">
                <p>Peças</p>
            </div>
            <div>
                <img src="<%=request.getContextPath()%>/images/pc_montado.png" alt="PCs Montados">
                <p>PCs Montados</p>
            </div>
            <div>
                <img src="<%=request.getContextPath()%>/images/montepc.png" alt="Monte seu PC">
                <p>Monte seu PC</p>
            </div>
            <div>
                <img src="<%=request.getContextPath()%>/images/primeai.png" alt="Prime AI">
                <p>Prime AI</p>
            </div>
        </div>

        <div class="promotions">PROMOÇÕES</div>
        <div class="promotions-grid">
            <% for (int i = 0; i < 12; i++) {%>
            <div>
                <a href="href=<%=request.getContextPath()%>/produtos.jsp"><img src="<%=request.getContextPath()%>/images/icone_produto.png" alt="Produto"></a>
                <p>GeForce RTX 4060 TI</p>
                <p>R$ 1449,99 <span>50% OFF</span></p>
                <a href="href=<%=request.getContextPath()%>/produtos.jsp" class="buy-button">Comprar</a>
            </div>
            <% }%>
        </div>

        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
