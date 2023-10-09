package bdd;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connect {
    public static Connection seConnecterPostgre() throws Exception
    {
        String base = "dreamcastle";
        String user = "postgres";
        String mdp = "28oct2003";
        Class.forName("org.postgresql.Driver");
        String url="jdbc:postgresql://localhost:5432/"+base;
        Connection con= DriverManager.getConnection(url,user,mdp);
        return con;
    }
}
