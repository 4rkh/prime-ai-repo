<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registro - Prime Tech</title>

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

        </style>
        <link rel="stylesheet" type="text/css" href="CSS/registro.css"/>
    </head>
    <body>
        <main>
            <div><%@include file="WEB-INF/jspf/menuUnido.jspf"%></div>
            <div class="container">
                
                <h2>Registro</h2>

                <form action="processarRegistro.jsp" method="post" onsubmit="return validatePassword()">
                    <div class="form-group">
                        <label for="login">Login</label>
                        <input type="text" id="login" name="login" required>
                    </div>
                    <div class="form-group">
                        <label for="senha">Senha</label>
                        <input type="password" id="senha" name="senha" required>
                    </div>
                    <div class="form-group">
                        <label for="confirmarSenha">Confirmar Senha:</label>
                        <input type="password" id="confirmarSenha" name="confirmarSenha" required>
                    </div>
                    <div class="form-group">
                        <label for="email">E-mail</label>
                        <input type="email" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <button type="submit">Registrar</button>
                    </div>
                </form>
            </div>  
           
        </main>    
            <script>
                // Verifica se as senhas são iguais
                function validatePassword() {
                    var senha = document.getElementById("senha").value;
                    var confirmarSenha = document.getElementById("confirmarSenha").value;
                    if (senha !== confirmarSenha) {
                        alert("As senhas não coincidem. Por favor, tente novamente.");
                        return false; // Impede o envio do formulário
                    }
                    return true; // Permite o envio do formulário
                }
            </script>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
