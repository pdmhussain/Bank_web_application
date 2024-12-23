<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
      margin-bottom: 5px;
      color: #555;
    }

    .form-group input,
    .form-group select {
      width: 100%;
      padding: 8px;
      border: 1px solid #ccc;
      border-radius: 4px;
      font-size: 16px;
    }

    .form-group select {
      appearance: none;
      background: #fff;
    }

    .form-group input[type="submit"] {
      background-color: #4CAF50;
      color: white;
      border: none;
      cursor: pointer;
      font-size: 16px;
    }

    .form-group input[type="submit"]:hover {
      background-color: #45a049;
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
    <h2>Enter JSP Bank Account Pin</h2>
    <form action="bankpin" method="post" >
	<div class="form-group">
        <label for="pin">Pin:</label>
        <input type="password" id="pin" name="pin" required pattern="\d{4}" placeholder="Enter 4-digit pin">
        <% String pinerror = (String)request.getAttribute("pin1");
         if (pinerror != null) { %>
         <h4 style="color:red"><%= pinerror %></h4>
      <% } %>
      </div>
      <!-- <div class="form-group">
        <input type="submit" value="Submit">
      </div> -->
      <button type="submit">submit</button>
    </form>
</div>
</body>
</html>