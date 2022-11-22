<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<main class=" p-5 banner-background primary-background">
		<div class="card">
		<div class="card-header text-center  text-dark"> <i class="fa fa-user-circle fa-3x" aria-hidden="true"></i>
		<br> Add Employee</div>
		<div class="card-body">
		<form id="reg-form" action="AddEmployee.jsp" method="post">
		<div class="mb-3">
    <label for="Employee_id" class="form-label" >Employee Id</label>
    <input name="eid" type="text" class="form-control" id="User_Name" aria-describedby="emailHelp" placeholder="Enter id" required="required">
  </div>
  <div class="mb-3">
    <label for="Employee_name" class="form-label" >Employee name</label>
    <input name="ename" type="text" class="form-control" id="User_Name" aria-describedby="emailHelp" placeholder="Enter Name" required="required">
  </div>		
  <div class="mb-3">
    <label for="yoe" class="form-label" >Year Of Experience</label>
    <input name="yoe" type="text" class="form-control" id="Experience" aria-describedby="emailHelp" placeholder="Experience">
  </div>
  <div class="mb-3">
    <label for="desg" class="form-label" >Designation</label>
    <input name="designation" type="text" class="form-control" id="User_Name" aria-describedby="emailHelp" placeholder="Designation">
  </div>
  
  <div class="container text-center">
<button id="submit-btn" type="submit" class="btn btn-primary  text-dark">Save</button>
</div>
</form>
			</div>
		
		</div>
	
	</main>
</body>
</html>