<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
nav {
  background-color: #333;
  color: #fff;
  padding: 10px;
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
    <li><a href="home.jsp">Home</a></li>
    <li><a href="about.jsp">About</a></li>
    <li><a href="contact.jsp">Contact</a></li>
    <li><a href="profile.jsp">Profile</a></li>
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