<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Book - Library Management System</title>
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

        main {
            flex: 1;
            padding: 2rem 1rem;
        }

        .add-book-container {
            max-width: 600px;
            margin: 0 auto;
            background: #fff;
            padding: 2rem;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }

        .add-book-container h2 {
            margin-bottom: 1rem;
            text-align: center;
            color: #333;
        }

        .add-book-container form {
            display: flex;
            flex-direction: column;
        }

        .add-book-container form label {
            margin-bottom: 0.5rem;
            color: #333;
        }

        .add-book-container form input,
        .add-book-container form textarea {
            padding: 0.5rem;
            margin-bottom: 1rem;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .add-book-container form button {
            background: #333;
            color: #fff;
            padding: 0.5rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .add-book-container form button:hover {
            background: #575757;
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
        <div class="add-book-container">
            <h2>Add New Book</h2>
            <form action="addBookAction.jsp" method="post">
                <label for="title">Book Title</label>
                <input type="text" id="title" name="title" required>

                <label for="author">Author</label>
                <input type="text" id="author" name="author" required>

                <label for="price">Price</label>
                <input type="number" id="price" name="price" required>

                <label for="isbn">ISBN</label>
                <input type="text" id="isbn" name="isbn" required>

                <label for="description">Description</label>
                <textarea id="description" name="description" rows="5" required></textarea>

                <button type="submit">Add Book</button>
            </form>
        </div>
        
    </main>
</body>
</html>
