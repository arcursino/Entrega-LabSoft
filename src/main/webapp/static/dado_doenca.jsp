<%@page import="java.util.List" %>
<%@ page import = "model.doenca.Doenca" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>    
    <head>
        <link href="styles/doenca.css" rel="stylesheet" type="text/css"></link>
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
                    <div class = "row">
                        <div class = "col">
                            <h3>
                                <%
                                    try {
                                        String option = (String) request.getAttribute("option");
                                        if (option.equals("criar")) {
                                            out.print("Cadastrar nova doença");
                                        }
                                    } catch (Exception e) {
                                        out.print("Cadastrar nova doença");
                                    }
                                %>
                            </h3>
                            <form action = "cadastrodoenca" method = "POST">
                                <%
                                    Doenca doenca;
                                    try {
                                        doenca = (Doenca) request.getAttribute("doenca");
                                    } catch (Exception e) {
                                        doenca = new Doenca();
                                    }

                                    out.print("<div class='field-wrapper'> Nome: <input type = 'text' name = 'nome'/></div>");
                                    out.print("<div class='field-wrapper'> Sintomas: <input type = 'text' name = 'sintomas'/></div>");                                        
                                %>
                                <div class="row">
                                <%
                                    try {
                                        String option = (String) request.getAttribute("option");
                                        if (option.equals("criar")) {
                                            out.print("<input type = 'reset' value = 'Cancelar' style = 'align-items: center'/>");
                                            out.print("<input type = 'submit' value = 'Cadastrar' style = 'align-items: center'/>");
                                        }else if (option.equals("editar")) {
                                            out.print("<input type = 'reset' value = 'Cancelar' style = 'align-items: center'/>");
                                            out.print("<input type = 'submit' value = 'Salvar' style = 'align-items: center'/>");
                                        }
                                    } catch (Exception e) {
                                        out.print("<input type = 'reset' value = 'Cancelar' style = 'align-items: center'/>");
                                        out.print("<input type = 'submit' value = 'Cadastrar' style = 'align-items: center'/>");
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