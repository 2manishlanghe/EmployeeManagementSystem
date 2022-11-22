<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="com.employee.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int eid = Integer.parseInt(request.getParameter("eid"));
String ename= request.getParameter("ename");
int yoe = Integer.parseInt(request.getParameter("yoe"));
String desg= request.getParameter("designation");
EmployeePojo eobj = new EmployeePojo(eid, ename, null, yoe, desg);
EmployeeDao dao = new EmployeeDao();
boolean ans= dao.AddEmployee(eobj);
if(ans)
{
%>
<jsp:include page="index.jsp"></jsp:include>
<%
}
else

	out.print("Employee Aleready Exist");
%>

</body>
</html>