<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Arrivals</title>
    <style>
        body {
           font-family: Arial, sans-serif;
            line-height: 1.6;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        main {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 2rem 1rem;
        }
        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
            text-align: center;
        }
        .cards-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center; /* Center the cards horizontally */
            gap: 20px; /* Add some space between the cards */
        }
        .card {
            background-color: #ffffff; /* Set card background color to white */
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            text-align: center;
            transition: transform 0.2s;
            width: 250px; /* Set a fixed width for the cards */
        }
        .card:hover {
            transform: scale(1.05);
        }
        .card img {
            width: 100%;
            height: auto;
            border-bottom: 1px solid #ccc;
            padding-bottom: 15px;
        }
        .card h2 {
            color: #333;
            margin-bottom: 0.5rem;
        }
        .card p {
            color: #666;
            margin-bottom: 0.5rem;
        }
        h1 {
            text-align: center;
            /*margin-top: 20px; /* Add some space between the heading and the cards */
        }
    </style>
</head>
<body>
    <%@ include file="header1.jsp" %>
    <h1>New Arrivals</h1>
    <main>
        <div class="container">
            <div class="cards-container">
                <div class="card">
                    <img src="images/book1.jpg" alt="Book 1">
                    <h2>Book Title 1</h2>
                    <p>Author: Author 1</p>
                    <p>Price: $19.99</p>
                </div>
                <div class="card">
                    <img src="images/book2.jpg" alt="Book 2">
                    <h2>Book Title 2</h2>
                    <p>Author: Author 2</p>
                    <p>Price: $24.99</p>
                </div>
                <div class="card">
                    <img src="images/book3.jpg" alt="Book 3">
                    <h2>Book Title 3</h2>
                    <p>Author: Author 3</p>
                    <p>Price: $14.99</p>
                </div>
            </div>
        </div>
    </main>
    <%@ include file="footer.jsp" %>
</body>
</html>
