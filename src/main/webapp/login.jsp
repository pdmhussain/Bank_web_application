
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<style>
/* Reset and Basic Styling */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
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

/* Form Container */
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

h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
    font-size: 24px;
    animation: textGlow 2s ease-in-out infinite alternate;
}

/* Glowing Text Animation */
@keyframes textGlow {
    0% { text-shadow: 0 0 16px #9face6; }
    100% { text-shadow: 0 0 16px #74ebd5; }
}

/* Input Group */
.input-group {
    margin-bottom: 15px;
}

label {
    display: block;
    font-size: 14px;
    color: #333;
    margin-bottom: 5px;
    transition: color 0.3s ease;
}

input {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
    color: #333;
    transition: border-color 0.3s ease, box-shadow 0.3s ease;
}

input:focus {
    outline: none;
    border-color: #74ebd5;
    box-shadow: 0 0 8px rgba(116, 235, 213, 0.5);
}

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

.forgot-password {
    text-align: right;
    margin-bottom: 20px;
}

.forgot-password a {
    font-size: 14px;
    color: #007bff;
    text-decoration: none;
    transition: color 0.3s ease;
}

.forgot-password a:hover {
    color: #0056b3;
    text-decoration: underline;
}

.create-account {
    text-align: center;
    margin-top: 15px;
}

.create-account a {
    font-size: 14px;
    color: #007bff;
    text-decoration: none;
    transition: color 0.3s ease;
}

.create-account a:hover {
    color: #0056b3;
    text-decoration: underline;
}

/* Error Messages */
.error-message {
    color: red;
    font-size: 12px;
    margin-top: 5px;
    animation: fadeIn 0.5s ease-in;
}

</style>
</head>
<body>
    <div class="form-container">
        <form action="login" method="post">
            <h2>JSP Login page</h2>
            <div class="input-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>
                <%String email=(String)request.getAttribute("msg1");
				if(email!=null){%>
				<h4 style=color:red><%=email %></h4><%} %>
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>
                
                   <%String pwd=(String)request.getAttribute("msg2");
				if(pwd!=null){%>
				<h4 style=color:red><%=pwd %></h4><%} %>
            </div>
            <div class="forgot-password">
                <a href="forgotpassword">Forgot Password?</a>
            </div>
            <button type="submit">Login</button>
            <div class="create-account">
                <p>Not registered? <a href="register">Create an account</a></p>
            </div>
        </form>
    </div>
</body>
</html>
 
 