<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Form</title>
    <style>
        /* Basic reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body styling */
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

        /* Form container styling */
        .update-form {
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

        /* Form header */
        .update-form h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        /* Label and input styling */
        .update-form label {
            display: block;
            color: #555;
            font-size: 14px;
            margin-bottom: 5px;
        }

        .update-form input[type="text"],
        .update-form input[type="number"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
        }

        /* Button styling */
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
    <div class="update-form">
        <h2>Update Information</h2>
        <form action="updatebank" method="post">
            <label for="phone">Phone:</label>
            <input type="text" id="phone" name="phone" placeholder="Enter your phone number">
			<%String phone=(String)request.getAttribute("phone");
				if(phone!=null){%>
				<h4 style=color:red><%=phone %></h4><%} %>
            <label for="address">Address:</label>
            <input type="text" id="address" name="address" placeholder="Enter your address">

            <label for="age">Age:</label>
            <input type="number" id="age" name="age" placeholder="Enter your age">

            <button type="submit">Update</button>
        </form>
    </div>
</body>
</html>
