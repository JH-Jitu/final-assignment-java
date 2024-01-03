<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tax Calculator BD</title>
    <style>
        /* styles.css */

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            color: #333;
            margin: 0;
            padding: 20px;
            text-align: center;
        }

        header {
            background-color: #4285f4;
            color: #fff;
            padding: 10px;
        }

        h1 {
            margin: 0;
        }

        main {
            margin: 20px 0;
            display: grid;
            gap: 20px;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
        }

        .button-container {
            text-align: center;
        }

        .button-container p {
            margin: 10px 0;
            font-size: 16px;
            color: #555;
        }

        .button-container a {
            text-decoration: none;
            display: block;
            padding: 15px;
            background-color: #4285f4;
            color: #fff;
            border-radius: 5px;
            font-size: 18px;
            transition: background-color 0.3s ease-in-out;
        }

        .button-container a:hover {
            background-color: #357ae8;
        }
    </style>
</head>
<body>
    <header>
        <h1>Tax Calculator BD</h1>
    </header>

    <main>
        <div class="button-container">
            <p>Already registered? Login Now!</p>
            <a href="${pageContext.request.contextPath}/login">Login</a>
        </div>

        <div class="button-container">
            <p>New member? Register Now</p>
            <a href="${pageContext.request.contextPath}/create">Register</a>
        </div>
    </main>
</body>
</html>
