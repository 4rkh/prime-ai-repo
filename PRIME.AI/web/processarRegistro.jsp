<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DB_Package.DatabaseUtil"%>
<% DatabaseUtil busca = new DatabaseUtil();
    String texto;
    String destino;
    String cor = null;
    if (busca.buscarLogin(request.getParameter("login")) == request.getParameter("login")) {
        texto = "Login já registrado. <br>Tente outro Login";
        destino = "registro.jsp";
        if (busca.buscarLogin(request.getParameter("email")) == request.getParameter("email")) {
            texto = "Email já registrado. <br>Tente outro Email";
        }
    } else if (busca.buscarLogin(request.getParameter("email")) == request.getParameter("email")) {
        texto = "Email já registrado. <br>Tente outro Email";
        destino = "registro.jsp";
    } else {
        texto = "Usuario Registrado com sucesso!";
        destino = "home.jsp";
        cor = "color:green;";
    }


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
        <main>
            <!-- Menu superior -->
            <div><%@include file="WEB-INF/jspf/menuSuperior.jspf" %></div>
            <!-- Menu de Categorias -->
            <div class="menu-container"><%@include file="WEB-INF/jspf/menuAcessoRapido.jspf" %></div>
            <div class="redirect" style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); ">
                <h1 style="<%=cor%>"> <%=texto%> </h1>
                <form action="<%=request.getContextPath()%> / <%=destino%> "><button type="submit" name="redirecionar">Redirecionar</button></form>
            </div>
        </main>
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>

</html>