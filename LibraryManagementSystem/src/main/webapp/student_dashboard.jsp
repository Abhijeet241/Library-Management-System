<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Student Dashboard</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
	<div class="container">
        <h2>Student Dashboard</h2>
        <p>Welcome, ${user.name}!</p>
        <a href="logout"><button>Logout</button></a>
    </div>
    <div class="dashboard-content">
            <button onclick="location.href='view_books.jsp'" title="View Books">
                <i class="fas fa-book"></i> View Books
            </button>
            <button onclick="location.href='my_issued_books.jsp'" title="My Issued Books">
                <i class="fas fa-book-reader"></i> My Issued Books
            </button>
            <button onclick="location.href='search_books.jsp'" title="Search Books">
                <i class="fas fa-search"></i> Search Books
            </button>
            <button onclick="location.href='view_fines.jsp'" title="View Fines">
                <i class="fas fa-dollar-sign"></i> View Fines
            </button>
            <button onclick="location.href='logout'" title="Logout">
                <i class="fas fa-sign-out-alt"></i> Logout
            </button>
        </div>
	
	
	
					<!--  Student dashboard page -->
	
</body>
</html>