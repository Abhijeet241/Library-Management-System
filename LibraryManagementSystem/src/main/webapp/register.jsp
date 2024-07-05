<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Register</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
	<div class="container">
        <h2>Register</h2>
        <form action="register" method="post">
            Name : <input type="text" id="name" name="name" required><br><br>
            Email :<input type="text" id="email" name="email" required><br><br>
            Password :<input type="password" id="password" name="password" required><br><br>
            Role :<select id="role" name="role">
            	<option value="selcet user">---select user---</option>
                <option value="student">Student</option>
                <option value="librarian">Librarian</option>
            </select><br><br>
            <button type="submit">Register</button>
        </form>
    </div>	
    
    
    							<!-- Registration page -->
    
</body>
</html>