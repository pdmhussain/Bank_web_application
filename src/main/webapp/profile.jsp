<%@page import="bank.dto.UserDto" %>
<%@page import="bank.dto.BankAccountDto" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Information Display</title>
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
        /* Main container styling */
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
        /* Label and value styling */
        .info-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 0;
            border-bottom: 1px solid #eaeaea;
        }
        .info-item:last-child {
            border-bottom: none;
        }
        .label {
            font-weight: bold;
            color: #34495e;
            font-size: 16px;
            width: 45%;
            text-align: left;
        }
        .value {
            color: #555;
            font-size: 16px;
            width: 55%;
            text-align: right;
        }
        /* Footer styling */
        .info-footer {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #999;
        }
        .button-container {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>

        <%UserDto user=(UserDto)session.getAttribute("usermsg"); 
        BankAccountDto bank1=(BankAccountDto)session.getAttribute("bank"); 
        //BankAccountDto bank2=(BankAccountDto)session.getAttribute("bankAccount");
        %>
<form action="profile1" method="post">
<div class="form-container">
    <h2>User Information</h2>

    <div class="info-item">
        <span class="label">First Name:</span>
        <span class="value"><%=user.getFirstName() %></span>
    </div>

    <div class="info-item">
        <span class="label">Last Name:</span>
        <span class="value"><%=user.getLastName() %></span>
    </div>

    

    <div class="info-item">
        <span class="label">Age:</span>
        <span class="value"><%=user.getAge() %></span>
    </div>

    <div class="info-item">
        <span class="label">Gender:</span>
        <span class="value"><%=user.getGender() %></span>
    </div>

    <!-- New Fields -->
    <%if(bank1.getIfsc()!=null){ %>
    <div class="info-item">
        <span class="label">Phone:</span>
        <span class="value"><%=bank1.getPhone() %></span>
    </div>

    <div class="info-item">
        <span class="label">Email:</span>
        <span class="value"> <%=bank1.getEmail() %></span>
    </div>
    
    <div class="info-item">
        <span class="label">Bank Account Number:</span>
        
        <span class="value"><%=bank1.getAccountno() %></span>
    </div>

    <div class="info-item">
        <span class="label">Bank Account Type:</span>
        <span class="value"><%=bank1.getAccounttype() %></span>
    </div>

    <div class="info-item">
        <span class="label">Address:</span>
        <span class="value"><%=bank1.getAddress() %></span>
    </div>

    <div class="info-item">
        <span class="label">Aadhar Number:</span>
        <span class="value"><%=bank1.getAadhar() %></span>
    </div>

    <div class="info-item">
        <span class="label">Balance:</span>
        <span class="value"><%=bank1.getBalance() %></span>
        
    </div><%}else{ %>
    <div class="info-item">
        <span class="label">Bank Account Number:</span>
        
        <span class="value"><%=bank1.getAccountno() %></span>
    </div>

    <div class="info-item">
        <span class="label">Bank Account Type:</span>
        <span class="value"><%=bank1.getAccounttype() %></span>
    </div>

    <div class="info-item">
        <span class="label">Address:</span>
        <span class="value"><%=bank1.getAddress() %></span>
    </div>

    <div class="info-item">
        <span class="label">Aadhar Number:</span>
        <span class="value"><%=bank1.getAadhar() %></span>
    </div>

    <div class="info-item">
        <span class="label">Balance:</span>
        <span class="value"><%=bank1.getBalance() %></span>
        
    </div><%} %>
    <input type="submit" value="OK" class="button-container">
 </form>
</div>

</body>
</html>