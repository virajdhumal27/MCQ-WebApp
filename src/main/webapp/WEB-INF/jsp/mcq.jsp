<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.viraj.mcq.exchanges.McqResponse"%>
<%@page import="com.viraj.mcq.entity.QuestionsEntity"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MCQ</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Mukta&family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
<style>
    body {
      font-family: 'Poppins', sans-serif;
    box-sizing: border-box;
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
    
     <% McqResponse data = (McqResponse)request.getAttribute("questions");
     List<Integer> correctAns = new ArrayList<>();
     %>
     <h2>Java MCQ's Basic</h2>
     <form action="/attempt" method="post">
     <% int i = 0; %>
     
     <div class="container">
     <%
     for(QuestionsEntity question: data.getQuestions()) { %>
     
     <div>        
        <div class="question">
        <p><%= i+1 %>. <%= question.getQuestionDescription() %></p>
      </div>
         <ul class="options">
         <li>
          <label>
            <input type="radio" id="option1" name="question<%= i%>" value="1">
            <%= question.getOption1() %>
          </label>
        </li>
        <li>
          <label>
            <input type="radio" id="option2" name="question<%= i%>" value="2">
            <%= question.getOption2() %>
          </label>
        </li>
        <li>
          <label>
            <input type="radio" id="option3" name="question<%= i%>" value="3">
            <%= question.getOption3() %>
          </label>
        </li>
        <li>
          <label>
            <input type="radio" id="option4" name="question<%= i%>" value="4">
            <%= question.getOption4() %>
          </label>
        </li>
         </ul>
     </div>
     <hr>
  
	  <% i++;
	  correctAns.add(question.getCorrectOption());
	  }
     
     session.setAttribute("correct_answers", correctAns);
     %>
        <input type="submit" class="submit-btn" value="Submit" />
     </div>
     </form>
     
</body>
</html>