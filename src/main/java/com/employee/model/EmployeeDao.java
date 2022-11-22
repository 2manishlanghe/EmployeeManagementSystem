package com.employee.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDao implements DBservice {
	 Connection con;
	 String url="jdbc:mysql://localhost:3306/manish", user="root", pass="Mani@313";
	 
	public EmployeeDao() throws ClassNotFoundException, SQLException {
		con = getConnection();
	}

	@Override
	public Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection(url,user,pass);
		return con;
	}
	
	public List<EmployeePojo> ShowAll() throws SQLException{
		PreparedStatement ps = con.prepareStatement("select* from employee");
		ResultSet rs=ps.executeQuery();
		List<EmployeePojo> elist = new ArrayList<EmployeePojo>();
		while(rs.next()) {
			int eid = rs.getInt(1);
			String ename = rs.getString(2);
			Date doj = rs.getDate(3);
			int yoe = rs.getInt(4);
			String desg=rs.getString(5);
			elist.add(new EmployeePojo(eid, ename, doj, yoe, desg));
			
		}
		
		return elist;
		
	}
	public EmployeePojo Search(String name) throws SQLException{
		PreparedStatement ps = con.prepareStatement("select* from employee where ename=?");
		ps.setString(1,name);
		ResultSet rs=ps.executeQuery();
		EmployeePojo e=null;
		if(rs.next()) {
			
			int eid = rs.getInt(1);
			String ename = rs.getString(2);
			Date doj = rs.getDate(3);
			int yoe = rs.getInt(4);
			String desg=rs.getString(5);
			
		 e = new EmployeePojo(eid, ename, doj, yoe, desg);
		
		}
		return e;
	}
	
	
	public boolean AddEmployee(EmployeePojo eobj) throws SQLException {
		
		PreparedStatement ps = con.prepareStatement("insert into employee (eid,ename,doj,yoe,designation) values (?,?,CURRENT_TIMESTAMP,?,?)");
		ps.setInt(1,eobj.getEid());
		ps.setString(2,eobj.getEname());
		ps.setInt(3,eobj.getYoe());
		ps.setString(4,eobj.getDesignation());
		
	int ans = ps.executeUpdate();
	if(ans>0)
		return true;
	else		
		return false;
		
	}

}
