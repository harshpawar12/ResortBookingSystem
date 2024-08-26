package com.project.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class getConnection {
	
	public static Connection isSuccesfully()
	{
		Connection conn=null;
		
		try {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/website","root","12345");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return conn;
	}

}
