<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%
String userid = (String)session.getAttribute("userid");
boolean autologin = (boolean)session.getAttribute("autologin");
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

<h1>로그인 성공</h1>

<table>
  <tr>
    <td>사용자 아이디</td>
    <td><%= userid %></td>
  </tr>
  <tr>
    <td>자동 로그인</td>
    <td><%= autologin %></td>
  </tr>
</table>

</div>
</body>
</html>

