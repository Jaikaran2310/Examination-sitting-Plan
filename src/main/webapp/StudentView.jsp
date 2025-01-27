<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<%@page import="javax.persistence.Persistence"%>
<%@page import="com.StudentRegisterPojo"%>
<%@page import="javax.persistence.EntityTransaction"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        
        /* Center the button */
        .center-align {
            text-align: center;
        }
        
        .button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none; /* Remove underline */
            display: inline-block; /* Make it behave like a block element */
        }
        
        .button:hover {
            background-color: #45a049;
        }
            
    </style>
</head>
<body>
<%@include file="Navbar.jsp"%>
<%
int rollNo = (int)session.getAttribute("Roll");

EntityManagerFactory emf = Persistence.createEntityManagerFactory("jaikaran");
EntityManager em = emf.createEntityManager();
EntityTransaction et = em.getTransaction();

StudentRegisterPojo srp = em.find(StudentRegisterPojo.class, rollNo);
%>
<h1>Student Details</h1>

<table>
    <tr>
        <th>Roll No </th>
        <th>Name</th>
        <th>Address</th>
        <th>Gender</th>
        <th>Date Of Birth</th>
        <th>Phone Number</th>
    </tr>
    <tr>
        <td><%=srp.getRoll_number() %></td>
        <td><%=srp.getFull_name() %></td>
        <td><%=srp.getAddress() %></td>
        <td><%=srp.getGender() %></td>
        <td><%=srp.getDate() %></td>
        <td><%=srp.getPhone_number() %></td>
    </tr>
</table>

<div class="center-align">
    <form action="StudentSeatView" method="post">
        <input type="hidden" name="rollNo" value="<%=srp.getRoll_number()%>">
        <button type="submit" class="button">Click To View Exam Seat</button>
    </form>
</div>

</body>
</html>
