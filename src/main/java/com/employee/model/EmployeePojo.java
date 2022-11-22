package com.employee.model;

import java.sql.Date;

public class EmployeePojo {
	private int eid;
	private String ename;
	private Date doj;
	private int yoe;
	private String designation;
	public EmployeePojo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public EmployeePojo(int eid, String ename, Date doj, int yoe, String designation) {
		super();
		this.eid = eid;
		this.ename = ename;
		this.doj = doj;
		this.yoe = yoe;
		this.designation = designation;
	}
	@Override
	public String toString() {
		return "EmployeePojo [eid=" + eid + ", ename=" + ename + ", doj=" + doj + ", yoe=" + yoe + ", designation="
				+ designation + "]";
	}
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public Date getDoj() {
		return doj;
	}
	public void setDoj(Date doj) {
		this.doj = doj;
	}
	public int getYoe() {
		return yoe;
	}
	public void setYoe(int yoe) {
		this.yoe = yoe;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	

}
