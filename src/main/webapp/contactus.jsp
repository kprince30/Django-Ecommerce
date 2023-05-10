<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Contact Us</title>
	<style>
	h1{
	text-align:center;
	font-size:40px;
	background-color: #00bfff;
	}
input[type="text"], textarea, input[type="email"], input[type="tel"] {
    display: block;
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

/* add some padding to the form labels */
label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}

/* style the submit button */
input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    display: block;
    margin: 0 auto;
}

input[type="submit"]:hover {
    background-color: #00bfff;
    text-align:center;
   
}

/* center the form on the page */
form {
    max-width: 500px;
    margin: 0 auto;
}
	
	</style>
</head>
<body>
	<h1>Contact Us</h1>
	<form method="post" action="submit.jsp">
		<label for="name">Name:</label>
		<input type="text" id="name" name="name" required><br><br>
		
		<label for="query">Query:</label>
		<textarea id="query" name="query" required></textarea><br><br>
		
		<label for="email">Email:</label>
		<input type="email" id="email" name="email" required><br><br>
		
		<label for="mobile">Mobile Number:</label>
		<input type="tel" id="mobile" name="mobile" required><br><br>
		
		<input type="submit" value="Submit">
	</form>
</body>
</html>
