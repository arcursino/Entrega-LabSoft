<%@page import="java.util.List" %>
<%@ page import = "model.epidemiologico.Epidemiologico" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>    
    <head>
        <link href="styles/epidemiologico.css" rel="stylesheet" type="text/css"></link>
        <meta charset = "UTF-8">
        <meta http-equiv="Content-Style-Type" content="text/css">
        <link rel = "icon" type = "image/x-icon" href = "assets/favicon.png"></link>          
    </head>
    <body>
        <div class = "container">
            <div class="sidebar">                
                <a class="active" href = "home">Home</a>
                <a href = "visualizarepidemiologico">Visualização dos dados Epidemiológicos</a>
                <a href = "visualizardoenca">Visualizar Doença</a>
                <a href = "cadastrodoenca">Cadastro de dados da doença</a>
                <a href = "cadastroepidemiologico"> Cadastro de dados epidemiológicos</a>  
            </div>
            <div class="content">      
                <form action = "home" method = "GET">
                </form>   
                <p>1 - Primeira Entrega da Disciplina</p>  
                <p>2 - Nome da aluna: Ariana Rodrigues Cursino e RA: 1460481821008</p>      
                <p>3 - Nome do professor: Fabrício Galende M. de Carvalho</p>           
            </div>
        </div>         
        <div class="footer">
                Sistema de Coleta e Visualização de Dados Epidemiológicos</br>
                Ariana Rodrigues Cursino</br>
        </div>
    </body>
</html>