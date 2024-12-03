<%@page import="com.sun.tools.rngom.ast.builder.Include"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DB_Package.OperacoesBD"%>
<% OperacoesBD busca = new OperacoesBD();
    String nomeProd1 = busca.buscarAtributo("produtos", "nomeProduto", "idProduto", 4);
    float valorProd1 = Float.parseFloat(busca.buscarAtributo("produtos", "valorProduto", "idProduto", 4));
    float valor2Prod1 = valorProd1 * 2;
    float valor3Prod1 = valorProd1 / 12;
    String imgProd1 = busca.buscarAtributo("produtos", "imgProduto", "idProduto", 4);

    String nomeProd2 = busca.buscarAtributo("produtos", "nomeProduto", "idProduto", 3);
    String valorProd2 = busca.buscarAtributo("produtos", "valorProduto", "idProduto", 3);
    String imgProd2 = busca.buscarAtributo("produtos", "imgProduto", "idProduto", 3);
    String nomeProd3 = busca.buscarAtributo("produtos", "nomeProduto", "idProduto", 1);
    String valorProd3 = busca.buscarAtributo("produtos", "valorProduto", "idProduto", 1);
    String imgProd3 = busca.buscarAtributo("produtos", "imgProduto", "idProduto", 1);
%>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Loja de GPUs</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f2f2f2;
            }

            .container {
                display: flex;
                max-width: 1200px;
                margin: auto;
                background: white;
                box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
                border-radius: 8px;
                padding: 20px;
            }

            .left-section {
                flex: 2;
                margin-right: 20px;
            }

            .image-gallery {
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            .main-image {
                width: 100%;
                max-width: 400px;
                border: 1px solid #ccc;
                margin-bottom: 20px;
            }

            .thumbnail-list {
                display: flex;
                flex-wrap: wrap;
                gap: 10px;
            }

            .thumbnail-list img {
                width: 60px;
                height: 60px;
                cursor: pointer;
                border: 1px solid #ccc;
            }

            .right-section {
                flex: 1;
                display: flex;
                flex-direction: column;
            }

            .price-info {
                margin-bottom: 20px;
            }

            .original-price {
                text-decoration: line-through;
                color: red;
                margin-right: 10px;
            }

            .discount {
                background-color: green;
                color: white;
                padding: 5px;
                border-radius: 4px;
            }

            .current-price {
                font-size: 1.5em;
                color: green;
                font-weight: bold;
            }

            .cep-form {
                margin-bottom: 20px;
            }

            .cep-form input, .cep-form button {
                padding: 10px;
                margin-top: 5px;
                font-size: 1em;
            }

            .quantity-section {
                margin-bottom: 20px;
            }

            .rating-section .stars {
                color: gold;
                font-size: 1.2em;
            }

            .buy-button, .add-to-cart-button{
                padding: 15px;
                font-size: 1em;
                margin-top: 10px;
                cursor: pointer;
            }

            .buy-button a{
                background-color: red;
                color: white;
                border: none;
            }

            .add-to-cart-button {
                background-color: gray;
                color: white;
                border: none;
            }
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f4f4f4;
            }

            .section {
                padding: 20px;
                text-align: center;
                background-color: #ccc;
                margin-bottom: 10px;
            }

            .section-title {
                color: white;
                background-color: red;
                padding: 10px 0;
                margin: 0;
            }

            .product-container {
                display: flex;
                justify-content: center;
                flex-wrap: wrap;
                gap: 20px;
                padding: 20px;
            }

            .product-card {
                background-color: white;
                width: 200px;
                padding: 15px;
                border: 1px solid #ddd;
                text-align: center;
                border-radius: 5px;
            }

            .product-card img {
                width: 100%;
                height: auto;
                margin-bottom: 10px
            }

            .product-card h3 {
                font-size: 16px;
                margin: 10px 0;
            }

            .product-card .price {
                font-size: 18px;
                font-weight: bold;
                color: #333;
                margin: 10px 0;
            }

            .buy-button {
                background-color: red;
                color: white;
                border: none;
                padding: 10px 15px;
                font-size: 14px;
                cursor: pointer;
                border-radius: 5px;
                transition: background-color 0.3s;
            }

            .buy-button:hover {
                background-color: darkred;
            }

            .stars{
                display: flex; /* Define layout flexível */
                align-items: center; /* Alinha verticalmente os itens */

            }
            .stars img{
                height: 80%;
                width: 80%;
            }
        </style>
        <link rel="stylesheet" href="home.css">
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/menuUnido.jspf" %>
        <div class="container">
            <!-- Seção de Imagens -->
            <div class="left-section">
                <h1><%=nomeProd1%></h1>
                <div class="image-gallery">
                    <img src="../images/<%=imgProd1%>" alt="Imagem Principal" class="main-image">
                    <div class="thumbnail-list">
                        <img src="../images/<%=imgProd1%>" alt="Thumbnail 1">
                        <img src="../images/<%=imgProd1%>" alt="Thumbnail 2">
                        <img src="../images/<%=imgProd1%>" alt="Thumbnail 3">
                        <img src="../images/<%=imgProd1%>" alt="Thumbnail 4">
                    </div>
                </div>
            </div>

            <!-- Seção de Detalhes -->
            <div class="right-section">
                <div class="price-info">
                    <span class="original-price">R$ <%=valor2Prod1%></span>
                    <span class="discount">50%</span>
                    <span class="current-price">R$ <%=valorProd1%></span>
                </div>
                <p class="installments">Até 12x de R$ <%=valor3Prod1%> sem juros</p>

                <form class="cep-form">
                    <label for="cep">CEP:</label>
                    <input type="text" id="cep" name="cep" placeholder="11760-596">
                    <button type="submit">Calcular frete</button>
                </form>

                <div class="quantity-section">
                    <label for="quantity">Quantidade:</label>
                    <input type="number" id="quantity" name="quantity" min="1" value="1">
                    <label for="model">Modelo:</label>
                    <select id="model" name="model">
                        <option value="default">Escolha o modelo</option>
                    </select>
                </div>

                <div class="rating-section">
                    <p>Nota:</p>
                    <div class="stars">
                        <a><img src="<%=request.getContextPath()%>/images/estrela.png" alt="alt"/></a>
                        <a><img src="<%=request.getContextPath()%>/images/estrela.png" alt="alt"/></a>
                        <a><img src="<%=request.getContextPath()%>/images/estrela.png" alt="alt"/></a>
                        <a><img src="<%=request.getContextPath()%>/images/estrela.png" alt="alt"/></a>
                        <a><img src="<%=request.getContextPath()%>/images/estrela.png" alt="alt"/></a>  
                    </div>
                    <p>Avaliado por 1250 usuários</p>
                </div>

                <button class="buy-button">COMPRAR</button>
                <button class="add-to-cart-button">ADICIONAR AO CARRINHO</button>
            </div>
        </div>

        <div class="section">
            <h2 class="section-title">PRODUTOS SIMILARES</h2>
            <div class="product-container">
                <%
                    for (int i = 0; i < 6; i++) {
                %>
                <div class="product-card">
                    <img src="../images/<%=imgProd2%>" alt="GEFORCE RTX 4060 Ti">
                    <h3>G<%=nomeProd2%></h3>
                    <p>Mais descrições do produto</p>
                    <p class="price">R$ <%=valorProd2%></p>
                    <button class="buy-button">COMPRAR</button>
                </div>
                <%
                    }
                %>
            </div>
        </div>

        <div class="section">
            <h2 class="section-title">RECOMENDADO PARA VOCÊ</h2>
            <div class="product-container">
                <%
                    for (int i = 0; i < 6; i++) {
                %>
                <div class="product-card">
                    <img src="../images/<%=imgProd3%>" alt="GEFORCE RTX 4060 Ti">
                    <h3><%=nomeProd3%></h3>
                    <p>Mais descrições do produto</p>
                    <p class="price">R$ <%=valorProd3%></p>
                    <button class="buy-button">COMPRAR</button>
                </div>
                <%
                    }
                %>
            </div>
        </div>
        <%@include file="../WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>

