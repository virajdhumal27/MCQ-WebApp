<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Post Questions</title>
</head>
<body>
    <div class="container">
        <form action="/post_questions" method="post">
        <p>Question:
        <input type="text" id="ques_desc" name="ques_desc">
        </p>
        <ul class="options">
         <li>
          <label>
            Option 1: 
            <input type="text" id="option1" name="option1">
          </label>
        </li>
        <li>
          <label>
          Option 2:
            <input type="text" id="option2" name="option2">
          </label>
        </li>
        <li>
          <label>
            Option 3:
            <input type="text" id="option3" name="option3">
          </label>
        </li>
        <li>
          <label>
            Option 4:
            <input type="text" id="option4" name="option4">
          </label>
        </li>
        <li>
          <label>
            Correct:
            <input type="text" id="correct" name="correct">
          </label>
        </li>
         </ul>
         <input type="submit" class="submit-btn" value="Submit" />
        </form>
    </div>
</body>
</html>