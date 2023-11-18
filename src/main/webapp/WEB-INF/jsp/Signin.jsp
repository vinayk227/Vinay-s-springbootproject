<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Professional Login</title>
    
    <!-- Internal CSS -->
    <style>
        /* Global Styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4; /* Set your desired background color here */
            background-image:url('https://wallpapers.com/images/hd/light-color-background-0bradaf005gnm8f1.jpg');
            
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
         #object2 {
            width: 500px;
            height: 200px;
            
            object-fit: none;
            object-position: 50px 30px;
            /* Numeric value */
            }

        h1 {
            text-align: center;
            color: #333;
        }

        /* Form Styles */
        .login-form {
            padding: 20px;
             background-image:url('https://wallpapers.com/images/hd/light-color-background-0bradaf005gnm8f1.jpg');
           
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

        /* Message Styles */
        .message {
            text-align: center;
            color: #ff0000;
            margin-top: 10px;
        }

        /* Register Link Styles */
        .register-link {
            text-align: center;
            margin-top: 15px;
        }

        .register-link a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h1 style="text-align: center;"> ONLINE VOTING SYSTEM</h1>
    <div class="container">
        <div class="login-form">
            <h1>Login</h1>
            <form method="POST" action="/save">
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required />
                    <div class="message" id="emailError"></div>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required />
                    <div class="message" id="passwordError"></div>
                </div>
                <div class="form-group">
                    <label for="captcha">Captcha:</label>
                    <img src="data:real/jpg;base64, ${command.realCaptcha}" alt="Captcha Image" />
                    <input type="text" id="captcha" name="captcha" required />
                    <input type="hidden" name="hiddenCaptcha" value="${command.hiddenCaptcha}" />
                </div>
                <div class="form-group">
                    <input type="submit" value="Login" onclick="return validateLoginForm()" />
                </div>
            </form>
            <div class="message">${message}</div>
        </div>
        <div class="register-link">
            New User? <a href="/register">Register here</a>
        </div>
    </div>

    <!-- JavaScript for validation -->
    <script>
        function validateLoginForm() {
            var email = document.getElementById("email").value;
            var password = document.getElementById("password").value;
            var emailError = document.getElementById("emailError");
            var passwordError = document.getElementById("passwordError");

            // Simple email validation (checks if it contains '@')
            if (!email.includes('@')) {
                emailError.textContent = "Email is not valid.";
                return false;
            } else {
                emailError.textContent = "";
            }

            // Password length validation (minimum length: 6 characters)
            if (password.length < 6) {
                passwordError.textContent = "Password must be at least 6 characters long.";
                return false;
            } else {
                passwordError.textContent = "";
            }

            return true; // Form submission will proceed if validation passes
        }
        
    </script>
     
 </body>
</html>
