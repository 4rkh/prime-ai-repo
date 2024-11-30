<%-- 
    Document   : newjsp
    Created on : 12 de nov. de 2024, 20:26:38
    Author     : Nicolete
--%>

<%@page import="com.sun.tools.rngom.ast.builder.Include"%>
<%@page import="ai.DevOpenAI"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
    if (request.getParameter("invoke") != null) {
        try {
            String prompt = request.getParameter("prompt");
            String completion = DevOpenAI.getCompletion(prompt);
            request.setAttribute("completion", completion);
        } catch (Exception ex) {
            request.setAttribute("error", ex.getMessage());
        }
    }
%>
<html>
    <head>
        <title>Home</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            h1 {
                margin: 0;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <div>
            <%@include file="WEB-INF/jspf/menuTeste.jspf" %>
        </div>
        <% if (request.getAttribute("error") != null) {%>
        <div>ERRO: <%= request.getAttribute("error")%></div>
        <hr/>
        <% } else if (request.getAttribute("completion") != null) {%>
        <h2>Pergunta:</h2>
        <div><%= request.getParameter("prompt")%></div>
        <h2>PRIME.AI</h2>
        <div><%= request.getAttribute("completion")%></div>
        <hr/>
        <% }%>

        Nova Pergunta:<br/>
        <form>
            <input type="text" name="prompt" size="100"/>
            <input type="submit" name="invoke" value="Enviar"/>
        </form>
        <div>
            <%@include file="WEB-INF/jspf/rodape.jspf" %>
        </div>
    </body>
</html>
