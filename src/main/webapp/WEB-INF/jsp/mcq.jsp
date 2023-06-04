<%@page import="com.viraj.mcq.exchanges.McqResponse"%>
<%@page import="com.viraj.mcq.entity.QuestionsEntity"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MCQ</title>
<style>
    body {
      font-family: Arial, sans-serif;
      background-color: #e9ecef;
      margin: 0;
      padding: 20px;
    }

    .container {
      max-width: 600px;
      margin: 0 auto;
      background-color: #f8f9fa;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h2 {
      text-align: center;
      color: #333;
    }

    .question {
      margin-bottom: 20px;
    }

    .options {
      list-style-type: none;
      padding: 0;
    }

    .options li {
      margin-bottom: 10px;
    }

    .options label {
      display: block;
      padding: 10px;
      background-color: #fff;
      border-radius: 3px;
      cursor: pointer;
    }

    .options label:hover {
      background-color: #e2e6ea;
    }

    .submit-btn {
      display: block;
      width: 100%;
      padding: 10px;
      background-color: #17a2b8;
      color: #fff;
      border: none;
      border-radius: 3px;
      cursor: pointer;
    }

    .submit-btn:hover {
      background-color: #138496;
    }
  </style>
</head>
<body>

    <!--
    <h1>MCQ Page</h1>
    
     <% McqResponse data = (McqResponse)request.getAttribute("questions"); %>
     
     <form action="/attempt" method="post">
     <% int i = 1;
     
     for(QuestionsEntity question: data.getQuestions()) { %>
        
        <div>        
	        <label><%= i %>. <%= question.getQuestionDescription() %></label><br/>
	        <input type="radio" name="question<%= i%>" value="1" /><%= question.getOption1() %><br/>
	        <input type="radio" name="question<%= i%>" value="2" /><%= question.getOption2() %><br/>
	        <input type="radio" name="question<%= i%>" value="3" /><%= question.getOption3() %><br/>
	        <input type="radio" name="question<%= i%>" value="4" /><%= question.getOption4() %><br/>
        </div><br/><br/>
     
     <% i++;
     }
     %>
     
     <input type="submit" value="Submit" />
     </form>
     -->
     
     <c:forEach items="${questions}" var="mcq">
    <div class="container">
      <h2>Sample MCQ Question</h2>
      <div class="question">
        <p>${mcq.question}</p>
      </div>
      <ul class="options">
        <li>
          <label for="option1">
            <input type="radio" id="option1" name="answer" value="option1">
            ${mcq.option1}
          </label>
        </li>
        <li>
          <label for="option2">
            <input type="radio" id="option2" name="answer" value="option2">
            ${mcq.option2}
          </label>
        </li>
        <li>
          <label for="option3">
            <input type="radio" id="option3" name="answer" value="option3">
            ${mcq.option3}
          </label>
        </li>
        <li>
          <label for="option4">
            <input type="radio" id="option4" name="answer" value="option4">
            ${mcq.option4}
          </label>
        </li>
      </ul>
      <button class="submit-btn" type="submit">Submit Answer</button>
    </div>
  </c:forEach>
     
</body>
</html>