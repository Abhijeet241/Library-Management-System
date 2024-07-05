<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Login</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
	<div class="container">
        <h2>Login</h2>
        <form action="login" method="post">
            <div class="error">${errorMessage}</div>
            <label for="email">Email :</label>
            <input type="text" id="email" name="email" required><br><br>
            <label for="password">Password :</label>
            <input type="password" id="password" name="password"  required><br><br>
            <button type="submit">Login</button>
        </form>
    </div>
    
    
    						<!-- Login page -->
    
</body>
</html>