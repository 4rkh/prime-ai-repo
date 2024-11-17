<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Prime Tech</title>
        <style>
            /* Resetting default margin and padding */
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: 'Arial', sans-serif;
                background-color: #ababab;
                color: #333;
                line-height: 1.6;
            }

            /* Top bar - Menu */
            .top-bar {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 15px 20px;
                background-color: #333;
                color: white;
                box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            }

            .top-bar a {
                color: white;
                text-decoration: none;
                margin: 0 15px;
                font-weight: bold;
                transition: color 0.3s;
            }

            .top-bar a:hover {
                color: red;
            }

            .logo img {
                max-width: 150px;
                height: auto;
            }

            .search-bar input {
                padding: 8px;
                width: 300px;
                border: 1px solid #ccc;
                border-radius: 4px;
                font-size: 16px;
            }

            /* Banner */
            .banner img {
                width: 100%;
                height: auto;
                display: block;
                border-radius: 8px;
                transition: transform 0.5s ease;
            }

            .banner img:hover {
                transform: scale(1.05);
            }

            /* Menu de Categorias abaixo do banner */
            .categories-menu {
                display: flex;
                justify-content: center;
                background-color: #f8f8f8;
                padding: 10px 0;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            }

            .categories-menu a {
                text-decoration: none;
                color: #333;
                font-weight: bold;
                margin: 0 20px;
                font-size: 18px;
                padding: 10px 15px;
                border-radius: 5px;
                transition: background-color 0.3s, color 0.3s;
            }

            .categories-menu a:hover {
                background-color: #eaeaea;
                color: red;
            }

            /* Categorias Section */
            .categories {
                text-align: center;
                padding: 30px 0;
                font-size: 28px;
                font-weight: bold;
                background-color: #333;
                color: white;
                margin-bottom: 30px;
            }

            .categories-grid {
                display: flex;
                justify-content: space-evenly;
                flex-wrap: wrap;
                gap: 20px;
                margin: 0 20px;
            }

            .categories-grid div {
                background-color: white;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                width: 220px;
                text-align: center;
                transition: transform 0.3s ease, box-shadow 0.3s ease;
            }

            .categories-grid div:hover {
                transform: translateY(-10px);
                box-shadow: 0 10px 15px rgba(0, 0, 0, 0.2);
            }

            .categories-grid img {
                width: 100%;
                height: auto;
                border-radius: 8px;
                transition: transform 0.3s ease;
            }

            .categories-grid div:hover img {
                transform: scale(1.05);
            }

            .categories-grid p {
                margin-top: 10px;
                font-weight: bold;
            }

            /* Promoções Section */
            .promotions {
                text-align: center;
                padding: 30px 0;
                font-size: 28px;
                font-weight: bold;
                background-color: red; /* Red color */
                color: white;
                margin-bottom: 30px;
            }

            .promotions-grid {
                display: grid;
                grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
                gap: 20px;
                margin: 0 20px;
            }

            .promotions-grid div {
                background-color: #ababab;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                text-align: center;
                transition: transform 0.3s ease, box-shadow 0.3s ease;
            }

            .promotions-grid div:hover {
                transform: translateY(-10px);
                box-shadow: 0 10px 15px rgba(0, 0, 0, 0.2);
            }

            .promotions-grid img {
                width: 100%;
                height: auto;
                border-radius: 8px;
                transition: transform 0.3s ease;
            }

            .promotions-grid div:hover img {
                transform: scale(1.05);
            }

            .promotions-grid p {
                margin-top: 15px;
                font-size: 20px;
                font-weight: bold;
            }

            .promotions-grid span {
                color: green;
                font-size: 18px;
                font-weight: normal;
            }

            .buy-button {
                display: inline-block;
                padding: 12px 25px;
                background-color: red; /* Red color */
                color: white;
                text-transform: uppercase;
                font-weight: bold;
                border-radius: 5px;
                text-decoration: none;
                margin-top: 15px;
                transition: background-color 0.3s;
            }

            .buy-button:hover {
                background-color: #cc4c00;
            }

            /* Footer */
            footer {
                background-color: #333;
                color: white;
                padding: 30px 20px;
                text-align: center;
                font-size: 16px;
            }

            footer a {
                color: white;
                text-decoration: none;
                font-weight: bold;
            }

            footer a:hover {
                color: #ff6600;
            }

            /* Responsivity for smaller devices */
            @media (max-width: 768px) {
                .top-bar {
                    flex-direction: column;
                    align-items: flex-start;
                }

                .search-bar input {
                    width: 100%;
                    margin-top: 10px;
                }

                .categories-menu {
                    flex-direction: column;
                    gap: 10px;
                }

                .categories-grid {
                    flex-direction: column;
                    gap: 30px;
                }

                .promotions-grid {
                    grid-template-columns: 1fr 1fr;
                    gap: 20px;
                }
            }
        </style>
    </head>
    <body>
        <!-- Menu superior -->
        <div class="top-bar">
            <div class="logo">
                <a href="home.jsp"><img src="<%=request.getContextPath()%>/images/logo_sem_fundo.png" alt="Logo"></a>
            </div>
            <div class="search-bar">
                <input type="text" placeholder="Search...">
            </div>
            <div class="auth-links">
                <a href="register.jsp">Registrar-se</a>
                <a href="login.jsp">Login</a>
            </div>
        </div>

        <!-- Banner -->
        <div class="banner">
            <img src="<%=request.getContextPath()%>/images/banner.png" alt="Banner">
        </div>

        <!-- Menu de Categorias -->
        <div class="categories-menu">
            <a href="#">Peças</a>
            <a href="#">PC's Montados</a>
            <a href="#">Monte seu PC</a>
            <a href="#">PRIME AI</a>
        </div>

        <!-- Categorias -->
        <div class="categories">CATEGORIAS</div>
        <div class="categories-grid">
            <div>
                <img src="<%=request.getContextPath()%>/images/categoria1.png" alt="Peças">
                <p>Peças</p>
            </div>
            <div>
                <img src="<%=request.getContextPath()%>/images/categoria2.png" alt="PCs Montados">
                <p>PCs Montados</p>
            </div>
            <div>
                <img src="<%=request.getContextPath()%>/images/categoria3.png" alt="Monte seu PC">
                <p>Monte seu PC</p>
            </div>
        </div>

        <!-- Promoções -->
        <div class="promotions">PROMOÇÕES</div>
        <div class="promotions-grid">
            <% for (int i = 0; i < 12; i++) { %>
            <div>
                <img src="<%=request.getContextPath()%>/images/produto.png" alt="Produto">
                <p>GeForce RTX 4060 TI</p>
                <p>R$ 1449,99 <span>50% OFF</span></p>
                <a href="#" class="buy-button">Comprar</a>
            </div>
            <% } %>
        </div>

        <!-- Rodapé -->
        <footer>
            <p>Prime Tech &copy; 2024. Todos os direitos reservados.</p>
            <p>CNPJ: 15.368.494/0001-B | Atendimento: de segunda a sexta, das 9h às 18h.</p>
        </footer>
    </body>
</html>
