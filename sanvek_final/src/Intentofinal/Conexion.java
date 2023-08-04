
package Intentofinal;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    Connection SQLConexion;
    
    
    public Conexion() {
        
        //Ruta URL bade de datos
        String host = "localhost";
        String puerto = "3306";
        String nameDB = "sanvek";
        
        //Acceder URL
        String usuario = "root";
        String pass = "";
        
        //Driver
        String driver = "com.mysql.cj.jdbc.Driver";
        
        //Construir URL
        String databaseURL = "jdbc:mysql://"+host+":"+puerto+"/"+nameDB+"?useSSL=false";
        
        try{
            Class.forName(driver);
            SQLConexion = DriverManager.getConnection(databaseURL,usuario,pass);
            System.out.println("Base de datos conectada.");
            
        }catch(Exception ex){
            System.out.println("No esta conectada a la base de datos.");
        }
    }
    public Connection getConnection(){
        return SQLConexion;
    }
}
