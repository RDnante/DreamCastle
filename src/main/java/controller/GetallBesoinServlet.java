package controller;

import model.Poste;
import model.Service;
import model.Util;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

@WebServlet(name = "GetallBesoinServlet", value = "/GetallBesoinServlet")
public class GetallBesoinServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Service service = new Service();
        Poste poste = new Poste();
        Util u = new Util();
        PrintWriter out = response.getWriter();
        out.println("ato");
        try {
            List<Service> listService = service.getall();
            request.setAttribute("listService",listService);

            List<Poste> listPoste = poste.getall();
            request.setAttribute("listePoste",listPoste);

            HashMap<Integer,String> listFiliere = u.getFiliere();
            request.setAttribute("listeFiliere",listFiliere);

            HashMap<Integer,String> listeDiplome = u.getDiplome();
            request.setAttribute("listeDiplome",listeDiplome);

            HashMap<Integer,String> listeLieu = u.getLieu();
            request.setAttribute("listeLieu",listeLieu);

            RequestDispatcher dispat = request.getRequestDispatcher("BackOffice/besoin.jsp");
            dispat.forward(request,response);
        }
        catch (Exception e) {
            out.println(e.getMessage());
        }
    }
}
