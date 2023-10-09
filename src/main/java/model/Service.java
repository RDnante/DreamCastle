package model;

import bdd.Connect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Service {
    Integer idService;
    String nomService;
    public String getNomService() {
        return nomService;
    }

    public void setNomService(String nomService) {
        this.nomService = nomService;
    }

    public Integer getIdService() {
        return idService;
    }

    public void setIdService(Integer idService) {
        this.idService = idService;
    }

    public Service() {
    }

    public void insert() throws Exception {
        String id = "default";
        if (this.getIdService() != null) {
            id = this.getIdService().toString();
        }
        Connection con = null;
        PreparedStatement prep = null;
        try {
            Connect connect = new Connect();
            con = connect.seConnecterPostgre();
            String req = "insert into service values (" + id + ",?)";

            prep = con.prepareStatement(req);
            prep.setString(1, this.getNomService());
            prep.executeUpdate();
        } catch (Exception e) {
            throw new Exception("tsy nety post insert" + e.getMessage());
        } finally {
            con.close();
            prep.close();
        }
    }

    public List<Service> getall() throws Exception {
        List<Service> valiny = new ArrayList<Service>();
        Connect conn = new Connect();
        Connection con = null;
        PreparedStatement prep = null;
        try {
            String req = "select * from service";
            con = conn.seConnecterPostgre();
            prep = con.prepareStatement(req);
            ResultSet resultSet = prep.executeQuery();

            while (resultSet.next()) {
                Integer id = resultSet.getInt("idservice");
                String nom = resultSet.getString("nomservice");
                Service p = new Service();
                p.setIdService(id);
                p.setNomService(nom);
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
