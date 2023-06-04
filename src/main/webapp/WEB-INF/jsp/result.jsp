<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
  font-family: Arial, sans-serif;
}

h1 {
  text-align: center;
}

.score-container {
  text-align: center;
  margin-top: 50px;
}

.score {
  font-size: 24px;
  font-weight: bold;
}

</style>
</head>
<body>
<h1>MCQ Score</h1>

  <div class="score-container">
    <p class="score">Your score: <%= session.getAttribute("score").toString() %></p>
  </div>
</body>
</html>