package com.ciclotres.tienda;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

	 private static final String DB_DRIVER = "com.mysql.cj.jdbc.Driver";
	 private static final String DB_CONNECTION = "jdbc:mysql://localhost:3306/bd_ventas";
	 private static final String DB_USER = "user_ventas";
	 private static final String DB_PASSWORD = "yisaw4D8MA";
	 private static Connection dbConnection = null;

	 public static Connection getConexion() {
	  try {
	   Class.forName(DB_DRIVER);
	  } catch (ClassNotFoundException e) {
	   System.out.println(e.getMessage());
	  }
	  try {
	   dbConnection = DriverManager.getConnection(DB_CONNECTION, DB_USER, DB_PASSWORD);
	  } catch (SQLException e) {
	   System.out.println(e.getMessage());
	  }

	  return dbConnection;

	 }

	}
