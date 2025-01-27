<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
       background-color: #f2f2f2;
  }
  
  .container {
    max-width: 800px;
    margin: 50px auto;
   
    padding: 20px;
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
  }
  h1 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
  }
  p {
    text-align: justify;
    margin-bottom: 20px;
    color: #666;
  }
  .btn {
    display: inline-block;
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s;
  }
  .btn:hover {
    background-color: #0056b3;
  }
  .navbar {
    background-color: #333;
    overflow: hidden;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 50px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.2);
    height:9vh
  }
  .navbar a {
    color: white;
    text-decoration: none;
    padding: 10px 20px;
    transition: background-color 0.3s;
  }
  .navbar a:hover {
    background-color: #555;
  }
  .login-btn {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
  }
  .login-btn:hover {
    background-color: #45a049;
  }
</style>
</head>
<body>
<div class="navbar">
  <div>
    <a href="Home.jsp">Home</a>
    <a href="Service.jsp">Service</a>
    <a href="ContactUs.jsp">Contact</a>
  </div>
  
</div>


</body>
</html>