<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DB_Package.OperacoesBD"%>
<% OperacoesBD busca = new OperacoesBD();
    String nomeProd1 = busca.buscarAtributo("produtos", "nomeProduto", "idProduto", 1);
    String valorProd1 = busca.buscarAtributo("produtos", "valorProduto", "idProduto", 1);
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
    padding: 20px;
}

h1 {
    text-align: center;
    margin-bottom: 20px;
    font-size: 24px;
}

.cart-table {
    width: 100%;
    border-collapse: collapse;
    background: #fff;
    margin-bottom: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
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
                    <th>Modelo</th>
                    <th>Qntd.</th>
                    <th>Preço</th>
                </tr>
            </thead>
            <tbody>
                <!-- Item 1 -->
                <tr>
                    <td><input type="checkbox"></td>
                    <td class="product-details">
                        <img src="https://via.placeholder.com/100" alt="Produto">
                        <div>
                            <strong>GEFORCE RTX 4060 Ti</strong>
                            <p>Possui três ventoinhas de lâmina exclusivas de 80 mm, rotação alternada, 4 tubos de calor...</p>
                        </div>
                    </td>
                    <td>Gigabyte<br>GV-N406TGAMING OC-8GD</td>
                    <td><input type="number" value="3" min="1" class="quantity"></td>
                    <td>R$4.349,97</td>
                </tr>
                <!-- Item 2 -->
                <tr>
                    <td><input type="checkbox"></td>
                    <td class="product-details">
                        <img src="https://via.placeholder.com/100" alt="Produto">
                        <div>
                            <strong>GEFORCE RTX 4060 Ti</strong>
                            <p>Possui três ventoinhas de lâmina exclusivas de 80 mm, rotação alternada, 4 tubos de calor...</p>
                        </div>
                    </td>
                    <td>Gigabyte<br>GV-N406TGAMING OC-8GD</td>
                    <td><input type="number" value="3" min="1" class="quantity"></td>
                    <td>R$4.349,97</td>
                </tr>
                <!-- Item 3 -->
                <tr>
                    <td><input type="checkbox"></td>
                    <td class="product-details">
                        <img src="https://via.placeholder.com/100" alt="Produto">
                        <div>
                            <strong>GEFORCE RTX 4060 Ti</strong>
                            <p>Possui três ventoinhas de lâmina exclusivas de 80 mm, rotação alternada, 4 tubos de calor...</p>
                        </div>
                    </td>
                    <td>Gigabyte<br>GV-N406TGAMING OC-8GD</td>
                    <td><input type="number" value="3" min="1" class="quantity"></td>
                    <td>R$4.349,97</td>
                </tr>
            </tbody>
        </table>

        <div class="cart-actions">
            <button>Excluir selecionados</button>
            <button>Excluir todos</button>
            <button class="proceed">Prosseguir</button>
            <div class="total">TOTAL: <strong>R$13.049,91</strong></div>
        </div>
        </main>
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>

</html>
