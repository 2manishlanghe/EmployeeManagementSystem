<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="com.employee.model.*" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="v" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="mystyle.css"  rel="stylesheet" type="text/css"/>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
String name=request.getParameter("name");

EmployeeDao dao = new EmployeeDao();
   EmployeePojo ep = dao.Search(name);
   if(ep==null)
   {
	   out.print("Employee not found");
   }
   else{
      request.setAttribute("ep", ep);
%>
<table class="center" width="40%" border="1">
 <thead>
    <tr>
      <th>Eid</th>
      <th>Ename</th>
      <th>DOJ</th>
      <th>YOE</th>
      <th>Designation</th>
    </tr>
  </thead>
  
  <tr>
  	<td>${ep.getEid()}</td>
  	<td>${ep.getEname()}</td>
  	<td>${ep.getDoj()}</td>
  	<td>${ep.getYoe()}</td>
  	<td>${ep.getDesignation()}</td>
  </tr>
  <thead>  
</table>
<%
}
%>
<center><a  href="index.jsp">Home</a></center>
</body>
</html>