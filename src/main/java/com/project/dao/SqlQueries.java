package com.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.project.beans.booking;
import com.project.beans.contact;
import com.project.beans.person;

public class SqlQueries {
	
	public static int isRegister(person ob) throws ClassNotFoundException, SQLException
	{
		Connection conn=getConnection.isSuccesfully();
		int status=0;
		PreparedStatement ps=conn.prepareStatement("insert into person(name,email,password,gender) values(?,?,?,?)");
		ps.setString(1,ob.getName());
		ps.setString(2, ob.getEmail());
		ps.setString(3, ob.getPassword());
		ps.setString(4, ob.getGender());
		
		status=ps.executeUpdate();
		
		return status;
	}
	public static boolean islogin(String email,String password) throws SQLException
	{
		Connection conn=getConnection.isSuccesfully();
		
		PreparedStatement ps=conn.prepareStatement("select * from person where email=? and password=?");
		ps.setString(1, email);
		ps.setString(2,password);
		ResultSet rs=ps.executeQuery();
		
		return rs.next();
	}
	
	public static int isbooked(booking ob) throws ClassNotFoundException, SQLException
	{
		Connection conn=getConnection.isSuccesfully();
		int status=0;
		PreparedStatement ps=conn.prepareStatement("insert into booking(name,cdate,odate,room,status,payment,total) values(?,?,?,?,?,?,?)");
		ps.setString(1,ob.getName());
		ps.setString(2, ob.getCdate());
		ps.setString(3, ob.getOddate());
		ps.setString(4, ob.getRoom());
		ps.setString(5, ob.getStatus());
		ps.setString(6, ob.getPayment());
		ps.setString(7, ob.getTotal());

		status=ps.executeUpdate();
		
		return status;
	}
	public static List<booking> isShowed() throws SQLException
	{
		Connection conn=getConnection.isSuccesfully();
		List<booking>al=new ArrayList<>();
		PreparedStatement ps=conn.prepareStatement("select * from booking");
		
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			booking ob=new booking();
			ob.setId(rs.getInt(1));
			ob.setName(rs.getString(2));
			ob.setCdate(rs.getString(3));
			ob.setOddate(rs.getString(4));
			ob.setRoom(rs.getString(5));
			ob.setStatus(rs.getString(6));
			ob.setPayment(rs.getString(7));
			ob.setTotal(rs.getString(8));
			al.add(ob);
		}
		return al;

	}
	public static int isDelete(int id) throws SQLException
	{
		Connection conn=getConnection.isSuccesfully();
		int status=0;
		PreparedStatement ps=conn.prepareStatement("delete from booking where id=?");
		ps.setInt(1, id);
		status=ps.executeUpdate();
		
		return status;
		

	}
	public static int  isUpdate(booking ob) throws SQLException
	{
		Connection conn=getConnection.isSuccesfully();
		int status=0;
		PreparedStatement ps=conn.prepareStatement("update booking set name=?,cdate=?,odate=?,room=?,status=?,payment=? where id=?");
		ps.setString(1,ob.getName());
		ps.setString(2,ob.getCdate());
		ps.setString(3,ob.getOddate());
		ps.setString(4,ob.getRoom());
		ps.setString(5,ob.getStatus());
		ps.setString(6,ob.getPayment());
		ps.setInt(7, ob.getId());
		
		 status=ps.executeUpdate();
		 
		 return status;

	}
	public static List<booking> isFound(String name) throws SQLException
	{
		Connection conn=getConnection.isSuccesfully();
		List<booking>al=new ArrayList<>();
		PreparedStatement ps=conn.prepareStatement("select * from booking");
		
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			booking ob=new booking();
			ob.setId(rs.getInt(1));
			ob.setName(rs.getString(2));
			ob.setCdate(rs.getString(3));
			ob.setOddate(rs.getString(4));
			ob.setRoom(rs.getString(5));
			ob.setStatus(rs.getString(6));
			ob.setPayment(rs.getString(7));
			ob.setTotal(rs.getString(8));
			al.add(ob);
		}
		return al;

	}
	public static int iscontat(contact ob) throws ClassNotFoundException, SQLException
	{
		Connection conn=getConnection.isSuccesfully();
		int status=0;
		PreparedStatement ps=conn.prepareStatement("insert into contact(name,email,message) values(?,?,?)");
		ps.setString(1,ob.getName());
		ps.setString(2, ob.getEmail());
		ps.setString(3, ob.getMessage());
		
		
		status=ps.executeUpdate();
		
		return status;
	}

}
