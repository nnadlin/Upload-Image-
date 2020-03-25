package UI;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ACER
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Makmal PPIMG
 */
public class DB  implements java.io.Serializable{
    private static Connection connection;
    public static Connection getConnection(){
        try{
            //step 1: load JDBC driver
            Class.forName("com.mysql.jdbc.Driver");
            //Step 2: Establish a connection to mysql database
            String myUrl = "jdbc:mysql://localhost:3306/image_blob";
            connection = DriverManager.getConnection(myUrl, "root", "admin");
        }
        catch (ClassNotFoundException | SQLException e){
            e.getMessage();
        }
        return connection;
    }
    public void closeConnection(){
        try{
            connection.close();
        }
        catch(SQLException e){
            e.getMessage();
        }
    }
}
