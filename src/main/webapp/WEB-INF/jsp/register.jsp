<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    
    <!-- Internal CSS (you can reuse the CSS from signin.jsp) -->
    <style>
        /* Global Styles (reuse from signin.jsp) */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            background-image: url('https://img.freepik.com/premium-vector/vote-its-your-right-text-with-voting-sign-linear-hand-against-blue-background_1302-31471.jpg');
            background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100%;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        /* Form Styles (reuse from signin.jsp) */
        .login-form {
            padding: 20px;
             background-image: url('https://img.freepik.com/premium-vector/vote-its-your-right-text-with-voting-sign-linear-hand-against-blue-background_1302-31471.jpg');
           
            
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
            display: block;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        img {
            display: block;
            margin: 10px 0;
            max-width: 100%;
            height: auto;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        /* Message Styles (reuse from signin.jsp) */
        .message {
            text-align: center;
            color: #ff0000;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <h1 style="text-align: center;"> ONLINE VOTING SYSTEM</h1>
    <div class="container">
        <div class="login-form">
            <h1>User Registration</h1>
            <form method="POST" action="/Signin">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required pattern="[A-Za-z ]+" title="Name should only contain letters and spaces"/>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required />
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required />
                </div>
                <div class="form-group">
                    <input type="submit" value="Register" />
                </div>
            </form>
        </div>
    </div>
</body>
</html>
