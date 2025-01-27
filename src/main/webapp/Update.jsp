<%@page import="com.DataInsertionAdminPojo"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityTransaction"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Student Information </title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }
        
        .container {
            max-width: 250px;
            margin: 0 auto;
        }
        
        label {
            display: block;
            margin-bottom: 5px;
        }
        
        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        
        button[type="submit"]  {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        
        button[type="submit"]:hover  {
            background-color: #45a049;
        }
        
        
        .btn{
         background-color: #ff1a1a;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            }
            
            .btn:hover  {
            background-color: #cc0000;
            }
    </style>
</head>
<body>
<% EntityManagerFactory emf = Persistence.createEntityManagerFactory("jaikaran");
			    EntityManager em = emf.createEntityManager();
			    EntityTransaction et = em.getTransaction();
			    
			    int roll_no = Integer.parseInt(request.getParameter("UpdateId"));
			    DataInsertionAdminPojo poa=em.find(DataInsertionAdminPojo.class, roll_no);
			   
			    %>
	<%@include file="Navbar.jsp"%>

<div class="container">
    <h2>Update Student Informations</h2>
    <form action=AdminUpdate method="post">
        <label for="rollNo">Roll No:</label>
        <input type="text" id="rollNo" name="rollNo" value="<%= poa.getRoll_No() %>" readonly required>

        <label for="name">Name:</label>        
        <input type="text" id="name" name="name" value="<%= poa.getName() %>" required>

        <label for="fname">Father's Name:</label>
        <input type="text" id="fname" name="fname" value="<%= poa.getFname() %>" required>

        <label for="roomNo">Room No:</label>
        <input type="text" id="roomNo" name="roomNo" value="<%= poa.getRoom_No() %>" required>

        <label for="rowNo">Row No:</label>
        <input type="text" id="rowNo" name="rowNo" value="<%= poa.getRow_No() %>" required>

        <label for="chairNo">Chair No:</label>
        <input type="text" id="chairNo" name="chairNo" value="<%= poa.getChair_No() %>" required>

        <button type="submit">Save</button>
        <button class= "btn" ><a href="DataView.jsp">Discard</a></button>
        
    </form>
    
    
</div>

</body>
</html>
    