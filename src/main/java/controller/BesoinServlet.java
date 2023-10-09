package controller;

import model.Coefficient;
import model.Requete;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalTime;

@WebServlet(name = "BesoinServlet", value = "/BesoinServlet")
public class BesoinServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        Integer idService = Integer.parseInt(request.getParameter("service"));
        out.println("service"+idService);

        Integer idposte = Integer.parseInt(request.getParameter("poste"));
        out.println("poste"+idposte);

        Integer idfiliere = Integer.parseInt(request.getParameter("filiere"));
        Integer coeffiliere = Integer.parseInt(request.getParameter("coefFiliere"));
        out.println("filiere"+idfiliere+" coeff "+coeffiliere);

        Integer iddiplome = Integer.parseInt(request.getParameter("diplome"));
        Integer coefdiplome = Integer.parseInt(request.getParameter("coefDiplome"));
        out.println("diplome"+iddiplome+" coeff "+coefdiplome);

        Integer experience = Integer.parseInt(request.getParameter("experience"));
        Integer coefexperience = Integer.parseInt(request.getParameter("coefExperience"));
        out.println("exp"+experience+" coeff "+coefexperience);

        Integer lieu = Integer.parseInt(request.getParameter("lieu"));
        Integer coeflieu = Integer.parseInt(request.getParameter("coefLieu"));
        out.println("lieu"+lieu+" coeff "+coeflieu);

        Integer minage = Integer.parseInt(request.getParameter("minAge"));
        Integer maxage = Integer.parseInt(request.getParameter("maxAge"));
        Integer coefage = Integer.parseInt(request.getParameter("coefAge"));
        out.println(minage +" "+maxage+" "+coefage);

        Integer sexe = Integer.parseInt(request.getParameter("sexe"));
        Integer coefsexe = Integer.parseInt(request.getParameter("coefSexe"));
        out.println("sexe "+sexe+" coeff "+coefsexe);

        Requete requete = new Requete();
        requete.setIdpost(idposte);
        requete.setIdservice(idService);
        requete.setIdfiliere(idfiliere);
        requete.setIddiplome(iddiplome);
        requete.setIdlieu(lieu);
        requete.setExperience(experience);
        requete.setMaxage(maxage);
        requete.setMinage(minage);
        requete.setEtat(1);
        requete.setSexe(sexe);
        requete.setTimerequete(Time.valueOf(LocalTime.now()));
        requete.setDaterequete(Date.valueOf(LocalDate.now()));

        try {
            requete.insert();
            out.println("mety insert requete");
        }
        catch (Exception e) {
            out.println(e.getMessage()+"insert requete");
        }

        Coefficient coefficient = new Coefficient();
        try {
            Integer idrequete = coefficient.getLastIdrequete();
            coefficient.setIdRequete(idrequete);
            coefficient.setFiliere(coeffiliere);
            coefficient.setDiplome(coefdiplome);
            coefficient.setExperience(coefexperience);
            coefficient.setSexe(coefsexe);
            coefficient.setAge(coefage);
            coefficient.setLieu(coeflieu);

            coefficient.insert();
            out.println("mety insert coefficient");
        }
        catch (Exception e) {
            out.println(e.getMessage()+"coefficient");
        }
    }
}
