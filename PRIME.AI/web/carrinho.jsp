<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DB_Package.OperacoesBD"%>
<% OperacoesBD busca = new OperacoesBD();
    String nomeProd1 = busca.buscarAtributo("produtos", "nomeProduto", "idProduto", 1);
    String valorProd1 = busca.buscarAtributo("produtos", "valorProduto", "idProduto", 1);
    String imgProd1 = busca.buscarAtributo("produtos", "imgProduto", "idProduto", 1);
    String nomeProd2 = busca.buscarAtributo("produtos", "nomeProduto", "idProduto", 2);
    String valorProd2 = busca.buscarAtributo("produtos", "valorProduto", "idProduto", 2);
    String imgProd2 = busca.buscarAtributo("produtos", "imgProduto", "idProduto", 2);
%>

<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Layout Basico</title>
        <link rel="stylesheet" type="text/css" href="CSS/home.css"/>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #ababab;
                margin: 0;

            }

            h1 {
                text-align: center;
                margin-bottom: 20px;
                font-size: 24px;
            }

            .cart-table {
                align-content: center;
                width: 80%;
                border-collapse: collapse;
                background: #fff;
                margin-bottom: 20px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                margin-left: 10%;
            }

            .cart-table th,
            .cart-table td {
                border: 1px solid #ccc;
                padding: 10px;
                text-align: center;
            }

            .cart-table th {
                background-color: #666;
                color: white;
            }

            .product-details {
                display: flex;
                align-items: center;
                text-align: left;
            }

            .product-details img {
                width: 100px;
                height: 100px;
                margin-right: 10px;
            }

            .product-details div {
                display: flex;
                flex-direction: column;
            }

            .quantity {
                width: 50px;
                text-align: center;
            }

            .cart-actions {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-top: 20px;
                margin-left: 20%;
            }

            .cart-actions button {
                padding: 10px 20px;
                border: none;
                background-color: #666;
                color: white;
                cursor: pointer;
                border-radius: 5px;
                font-weight: bold;
                transition: background-color 0.3s ease;
            }

            .cart-actions button:hover {
                background-color: #333;
            }

            .cart-actions .proceed {
                background-color: green;
            }

            .cart-actions .proceed:hover {
                background-color: darkgreen;
            }

            .cart-actions .total {
                font-size: 20px;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <main>
            <!-- Menu superior -->
            <div><%@include file="WEB-INF/jspf/menuSuperior.jspf" %></div>
            <!-- Menu de Categorias -->
            <div class="menu-container"><%@include file="WEB-INF/jspf/menuAcessoRapido.jspf" %></div>

            <h1 style="text-align: center;">Carrinho</h1>
            <table class="cart-table">
                <thead>
                    <tr>
                        <th></th>
                        <th>Produto</th>
                        <th>Qntd.</th>
                        <th>Preço</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Item 1 -->
                    <tr>
                        <td><input type="checkbox"></td>
                        <td class="product-details">
                            <img src="images/<%=imgProd1%>" alt="Produto">
                            <div>
                                <strong><%=nomeProd1%></strong>
                                <p>Possui três ventoinhas de lâmina exclusivas de 80 mm, rotação alternada, 4 tubos de calor...</p>
                            </div>
                        </td>
                        <td><h4 class="quantity">3</h4></td>
                        <td>R$<%=valorProd1%></td>
                    </tr>
                    <!-- Item 2 -->
                    <tr>
                        <td><input type="checkbox"></td>
                        <td class="product-details">
                            <img src="images/<%=imgProd2%>" alt="Produto">
                            <div>
                                <strong><%=nomeProd2%></strong>
                                <p>Possui três ventoinhas de lâmina exclusivas de 80 mm, rotação alternada, 4 tubos de calor...</p>
                            </div>
                        </td>
                        <<td><h4 class="quantity">1</h4></td>
                        <td>R$<%=valorProd2%></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>TOTAL: <strong>R$13.049,91</strong></td>
                    </tr>
                </tbody>
            </table>

            <div class="cart-actions">
                <button>Excluir selecionados</button>
                <button>Excluir todos</button>
                <button class="proceed">Prosseguir</button>
                <div class="total"></div>
            </div>
        </main>
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>

</html>
