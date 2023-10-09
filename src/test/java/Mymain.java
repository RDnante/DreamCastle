import model.*;

import java.sql.Date;
import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.HashMap;
import java.util.List;

public class Mymain {
    public static void main(String args[]) {
        System.out.println("hello Dimby");

        Requete requete = new Requete();
        requete.setIdpost(1);
        requete.setIdservice(1);
        requete.setIdfiliere(1);
        requete.setIddiplome(1);
        requete.setIdlieu(1);
        requete.setExperience(2);
        requete.setMaxage(23);
        requete.setMinage(18);
        requete.setEtat(1);
        requete.setSexe(2);
        requete.setTimerequete(Time.valueOf(LocalTime.now()));
        requete.setDaterequete(Date.valueOf(LocalDate.now()));

        Coefficient coef = new Coefficient();

        try {
            requete.insert();
        }
        catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
