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
                <table>
                    <tr>
                      <th>Doença</th>
                      <th>Sintomas</th>                      
                    </tr>
                    <tr>
                      <td>Gripe</td>
                      <td>Coriza</td>
                    </tr>
                    <tr>
                      <td>Covid</td>
                      <td>Falta de ar</td>
                    </tr>
                    <tr>
                      <td>Sarampo</td>
                      <td>Vermelhidão no corpo</td>
                    </tr>
                    <tr>
                      <td>Sinusite</td>
                      <td>Febre</td>
                    </tr>                   
                </table>                
            </div>
        </div>         
        <div class="footer">
                Sistema de Coleta e Visualização de Dados Epidemiológicos</br>
                Ariana Rodrigues Cursino</br>
        </div>
    </body>
</html>