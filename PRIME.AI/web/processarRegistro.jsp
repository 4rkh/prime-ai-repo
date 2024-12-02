<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DB_Package.OperacoesBD"%>
<% OperacoesBD busca = new OperacoesBD();
    String texto = null;
    String destino = null;
    String cor = null;
        if (busca.buscarLogin(request.getParameter("login")) != null) {
            texto = "Login já registrado. <br>Tente outro Login.";
            destino = "registro.jsp";
            if (busca.buscarEmail(request.getParameter("email")) != null) {
                texto = "Login já registrado. <br>Tente outro Login. <br>Email já registrado. <br>Tente outro Email";
            }
        } else if (busca.buscarEmail(request.getParameter("email")) != null) {
            texto = "Email já registrado. <br>Tente outro Email";
            destino = "registro.jsp";
        } else {
            busca.inserirUsuario(
                request.getParameter("login"), 
                request.getParameter("senha"), 
                request.getParameter("email")
            );
            
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
            <div><%@include file="WEB-INF/jspf/menuUnido.jspf" %></div>
            <div class="redirect" style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); ">
                <h1 style="<%=cor%>"> <%=texto%> </h1>
                <form action="<%=request.getContextPath()%>/<%=destino%>" method="get"><button type="submit">Redirecionar</button></form>
            </div>
        </main>
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>

</html>