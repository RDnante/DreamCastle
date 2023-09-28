package bdd;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connect {
    public static Connection seConnecterPostgre(String user , String mdp , String base) throws Exception
    {
        Class.forName("org.postgresql.Driver");
        String url="jdbc:postgresql://localhost:5432/"+base;
        Connection con= DriverManager.getConnection(url,user,mdp);
        return con;
    }
}
