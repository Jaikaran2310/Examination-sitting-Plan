<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!---Coding By CodingLab | www.codinglabweb.com--->
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<!--<title>Registration Form in HTML CSS</title>-->
<!---Custom CSS File--->
<link rel="stylesheet" href="style.css" />
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
</head>
<body>
	<%@include file="Navbar.jsp"%>

	<div class="body">
		<section class="container">
			<header>Student Login</header>
			<form  action="Login" method="post" class="form">
				<div class="input-box">
					<label>Roll Number</label> <input type="text"
						placeholder="Enter University Roll Number" name="Roll" required />
				</div>

				<div class="input-box">
					<label>Password</label> <input type="text"
						placeholder="Enter Password" name="password" required />
				</div>
				<input type="submit" class=button>
			</form>
			<br>
			<p>
				Not Registered Want to <a href="Register.jsp"><b>Register</b></a>
		</section>
	</div>
</body>
</html>


