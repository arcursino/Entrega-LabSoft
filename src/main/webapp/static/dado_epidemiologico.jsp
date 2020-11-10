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
                <div id = "epidemiologico">
                    <div class = "row">
                        <div class = "col">
                            <h3>
                                <%
                                    try {
                                        String option = (String) request.getAttribute("option");
                                        if (option.equals("criar")) {
                                            out.print("Cadastrar ocorrência de doença");
                                        }
                                    } catch (Exception e) {
                                        out.print("Cadastrar ocorrência de doença");
                                    }
                                %>
                            </h3>
                            <form action = "cadastroepidemiologico" method = "POST">
                                <%
                                    Epidemiologico epidemiologico;
                                    try {
                                        epidemiologico = (Epidemiologico) request.getAttribute("epidemiologico");
                                    } catch (Exception e) {
                                        epidemiologico = new Epidemiologico();
                                    }
                                    out.print("<div class='field-wrapper'>Data da ocorrência: <input type = 'text' name = 'data'/></div>");
                                    out.print("<div class='field-wrapper'></div>Doença Associada: <input type = 'text' name = 'doencaAssociada'/></div>");                                        
                                %>
                                <div class="row">
                                <%
                                    try {
                                        String option = (String) request.getAttribute("option");
                                        if (option.equals("criar")) {
                                            out.print("<input type = 'reset' value = 'Cancelar' style = 'align-items: center'/>");
                                            out.print("<input type = 'submit' value = 'Cadastrar' style = 'align-items: center'/>");
                                        }else if (option.equals("editar")) {
                                            out.print("<input type = 'reset' value = 'Cancelar' style = 'align-items: center'/><br>");
                                            out.print("<input type = 'submit' value = 'Salvar' style = 'align-items: center'/><br>");
                                        }
                                    } catch (Exception e) {
                                        out.print("<input type = 'reset' value = 'Cancelar' style = 'align-items: center'/><br>");
                                        out.print("<input type = 'submit' value = 'Cadastrar' style = 'align-items: center'/><br>");
                                    }
                                %>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        </div>  
        <div class="footer">
                Sistema de Coleta e Visualização de Dados Epidemiológicos</br>
                Ariana Rodrigues Cursino</br>
        </div>
    </body>
</html>