<%@page import="ai.DevOpenAI"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<html lang="pt-br">
    <head>
        <title>PRIME AI</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            main {
                margin: 0;
                font-family: Arial, sans-serif;
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 50vh;
                background-color: #ababab;
            }
            .chat-container {
                width: 80%;
                max-width: 1200px;
                background-color: #fff;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                text-align: center;
            }

            h1 {
                color: #d32f2f;
            }
            textarea {
                width: 100%;
                height: 100px;
                padding: 10px;
                font-size: 16px;
                border: 1px solid #ccc;
                border-radius: 5px;
                resize: none;
            }

            aibutton {
                margin-top: 10px;
                padding: 10px 20px;
                background-color: #d32f2f;
                color: #fff;
                border: none;
                border-radius: 5px;
                font-size: 16px;
                cursor: pointer;
            }

            aibutton:hover {
                background-color: #b71c1c;
            }

            .output {
                margin-top: 20px;
                background-color: #f9f9f9;
                padding: 10px;
                border: 1px solid #ddd;
                border-radius: 5px;
                text-align: left;
                
            }
        </style>
        <link rel="stylesheet" type="text/css" href="CSS/home.css"/>
    </head>

    <body>
        <%@include file="WEB-INF/jspf/menuUnido.jspf" %>
        <main>
            <div class="chat-container">
                <h1>PRIME AI</h1>
                <% if (request.getAttribute("error") != null) {%>
                <div style="color: red;">ERRO: <%= request.getAttribute("error")%></div>
                <hr/>
                <% } else if (request.getAttribute("completion") != null) {%>
                <h2>Pergunta:</h2>
                <div><%= request.getParameter("prompt")%></div>
                <h2>Resposta:</h2>
                <div class="output"><%= request.getAttribute("completion")%></div>
                <hr/>
                <% }%>

                <h3>Nova Pergunta:</h3>
                <form method="get">
                    <textarea name="prompt" placeholder="Digite sua pergunta aqui..." required></textarea>
                    <button type="submit" class="buy-button" name="invoke">Enviar</button>
                </form>
            </div>
        </main>
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>


</html>
