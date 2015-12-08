package com.billpayment.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.billpayment.helper.DBUtil;

public class AdminDAO {
	private Connection con;
	public boolean verify(String username,String password){//String username,String password
		boolean status=false;
		Statement stmt = null;
		String sql="SELECT USERNAME,PASSWORD FROM ADMIN";
		System.out.println("IN function");
		try{
			con=DBUtil.createConnection();
			stmt = con.createStatement();
			System.out.println("Inside1");
			try {
				ResultSet rs = stmt.executeQuery(sql);
				System.out.println("Inside2");
				System.out.println(rs);
		        while (rs.next()) {
		        	System.out.println(rs.getString("USERNAME")+" "+rs.getString("PASSWORD"));
		        	if(rs.getString("USERNAME")==username && rs.getString("PASSWORD")==password)
		        		System.out.println("Inside3");
		        		status=true;
			} }catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
			
	        
		}
		catch(ClassNotFoundException cnfe){
			System.out.println("JDBC driver for Oracle 10g not present");
		}
		catch(SQLException se){
			System.out.println(se.getMessage());
			}
		finally{
			return status;
			//DBUtil.closeConnection();
			
		}

}
}
