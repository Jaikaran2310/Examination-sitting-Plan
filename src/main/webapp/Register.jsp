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
	
	<div  class="body">
    <section class="container">
      <header>Registration Form</header>
      <form action="StudentRegister" method="post" class="form">
        <div class="input-box">
          <label>Full Name</label>
          <input type="text" placeholder="Enter full name" name="full name" required />
        </div>

        <div class="input-box">
          <label>Roll Number</label>
          <input type="text" placeholder="Enter Roll Number" name="roll number" required />
        </div>

        <div class="column">
          <div class="input-box">
            <label>Phone Number</label>
            <input type="text" placeholder="Enter phone number" name="phone number" required />
          </div>
          <div class="input-box">
            <label>Birth Date</label>
            <input type="date" placeholder="Enter birth date" name="date" required />
          </div>
        </div>
        <div class="gender-box">
          <h3>Gender</h3>
          <div class="gender-option">
            <div class="gender">
              <input type="radio" id="check-male" name="gender"value="male" />
              <label for="check-male">male</label>
            </div>
            <div class="gender">
              <input type="radio" id="check-female" name="gender" value="Female" />
              <label for="check-female">Female</label>
            </div>
            <div class="gender">
              <input type="radio" id="check-other" name="gender"value="Not to say" />
              <label for="check-other">prefer not to say</label>
            </div>
          </div>
        </div>
        <div class="input-box address">
          <label>Address</label>
          <input type="text" placeholder="Enter street address" name= "address" required />
          <label>password</label>
          <input type="text" placeholder="Enter password" name= "password" required />
         
          </div>
       
        <input type="submit" class=button>
      </form>
      <br>
     <p>Already Registered go to <a href="Login.jsp"><b>Login</b></a>
    </section>
    </div>
  </body>
</html>