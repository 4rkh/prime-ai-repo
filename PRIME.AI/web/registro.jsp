<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro - Prime Tech</title>
    
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            align-content: center;
            background-color: #f2f2f2;
        }

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
    <div><%@include file="WEB-INF/jspf/menuSuperior.jspf"%></div>
    <div class="container">
    <h2>Registro</h2>
        
        <form action="RegisterServlet" method="post">
            <div class="form-group">
                <label for="login">Login</label>
                <input type="text" id="login" name="login" required>
            </div>
            <div class="form-group">
                <label for="senha">Senha</label>
                <input type="password" id="senha" name="senha" required>
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
    <footer>
        <p>Prime Tech © 2024. Todos os direitos reservados.</p>
        <p>CNPJ: 15.368.494/0001-B | Atendimento: de segunda a sexta, das 9h às 18h.</p>
    </footer>
</body>
</html>
