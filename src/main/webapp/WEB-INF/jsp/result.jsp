<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Mukta&family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
<style type="text/css">
body {
    font-family: 'Poppins', sans-serif;
    box-sizing: border-box;
    overflow: hidden;
    margin: 0;
}

h1 {
    font-size: 3.5rem;
    margin: 0px auto;
    width: fit-content;
    text-align: center;
    margin: 0px auto;
    color: #5a5a5a;
    
}

.score-container {
  text-align: center;
  margin-top: 50px;
  font-size: 4rem;
  width: fit-content;
  margin: 0px auto;  
}

.score {
    color: #202043;
  font-size: 8rem;
  font-weight: bold;
  padding: 34px 137px;
  border-radius: 10px;  
      background: #e7e4e4;
}

#underline{
    width: 100%;
    border: 3px solid black;
    display: block;
    left: 20px;
    position: relative;
}

</style>
</head>
<body>
<%@ include file="navigation_bar.jsp" %>
<h1>
    Your MCQ Score
    <span id="underline"></span>    
</h1>

  <div class="score-container">
    <p class="score">Your score: <br /> <%= session.getAttribute("score").toString() %>/10 </p>
    </div>
</body>
</html>