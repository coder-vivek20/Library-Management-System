<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Library Management System</title>
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

    .contact-container {
        max-width: 600px;
        margin: 0 auto;
        background: #f4f4f4;
        padding: 2rem;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .contact-container h2 {
        margin-bottom: 1rem;
        text-align: center;
    }

    .contact-container form {
        display: flex;
        flex-direction: column;
    }

    .contact-container form label {
        margin-bottom: 0.5rem;
        color: #333;
    }

    .contact-container form input,
    .contact-container form textarea {
        padding: 0.5rem;
        margin-bottom: 1rem;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    .contact-container form button {
        background: #333;
        color: #fff;
        padding: 0.5rem;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background 0.3s;
    }

    .contact-container form button:hover {
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
 <%@include file="header.jsp"%>
    <main>
        <div class="contact-container">
            <h2>Contact Us</h2>
            <form action="contact_form.jsp" method="post">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
                
                <label for="number">Mobile No:</label>
                <input type="number" name="number" required>
                
                <label for="message">Message</label>
                <textarea id="message" name="message" rows="5" required></textarea>

                <button type="submit">Submit</button>
            </form>
        </div>
    </main>
       <%@include file="footer.jsp"%>
</body>
</html>
