<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType = "text/html" pageEncoding = "UTF-8" %>
<%@ page import = "java.util.*" %>
<%@ page import = "server.model.epidemiologico.Epidemiologico" %>
<html>
    <head>
        <meta charset = "UTF-8">
        <title>Dados Epidemiológicas</title>
        <link rel = "icon" type = "image/x-icon" href = "assets/save.ico">
        <link rel = "stylesheet" href = "styles/style.css">
        <link rel = "stylesheet" href = "styles/epidemiologico.css">
    </head>
    <body>
        <h4 class = "is-center">Cadastro de Dados Epidemiológicos</h4>
        <div class = "container">
            <div class = "hero is-full-screen">
                <nav class = "tabs is-center">
                    <a href = "primeiraEntrega">Home</a>
                    <a href = "dadoEpidemiologico">Visualização dos dados Epidemiológicos</a>
                    <a href = "visualizarDoenca">Visualizar Doença</a>
                    <a href = "cadastroDoenca">Cadastro de dados da doença</a>
                    <a href = "cadastroEpidemiologico"> Cadastro de dados epidemiológicos</a>
                </nav>
                <div id = "epidemiologico">
                    <div class = "row">
                        <div class = "col">
                            <h3>
                                <%
                                    try {
                                        String option = (String) request.getAttribute("option");
                                        if (option.equals("criar")) {
                                            out.print("Cadastrar novo dado Epidemiológico");
                                        }
                                    } catch (Exception e) {
                                        out.print("Cadastrar novo dado Epidemiológico");
                                    }
                                %>
                            </h3>
                            <form action = "cadastro" method = "POST">
                                <%
                                    Epidemiologico epidemiologico;
                                    try {
                                        epidemiologico = (Epidemiologico) request.getAttribute("epidemiologico");
                                    } catch (Exception e) {
                                        epidemiologico = new Epidemiologico();
                                    }
                                    if (epidemiologico.getId() == null || epidemiologico.getId().trim().equals("") ) {
                                        out.print("Id: <input type = 'text' name = 'id'/><br>");
                                        out.print("Data de Coleta: <input type = 'date' name = 'data'/><br>");
                                        out.print("Doença Associada: <input type = 'text' name = 'doenca'/><br>");                                        
                                    } else {
                                        out.print("Id: <input type = 'text' name = 'id' value = '" + epidemiologico.getId() + "'/><br>");
                                        out.print("Data de Coleta: <input type = 'date' name = 'data' value = '" + epidemiologico.getData() + "'/><br>");
                                        out.print("Doença Associada: <input type = 'text' name = 'doenca' value = '" + epidemiologico.getDoenca() + "'/><br>");
                                        
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