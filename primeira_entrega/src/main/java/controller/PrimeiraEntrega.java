package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns={"/primeira_entrega"})
public class PrimeiraEntrega extends HttpServlet{

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp){
       
        try{
            PrintWriter pw = resp.getWriter();
            pw.write("1 - Primeira Entrega da Disciplina\n");
            pw.write("2 - Nome da aluna: Ariana Rodrigues Cursino e RA: 1460481821008\n");
            pw.write("3 - Nome do professor: Fabrício Galende M. de Carvalho");
        }catch(IOException ioe){
            System.out.println("Impossível escrever os itens específicados no trabalho");
        }
        
    }

}
