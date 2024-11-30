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
        <style>
            /* Configura o layout principal com Grid */
            .layout {
                display: grid;
                grid-template-areas:
                    "logo banner"
                    "menu content";
                grid-template-rows: auto 1fr;
                grid-template-columns: auto 1fr;
                height: 100vh; /* Altura da tela inteira */
                gap: 10px;
            }

            /* Áreas específicas */
            .logo {
                grid-area: logo;
                display: flex;
                align-items: center;
                padding: 10px;
            }

            .banner {
                grid-area: banner;
                display: flex;
                align-items: center;
                justify-content: flex-end;
                padding: 10px;
                background-color: #f4f4f4; /* Cor de fundo para o banner */
            }

            .menu {
                grid-area: menu;
                padding: 20px;
                background-color: #eaeaea; /* Cor de fundo para o menu */
                height: calc(100vh - 100px); /* Altura dinâmica para ajustar abaixo do logo */
                overflow-y: auto; /* Rolagem se necessário */
            }

            .content {
                grid-area: content;
                padding: 20px;
            }

            /* Estilização das imagens */
            .logo img {
                max-width: 290px;
                height: auto;
            }

            .banner img {
                height: 210px;
                width: auto;
                
            }
            h1 {
                margin: 0;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <div class="layout">
            <%@include file="WEB-INF/jspf/logo_banner.jspf" %>
            <div class="menu">
                <%@include file="WEB-INF/jspf/menuAcessoRapido.jspf" %>
            </div>

            <!-- Conteúdo principal à direita do menu -->
            <div class="content">
                <h1>Home</h1>
                <p>Imagens de produtos</p>
            </div>
        </div>
    </body>
</html>
