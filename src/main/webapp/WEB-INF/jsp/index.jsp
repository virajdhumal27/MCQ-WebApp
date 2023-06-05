<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Mukta&family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
<style type="text/css">

html{
    height: 100vh;
}

body {
  font-family: 'Poppins', sans-serif;
  box-sizing: border-box;
  margin: 0;
  padding: 0;
  height: 100%;
  display:flex;
  flex-wrap: wrap;
  align-content: space-between;
  overflow: hidden;
  background-image: url('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.wallpapersafari.com%2F22%2F69%2FiSbH2F.jpg&f=1&nofb=1&ipt=b708a8f754a12c0aea554d728ab47daa28fe134c69837d17e19faac52ee3f3a3&ipo=images');
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
}

header {
  background-color: #f2f2f2;
  padding: 20px;
  width: 100%;
  height: fit-content;
  position: absolute;
    top: 6%;
}

header h1 {
  margin: 0;
  width: 100%;
}

main {
width: 100%;
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
  width: 100%;
  height: fit-content;
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
      <p>Click the button below to attempt the java quiz:</p>
      <a href="/attempt" class="btn">Attempt Quiz</a>
    </section>
  </main>

  <footer>
    <p>&copy; 2023 Quiz Website. All rights reserved.</p>
  </footer>
</body>
</html>