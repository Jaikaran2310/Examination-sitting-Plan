<%@page import="javax.lang.model.element.Element"%>
<%@page import="java.util.List"%>
<%@page import="javax.persistence.Query"%>
<%@page import="com.DataInsertionAdminPojo"%>
<%@page import="javax.persistence.EntityTransaction"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Form with 6 Input Fields</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	height: 100vh;
}

.form-row {
	display: flex;
	flex-wrap: wrap;
	margin-bottom: 5px;
	align-items: center;
}

.form-row input[type="text"] {
	flex: 1;
	padding: 5px;
	margin-right: 3px;
	margin-bottom: 3px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

.form-row button {
	padding: 5px 10px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.form-row button:hover {
	background-color: #f0f0f0;
}

.form-row button.update {
	background-color: #4caf50;
	color: #fff;
}

.form-row button.delete {
	background-color: #f44336;
	color: #fff;
}

.add-button {
	position: absolute;
	top: 10px;
	right: 10px;
}
.AddField{
margin-top: 12px;

}
</style>
</head>
<body>

	<div>
		<%@include file="Navbar.jsp"%>
	</div>
	<div Class="AddField">
		<%@include file="AddField.jsp"%>
	</div>

	<div class="container mt-5 position-relative">
	
<div>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Roll NO</b> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<b>Name</b> &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Fname</b> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<b>Room No</b>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<b>Row No</b>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <b>Chair No</b>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</div>
		<% EntityManagerFactory emf = Persistence.createEntityManagerFactory("jaikaran");
			    EntityManager em = emf.createEntityManager();
			    EntityTransaction et = em.getTransaction();
			    
			    Query query =em.createQuery("select d from DataInsertionAdminPojo d");
			    List <DataInsertionAdminPojo> list= query.getResultList();  
			   
			    for (DataInsertionAdminPojo ele:list){ %>
		<form action="#" method="POST">
			<div id="inputFieldsContainer">
				<div class="form-row">
				
					<input type="text" readonly name="field1" class="form-control"  value="<%= ele.getRoll_No() %>" >
					<input type="text" readonly name="field2" class="form-control" value="<%= ele.getName() %>" >
					<input type="text" readonly name="field3" class="form-control" value="<%= ele.getFname() %>" >
					<input type="text" readonly name="field4" class="form-control" value= "<%= ele.getRoom_No()%>" >
					<input type="text" readonly name="field5" class="form-control"value= "<%= ele.getRow_No() %>" >
					<input type="text" readonly name="field6" class="form-control" value= "<%= ele.getChair_No() %>" >
					<button type="button" class="btn btn-warning ms-auto me-2"> <a href="Update.jsp?UpdateId=<%=ele.getRoll_No() %>" style=color:"black"> Update </a></button>
					<button type="button" class="btn btn-danger" > <a href="AdminDelete?DeleteId=<%=ele.getRoll_No() %>" style=color:"black"> Delete</a></button>
				
							</div>
			</div>
		</form>
		 <% } %>
	</div>

	
	

	

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>
