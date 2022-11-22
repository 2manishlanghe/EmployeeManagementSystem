<%@page import="com.employee.model.EmployeePojo"%>
<%@page import="java.util.List"%>
<%@page import="com.employee.model.EmployeeDao"%>
<%@page import="java.awt.print.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="v" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="mystyle.css"  rel="stylesheet" type="text/css"/>
<meta charset="UTF-8">
<title>Employee Management</title>
</head>
<body>
<br>
<form action="search.jsp">
<input type="text" name="name">
<input  type="submit" value="Search">
</form>
<div class="btn">
<form action="Add.jsp">        
<button class="btn btn-outline-dark" type="submit">Add</button>
</form>
</div>
<%
	EmployeeDao dao = new EmployeeDao();
	List<EmployeePojo> elist= dao.ShowAll();
	request.setAttribute("elist", elist);
%>
<table class="center" border="1" width="40%">
 <thead>
    <tr>
      <th>Eid</th>
      <th>Ename</th>
      <th>DOJ</th>
      <th>YOE</th>
      <th>Designation</th>
    </tr>
  </thead>
  
  <v:forEach var="i" items="${elist}">
  <tr>
  	<td>${i.getEid()}</td>
  	<td>${i.getEname()}</td>
  	<td>${i.getDoj()}</td>
  	<td>${i.getYoe()}</td>
  	<td>${i.getDesignation()}</td>
  </tr>
  <thead>
  </v:forEach>  
</table>
</body>

</html>