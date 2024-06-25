<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Library Management System</title>
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

        .container {
            width: 90%;
            margin: 0 auto;
            max-width: 1200px;
        }

        header {
            background: #333;
            color: #fff;
            padding: 0.5rem 0;
        }

        header .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        header h1 {
            font-size: 1.5rem;
        }

        nav ul {
            list-style: none;
            display: flex;
        }

        nav ul li {
            margin-left: 1rem;
        }

        nav ul li a {
            color: #fff;
            text-decoration: none;
            padding: 0.5rem 1rem;
            border-radius: 5px;
            transition: background 0.3s;
        }

        nav ul li a:hover {
            background: #575757;
        }

        @media (max-width: 768px) {
            nav ul {
                flex-direction: column;
            }
        }

        main {
            flex: 1;
            padding: 2rem 0;
        }

        main .about {
            background: #f4f4f4;
            padding: 5rem 1rem;
            text-align: center;
        }

        main .about h2 {
            margin-bottom: 2rem;
            font-size: 2rem;
            color: #333;
        }

        main .about p {
            margin-bottom: 1.5rem;
            color: #666;
        }

        .block {
            background: #fff;
            padding: 2rem;
            margin: 2rem 0;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .block h3 {
            margin-bottom: 1rem;
            font-size: 1.5rem;
            color: #444;
        }

        .block p {
            color: #555;
        }

       
        @media (max-width: 768px) {
            nav ul {
                flex-direction: column;
            }

            .block {
                margin: 1rem 0;
                padding: 1rem;
            }

            main .about {
                padding: 3rem 1rem;
            }
        }
    </style>
</head>
<body>
    <%@include file="header.jsp"%>

    <main>
        <section class="about">
            <div class="container">
                <h2>About Us</h2>
                <p>Our Library Management System is designed to help you easily manage and access a wide range of books, journals, and digital resources. Our mission is to provide a user-friendly and efficient platform for all your library needs.</p>
                <p>With our extensive collection of resources and dedicated support team, we ensure you have everything you need to enhance your learning and research experience.</p>
                <p>Thank you for choosing our Library Management System. We hope you enjoy using it as much as we enjoyed creating it.</p>

                <div class="block story">
                    <h3>Our Story</h3>
                    <p>Founded in 2020, our Library Management System started as a small project with the aim of digitizing library management processes. Over the years, we have grown to serve hundreds of libraries across India, providing them with state-of-the-art tools and resources to manage their collections and serve their communities better.</p>
                </div>

                <div class="block reach">
                    <h3>Our Reach</h3>
                    <p>We are proud to have a strong presence across India, with users in every major city and many rural areas. Our system is used by educational institutions, public libraries, and private organizations, making it a versatile and reliable solution for managing library resources effectively.</p>
                </div>
            </div>
        </section>
    </main>

  <%@include file="footer.jsp"%>
</body>
</html>
