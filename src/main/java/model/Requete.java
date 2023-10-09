package model;

import bdd.Connect;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Requete {
    Integer idRequete;
    Integer idpost;
    Integer idservice;
    Integer idfiliere;
    Integer iddiplome;
    Integer idlieu;
    Integer experience;
    Integer minage;
    Integer maxage;
    Integer sexe;
    Date daterequete;
    Time timerequete;

    Integer etat;

    public Integer getEtat() {
        return etat;
    }

    public void setEtat(Integer etat) {
        this.etat = etat;
    }

    public Integer getIdRequete() {
        return idRequete;
    }

    public void setIdRequete(Integer idRequete) {
        this.idRequete = idRequete;
    }

    public Integer getIdpost() {
        return idpost;
    }

    public void setIdpost(Integer idpost) {
        this.idpost = idpost;
    }

    public Integer getIdservice() {
        return idservice;
    }

    public void setIdservice(Integer idservice) {
        this.idservice = idservice;
    }

    public Integer getIdfiliere() {
        return idfiliere;
    }

    public void setIdfiliere(Integer idfiliere) {
        this.idfiliere = idfiliere;
    }

    public Integer getIddiplome() {
        return iddiplome;
    }

    public void setIddiplome(Integer iddiplome) {
        this.iddiplome = iddiplome;
    }

    public Integer getIdlieu() {
        return idlieu;
    }

    public void setIdlieu(Integer idlieu) {
        this.idlieu = idlieu;
    }

    public Integer getExperience() {
        return experience;
    }

    public void setExperience(Integer experience) {
        this.experience = experience;
    }

    public Integer getMinage() {
        return minage;
    }

    public void setMinage(Integer minage) {
        this.minage = minage;
    }

    public Integer getMaxage() {
        return maxage;
    }

    public void setMaxage(Integer maxage) {
        this.maxage = maxage;
    }

    public Integer getSexe() {
        return sexe;
    }

    public void setSexe(Integer sexe) {
        this.sexe = sexe;
    }

    public Date getDaterequete() {
        return daterequete;
    }

    public void setDaterequete(Date daterequete) {
        this.daterequete = daterequete;
    }

    public Time getTimerequete() {
        return timerequete;
    }

    public void setTimerequete(Time timerequete) {
        this.timerequete = timerequete;
    }

    public Requete() {
    }

    public void insert() throws Exception {
        String id = "default";
        if (this.getIdRequete() != null) {
            id = this.getIdRequete().toString();
        }
        Connection con = null;
        PreparedStatement prep = null;
        try {
            Connect connect = new Connect();
            con = connect.seConnecterPostgre();
            String table = this.getClass().getSimpleName();
            String req = "insert into "+table+" values ("+id+",?,?,?,?,?,?,?,?,?,?,?,?)";

            prep = con.prepareStatement(req);
            prep.setInt(1,this.getIdpost());
            prep.setInt(2,this.getIdservice());
            prep.setInt(3,this.getIdfiliere());
            prep.setInt(4,this.getIddiplome());
            prep.setInt(5,this.getIdlieu());
            prep.setInt(6,this.getExperience());
            prep.setInt(7,this.getSexe());
            prep.setDate(8,this.getDaterequete());
            prep.setTime(9,this.getTimerequete());
            prep.setInt(10,this.getEtat());
            prep.setInt(11,this.getMaxage());
            prep.setInt(12,this.getMinage());

            prep.executeUpdate();
        }
        catch (Exception e) {
            throw new Exception("tsy nety"+this.getClass().getSimpleName()+" insert"+e.getMessage());
        }
        finally {
            con.close();
            prep.close();
        }
    }

    public List<Requete> getall() throws Exception {
        List<Requete> valiny = new ArrayList<Requete>();
        Connect conn = new Connect();
        Connection con = null;
        PreparedStatement prep = null;
        try {
            String req = "select * from "+this.getClass().getSimpleName();
            con = conn.seConnecterPostgre();
            prep = con.prepareStatement(req);
            ResultSet resultSet = prep.executeQuery();

            while (resultSet.next()) {
                Integer idrequete = resultSet.getInt("idrequete");
                Integer idpost = resultSet.getInt("idpost");
                Integer idservice = resultSet.getInt("idservice");
                Integer idfiliere = resultSet.getInt("idfiliere");
                Integer iddiplome = resultSet.getInt("iddiplome");
                Integer idlieu = resultSet.getInt("idlieu");
                Integer experience = resultSet.getInt("experience");
                Integer sexe = resultSet.getInt("sexe");
                Date daterequete = resultSet.getDate("daterequete");
                Time timerequete = resultSet.getTime("timerequete");
                Integer etat = resultSet.getInt("etat");
                Integer minage = resultSet.getInt("minage");
                Integer maxage = resultSet.getInt("maxage");

                Requete c = new Requete();
                c.setIdRequete(idrequete);
                c.setIdpost(idpost);
                c.setIdservice(idservice);
                c.setIdfiliere(idfiliere);
                c.setIddiplome(iddiplome);
                c.setIdlieu(idlieu);
                c.setExperience(experience);
                c.setSexe(sexe);
                c.setDaterequete(daterequete);
                c.setTimerequete(timerequete);
                c.setEtat(etat);
                c.setMinage(minage);
                c.setMaxage(maxage);

                valiny.add(c);
            }
        }
        catch (Exception e) {
            throw new Exception("insert"+this.getClass().getSimpleName()+" "+e.getMessage());
        }
        finally {
            con.close();
            prep.close();
        }
        return  valiny;
    }

    public int verifRequete() throws Exception {
        int valiny = 0;
        List<Requete> list = this.getall();
        if (list.size() > 0) {
            valiny = 1;
        }
        
        return  valiny;
    }
}
