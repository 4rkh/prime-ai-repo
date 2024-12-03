<%@page import="ai.DevOpenAI"%>
<%@page import="DB_Package.OperacoesBD" %>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
    if (request.getParameter("invoke") != null) {
        try {
            String prompt = OperacoesBD.obterTabela("benchmark") + OperacoesBD.obterTabela("produtos") + "Segundo as tabelas acima qual o id do produto que mais se aproxima de '"
            + request.getParameter("jogo") +"' , '"
            + request.getParameter("resolucao") +"' , '"
            + request.getParameter("qualidade") +"' , '"
            + request.getParameter("fps") +"' , Não coloque a análise das tabelas na resposta, apenas a mensagem 'Este é o Computador que você precisa para rodar "+request.getParameter("jogo")+" nas configurações especificadas.' com o hyperlink do produto vinculado à esta.";
            String completion = DevOpenAI.getCompletion(prompt);
            request.setAttribute("completion", completion);
        } catch (Exception ex) {
            request.setAttribute("error", ex.getMessage());
        }
    }
    
    String prompt = (String) session.getAttribute("prompt");
    session.setAttribute("prompt","'"+request.getParameter("jogo") +"' , '"
            + request.getParameter("resolucao") +"' , '"
            + request.getParameter("qualidade") +"' , '"
            + request.getParameter("fps"));
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
            .prompt-button {
                display: inline-block;
                padding: 12px 25px;
                background-color: red; /* Red color */
                color: white;
                text-transform: uppercase;
                font-weight: bold;
                border-radius: 5px;
                text-decoration: none;
                margin-top: 15px;
                transition: background-color 0.15s;
            }

            .prompt-button:hover {
                background-color: #6d0404;
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
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
            }

            form.selec-prompt {
                width: 300px;
                margin: auto;
            }

            strong {
                display: inline-block;
                width: 100px; /* Largura fixa para o rótulo */
                text-align: right;
                margin-right: 10px;
            }

            select, input[type="text"] {
                width: 180px; /* Tamanho igual para todos os campos */
                padding: 5px;
                font-size: 14px;
                border: 1px solid #ccc;
                border-radius: 4px;
            }
            /* Alinhamento */
            form.selec-prompt div {
                display: flex;
                align-items: center;
                margin-bottom: 10px;
            }
        </style>
        <link rel="stylesheet" type="text/css" href="CSS/home.css"/>
    </head>

    <body>
        <%@include file="WEB-INF/jspf/menuUnido.jspf" %>
        <main>
            <div class="chat-container">
                <h1>PRIME.AI</h1>
                <% if (request.getAttribute("error") != null) {%>
                <div style="color: red;">ERRO: <%= request.getAttribute("error")%></div>
                <hr/>
                <% } else if (request.getAttribute("completion") != null) {%>
                <h2>Pergunta:</h2>
                <div><%=prompt%></div>
                <h2>Resposta:</h2>
                <div class="output"><%= request.getAttribute("completion")%></div>
                <hr/>
                <% }%>

                <h3>Selecione o jogo, a resolução , qualidade e o FPS desejado qua a nossa IA te indicará o PC que você precisa para rodar estas especificações.</h3><br>
                <form class="selec-prompt" method="get">
                    <div>
                        <strong>Jogo</strong>
                        <select name="jogo" id="jogo" required="">
                            <option value="" disabled selected>Escolha um jogo</option>
                            <option value="Fortinite">Fortinite</option>
                            <option value="God of War">God of War</option>
                            <option value="GTA VI">GTA VI</option>
                            <option value="League of Legends">League of Legends</option>
                            <option value="Terraria">Terraria</option>
                        </select>
                    </div>
                    <div>
                        <strong>Resolução</strong>
                        <select name="resolucao" id="resolucao" required="">
                            <option value="" disabled selected>Escolha a resolução</option>
                            <option value="FullHD">FullHD</option>
                            <option value="2.5K">2.5K</option>
                            <option value="4K">4K</option>
                        </select>
                    </div>
                    <div>
                        <strong>Qualidade</strong>
                        <select name="qualidade" id="qualidade" required="">
                            <option value="" disabled selected>Escolha a qualidade</option>
                            <option value="Baixa">Baixa</option>
                            <option value="Medio">Medio</option>
                            <option value="Alta">Alta</option>
                            <option value="Ultra">Ultra</option>
                        </select>
                    </div>
                    <div>
                        <strong>FPS</strong>
                        <input type="text" name="fps" required="" placeholder="Digite o FPS...">
                    </div>
                    <button type="submit" class="prompt-button" name="invoke">Enviar</button>
                </form>
            </div>
        </main>
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
