package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.doenca.Doenca;
import model.doenca.DoencaDAOImpl;

@WebServlet(urlPatterns={"/cadastrodoenca"})
public class CadastroDoenca extends HttpServlet{
    @Override
    public void doGet (HttpServletRequest req, HttpServletResponse res) throws ServletException{
        req.setAttribute("doenca", new Doenca());
        req.setAttribute("option", "criar");
        try {            
            req.getRequestDispatcher("static/dado_doenca.jsp").forward(req, res);
            
        } catch (Exception e) {
            System.out.println("An exception was thrown");
            System.out.println(e.toString());
        }        
    }

    @Override
    public void doPost (HttpServletRequest req, HttpServletResponse res) throws ServletException{
        try {
            req.setCharacterEncoding("UTF-8");
            Doenca doenca;
            try {
                List<Doenca> doencas = new DoencaDAOImpl().findByCode(req.getParameter("id"));
                if (doencas.isEmpty()) {
                    doenca = new Doenca();
                } else {
                    doenca = doencas.get(0);
                }
            } catch (Exception e) {
                doenca = new Doenca();
            }
            if ( !(req.getParameter("id") == null)) {
                String nomeDoenca = (String)req.getParameter("nome");
                String sintomas = (String)req.getParameter("sintomas");
                doenca.setNome(nomeDoenca);
                doenca.setSintomas(sintomas);
                
                try {
                    Doenca updateDoenca = new DoencaDAOImpl().updateDoenca(doenca);
                } catch (Exception e) {
                    Doenca saveDoenca = new DoencaDAOImpl().saveDoenca(doenca);
                }
                req.setAttribute("doenca", doenca);
                req.getRequestDispatcher("/static/dado_doenca.jsp").forward(req, res);
            } else {
                String nomeDoenca = (String)req.getParameter("nome");
                String sintomas = (String)req.getParameter("sintomas");
                doenca.setNome(nomeDoenca);
                doenca.setSintomas(sintomas);
                Doenca saveDoenca = new DoencaDAOImpl().saveDoenca(doenca);
                req.setAttribute("doenca", doenca);
                req.setAttribute("option", "criar");
                req.getRequestDispatcher("/static/dado_doenca.jsp").forward(req, res);
            }
        } catch (Exception e) {
            System.out.println("Erro em 10 ou Servlet");
            System.out.println(e.getMessage());
        }
    }
}
