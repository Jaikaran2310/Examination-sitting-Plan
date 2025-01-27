<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link rel="stylesheet" href="styles.css">
    <style >  
    body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}



main {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    padding: 2rem;
}

section {
    flex-basis: 48%;
    margin-bottom: 2rem;
}
 
#details {
    padding-left: 2rem;
}

footer p {
  background-color : gray;
    color: black;
    padding: 1rem;
    text-align: center;
}

</style>
</head>
<body>
<%@include file="Navbar.jsp"%>
    <header>
        <h1>Contact Us</h1>
    </header>
    <main>
            <section id="details"> <br> <br>
            <h2>Contact Details</h2>
            <p>Email: info@examsitting.com</p>
            <p>Phone: 123-456-7890</p>
            <p>Address: 123 Exam St, Exam City, EX 12345</p>
        </section>
    </main>
    <footer>
        <p>Copyright © 2024 Exam Sitting Planning</p>
    </footer>
    <script src="scripts.js"></script>
</body>
</html>