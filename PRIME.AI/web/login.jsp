<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%
    String check = (String) session.getAttribute("check");
%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>

        <style>
            .container {
                max-width: 600px;
                margin: 50px auto;
                background-color: #fff;
                padding: 20px;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            .container h2 {
                text-align: center;
                margin-bottom: 20px;
            }

            .form-group {
                margin-bottom: 15px;
            }

            .form-group label {
                display: block;
                margin-bottom: 5px;
            }

            .form-group input {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            .form-group button {
                width: 100%;
                padding: 10px;
                background-color: #d32f2f;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }

            .form-group button:hover {
                background-color: #b71c1c;
            }

            .error {
                color: red;
                font-size: 14px;
                text-align: center;
            }
        </style>
        <link rel="stylesheet" type="text/css" href="CSS/registro.css"/>
    </head>
    <body>
        <div><%@include file="WEB-INF/jspf/menuSuperior.jspf"%></div>
        <main>
            <div class="container">
                <h2>Login</h2>
                
                <form action="LoginServlet" method="post">
                    <div class="form-group">
                        <label for="login">Login</label>
                        <input type="text" id="login" name="login" required>
                    </div>
                    <div class="form-group">
                        <label for="senha">Senha</label>
                        <input type="password" id="senha" name="senha" required>
                    </div>
                    <br> <br>
                    <div class="form-group">
                        <button type="submit">Entrar</button>
                    </div>

                    <% if ("error".equals(check)) { %>
                    <div class="error">
                        Login ou senha inválidos. Tente novamente.
                    </div>
                    <% }%>
                </form>
            </div>
        </main>
                 <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
