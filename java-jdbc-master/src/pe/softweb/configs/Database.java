package pe.softweb.configs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {
    //private static String url = "jdbc:mysql://localhost:3306/db_animales";
    static final String url = "jdbc:sqlite:db/db_animales.db";
    private static String user = "root";
    private static String password = "123";

    public static Connection getConnection() {
        Connection con = null;
           try {
               // 2: Cargar el driver
               // puede lanzar la excepcion ClassNotFoundException
               //Class.forName("com.sqlite.jdbc.Driver");
               // 3: Obtener una conexion a la BD
               // Puede lanzar un SQLException
               con = DriverManager.getConnection(url, user, password);
       
           //} catch (ClassNotFoundException ex) {
               //System.out.println("Verifica tu driver en el classpath");
               
           } catch (SQLException ex) {
               
               System.out.println("Verifica tus parametros de conexion");
           }
           return con;
    }
}
