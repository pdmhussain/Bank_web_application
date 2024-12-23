<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thank You - JSP Bank</title>
    <style>
        /* Reset default styles */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        /* Center the thank-you message */
        body {
            background: linear-gradient(135deg, #74eb96 0%, #e6bf9f 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
            animation: backgroundFade 8s ease-in-out infinite;
        }

        /* Background Animation */
        @keyframes backgroundFade {
            0% { background: linear-gradient(135deg, #74eb96 0%, #e6bf9f 100%); }
            50% { background: linear-gradient(135deg, #c59fe6 0%, #74eb96 100%); }
            100% { background: linear-gradient(135deg, #e6bf9f 0%, #c59fe6 100%); }
        }

        /* Container styling */
        .thank-you-container {
            width: 100%;
            max-width: 400px;
            padding: 2em;
            background-color: #fff;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* GIF image styling */
        .image-container img {
            width: 100%;
            border-radius: 5px 5px 0 0;
        }

        /* Heading and message styling */
        h2 {
            color: #4CAF50;
            margin-top: 1em;
            margin-bottom: 0.5em;
        }

        p {
            font-size: 16px;
            color: #555;
            margin-bottom: 1.5em;
        }

        /* Button styling */
        .home-btn {
            padding: 12px 20px;
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }

        .home-btn:hover {
            background-color: #45a049;
        }

        /* Responsive styling */
        @media (max-width: 600px) {
            .thank-you-container {
                width: 90%;
                padding: 1.5em;
            }
            h2 {
                font-size: 20px;
            }
            p {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <div class="thank-you-container">
        <!-- GIF image inside container -->
        <div class="image-container">
            <img src="image/balayyagif.gif" alt="Thank You GIF">
        </div>

        <!-- Thank You Message -->
        <!-- <h2>Thank You!</h2> -->
        <p>Your account has been successfully deleted at JSP Bank. </p>

        <!-- Button to navigate back to home or account page -->
        <a href="delete3" class="home-btn" aria-label="Go to Home">Go to Home</a>
    </div>
</body>
</html>
