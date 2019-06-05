/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Elmer
 */
public class MysqlConexion {
    
    static{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	public static Connection getConexion(){
		Connection con=null;
		try {
			con=DriverManager.getConnection("jdbc:mysql://localhost/biblioteca","root","");
		}catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
