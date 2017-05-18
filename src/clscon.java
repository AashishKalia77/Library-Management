
import java.sql.*;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Aashish
 */
public  final class clscon {
    
    static Connection con;    
    public static  clscon db;
    
    public static Connection getconnecton()
    {
    String url= "jdbc:mysql://localhost/";
    String dbName = "library new";
    String driver = "com.mysql.jdbc.Driver";
    String userName = "root";
    String password = "";
    try
    {
    Class.forName(driver);
    con=DriverManager.getConnection(url+dbName,userName,password);
    return con;
    }
    catch(Exception exp)
    {
    exp.printStackTrace();
    return null;
    }
    }
    
}
