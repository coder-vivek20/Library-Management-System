<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Details - Library Management System</title>
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
            background-color: #f4f4f4;
            color: #333;
        }

        header, footer {
            padding: 20px;
            background-color: #333;
            color: #fff;
        }

        main {
            flex: 1;
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            padding: 20px;
            justify-content: flex-start;
            background-color: #f4f4f4;
        }

        h1 {  /* Ensure h1 is displayed within the main content area */
            text-align: center;
            margin-top: 0;  /* Remove any unwanted margin from the top */
        }

        .book-card {
            flex: 0 0 calc(20% - 20px); /* Five cards per row with gap */
            background-color: #fff;
            color: #333;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            padding: 20px;
            transition: background-color 0.3s, transform 0.3s;
            margin-bottom: 20px;
            max-height: 300px;
            overflow: hidden;
        }

        .book-card:hover {
            background-color: #e4e4e4;
            transform: translateY(-5px);
        }

        .book-card img {
            max-width: 100%;
            height: auto;
            margin-bottom: 10px;
        }

        @media (max-width: 768px) {
            .book-card {
                flex: 0 0 calc(50% - 20px); /* Two cards per row on smaller screens with gap */
            }
        }

        @media (max-width: 480px) {
            .book-card {
                flex: 0 0 100%; /* Single card per row on smallest screens */
            }
        }
    </style>
</head>
<body>
    <%@include file="header1.jsp"%>
     <h1>Available Books</h1>
    <main>
         <div class="book-card">
            <img src="book1.jpg" alt="Book Cover">
            <h3>Book Name</h3>
            <p>Author Name</p>
            <p>Price: $XX.XX</p>
            </div>
        <div class="book-card">
            <img src="book2.jpg" alt="Book Cover">
            <h3>Book Name</h3>
            <p>Author Name</p>
            <p>Price: $XX.XX</p>
            </div>
        <div class="book-card">
            <img src="book3.jpg" alt="Book Cover">
            <h3>Book Name</h3>
            <p>Author Name</p>
            <p>Price: $XX.XX</p>
            </div>
        </main>
    <%@ include file="footer.jsp" %>
</
</body>
</html>