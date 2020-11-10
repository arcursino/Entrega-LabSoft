<%@page import="java.util.List" %>
<%@ page import = "model.doenca.Doenca" %>
<%@ page import = "model.epidemiologico.Epidemiologico" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>    
    <head>
        <link href="styles/visualizar_epidemi.css" rel="stylesheet" type="text/css"></link>
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
                <div id = "doenca">                    
                    <form action = "visualizarepidemiologico" method = "GET">                        
                    </form>
                </div> 
                <div>
                    <h3>Principais Doenças</h3>
                    <label class="container_check">Covid
                        <input type="checkbox" checked="checked">
                        <span class="checkmark"></span>
                    </label>
                    <label class="container">Gripe
                        <input type="checkbox">
                        <span class="checkmark"></span>
                    </label>
                    <label class="container">Sarampo
                        <input type="checkbox">
                        <span class="checkmark"></span>
                    </label>
                    <label class="container">H1N1
                        <input type="checkbox">
                        <span class="checkmark"></span>
                    </label>
                </div>
                <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                <script type="text/javascript">
                google.charts.load('current', {'packages':['corechart']});
                google.charts.setOnLoadCallback(drawChart);                

                function drawChart() {
                    var data = google.visualization.arrayToDataTable([
                    ['Data', 'Doença Selecionada'],
                    ['01/01/2020',  0],
                    ['01/02/2020',  10],
                    ['01/03/2020',  25],
                    ['01/06/2020',  250],
                    ['01/07/2020',  200],
                    ['01/08/2020',  150],
                    ['01/09/2020',  100],
                    ['30/10/2020',  50]
                    ]);

                    var options = {
                    title: 'Dados Epidemiológicos',
                    curveType: 'function',
                    legend: { position: 'bottom' }
                    };

                    var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

                    chart.draw(data, options);
                }
                </script>  
                <div id="curve_chart" style="width: 900px; height: 500px"></div>                
            </div>
        </div>          
        <div class="footer">
                Sistema de Coleta e Visualização de Dados Epidemiológicos</br>
                Ariana Rodrigues Cursino</br>
        </div>
    </body>
</html>