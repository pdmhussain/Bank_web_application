
		 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reset password</title>
<style >
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    /* background: linear-gradient(60deg,#90be6d,#f9844a) */
    background: linear-gradient(135deg, #74eb96 0%, #e6bf9f 100%);
    animation: backgroundFade 8s ease-in-out infinite;
}
@keyframes backgroundFade {
        0% { background: linear-gradient(135deg, #74eb96 0%, #e6bf9f 100%); }
        50% { background: linear-gradient(135deg, #c59fe6 0%, #74eb96 100%); }
        100% { background: linear-gradient(135deg, #e6bf9f 0%, #c59fe6 100%); }
    }

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
    0% { text-shadow: 0 0 8px #9face6; }
    100% { text-shadow: 0 0 16px #74ebd5; }
}


.input-group {
    margin-bottom: 15px;
}
.input-group .error-message {
            color: #ff4d4f;
            font-size: 0.875rem;
            margin-top: 5px;
            display: none;
            color: red;
        }

label {
    display: block;
    font-size: 14px;
    color: #333;
    margin-bottom: 5px;
}

input {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
    color: #333;
}

input:focus {
    outline: none;
    border-color: #00a6fb;
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
        <form action="forget" method="post" id="setpassword">
            <h2>Reset Password</h2>
            <div class="input-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>
            </div>
             <div class="input-group">
            	<label for="new-password">New Password</label>
            	<input type="password" id="new-password" name="new-password" placeholder="Enter new password" required>
        	</div>

        	<div class="input-group">
            	<label for="confirm-Password">Confirm Password</label>
            	<input type="password" id="confirm-Password" name="confirm-Password" placeholder="Confirm new password" required>
            	<span class="error-message" id="passwordError">Passwords are not matching.</span>
        	</div>
            
            <button type="submit">Submit</button>
        </form>
    </div>
    <script>
    document.getElementById('setpassword').addEventListener('submit', function(event) {
        const password = document.getElementById('new-password').value;
        const confirmPassword = document.getElementById('confirm-Password').value;
        const passwordError = document.getElementById('passwordError');

        if (password !== confirmPassword) {
            event.preventDefault();
            passwordError.style.display = 'block';
        } else {
            passwordError.style.display = 'none';
            alert("Setting of New Password Successfull!");
        }
    });
</script>
</body>
</html>
