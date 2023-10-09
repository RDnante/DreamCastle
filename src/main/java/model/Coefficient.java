package model;

import bdd.Connect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Coefficient {
    Integer idCoefficient;Integer idRequete;
    Integer post;
    Integer filiere;
    Integer diplome;
    Integer experience;

    Integer sexe;
    Integer age;
    Integer lieu;

    public Integer getIdCoefficient() {
        return idCoefficient;
    }

    public void setIdCoefficient(Integer idCoefficient) {
        this.idCoefficient = idCoefficient;
    }

    public Integer getIdRequete() {
        return idRequete;
    }

    public void setIdRequete(Integer idRequete) {
        this.idRequete = idRequete;
    }

    public Integer getPost() {
        return post;
    }

    public void setPost(Integer post) {
        this.post = post;
    }

    public Integer getFiliere() {
        return filiere;
    }

    public void setFiliere(Integer filiere) {
        this.filiere = filiere;
    }

    public Integer getDiplome() {
        return diplome;
    }

    public void setDiplome(Integer diplome) {
        this.diplome = diplome;
    }

    public Integer getExperience() {
        return experience;
    }

    public void setExperience(Integer experience) {
        this.experience = experience;
    }

    public Integer getSexe() {
        return sexe;
    }

    public void setSexe(Integer sexe) {
        this.sexe = sexe;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Integer getLieu() {
        return lieu;
    }

    public void setLieu(Integer lieu) {
        this.lieu = lieu;
    }

    public Coefficient() {
    }

    public void insert() throws Exception {
        String id = "default";
        if (this.getIdCoefficient() != null) {
            id = this.getIdCoefficient().toString();
        }
        Connection con = null;
        PreparedStatement prep = null;
        try {
            Connect connect = new Connect();
            con = connect.seConnecterPostgre();
            String table = this.getClass().getSimpleName();
            String req = "insert into "+table+" values ("+id+",?,?,?,?,?,?,?)";

            prep = con.prepareStatement(req);
            prep.setInt(1,this.getIdRequete());
            prep.setInt(2,this.getFiliere() );
            prep.setInt(3,this.getDiplome());
            prep.setInt(4,this.getExperience());
            prep.setInt(5,this.getSexe());
            prep.setInt(6,this.getAge());
            prep.setInt(7,this.getLieu());

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

    public List<Coefficient> getall() throws Exception {
        List<Coefficient> valiny = new ArrayList<Coefficient>();
        Connect conn = new Connect();
        Connection con = null;
        PreparedStatement prep = null;
        try {
            String req = "select * from "+this.getClass().getSimpleName();
            con = conn.seConnecterPostgre();
            prep = con.prepareStatement(req);
            ResultSet resultSet = prep.executeQuery();

            while (resultSet.next()) {
                Integer id = resultSet.getInt("idpost");
                Integer idrequete = resultSet.getInt("nompost");
                Integer filiere = resultSet.getInt("filiere");
                Integer diplome = resultSet.getInt("diplome");
                Integer experience = resultSet.getInt("experience");
                Integer sexe = resultSet.getInt("sexe");
                Integer age = resultSet.getInt("age");
                Integer lieu = resultSet.getInt("lieu");

                Coefficient c = new Coefficient();
                c.setIdCoefficient(id);
                c.setIdRequete(idrequete);
                c.setFiliere(filiere);
                c.setDiplome(diplome);
                c.setExperience(experience);
                c.setSexe(sexe);
                c.setAge(age);
                c.setLieu(lieu);

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

    public int getLastIdrequete() throws Exception {
        int valiny = 0;

        Connect connect = new Connect();
        Connection con = null;
        PreparedStatement stat = null;

        String req = "select Max(idrequete) from requete";
        try {
            con = connect.seConnecterPostgre();
            stat = con.prepareStatement(req);
            ResultSet result = stat.executeQuery();
            result.next();
            valiny = result.getInt("max");
        }
        catch (Exception e) {
            throw new Exception("last"+e.getMessage());
        }
        finally {
            con.close();
            stat.close();
        }

        return valiny;
    }
}
