<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="lecture1.form02.*" %>
<% 
Student student = (Student)session.getAttribute("student");
%>
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
  body { font-family: 굴림체; }
  div.container { width: 600px; margin: 20px auto; }
  table { width: 500px; border-collapse: collapse; }
  thead tr { background-color: #eee; }
  td, th { border: 1px solid #aaa; padding: 5px; }
</style>   
</head>
<body> 

<div class="container">

<h1>회원가입 성공</h1>

<table>
  <tr>
    <td>ID</td>
    <td><%= student.getId() %></td>
  </tr>
  <tr>
    <td>이름</td>
    <td><%= student.getStudentNumber() %></td>
  </tr>
  <tr>
    <td>이메일</td>
    <td><%= student.getName() %></td>
  </tr>
  <tr>
    <td>학과</td>
    <td><%= student.getDepartmentId() %></td>
  </tr>
  <tr>
  	<td>학년</td>
  	<td><%= student.getYear() %> </td>
  </tr>
  
</table>

</div>
</body>
</html>
