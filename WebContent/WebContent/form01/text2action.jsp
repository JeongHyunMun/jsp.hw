<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
  body { font-family: 굴림체; }
  div.container { width: 600px; margin: 20px auto; }
  table { width: 500px; border-collapse: collapse; }
  thead tr { background-color: #eee; }
  td, th { border: 1px solid #aaa; padding: 5px; }
</style>
</head>

<body>
<%
String s1 = request.getParameter("number1");
int number1 = Integer.parseInt(s1);
String s2 = request.getParameter("number2");
int number2 = Integer.parseInt(s2);

String cmd = request.getParameter("cmd");
int result = 0;
if (cmd.equals("+")) result = number1 + number2;
else if (cmd.equals("-")) result = number1 - number2;
else if (cmd.equals("*")) result = number1 * number2;
else if (cmd.equals("/")) result = number1 / number2;
%>
  <div class="container">
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
      </tbody>
    </table>
  </div>
</body>
</html>

