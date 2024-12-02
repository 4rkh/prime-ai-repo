<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DB_Package.OperacoesBD"%>
<% OperacoesBD busca = new OperacoesBD();
    String nomeProd1 = busca.buscarAtributo("produtos", "nomeProduto", "idProduto", 1);
    String valorProd1 = busca.buscarAtributo("produtos", "valorProduto", "idProduto", 1);
    String imgProd1 = busca.buscarAtributo("produtos", "imgProduto", "idProduto", 1);
    String linkProd1 = busca.buscarAtributo("produtos", "linkProduto", "idProduto", 1);
    
    String nomeProd2 = busca.buscarAtributo("produtos", "nomeProduto", "idProduto", 2);
    String valorProd2 = busca.buscarAtributo("produtos", "valorProduto", "idProduto", 2);
    String imgProd2 = busca.buscarAtributo("produtos", "imgProduto", "idProduto", 2);
    String linkProd2 = busca.buscarAtributo("produtos", "linkProduto", "idProduto", 2);
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
        <%@include file="WEB-INF/jspf/menuSuperior.jspf" %>
        <!-- Banner -->
        <div class="banner">
            <img src="<%=request.getContextPath()%>/images/banner.png" alt="Banner">
        </div>

        <!-- Menu de Categorias -->
        <div><%@include file="WEB-INF/jspf/menuAcessoRapido.jspf" %></div>
        <main>
            <!-- Categorias -->
            <div class="categories">CATEGORIAS</div>
            <div class="categories-grid">
                <div>
                    <script></script><a href="produtos.jsp"><img src="<%=request.getContextPath()%>/images/pecas.png" alt="Peças"></a>
                    <p>Peças</p>
                </div>
                <div>
                    <a href="produtos.jsp"><img src="<%=request.getContextPath()%>/images/pc_montado.png" alt="PCs Montados"></a>
                    <p>PCs Montados</p>
                </div>
                <div>
                    <a href="produtos.jsp"><img src="<%=request.getContextPath()%>/images/montepc.png" alt="Monte seu PC"></a>
                    <p>Monte seu PC</p>
                </div>
                <div>
                    <a href="primeai.jsp"><img src="<%=request.getContextPath()%>/images/primeai.png" alt="Prime AI"></a>
                    <p>Prime AI</p>
                </div>
            </div>

            <div class="promotions">PROMOÇÕES</div>
            <div class="promotions-grid">
                <% for (int i = 0; i < 6; i++) {%>
                <div>
                    <a href="produtos.jsp"><img src="<%=request.getContextPath()%>/images/<%=imgProd1%>" alt="Produto"></a>
                    <p><%=nomeProd1%></p>
                    <p>R$ <%=valorProd1%> <span>50% OFF</span></p>
                    <a href="<%=request.getContextPath()%>/produtos<%=linkProd1%>.jsp" class="buy-button">Comprar</a>
                </div>
                <% }%>
                <% for (int i = 0; i < 6; i++) {%>
                <div>
                    <a href="produtos.jsp"><img src="<%=request.getContextPath()%>/images/<%=imgProd2%>" alt="Produto"></a>
                    <p><%=nomeProd2%></p>
                    <p>R$ <%=valorProd2%> <span>50% OFF</span></p>
                    <a href="<%=request.getContextPath()%>/produtos<%=linkProd2%>.jsp" class="buy-button">Comprar</a>
                </div>
                <% }%>
            </div>
        </main>
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>

</html>
