package model;

import bdd.Connect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;

public class Util {

    public Util() {
    }

    public HashMap<Integer,String> getFiliere() throws Exception {
        HashMap<Integer,String> valiny = new HashMap<Integer,String>();
        Connect conn = new Connect();
        Connection con = null;
        PreparedStatement prep = null;
        try {
            String req = "select * from filiere";
            con = conn.seConnecterPostgre();
            prep = con.prepareStatement(req);
            ResultSet resultSet = prep.executeQuery();

            while (resultSet.next()) {
                Integer id = resultSet.getInt("idfiliere");
                String nom = resultSet.getString("nomfiliere");
                valiny.put(id,nom);
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

    public HashMap<Integer,String> getDiplome() throws Exception {
        HashMap<Integer,String> valiny = new HashMap<Integer,String>();
        Connect conn = new Connect();
        Connection con = null;
        PreparedStatement prep = null;
        try {
            String req = "select * from diplome";
            con = conn.seConnecterPostgre();
            prep = con.prepareStatement(req);
            ResultSet resultSet = prep.executeQuery();

            while (resultSet.next()) {
                Integer id = resultSet.getInt("iddiplome");
                String nom = resultSet.getString("nomdiplome");
                valiny.put(id,nom);
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

    public HashMap<Integer,String> getLieu() throws Exception {
        HashMap<Integer,String> valiny = new HashMap<Integer,String>();
        Connect conn = new Connect();
        Connection con = null;
        PreparedStatement prep = null;
        try {
            String req = "select * from lieu";
            con = conn.seConnecterPostgre();
            prep = con.prepareStatement(req);
            ResultSet resultSet = prep.executeQuery();

            while (resultSet.next()) {
                Integer id = resultSet.getInt("idlieu");
                String nom = resultSet.getString("nomlieu");
                valiny.put(id,nom);
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
