<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bank Transfer Form</title>
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
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }
        .form-group input[type="text"],
        .form-group input[type="number"],
        .form-group input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
            color: #333;
        }
        .form-group input[type="text"]:focus,
        .form-group input[type="number"]:focus,
        .form-group input[type="password"]:focus {
            border-color: #007bff;
            outline: none;
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
        <h2>Bank Transfer</h2>
        <form action="transferform" method="post">
            <div class="form-group">
                <label for="accountNo">Account Number</label>
                <input type="text" id="accountNo" name="accountNo" required placeholder="enter account no">
                <%String account=(String)request.getAttribute("account");
				if(account!=null){%>
				<h4 style=color:red><%=account %></h4><%} %>
            </div>
            <div class="form-group">
                <label for="ifscCode">IFSC Code</label>
                <input type="text" id="ifscCode" name="ifscCode" required placeholder="enter ifsc code">
                <%String ifsc=(String)request.getAttribute("ifsc");
				if(ifsc!=null){%>
				<h4 style=color:red><%=ifsc %></h4><%} %>
            </div>
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" required placeholder="enter name">
            </div>
            <div class="form-group">
                <label for="pin">PIN</label>
                <input type="password" id="pin" name="pin" required placeholder="enter pin">
                <%String pin=(String)request.getAttribute("pin");
				if(pin!=null){%>
				<h4 style=color:red><%=pin %></h4><%} %>
            </div>
            <div class="form-group">
                <label for="amount">Amount</label>
                <input type="number" id="amount" name="amount" min="1" required placeholder="enter amount">
                 <%String balance=(String)request.getAttribute("balance");
				if(balance!=null){%>
				<h4 style=color:red><%=balance %></h4><%} %>
            </div>
            <button type="submit">Submit</button>
        </form>
    </div>

</body>
</html>
