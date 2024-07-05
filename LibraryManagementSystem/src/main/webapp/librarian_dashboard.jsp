<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Librarian Dashboard</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css"></head>
<body>
	 <div class="container">
        <h2>Librarian Dashboard</h2>
        <p>Welcome, ${user.name}!</p>
        
        <a href="logout"><button>Logout</button></a>
    </div>
	 <div class="dashboard-content">
            <button onclick="location.href='manage_books.jsp'">Manage Books</button>
            <button onclick="location.href='manage_students.jsp'">Manage Students</button>
            <button onclick="location.href='issue_books.jsp'">Issue Books</button>
            <button onclick="location.href='return_books.jsp'">Return Books</button>
            <button onclick="location.href='view_reports.jsp'">View Reports</button>
            <button onclick="location.href='logout'">Logout</button>
        </div>
    
    
    				<!-- Librarian dashboard page -->
    
</body>
</html>