<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css" />
</head>
<style > 
.body{
    margin: 0;
    padding: 0;
    background-image: url("SeatingBackground.jpg");
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    backdrop-filter: blur(5px);
    }
   </style>

<body>
<%@include file="Navbar.jsp"%>

	<div class="body">
		<section class="container">
			<header>Admin Login</header>
			<form  action="AdminLogin" method="post" class="form">
				<div class="input-box">
					<label>ID</label> <input type="text"
						placeholder="Enter Login Id" name="id" required />
				</div>

				<div class="input-box">
					<label>Password</label> <input type="text"
						placeholder="Enter Password" name="password" required />
				</div>
				<input type="submit" class=button>
			</form>
</body>
</html>