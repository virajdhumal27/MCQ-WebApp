<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style type="text/css">
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
}

header {
  background-color: #f2f2f2;
  padding: 20px;
}

header h1 {
  margin: 0;
}

main {
  max-width: 800px;
  margin: 20px auto;
  padding: 20px;
  background-color: #fff;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

.content {
  text-align: center;
}

.content h2 {
  margin-top: 0;
}

.content p {
  margin-bottom: 20px;
}

.btn {
  display: inline-block;
  padding: 10px 20px;
  font-size: 16px;
  background-color: #4CAF50;
  color: #fff;
  text-decoration: none;
  border-radius: 5px;
}

footer {
  background-color: #f2f2f2;
  padding: 10px;
  text-align: center;
}

</style>
</head>
<body>

    <%@ include file="navigation_bar.jsp" %>
  <header>
    <h1>Welcome to Quiz Website</h1>
  </header>

  <main>
    <section class="content">
      <h2>Get Ready to Test Your Knowledge!</h2>
      <p>Click the button below to attempt the quiz:</p>
      <a href="/attempt" class="btn">Attempt Quiz</a>
    </section>
  </main>

  <footer>
    <p>&copy; 2023 Quiz Website. All rights reserved.</p>
  </footer>
</body>
</html>