<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bank.dto.BankAccountDto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank Home Page</title>
<style type="text/css">

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background-color: #b8b0b0;
    color: #333;
    line-height: 1.6;
}

/* Navbar Styling */
.navbar {
    background-color: #0056b3;
    padding: 15px 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    color: #fff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.logo {
    font-size: 24px;
    font-weight: bold;
}

.nav-links {
    list-style: none;
    display: flex;
    align-items: center;
}

.nav-links li {
    margin: 0 12px;
}

.nav-links a {
    color: #fff;
    text-decoration: none;
    font-size: 16px;
    padding: 8px 12px;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.nav-links a:hover {
    background-color: #003c80;
}

/* Dropdown Styling */
.dropdown {
    position: relative;
}

.dropbtn {
    background-color: #0056b3;
    color: #fff;
    border: none;
    padding: 8px 12px;
    font-size: 16px;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.dropbtn:hover {
    background-color: #003c80;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #fff;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
    border-radius: 5px;
    top: 100%;
    left: 0;
    z-index: 1;
    overflow: hidden;
    min-width: 160px;
}

.dropdown-content a {
    color: #333;
    padding: 10px 15px;
    text-decoration: none;
    display: block;
    font-size: 14px;
    transition: background-color 0.3s ease;
}

.dropdown-content a:hover {
    background-color: #f4f4f4;
}

/* Show dropdown on hover */
.dropdown:hover .dropdown-content {
    display: block;
}

/* Hero Section */
.hero {
    background: linear-gradient(135deg, #0056b3 0%, #007bff 100%);
    color: #fff;
    text-align: center;
    padding: 80px 20px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

.hero h1 {
    font-size: 48px;
    margin-bottom: 15px;
}

.hero p {
    font-size: 20px;
    max-width: 600px;
    margin: 0 auto;
}

/* Content Section */
.content {
    padding: 60px 20px;
    text-align: center;
    background-color: #fff;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
    border-radius: 10px;
    max-width: 800px;
    margin: 30px auto;
}

.content h2 {
    font-size: 32px;
    margin-bottom: 20px;
    color: #333;
}

.content p {
    font-size: 18px;
    color: #555;
    max-width: 600px;
    margin: 0 auto;
    line-height: 1.6;
}

/* Footer */
footer {
    background-color: #333;
    color: #fff;
    text-align: center;
    padding: 20px;
    font-size: 14px;
    position: fixed;
    width: 100%;
    bottom: 0;
}

/* Responsive Design */
@media (max-width: 768px) {
    .navbar {
        flex-direction: column;
        text-align: center;
    }

    .nav-links {
        flex-direction: column;
    }

    .nav-links li {
        margin: 5px 0;
    }

    .hero h1 {
        font-size: 36px;
    }

    .hero p {
        font-size: 18px;
    }

    .content h2 {
        font-size: 28px;
    }
}

 
</style>
</head>
<body>

    <nav class="navbar">
        <div class="logo">JSP Bank</div>
        <ul class="nav-links">
            <li><a href="balance">Balance Enquiry</a></li>
            <li><a href="transfer">Transfer</a></li>
            <!--  -->
            
            
            <%BankAccountDto bat=new BankAccountDto();if(bat.getAccountno()==0){ %>
                <li><a href="create">Create Account</a></li>
                <%}%>
            
            <li class="dropdown">
                <button class="dropbtn">More</button>
                <div class="dropdown-content">
                    <a href="profile">Profile</a>
                    <a href="update">Update</a>
                    <a href="delete">Delete</a>
                    <a href="logout">Logout</a>
                </div>
            </li>
        </ul>
    </nav>

    <header class="hero">
        <h1>Welcome to JSP Bank</h1>
        <p>Your trusted financial partner</p>
    </header> 
	
	
    <section class="content">
        <h2>Our Services</h2>
        <p>We offer a wide range of banking services including account management, fund transfers, balance inquiries, and more.</p>
    </section>

    <footer>
        <p>© 2024 JSP Bank. All rights reserved.</p>
    </footer>
</body>
</html>
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bank.dto.BankAccountDto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank Home Page</title>
<style type="text/css">

 * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background-color: #b8b0b0;
    color: #333;
    line-height: 1.6;
}

/* Navbar Styling */
.navbar {
    background-color: #0056b3;
    padding: 15px 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    color: #fff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.logo {
    font-size: 24px;
    font-weight: bold;
}

.nav-links {
    list-style: none;
    display: flex;
    align-items: center;
}

.nav-links li {
    margin: 0 12px;
}

.nav-links a {
    color: #fff;
    text-decoration: none;
    font-size: 16px;
    padding: 8px 12px;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.nav-links a:hover {
    background-color: #003c80;
}

/* Dropdown Styling */
.dropdown {
    position: relative;
}

.dropbtn {
    background-color: #0056b3;
    color: #fff;
    border: none;
    padding: 8px 12px;
    font-size: 16px;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.dropbtn:hover {
    background-color: #003c80;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #fff;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
    border-radius: 5px;
    top: 100%;
    left: -10px;
    z-index: 1;
    overflow: hidden;
    min-width: 100px;
}

.dropdown-content a {
    color: #333;
    padding: 10px 15px;
    text-decoration: none;
    display: block;
    font-size: 14px;
    transition: background-color 0.3s ease;
}

.dropdown-content a:hover {
    background-color: #f4f4f4;
}

/* Show dropdown on hover */
.dropdown:hover .dropdown-content {
    display: block;
}

/* Hero Section */
.hero {
    background: linear-gradient(135deg, #0056b3 0%, #007bff 100%);
    color: #fff;
    text-align: center;
    padding: 80px 20px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

.hero h1 {
    font-size: 48px;
    margin-bottom: 15px;
}

.hero p {
    font-size: 20px;
    max-width: 600px;
    margin: 0 auto;
}

/* Central search bar styling */
.central-search-bar {
    margin-top: 25px;
    display: flex;
    justify-content: center;
    align-items: center;
}

.central-search-bar input[type="text"] {
    padding: 10px;
    font-size: 16px;
    border: none;
    border-radius: 5px 0 0 5px;
    width: 300px;
    outline: none;
}

.central-search-bar button {
    padding: 10px 20px;
    font-size: 16px;
    color: #fff;
    background-color: #003c80;
    border: none;
    border-radius: 0 5px 5px 0;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.central-search-bar button:hover {
    background-color: #002a5b;
}

/* Content Section */
.content {
    padding: 20px 20px;
    text-align: center;
    background-color: #fff;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
    border-radius: 10px;
    max-width: 800px;
    margin: 30px auto;
}

.content h2 {
    font-size: 32px;
    margin-bottom: 20px;
    color: #333;
}

.content p {
    font-size: 18px;
    color: #555;
    max-width: 600px;
    margin: 0 auto;
    line-height: 1.6;
}

/* Footer */
footer {
    background-color: #333;
    color: #fff;
    text-align: center;
    padding: 20px;
    font-size: 14px;
    position: fixed;
    width: 100%;
    bottom: 0;
}

/* Responsive Design */
@media (max-width: 768px) {
    .navbar {
        flex-direction: column;
        text-align: center;
    }

    .nav-links {
        flex-direction: column;
    }

    .nav-links li {
        margin: 5px 0;
    }

    .hero h1 {
        font-size: 36px;
    }

    .hero p {
        font-size: 18px;
    }

    .content h2 {
        font-size: 28px;
    }
}
/* Styling for Operation Instructions */
/* .operation-instructions {
    text-align: left;
    margin-top: 20px;
    padding: 15px;
    background-color: #f4f4f4;
    border-radius: 8px;
    max-width: 200px;
    margin-left: auto;
    margin-right: auto;
}

.operation-instructions h4 {
    font-size: 18px;
    color: #0056b3;
    margin-bottom: 10px;
}

.operation-instructions ul {
    list-style-type: none;
    padding: 0;
}

.operation-instructions li {
    font-size: 16px;
    color: #333;
    margin-bottom: 5px;
}
 */
 /* Hero Section Layout */
/* .hero {
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: row;
    padding: 40px 10px;
}



.operation-instructions {
    text-align: left;
    padding: 15px;
    background-color: rgba(244, 244, 244, 0.9);
    border-radius: 8px;
    max-width: 200px;
    margin-right: 40px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    opacity: 0; 
    transition: opacity 0.3s ease; 
}


.hero:hover .operation-instructions {
    opacity: 1; 
}

.operation-instructions h4 {
    font-size: 18px;
    color: #0056b3;
    margin-bottom: 10px;
}

.operation-instructions ul {
    list-style-type: none;
    padding: 0;
}

.operation-instructions li {
    font-size: 16px;
    color: #333;
    margin-bottom: 5px;
}
 */
 /* Hero Section */
.hero {
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 60px 20px;
    background: linear-gradient(135deg, #0056b3 0%, #007bff 100%);
    color: #fff;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    text-align: center;
}

/* Operation Instructions Positioned to the Left */
.operation-instructions {
    position: absolute; /* Allows floating on the left */
    left: 20px; /* Adjusts distance from the left side of the viewport */
    padding: 15px;
    background-color: rgba(244, 244, 244, 0.9);
    border-radius: 8px;
    max-width: 200px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    opacity: 0;
    transition: opacity 0.3s ease;
}

/* Show Instructions on Hover */
.hero:hover .operation-instructions {
    opacity: 1;
}

.operation-instructions h4 {
    font-size: 18px;
    color: #0056b3;
    margin-bottom: 10px;
}

.operation-instructions ul {
    list-style-type: none;
    padding: 0;
}

.operation-instructions li {
    font-size: 16px;
    color: #333;
    margin-bottom: 5px;
}

/* Centering Hero Content */
.hero-content {
    max-width: 600px;
    margin: 0 auto;
}
 

</style>
<script>
function redirectToPage() {
    const query = document.getElementById('operation-input').value;

    switch (query) {
        case '1':
            window.location.href = 'create';  // Create Account
            break;
        case '2':
            window.location.href = 'profile'; // Profile
            break;
        case '3':
            window.location.href = 'transfer'; // Transfer
            break;
        case '4':
            window.location.href = 'balance'; // Balance Enquiry
            break;
        case '5':
            window.location.href = 'update'; // Update
            break;
        case '6':
            window.location.href = 'delete'; // Delete
            break;
        case '7':
            window.location.href = 'logout'; // Logout
            break;
        default:
            alert('Please enter a valid number (1-7) for the corresponding operation.');
            break;
    }
}
</script>
</head>
<body>

    <nav class="navbar">
        <div class="logo">JSP Bank</div>
        <ul class="nav-links">
            <li><a href="balance">Balance Enquiry</a></li>
            <li><a href="transfer">Transfer</a></li>
            <% BankAccountDto bat = new BankAccountDto(); if (bat.getAccountno() == 0) { %>
                <li><a href="create">Create Account</a></li>
            <% } %>
            <li class="dropdown">
                <button class="dropbtn">More</button>
                <div class="dropdown-content">
                    <a href="profile">Profile</a>
                    <a href="update">Update</a>
                    <a href="delete">Delete</a>
                    <a href="logout">Logout</a>
                </div>
            </li>
        </ul>
    </nav>

    <%-- <header class="hero">
        <h1>Welcome to JSP Bank</h1>
        <p>Your trusted financial partner</p>
        <%String name=(String)session.getAttribute("welcome"); %>
        <h3>welcome <%=name %></h3>
        <div class="central-search-bar">
            <input type="text" id="operation-input" placeholder="Enter 1-7 for operations" />
            <button type="button" onclick="redirectToPage()">Search</button>
        </div>
    </header> --%>
    <%-- <header class="hero">
    <h1>Welcome to JSP Bank</h1>
    <p>Your trusted financial partner</p>
    <% String name = (String) session.getAttribute("welcome"); %>
    <h3>Welcome, <%= name %></h3>
    
    <div class="central-search-bar">
        <input type="text" id="operation-input" placeholder="Enter 1-7 for operations" />
        <button type="button" onclick="redirectToPage()">Search</button>
    </div>

    <!-- Instructions for operations -->
    <div class="operation-instructions">
        <h4>Available Operations</h4>
        <ul>
            <li>1 - Create Account</li>
            <li>2 - Profile</li>
            <li>3 - Transfer</li>
            <li>4 - Balance Enquiry</li>
            <li>5 - Update Account</li>
            <li>6 - Delete Account</li>
            <li>7 - Logout</li>
        </ul>
    </div>
</header> --%>
<header class="hero">
    <div class="operation-instructions">
        <h4>Available Operations</h4>
        <ul>
            <li>1 - Create Account</li>
            <li>2 - Profile</li>
            <li>3 - Transfer</li>
            <li>4 - Balance Enquiry</li>
            <li>5 - Update Account</li>
            <li>6 - Delete Account</li>
            <li>7 - Logout</li>
        </ul>
    </div>

    <div class="hero-content">
        <h1>Welcome to JSP Bank</h1>
        <p>Your trusted financial partner</p>
        <% String name = (String) session.getAttribute("welcome"); %>
        <h3>Welcome, <%= name %></h3>

        <div class="central-search-bar">
            <input type="text" id="operation-input" placeholder="Enter 1-7 for operations" />
            <button type="button" onclick="redirectToPage()">Search</button>
        </div>
    </div>
</header>

    

    <section class="content">
        <h2>Our Services</h2>
        <p>We offer a wide range of banking services including account management, fund transfers, balance inquiries, and more.</p>
    </section>

    <footer>
        <p>© 2024 JSP Bank. All rights reserved.</p>
    </footer>
</body>
</html>

 