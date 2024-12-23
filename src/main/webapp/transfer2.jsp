

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bank.dto.BankAccountDto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Transaction Successful</title>
<style>
    /* General reset and font */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }

    /* Center everything on the page */
    body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background: linear-gradient(135deg, #74eb96 0%, #e6bf9f 100%);
        overflow: hidden;
    	animation: backgroundFade 8s ease-in-out infinite;
    }

    /* Background Fade Animation */
    @keyframes backgroundFade {
        0% { background: linear-gradient(135deg, #74eb96 0%, #e6bf9f 100%); }
        50% { background: linear-gradient(135deg, #c59fe6 0%, #74eb96 100%); }
        100% { background: linear-gradient(135deg, #e6bf9f 0%, #c59fe6 100%); }
    }

    /* Container for success message and button */
    .container {
        text-align: center;
        background-color: #ffffff;
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
        width: 100%;
        max-width: 400px;
        animation: fadeIn 1s ease forwards; /* Fade-in for the whole container */
        opacity: 0;
    }

    /* Fade-in animation for the container */
    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    /* Title styling with slide-in effect */
    h1 {
        font-size: 24px;
        color: #28a745;
        margin-bottom: 15px;
        opacity: 0;
        animation: slideIn 1.2s ease forwards;
    }

    @keyframes slideIn {
        from {
            opacity: 0;
            transform: translateY(-20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    /* Checkmark styling with a pulse and scale animation */
    .checkmark {
        display: inline-block;
        font-size: 60px;
        color: #28a745;
        margin-bottom: 20px;
        animation: checkmarkPulse 1.5s ease-in-out infinite;
    }

    @keyframes checkmarkPulse {
        0%, 100% {
            opacity: 0.7;
            transform: scale(1);
        }
        50% {
            opacity: 1;
            transform: scale(1.3);
        }
    }

    /* Button styling */
    button {
        width: 100%;
        padding: 12px;
       background: linear-gradient(135deg, #74eb96 0%, #e6bf9f 100%);
        border: none;
        border-radius: 5px;
        color: white;
        font-size: 16px;
        cursor: pointer;
        animation: backgroundFade 8s ease-in-out infinite;
    }

    /* Background Fade Animation */
    @keyframes backgroundFade {
        0% { background: linear-gradient(135deg, #74eb96 0%, #e6bf9f 100%); }
        50% { background: linear-gradient(135deg, #c59fe6 0%, #74eb96 100%); }
        100% { background: linear-gradient(135deg, #e6bf9f 0%, #c59fe6 100%); }
    }

    button:hover {
        background-color: #0056b3;
        transform: translateY(-3px) scale(1.02);
    }

    /* Glow animation on the button hover */
    button:hover {
        box-shadow: 0px 0px 10px rgba(0, 91, 255, 0.5);
    }
</style>
</head>
<body>
    <div class="container">
        <!-- Looping Animated Checkmark Icon -->
        <div class="checkmark">✔</div>
        <!-- Success Message -->
        <h1>Transaction Successful</h1>
        <%String bank=(String)session.getAttribute("name");
        String transferAmount=(String)session.getAttribute("transfer");
        %>
        <h3>and <%=transferAmount %>Rs credited to :<%=bank %></h3>
        <!-- Go to Home Page Button -->
        <form action="transfer3">
            <button type="submit">Go to Home Page</button>
        </form>
    </div>
</body>
</html> 