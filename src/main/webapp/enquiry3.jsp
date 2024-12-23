<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Account Balance</title>
    <style>
        /* Basic styling for the body and main container */
        body {
            font-family: Arial, sans-serif;
            
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background: linear-gradient(135deg, #74eb96 0%, #e6bf9f 100%);
        	animation: backgroundFade 8s ease-in-out infinite;
}

/* Background Animation */
@keyframes backgroundFade {
        0% { background: linear-gradient(135deg, #74eb96 0%, #e6bf9f 100%); }
        50% { background: linear-gradient(135deg, #c59fe6 0%, #74eb96 100%); }
        100% { background: linear-gradient(135deg, #e6bf9f 0%, #c59fe6 100%); }
    }
        
        .container {
            text-align: center;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
        }

        h1 {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }

        p {
            font-size: 18px;
            color: #555;
            margin-bottom: 30px;
        }

        .balance {
            font-weight: bold;
            color: #28a745;
        }

        button {
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            
            border: none;
            border-radius: 4px;
            cursor: pointer;
            background: linear-gradient(135deg, #74eb96 0%, #e6bf9f 100%);
        	animation: backgroundFade 8s ease-in-out infinite;
}

/* Background Animation */
@keyframes backgroundFade {
        0% { background: linear-gradient(135deg, #74eb96 0%, #e6bf9f 100%); }
        50% { background: linear-gradient(135deg, #c59fe6 0%, #74eb96 100%); }
        100% { background: linear-gradient(135deg, #e6bf9f 0%, #c59fe6 100%); }
    }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Your Account Balance</h1>

        <%
            // Example of retrieving balance (you would typically get this from a database)
            Integer balance = (Integer) request.getAttribute("balance"); // Assume balance is passed to this JSP
            if (balance == null) {
                balance = 0; // Default balance if none is provided
            }
        %>

        <p>Your current balance is: <span class="balance">Rs:<%= balance %></span></p>

        <form action="home1" method="post">
            <button type="submit">Go to Home</button>
        </form>
    </div>
</body>
</html>
