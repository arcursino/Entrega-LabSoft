<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType = "text/html" pageEncoding = "UTF-8" %>
<html>
    <head>
        <meta charset = "UTF-8">
        <title>Welcome</title>
        <link rel = "icon" type = "image/x-icon" href = "./assets/favicon.png">
        <link rel = "stylesheet" href = "styles/style.css">
        <link rel = "stylesheet" href = "styles/index.css">
    </head>
    <body>
        <div class = "container">
            <div class = "hero is-full-screen">
                <div class = "form">
                    <form action = "caixa" method = "GET">
                        <div class = "greetings">
                            <h3>Bem Vindo!</h3>
                            <p>Bem vindo ao Sistema de Dado de Coletas e Visualização de dados epidemiológicos</p>
                        </div>
                        <input class = "welcome" type = "submit" value = "Entrar" style = "align-items: center"/>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>