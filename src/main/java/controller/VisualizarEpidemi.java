package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns={"/visualizarepidemiologico"})
public class VisualizarEpidemi extends HttpServlet{

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException{      
        try{
            req.getRequestDispatcher("static/visualizar_epidemiologico.jsp").forward(req, res);
        }catch(IOException ioe){
            System.out.println("Impossível escrever os itens específicados no trabalho");
        }
        
    }

}
