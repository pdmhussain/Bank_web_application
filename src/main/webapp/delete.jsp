
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Delete Form</title>
<style>
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

  .form-group {
    margin-bottom: 15px;
  }

  .form-group label {
    display: block;
    font-weight: bold;
    color: #555;
  }

  .form-group input {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
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
  <h2>Delete JSP Account</h2>
  <form id="deleteForm" action="deleteform" method="post">
    <div class="form-group">
      <label for="email">Email</label>
      <input type="email" id="email" name="email" placeholder="Enter your email" required>
      <% String emailError = (String)request.getAttribute("msg1");
         if (emailError != null) { %>
         <h4 style="color:red"><%= emailError %></h4>
      <% } %>
    </div>

    <div class="form-group">
      <label for="password">Password</label>
      <input type="password" id="password" name="password" placeholder="Enter your password" required>
      <% String passwordError = (String)request.getAttribute("msg2");
         if (passwordError != null) { %>
         <h4 style="color:red"><%= passwordError %></h4>
      <% } %>
    </div>

    <button type="submit" >Delete</button>
  </form>
</div>

<script>
    // Only show success alert if account deletion is successful
    
    window.onload = function() {
      <% 
         String successMessage = (String)request.getAttribute("msgSuccess");
         if (successMessage != null) { %>
          alert("Account deleted successfully!");
      <% } %>
    };
</script>

</body>
</html>
 