<%@ page isELIgnored="false" %>
<html>
<head>
    <style>
        /* styles.css */

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f7f7f7;
            color: #333;
            margin: 0;
            padding: 20px;
            text-align: center;
        }

        h2 {
            color: #4285f4;
        }

        hr {
            border: 1px solid #ccc;
            margin: 20px 0;
        }

        .login-container {
            max-width: 400px;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

label {
    display: inline-block;
    text-align: left;
    color: #555;
    margin-top: 10px;
    width: 100%; /* Adjust the width as needed */
}

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            text-decoration: none;
            display: inline-block;
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            background-color: #4285f4;
            color: #fff;
            transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
        }

        input[type="submit"]:hover {
            background-color: #357ae8;
            color: #fff;
        }

        .signup-link {
            margin-top: 20px;
            font-size: 14px;
        }

        .signup-link a {
            color: #4285f4;
            text-decoration: none;
            font-weight: bold;
        }

        .signup-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<h2>Tax Calculator</h2>


<div class="login-container">
    <h3>Login</h3>

    <form action="${pageContext.request.contextPath}/login" method="post">

        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>

        <input type="submit" value="Login">

    </form>

    <div class="signup-link">
        <p>New member? <a href="${pageContext.request.contextPath}/create">Register Now</a></p>
    </div>
</div>

</body>
</html>
