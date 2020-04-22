<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
  div.container { width: 400px; margin: 20px auto; }
  div.radio label { margin-right: 20px; }
  input {  }
  select { width: 50px; padding: 4px; }
  button { padding: 0.4em 2em; margin-top: 10px; }
  table { width: 300px; border-collapse: collapse; }
  thead tr { background-color: #eee; }
  td, th { border: 1px solid #aaa; padding: 5px; }
</style>
</head>
<body>
<%
String c1 = request.getParameter("checkbox1");
String 동의_checked = "true".equals(c1) ? "checked" : "";

String r1 = request.getParameter("radio1");
String 남_checked = "남".equals(r1) ? "checked" : "";
String 여_checked = "여".equals(r1) ? "checked" : "";

String r2 = request.getParameter("radio2");
String A_checked = "A".equals(r2) ? "checked" : "";
String B_checked = "B".equals(r2) ? "checked" : "";
String AB_checked = "AB".equals(r2) ? "checked" : "";
String O_checked = "O".equals(r2) ? "checked" : "";
%>
<div class="container">

  <form method="get">
    <h3>checkbox</h3>
    <div>
      <label>
        <input type="checkbox" name="checkbox1" value="true" <%= 동의_checked %> /> 
        동의하십니까?
      </label>
    </div>
    <hr />

    <h3>radio - 성별은?</h3>
    <div class="radio">
      <label><input type="radio" name="radio1" value="남" <%= 남_checked %> /> 남자</label>
      <label><input type="radio" name="radio1" value="여" <%= 여_checked %> /> 여자</label>
    </div>      
    <hr />

    <h3>radio - 혈액형은?</h3>
    <div class="radio">
      <label><input type="radio" name="radio2" value="A" <%= A_checked %> /> A형</label>
      <label><input type="radio" name="radio2" value="B" <%= B_checked %> /> B형</label>
      <label><input type="radio" name="radio2" value="AB" <%= AB_checked %> /> AB형</label>
      <label><input type="radio" name="radio2" value="O" <%= O_checked %> /> O형</label>
    </div>
    <div>
      <button type="submit">확인</button>
    </div>
  </form>
  <hr />
  
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
        <td>checkbox1</td>
        <td><%= c1 %></td>
      </tr>
      <tr>
        <td>radio1</td>
        <td><%= r1 %></td>
      </tr>
      <tr>
        <td>radio2</td>
        <td><%= r2 %></td>
      </tr>
    </tbody>
  </table>    
</div>
</body>
</html>


