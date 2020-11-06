<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType = "text/html" pageEncoding = "UTF-8" %>
<%@ page import = "java.util.*" %>
<%@ page import = "server.model.doenca.Doenca" %>
<html>
    <head>
        <meta charset = "UTF-8">
        <title>Dados da Doenças</title>
        <link rel = "icon" type = "image/x-icon" href = "assets/save.ico">
        <link rel = "stylesheet" href = "styles/style.css">
        <link rel = "stylesheet" href = "styles/doenca.css">
    </head>
    <body>
        <h4 class = "is-center">Cadastro de Doenças</h4>
        <div class = "container">
            <div class = "hero is-full-screen">
                <nav class = "tabs is-center">
                    <a href = "home">Home</a>
                    <a href = "dadoEpidemiologico">Visualização dos dados Epidemiológicos</a>
                    <a href = "visualizarDoenca">Visualizar Doença</a>
                    <a href = "cadastroDoenca">Cadastro de dados da doença</a>
                    <a href = "cadastroEpidemiologico"> Cadastro de dados epidemiológicos</a>
                </nav>
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
                            <form action = "cadastro" method = "POST">
                                <%
                                    Doenca doenca;
                                    try {
                                        doenca = (Doenca) request.getAttribute("doenca");
                                    } catch (Exception e) {
                                        doenca = new Doenca();
                                    }
                                    if ( doenca.getId() == null || doenca.getId().trim().equals("") ) {
                                        out.print("Id: <input type = 'text' name = 'id'/><br>");
                                        out.print("Nome: <input type = 'text' name = 'nome'/><br>");
                                        out.print("Sintomas: <input type = 'text' name = 'sintomas'/><br>");                                        
                                    } else {
                                        out.print("Id: <input type = 'text' name = 'id' value = '" + doenca.getId() + "'/><br>");
                                        out.print("Nome: <input type = 'text' name = 'nome' value = '" + doenca.getNome() + "'/><br>");
                                        out.print("Sintomas: <input type = 'text' name = 'sintomas' value = '" + doenca.getSintomas() + "'/><br>");
                                        
                                    }
                                %>
                                <%
                                    try {
                                        String option = (String) request.getAttribute("option");
                                        if (option.equals("criar")) {
                                            out.print("<input type = 'reset' value = 'Cancelar' style = 'align-items: center'/>");
                                            out.print("<input type = 'submit' value = 'Cadastrar' style = 'align-items: center'/>");
                                        }
                                    } catch (Exception e) {
                                        out.print("<input type = 'reset' value = 'Cancelar' style = 'align-items: center'/>");
                                        out.print("<input type = 'submit' value = 'Cadastrar' style = 'align-items: center'/>");
                                    }
                                %>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class = "is-text-center">
            <p>
                Sistema de Dado de Coletas e Visualização de dados epidemiológicos
            </p>
        </footer>
    </body>
</html>