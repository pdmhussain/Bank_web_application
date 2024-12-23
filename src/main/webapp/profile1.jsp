<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style >
button {
    width: 100%;
    padding: 10px;
    background-color: #007bff;
    border: none;
    border-radius: 5px;
    color: white;
    font-size: 16px;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>
<h1>Transaction Successful</h1>
<form action="transfer3"><button type="submit">go to home page</button></form>
</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Transaction Successful</title>
<style>
    /* Body Styling with Gradient Background and Animation */
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #74eb96 0%, #e6bf9f 100%);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        overflow: hidden;
        animation: backgroundFade 8s ease-in-out infinite;
    }

    /* Background Fade Animation */
    @keyframes backgroundFade {
        0% { background: linear-gradient(135deg, #74eb96 0%, #e6bf9f 100%); }
        50% { background: linear-gradient(135deg, #c59fe6 0%, #74eb96 100%); }
        100% { background: linear-gradient(135deg, #e6bf9f 0%, #c59fe6 100%); }
    }
    
    /* Container Styling */
    .form-container {
    background-color: rgba(255, 255, 255, 0.85);
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    width: 100%;
    max-width: 400px;
    animation: fadeIn 1.5s ease-in;
}

@keyframes fadeIn {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
}

h1 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
    font-size: 24px;
    animation: textGlow 2s ease-in-out infinite alternate;
}

/* Glowing Text Animation */
@keyframes textGlow {
    0% { text-shadow: 0 0 8px #9face6; }
    100% { text-shadow: 0 0 16px #74ebd5; }
}

    /* Button Styling */
    button {
    width: 100%;
    padding: 12px;
    background: linear-gradient(135deg, #74eb96 0%, #e6bf9f 100%);
    border: none;
    border-radius: 5px;
    color: white;
    font-size: 18px;
    font-weight: bold;
    cursor: pointer;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    animation: backgroundFad 8s ease-in-out infinite;
}
@keyframes backgroundFad {
        0% { background: linear-gradient(135deg, #74eb96 0%, #e6bf9f 100%); }
        50% { background: linear-gradient(135deg, #c59fe6 0%, #74eb96 100%); }
        100% { background: linear-gradient(135deg, #e6bf9f 0%, #c59fe6 100%); }
    }

button:hover {
    transform: scale(1.05);
    box-shadow: 0 0 12px rgba(116, 235, 213, 0.7);
}

button:active {
    transform: scale(0.95);
}
</style>
</head>
<body>
    <div class="form-container">
        <h1>you don't have an account create an account</h1>
        <form action="profile3">
            <button type="submit">Go to Home Page</button>
        </form>
    </div>
</body>
</html>
