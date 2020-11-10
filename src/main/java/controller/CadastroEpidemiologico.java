package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.epidemiologico.Epidemiologico;
import model.epidemiologico.EpidemiologicoDAOImpl;

@WebServlet(urlPatterns={"/cadastroepidemiologico"})
public class CadastroEpidemiologico extends HttpServlet{
    @Override
    public void doGet (HttpServletRequest req, HttpServletResponse res) throws ServletException{
        req.setAttribute("epidemiologico", new Epidemiologico());
        req.setAttribute("option", "criar");
        try {            
            req.getRequestDispatcher("static/dado_epidemiologico.jsp").forward(req, res);
            
        } catch (Exception e) {
            System.out.println("An exception was thrown");
            System.out.println(e.toString());
        }        
    }

    @Override
    public void doPost (HttpServletRequest req, HttpServletResponse res) throws ServletException{
        try {
            req.setCharacterEncoding("UTF-8");
            Epidemiologico epidemiologico;
            try {
                List<Epidemiologico> epidemiologicos = new EpidemiologicoDAOImpl().findByCode(req.getParameter("id"));
                if (epidemiologicos.isEmpty()) {
                    epidemiologico = new Epidemiologico();
                } else {
                    epidemiologico = epidemiologicos.get(0);
                }
            } catch (Exception e) {
                epidemiologico = new Epidemiologico();
            }
            if ( !(req.getParameter("id") == null)) {
                String data = (String)req.getParameter("data");
                String doencaAssociada = (String)req.getParameter("doencaAssociada");
                epidemiologico.setData(data);
                epidemiologico.setDoencaAssociada(doencaAssociada);
                
                try {
                    Epidemiologico updateEpidemiologico = new EpidemiologicoDAOImpl().updateEpidemiologico(epidemiologico);
                } catch (Exception e) {
                    Epidemiologico saveEpidemiologico = new EpidemiologicoDAOImpl().saveEpidemiologico(epidemiologico);
                }
                req.setAttribute("epidemiologico", epidemiologico);
                req.getRequestDispatcher("/static/dado_epidemiologico.jsp").forward(req, res);
            } else {
                String data = (String)req.getParameter("data");
                String doencaAssociada = (String)req.getParameter("doencaAssociada");
                epidemiologico.setData(data);
                epidemiologico.setDoencaAssociada(doencaAssociada);
                Epidemiologico saveEpidemiologico = new EpidemiologicoDAOImpl().saveEpidemiologico(epidemiologico);
                req.setAttribute("epidemiologico", epidemiologico);
                req.setAttribute("option", "criar");
                req.getRequestDispatcher("/static/dado_epidemiologico.jsp").forward(req, res);
            }
        } catch (Exception e) {
            System.out.println("Erro em 10 ou Servlet");
            System.out.println(e.getMessage());
        }
    }
}
