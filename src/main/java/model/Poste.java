package model;

import bdd.Connect;
import javafx.geometry.Pos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Poste {
    Integer idpost;
    String nomPost;

    public Poste() {
    }

    public Integer getIdpost() {
        return idpost;
    }
    public void setIdpost(Integer idpost) {
        this.idpost = idpost;
    }

    public String getNomPost() {
        return nomPost;
    }

    public void setNomPost(String nomPost) {
        this.nomPost = nomPost;
    }

    public void insert() throws Exception {
        String id = "default";
        if (this.getIdpost() != null) {
            id = this.getIdpost().toString();
        }
        Connection con = null;
        PreparedStatement prep = null;
        try {
            Connect connect = new Connect();
            con = connect.seConnecterPostgre();
            String req = "insert into post values ("+id+",?)";

            prep = con.prepareStatement(req);
            prep.setString(1,this.getNomPost());
            prep.executeUpdate();
        }
        catch (Exception e) {
            throw new Exception("tsy nety "+this.getClass().getSimpleName()+" insert"+e.getMessage());
        }
        finally {
            con.close();
            prep.close();
        }
    }

    public List<Poste> getall() throws Exception {
        List<Poste> valiny = new ArrayList<Poste>();
        Connect conn = new Connect();
        Connection con = null;
        PreparedStatement prep = null;
        try {
            String req = "select * from post";
            con = conn.seConnecterPostgre();
            prep = con.prepareStatement(req);
            ResultSet resultSet = prep.executeQuery();

            while (resultSet.next()) {
                Integer id = resultSet.getInt("idpost");
                String nom = resultSet.getString("nompost");
                Poste p = new Poste();
                p.setIdpost(id);
                p.setNomPost(nom);
                valiny.add(p);
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
}
