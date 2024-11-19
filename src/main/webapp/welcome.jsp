<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome page</title>


 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .welcome-text {
            margin-top: 100px;
        }
    </style>
</head>

<body>

       <%
        // Check if the session is not null and the username attribute is set
        if (session != null && session.getAttribute("username") != null) {
            // Get the username from the session
            String username = (String) session.getAttribute("username");
    %>
    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">Welcome</a>
            <div class="ms-auto">
               
                    <a href="index.html" class="btn btn-primary">Logout</a>
            </div>
        </div>
    </nav>

    <!-- Welcome Message -->
    <div class="container text-center welcome-text">
        <h1 class="mb-4">Welcome <%= username %>!</h1>
        <p class="lead">Feel free to stay as long as you like, and when you're ready,</p> 
        you can <a href="logout.jsp">LOGOUT</a> securely.
    </div>

   
     

    <%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
        }
    %>

   
 <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>



</body>
</html>