<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;

        }

        header {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 1rem;
        }

        nav {
            background-color: #555;
            color: #fff;
            text-align: center;
            padding: 0.5rem;
        }

        nav ul {
            list-style: none;
            padding: 0;
            display: flex; /* Display items horizontally */
            justify-content: center; /* Center items horizontally */
        }

        nav ul li {
            margin: 0 1rem;
        }

        nav a {
            text-decoration: none;
            color: #fff;
        }

        main {
            margin: 2rem;
            padding: 2rem;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            font-size: 2rem;
        }

        h2 {
            font-size: 1.5rem;
        }

        .button {
            display: inline-block;
            padding: 0.5rem 1rem;
            background-color: #333;
            color: #fff;
            text-decoration: none;
            margin: 1rem;
        }

        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 1rem;
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome to the Online Voting System</h1>
    </header>
    <nav>
        <ul>
            
            <li>
                <form method="POST" action="/Vote">
                    <input type="submit" value="vote" class="button" />
                </form>
            </li>
            <li>
                <form method="POST" action="/aboutus">
                    <input type="submit" value="Voter Education" class="button" />
                </form>
            </li>
        </ul>
    </nav>
    

</body>
</html>