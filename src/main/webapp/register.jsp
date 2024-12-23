
<%--  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank Registration Form</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #f3f4f6;
        }

        .register-container {
            width: 400px;
            padding: 20px;
            border-radius: 8px;
            background: #ffffff;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333333;
        }

        .form-group {
            margin-bottom: 15px;
            display: flex;
            flex-direction: column;
        }

        .form-group label {
            font-weight: bold;
            margin-bottom: 5px;
            color: #555555;
        }

        .form-group input,
        .form-group select {
            padding: 10px;
            border: 1px solid #cccccc;
            border-radius: 4px;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .form-group input:focus,
        .form-group select:focus {
            border-color: #3b82f6;
            outline: none;
            box-shadow: 0 0 4px rgba(59, 130, 246, 0.5);
        }

        .form-group .error-message {
            color: #ff4d4f;
            font-size: 0.875rem;
            margin-top: 5px;
            display: none;
        }

        .form-group .success-message {
            color: #28a745;
            font-size: 0.875rem;
            margin-top: 5px;
            display: none;
        }

        .form-group input[type="submit"] {
            background-color: #3b82f6;
            color: #ffffff;
            cursor: pointer;
            border: none;
            font-weight: bold;
        }

        .form-group input[type="submit"]:hover {
            background-color: #2563eb;
        }
    </style>
</head>
<body>

<div class="register-container">
    <h2>JSP Bank Registration</h2>
    <form id="registerForm" action="register2" method="post">
        <div class="form-group">
            <label for="firstName">First Name</label>
            <input type="text" id="firstName" name="firstName" required>
        </div>
        
        <div class="form-group">
            <label for="lastName">Last Name</label>
            <input type="text" id="lastName" name="lastName" required>
        </div>
        
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>
        </div>
        
        
        <div class="form-group">
    	<label for="phone">Phone Number</label>
    	<input type="tel" id="phone" name="phone" pattern="[0-9]{10}" required>
    	<span class="error-message" id="phoneError">Please enter a valid 10-digit phone number.</span>
		</div>
		
		<div class="form-group">
        <label for="age">Age</label>
        <input type="number" id="age" name="age" min="18" required>
        </div>
        
        <div class="form-group">
            <label for="gender">Gender</label>
            <select id="gender" name="gender" required>
                <option value="">Select Gender</option>
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
            </select>
        </div>
        

              <div class="form-group">
        <label for="address">Address:</label>
        <input type="text" id="address" name="address" required>
      </div>
      
      <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
        </div>
        
        <div class="form-group">
            <label for="confirmPassword">Confirm Password</label>
            <input type="password" id="confirmPassword" name="confirmPassword" required>
            <span class="error-message" id="passwordError">Passwords do not match.</span>
        </div>
        
        <div class="form-group">
            <input type="submit" value="Register">
        </div>
    </form>
</div>

<script>
    document.getElementById('registerForm').addEventListener('submit', function(event) {
        const password = document.getElementById('password').value;
        const confirmPassword = document.getElementById('confirmPassword').value;
        const passwordError = document.getElementById('passwordError');

        if (password !== confirmPassword) {
            event.preventDefault();
            passwordError.style.display = 'block';
        } else {
            passwordError.style.display = 'none';
            alert("Registration successful!");
        }
    });
</script>

</body>
</html>  --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bank Registration Form</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: linear-gradient(135deg, #74eb96 0%, #e6bf9f 100%);
            animation: backgroundFade 8s ease-in-out infinite;
        }

        @keyframes backgroundFade {
        0% { background: linear-gradient(135deg, #74eb96 0%, #e6bf9f 100%); }
        50% { background: linear-gradient(135deg, #c59fe6 0%, #74eb96 100%); }
        100% { background: linear-gradient(135deg, #e6bf9f 0%, #c59fe6 100%); }
    }

        .form-container {
            display: flex;
            flex-direction: column; /* Stack elements vertically */
            justify-content: center;
            align-items: center;
            width: 100%;
            max-width: 900px; /* Adjust for two forms */
            padding: 20px;
            border-radius: 8px;
            background: rgba(255, 255, 255, 0.9); /* Light background for contrast */
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            gap: 20px; /* Space between forms */
        }

        .form-section {
            display: flex;
            justify-content: space-between;
            width: 100%;
            gap: 20px; /* Space between forms */
        }

        .form {
            width: 100%;
            max-width: 400px; /* Adjust form width */
            padding: 20px;
            border-radius: 8px;
            background: linear-gradient(135deg, #74eb96 0%, #e6bf9f 100%);; /* Light gradient for form */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s ease;
            animation: backgroundFade 8s ease-in-out infinite;
        }
		@keyframes backgroundFade {
        0% { background: linear-gradient(135deg, #74eb96 0%, #e6bf9f 100%); }
        50% { background: linear-gradient(135deg, #c59fe6 0%, #74eb96 100%); }
        100% { background: linear-gradient(135deg, #e6bf9f 0%, #c59fe6 100%); }
        }
        .form:hover {
            transform: translateY(-2px); /* Slight lift on hover */
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333333;
            letter-spacing: .3vw;
        }

        .form-group {
            margin-bottom: 15px;
            display: flex;
            flex-direction: column;
        }

        .form-group label {
            font-weight: bold;
            margin-bottom: 5px;
            color: #555555;
        }

        .form-group input,
        .form-group select {
            padding: 10px;
            border: 1px solid #cccccc;
            border-radius: 4px;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .form-group input:focus,
        .form-group select:focus {
            border-color: #3b82f6;
            outline: none;
            box-shadow: 0 0 4px rgba(59, 130, 246, 0.5);
        }

        .form-group .error-message {
            color: #ff4d4f;
            font-size: 0.875rem;
            margin-top: 5px;
            display: none;
        }

        .form-group input[type="submit"] {
            background-color: #3b82f6;
            color: #ffffff;
            cursor: pointer;
            border: none;
            font-weight: bold;
            padding: 12px 15px;
            border-radius: 5px;
            margin-top: 10px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .form-group input[type="submit"]:hover {
            background-color: #2563eb;
            transform: translateY(-2px);
        }

        /* Center register button */
        .register-button {
            width: auto; /* Change to auto for size based on content */
            max-width: 200px; /* Set a maximum width */
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 8px 20px; /* Reduced padding */
            border-radius: 5px;
            font-size: 14px; /* Reduced font size */
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
            margin-top: 20px; /* Space above button */
            display: flex; /* Center button content */
            justify-content: center; /* Center the text */
            align-items: center; /* Center the text vertically */
        }

        .register-button:hover {
            background-color: #45a049;
            transform: scale(1.05);
        }

        /* Media query for responsiveness */
        @media (max-width: 500px) {
            .form-section {
                flex-direction: column; /* Stack forms on small screens */
            }

            .form {
                max-width: 100%; /* Full width for small screens */
            }

            .register-button {
                margin-top: 10px; /* Adjust margin on small screens */
            }
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
        
    </style>
</head>
<body>

<div class="form-container">
    <h2>Bank Registration Form</h2>
    <form id="registerForm1" action="register2" method="post">
    <div class="form-section">

        <div class="form">
            <h3>Part 1</h3>
            <br>
                <div class="form-group">
                    <label for="firstName">First Name</label>
                    <input type="text" id="firstName" name="firstName" required placeholder="Enter First Name">
                </div>
                
                <div class="form-group">
                    <label for="lastName">Last Name</label>
                    <input type="text" id="lastName" name="lastName" required  placeholder="Enter Last Name">
                </div>
                
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required placeholder="Enter Email">
                </div>
                
                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="tel" id="phone" name="phone" pattern="[0-9]{10}" required placeholder="Enter Phone Number">
                    <span class="error-message" id="phoneError1">Please enter a valid 10-digit phone number.</span>
                </div>
                
                <div class="form-group">
                    <label for="age">Age</label>
                    <input type="number" id="age" name="age" min="18" required placeholder="Enter Age ">
                </div>
        </div>

        <div class="form">
            <h3>Part 2</h3>
            <br>
                <div class="form-group">
                    <label for="gender">Gender</label>
                    <select id="gender" name="gender" required>
                        <option value="">Select Gender</option>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="other">Other</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="address">Address:</label>
                    <input type="text" id="address" name="address" required placeholder="Enter Address">
                </div>
                
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" required placeholder="Enter Password">
                </div>
                
                <div class="form-group">
                    <label for="confirmPassword">Confirm Password</label>
                    <input type="password" id="confirmPassword" name="confirmPassword" required placeholder="Enter  above password">
                    <span class="error-message" id="passwordError">Passwords do not match.</span>
                </div>
        </div>
    </div>
	
		 <!-- <div class="form-group">
            <input type="submit" value="Register">
        </div> -->
        <button type="submit">submit</button>
    </form>
</div>
<script>
    document.getElementById('registerForm').addEventListener('submit', function(event) {
        const password = document.getElementById('password').value;
        const confirmPassword = document.getElementById('confirmPassword').value;
        const passwordError = document.getElementById('passwordError');

        if (password !== confirmPassword) {
            event.preventDefault();
            passwordError.style.display = 'block';
        } else {
            passwordError.style.display = 'none';
            alert("Registration successful!");
        }
    });
</script>

</body>
</html>