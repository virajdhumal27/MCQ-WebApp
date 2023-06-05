<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>navBar</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Mukta&family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
<style type="text/css">

nav {
  background-color: #333;
  color: #fff;
  padding: 10px;
  height: fit-content;
  width: 100%;
}

nav ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  display: flex;
  justify-content: space-between;
}

nav ul li {
  display: inline-block;
  margin-right: 10px;
}

nav ul li.right {
  margin-left: auto;
}

nav ul li a {
  color: #fff;
  text-decoration: none;
  padding: 5px;
}

nav ul li a:hover {
  background-color: #555;
}

nav ul li span {
  margin-right: 10px;
}


</style>
</head>
<body>

<nav>
  <ul>
    <li><a href="/home">Home</a></li>
    <li><a href="about.jsp">About</a></li>
    <li><a href="contact.jsp">Contact</a></li>
    <li><a href="profile.jsp">Profile</a></li>
    <% if (session.getAttribute("username") != null && session.getAttribute("username").toString().equals("admin")) {%>
        <li style="background: 'red'"><a href="/post_questions">Post Question</a></li>
    <% } %>
    <li class="right">
        
        <% if(session.getAttribute("username") == null) {%>
        
          <a href="/login">Login</a>
        <% } else { %>
          <form action="/logout" method="post" id="logoutForm">
            <input type="hidden" name="logout" value="true">
            <span>Welcome, <%= session.getAttribute("username").toString() %></span>
            <a href="javascript:{}" onclick="document.getElementById('logoutForm').submit();">Logout</a>
          </form>
        <%} %>
      
    </li>
  </ul>
</nav>

    
</body>
</html>