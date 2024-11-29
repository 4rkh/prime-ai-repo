<%-- 
    Document   : newjsp
    Created on : 12 de nov. de 2024, 20:26:38
    Author     : Nicolete
--%>

<%@page import="com.sun.tools.rngom.ast.builder.Include"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catálogo de Produtos</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }
        .container {
            display: flex;
        }
        .sidebar {
            width: 20%;
            background-color: #ddd;
            padding: 20px;
            box-sizing: border-box;
        }
        .filters h3 {
            margin-top: 0;
        }
        .main-content {
            width: 80%;
            padding: 20px;
            box-sizing: border-box;
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
        }
        .product-card {
            background-color: #fff;
            width: calc(25% - 15px);
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            overflow: hidden;
            text-align: center;
            padding: 10px;
            box-sizing: border-box;
        }
        .product-card img {
            max-width: 100%;
            height: auto;
        }
        .product-title {
            font-size: 14px;
            margin: 10px 0;
        }
        .product-price {
            font-size: 16px;
            color: green;
            margin: 5px 0;
        }
        .product-discount {
            font-size: 12px;
            color: red;
        }
    </style>
</head>
<body>
    <div>
        <%@include file="WEB-INF/jspf/menuTeste.jspf" %>
    </div>
    <div class="container">
        <div class="sidebar">
            <h3>Filtros</h3>
            <p>Preço:</p>
            <input type="range" min="0" max="2000" step="50" value="1000">
            <div>
                <label><input type="checkbox"> Placa-mãe</label><br>
                <label><input type="checkbox"> Processador</label><br>
                <label><input type="checkbox"> Memória RAM</label><br>
                <label><input type="checkbox"> Placa de Vídeo</label>
            </div>
            <h4>Marcas</h4>
            <label><input type="checkbox"> NVIDIA</label><br>
            <label><input type="checkbox"> AMD</label><br>
        </div>
        <div class="main-content">
            <!-- Cards de produtos -->
            <div class="product-card">
                <img src="images/icone_produto.png" alt="GEFORCE RTX 4060">
                <p class="product-title">GEFORCE RTX 4060 TI</p>
                <p class="product-price">R$ 1449,99</p>
                <p class="product-discount">50% OFF</p>
            </div>
            <!-- Repita o card de produto conforme necessário -->
            <!-- Exemplo de duplicação -->
            <% for (int i = 0; i < 15; i++) { %>
                <div class="product-card">
                    <img src="images/icone_produto.png" alt="GEFORCE RTX 4060">
                    <p class="product-title">GEFORCE RTX 4060 TI</p>
                    <p class="product-price">R$ 1449,99</p>
                    <p class="product-discount">50% OFF</p>
                </div>
            <% } %>
        </div>
    </div>
    <div>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </div>
</body>
</html>
