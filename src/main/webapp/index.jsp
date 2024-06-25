<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Library Management System</title>
    <style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: Arial, sans-serif;
        line-height: 1.6;
        display: flex;
        flex-direction: column;
        min-height: 100vh;
    }

    
    main {
        flex: 1;
        padding: 2rem 1rem;
    }

    .admin-options {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .admin-options .option {
        background: #fff;
        padding: 1rem;
        margin: 1rem 0;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 80%;
        text-align: center;
    }

    .admin-options .option h3 {
        margin-bottom: 0.5rem;
        color: #333;
    }

    .admin-options .option p {
        color: #666;
    }

   

    @media (max-width: 768px) {
        nav ul {
            flex-direction: column;
        }
    }
    </style>
</head>
<body>
  
	<%@include file="header1.jsp"%>
	
    <main>
        <div class="admin-options">
            <div class="option">
                <h3>Book Details</h3>
                <p>View book details, including titles, authors, and availability.</p>
                <a href="showBook.jsp" class="btn">View Books</a>
            </div>
            <div class="option">
                <h3>Student Details</h3>
                <p>View and manage student details, including borrowed books and return dates.</p>
                <a href="managemembers.jsp" class="btn">Manage Students</a>
            </div>
            <div class="option">
                <h3>Add Data</h3>
                <p>Add new books details and other relevant information to the system.</p>
                <a href="addBook.jsp" class="btn">Add Data</a>
            </div>
            <div class="option">
                <h3>New Arrivals</h3>
                <p>Showcase the latest additions to the library collection.</p>
                <a href="newarrival.jsp" class="btn">View New Arrivals</a>
            </div>
        </div>
    </main>
   <%@include file="footer.jsp"%>
</body>
</html>
