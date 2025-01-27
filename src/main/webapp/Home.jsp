<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Examination Seating Plan</title>
  
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
 
   <style>
  body {

    margin: 0;
    padding: 0;
    background-image: url("SeatingBackground.jpg");
    background-size: cover;
    background-repeat: no-repeat;
    
    backdrop-filter: blur(5px);
    
   
  }

  h2 {
    text-align: center;
    margin-bottom: 20px;
    color: Black;
  }
  
  p {
    margin-bottom: 30px;
  }

  button {
     border-radius: 4px;
    height: 35px;
    color: white;
    text-align: center;
    background: white;
    border: black;
    cursor: pointer;
  }
  
  .upper-portion{
 text-align: center;
 font-size: 45px;
 font-family:  fantasy;
 color: black;
 margin-top: 10vh;
 margin-bottom: 10vh;
   }
  
  .lower-portion li {
   text-align: center;
 font-size: 25px;
 font-family: cursive;
 color: black;
 list-style-type: none;
  }
  
  .button-container {
    text-align: center;
    margin-top: 20px; /* Adjust this margin as needed */
    
  }
  button{
  background-color: #333; /* Change this to the dark color you want */
  color: #fff; /* Change this to the text color you want */
  padding: 5px 10px; /* Change this to adjust the button padding */
  border: none; /* Change this to add a border if you want */
  border-radius: 5px; /* Change this to adjust the border radius */
  cursor: pointer; /* Change this to adjust the cursor style when hovering over the button */
  color: white;
  }
</style>

   
 
</head>
<body>
<%@ include file="Navbar.jsp" %>
  <div class="upper-portion" >

    Welcome to the Examination Seating Plan<br/>
    </div>
   
    <div class="lower-portion">
      <h2>Examination Rules:</h2>
      <ul >
        <li>All electronic devices must be switched off and stored away.</li>
        <li>No talking or communication of any kind is allowed during the examination.</li>
        <li>Listen carefully to the invigilator's instructions.</li>
        <li>Do not leave your seat during the examination unless given permission.</li>
        <li>No cheating or plagiarism will be tolerated.</li>
      </ul>
   </div>
   
    <div class="button-container">
<button type="button" ><a href="Login.jsp">Student Login</a></button> &nbsp;
<button type="button" ><a href="AdminLogin.jsp">Admin Login</a></button>
    
  </div>

</body>
</html>
    