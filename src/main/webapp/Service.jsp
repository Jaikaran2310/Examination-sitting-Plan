<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Examination System - Services</title>
	<link rel="stylesheet" type="text/css" href="styles.css">
	<style >
	body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}



nav {
	background-color: #f8f9fa;
	padding: 1rem;
	display: flex;
	justify-content: space-around;
}

nav ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

nav ul li {
	display: inline;
	margin-right: 1rem;
}

nav ul li a {
	text-decoration: none;
	color: #007bff;
}

main {
	padding: 2rem;
}

main h2 {
	margin-top: 0;
}

main ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

main ul li {
	margin-bottom: 1rem;
}

footer p {
	background-color: Grey;
	color: black;
	padding: 1rem;
	text-align: center;
}
	</style>
</head>
<body>
<%@include file="Navbar.jsp"%>
	<header>
		<h1>Examination Seating Services</h1>
	</header>
	
	<main>
		<h2>Our Services</h2>
		<p>We offer a range of services to help you manage your exams effectively:</p>
		<ul>
			<li><strong>Online Exam Management:</strong> Our system allows you to create and manage online exams with ease.</li>
			<li><strong>Question Bank:</strong> Our system includes a question bank feature that allows you to store and manage your questions in one place.</li>
			<li><strong>Result Management:</strong> Our system allows you to manage and view exam results in real-time.</li>
			<li><strong>Secure Exam Environment:</strong> Our system provides a secure exam environment that prevents cheating and ensures the integrity of your exams.</li>
		</ul>
		<h2>Benefits of Our Services</h2>
		<p>Our services offer a range of benefits, including:</p>
		<ul>
			<li><strong>Time-Saving:</strong> Our system automates many of the manual tasks involved in exam management, saving you time and effort.</li>
			<li><strong>Cost-Effective:</strong> Our system eliminates the need for physical exam materials, reducing your costs.</li>
			
			<li><strong>Secure:</strong> Our system provides a secure exam environment that protects your exams and student data.</li>
		</ul>
	</main>
	<footer>
		<p>Copyright © 2024 Examination System</p>
	</footer>
</body>
</html>