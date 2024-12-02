<%-- 
    Document   : newjsp
    Created on : 12 de nov. de 2024, 20:26:38
    Author     : Nicolete
--%>

<%@page import="com.sun.tools.rngom.ast.builder.Include"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <div>
            <%@include file="WEB-INF/jspf/menuUnido.jspf" %>
        </div>
        <div style="width: 80%; margin: 0 auto; font-family: Arial, sans-serif;">
            <h1 style="text-align: center;">Monte seu PC</h1>

            <!-- Dropdowns com carrossel -->
            <% String[] categorias = {"Processador", "Placa-Mãe", "Placa de Vídeo", "Memória RAM", "Refrigeração", "Fonte", "Gabinete", "Armazenamento", "Fan", "Monitor", "Headset", "Mouse", "Teclado", "Mesa", "Cadeira", "Nobreak"}; %>
            <% for (String categoria : categorias) {%>
            <div style="margin-bottom: 20px;">
                <!-- Botão do Dropdown -->
                <button onclick="toggleDropdown('<%= categoria%>')" style="width: 100%; text-align: left; background-color: #f0f0f0; border: 1px solid #ddd; padding: 10px; border-radius: 5px; cursor: pointer;">
                    <%= categoria%> +
                </button>

                <!-- Conteúdo do Dropdown -->
                <div id="<%= categoria%>" style="display: none; border: 1px solid #ddd; border-top: none; padding: 10px; background-color: #f9f9f9;">
                    <div style="display: flex; overflow-x: auto; gap: 15px; padding: 10px;">
                        <!-- Item do Carrossel -->
                        <% for (int i = 0; i < 15; i++) { %>
                        <div style="text-align: center; min-width: 150px;">
                            <img src="images/rtx3060.png" alt="GPU" style="width: 100px; height: auto;">
                            <p>GEFORCE RTX 4060</p>
                            <p>R$ 2899,99</p>
                            <button style="background-color: red; color: white; border: none; padding: 5px 10px; border-radius: 5px; cursor: pointer;">Adicionar</button>
                        </div>
                        <% } %>
                    </div>
                </div>
            </div>
            <% }%>

            <!-- Total -->
            <div style="margin-top: 20px; text-align: right;">
                <p><strong>Total: R$38.899,00</strong></p>
                <button style="background-color: green; color: white; border: none; padding: 10px 20px; border-radius: 5px; cursor: pointer;">Comprar</button>
            </div>
        </div>

        <script>
            function toggleDropdown(categoria) {
                const dropdown = document.getElementById(categoria);
                if (dropdown.style.display === "none" || dropdown.style.display === "") {
                    dropdown.style.display = "block";
                } else {
                    dropdown.style.display = "none";
                }
            }
        </script>
        <div>
            <%@include file="WEB-INF/jspf/rodape.jspf" %>
        </div>
    </body>
</html>
