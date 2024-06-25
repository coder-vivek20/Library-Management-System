<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Management System</title>
    <style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: Arial, sans-serif;
        line-height: 1.7;
        display: flex;
        flex-direction: column;
        min-height: 100vh;
    }

    

    main {
        flex: 1;
    }

    main .intro {
        background: #f4f4f4;
        padding: 5rem 1rem;
        text-align: center;
    }

    main .intro h2 {
        margin-bottom: 1rem;
    }

    main .intro p {
        margin-bottom: 1.5rem;
    }

    main .intro .btn {
        background: #333;
        color: #fff;
        padding: 0.5rem 1rem;
        border-radius: 5px;
        text-decoration: none;
        transition: background 0.3s;
    }

    main .intro .btn:hover {
        background: #575757;
    }

    .features .container {
        display: flex;
        justify-content: space-around;
        padding: 2rem 1rem;
    }

    .features .feature {
        background: #fff;
        padding: 1rem;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
        width: 30%;
    }

    .features .feature h3 {
        margin-bottom: 0.5rem;
    }

    .features .feature p {
        color: #666;
    }

   

    @media (max-width: 768px) {
        nav ul {
            flex-direction: column;
        }

        .features .container {
            flex-direction: column;
        }

        .features .feature {
            width: 80%;
            margin-bottom: 1rem;
        }
    }
    </style>
</head>
<body>

	<%@include file="header.jsp"%>
	
   
    <main>
        <section class="intro">
            <div class="container">
                <h2>Welcome to Our Library</h2>
                <p>Discover a wide range of books, journals, and digital resources. Manage your library account and stay updated with the latest additions.</p>
                <a href="#" class="btn">Explore Now</a>
            </div>
        </section>
        <section class="features">
            <div class="container">
                <div class="feature">
                    <h3>Wide Collection</h3>
                    <p>Access thousands of books across various genres and subjects.</p>
                </div>
                <div class="feature">
                    <h3>User Friendly</h3>
                    <p>Easy to navigate and manage your library activities online.</p>
                </div>
                <div class="feature">
                    <h3>24/7 Support</h3>
                    <p>Get assistance anytime with our dedicated support team.</p>
                </div>
            </div>
        </section>
    </main>
      <%@include file="footer.jsp"%>

</body>
</html>
