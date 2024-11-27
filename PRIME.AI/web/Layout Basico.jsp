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
        <title>Layout Basico</title>
        <link rel="stylesheet" type="text/css" href="CSS/home.css"/>
    </head>
    <body>
        <!-- Menu superior -->
        <div><%@include file="WEB-INF/jspf/menuSuperior.jspf" %></div>
        <!-- Menu de Categorias -->
        <div class="menu-container"><%@include file="WEB-INF/jspf/menuAcessoRapido.jspf" %></div>

        <h1>Titulo</h1>

        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
