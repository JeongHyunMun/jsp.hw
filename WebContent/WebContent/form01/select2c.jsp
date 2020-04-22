<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
  div.container { width: 400px; margin: 20px auto; }
  form div { margin-bottom: 10px; }
  label { display: inline-block; width: 70px; text-align: right; }
  input { width: 200px; padding: 4px; }
  select { width: 50px; padding: 4px; }
  button { padding: 0.4em 2em; margin-top: 10px; }
  table { width: 300px; border-collapse: collapse; }
  thead tr { background-color: #eee; }
  td, th { border: 1px solid #aaa; padding: 5px; }
</style>
</head>

<body>
<%
String s1 = request.getParameter("number1");
int number1 = (s1 == null) ? 0 : Integer.parseInt(s1);
String s2 = request.getParameter("number2");
int number2 = (s2 == null) ? 0 : Integer.parseInt(s2);

String cmd = request.getParameter("cmd");
int result = 0;
if ("+".equals(cmd)) result = number1 + number2;
else if ("-".equals(cmd)) result = number1 - number2;
else if ("*".equals(cmd)) result = number1 * number2;
else if ("/".equals(cmd)) result = number1 / number2;
%>

 <div class="container">
    <form method="get">
      <h1>select 02</h1>

      <div>
        <label>number1:</label> 
        <input type="text" name="number1" value="<%= number1 %>" />
      </div>
      
      <div>
          <label>operator:</label>
          <select name="cmd">
              <option value="+" <%= "+".equals(cmd) ? "selected" : "" %>>+</option>
              <option value="-" <%= "-".equals(cmd) ? "selected" : "" %>>-</option>
              <option value="*" <%= "*".equals(cmd) ? "selected" : "" %>>*</option>
              <option value="/" <%= "/".equals(cmd) ? "selected" : "" %>>/</option>
          </select>
      </div>      

      <div>
        <label>number2:</label> 
        <input type="text" name="number2" value="<%= number2 %>" />
      </div>

      <div>
        <button type="submit">확인</button>
      </div>
    </form>
    
    <h1>request parameter</h1>    
    <table>
      <thead>
        <tr>
          <th>Parameter Name</th>
          <th>Parameter Value</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>number1</td>
          <td><%= number1 %></td>
        </tr>
        <tr>
          <td>number2</td>
          <td><%= number2 %></td>
        </tr>
        <tr>
          <td>cmd</td>
          <td><%= cmd %></td>
        </tr>
        <tr>
          <td>method</td>
          <td><%= request.getMethod() %></td>
        </tr>
        <tr>
          <td>계산결과</td>
          <td><%= result %></td>
        </tr>
        <tr>
            <td>시각</td>
            <td><%= new SimpleDateFormat("HH:mm:ss").format(new Date()) %></td>
        </tr>            
      </tbody>
    </table>    
  </div>
</body>
</html>