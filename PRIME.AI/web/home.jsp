<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DB_Package.DatabaseUtil"%>
<% DatabaseUtil busca = new DatabaseUtil();
    String nomeProd1 = busca.buscarAtributo("produtos", "nomeProduto", "idProduto", 1);
    String valorProd1 = busca.buscarAtributo("produtos", "valorProduto", "idProduto", 1);
%>

<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Prime Tech</title>
        <link rel="stylesheet" type="text/css" href="CSS/home.css"/>
    </head>
    <body>
        <!-- Menu superior -->
        <div><%@include file="WEB-INF/jspf/menuSuperior.jspf" %></div>
        <!-- Banner -->
        <div class="banner">
            <img src="<%=request.getContextPath()%>/images/banner.png" alt="Banner">
        </div>

        <!-- Menu de Categorias -->
        <div><%@include file="WEB-INF/jspf/menuAcessoRapido.jspf" %></div>

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
                <p><%=nomeProd1%></p>
                <p>R$ <%=valorProd1%> <span>50% OFF</span></p>
                <a href="href=<%=request.getContextPath()%>/produtos.jsp" class="buy-button">Comprar</a>
            </div>
            <% }%>
        </div>

        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
