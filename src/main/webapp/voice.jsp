<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Speech to Text Login</title>
    <script>
        // Function to start speech recognition
        function startRecognition() {
            const recognition = new (window.SpeechRecognition || window.webkitSpeechRecognition)();
            recognition.lang = 'en-US';
            recognition.interimResults = false;
            recognition.maxAlternatives = 1;

            recognition.start();

            recognition.onresult = function(event) {
                const transcript = event.results[0][0].transcript;
                const words = transcript.split(" ");
                
                // Assuming the first word is the username and the second is the password
                if (words.length >= 2) {
                    document.getElementById("username").value = words[0]; // Username
                    document.getElementById("password").value = words[1]; // Password
                }
            };

            recognition.onerror = function(event) {
                console.error('Error occurred in recognition: ' + event.error);
            };
        }
    </script>
</head>
<body>
    <h2>Login</h2>
    <form action="loginProcess.jsp" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username"><br><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password"><br><br>
        <button type="button" onclick="startRecognition()">Speak Login Details</button><br><br>
        <input type="submit" value="Login">
    </form>
</body>
</html>
