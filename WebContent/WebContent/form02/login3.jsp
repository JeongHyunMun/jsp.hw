<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%
String userid = "";
String password;
boolean autologin = false;
String 에러메시지 = null;
if (request.getMethod().equals("POST")) {
    userid = request.getParameter("userid");
    password = request.getParameter("password");
    autologin = (request.getParameter("autologin") != null);
    
    if (userid == null || userid.length() == 0) 
        에러메시지 = "사용자 아이디를 입력하세요";
    else if (password == null || password.length() == 0) 
        에러메시지 = "비밀번호를 입력하세요";
    else if (userid.equals(password) == false)
        에러메시지 = "비밀번호 불일치";
    else {
        session.setAttribute("userid", userid);
        session.setAttribute("autologin", autologin);
        response.sendRedirect("login_success.jsp");
        return;
    }
}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="https://kit.fontawesome.com/68abb170e0.js" crossorigin="anonymous"></script>
<style>
  body { font-family: 굴림체; font-size: 10pt; }
  div.container { width: 400px; margin: 20px auto; }
  form div { margin-bottom: 20px; }
  label { display: block; }   
  input.text { width: 200px; padding: 5px; }
  .btn { padding: 0.7em 2em; border: 1px solid #aaa; border-radius: 4px; 
         background: linear-gradient(#fff, #ddd); color: black;       
         font-family: 굴림체; font-size: 10pt; line-height: 1em;   
         text-decoration: none; cursor: pointer; display: inline-block; }
  .btn:active {
      -ms-transform: translateY(2px);
      -webkit-transform: translateY(2px);
      transform: translateY(2px);
      background: #ccc;  }
   hr { margin-top: 80px; }
   div.info { margin: 10px; padding: 10px 20px; background-color: #dff; border: 1px solid #8ff; }
   div.error { margin: 10px; padding: 10px 20px; background-color: #fdd; border: 1px solid #faa; }
</style>
</head>
<body>

<div class="container">

  <form method="post">
    <h1>로그인</h1>
    <div>
      <label>아이디</label>
      <input type="text" class="text" name="userid" value="<%= userid %>" />
    </div>
    <div>
      <label>비밀번호</label>
      <input type="password" class="text" name="password" />
    </div>
    <div class="checkbox">
      <label>
        <input type="checkbox" name="autologin" <%= autologin ? "checked" : "" %> /> 자동 로그인
      </label>
    </div>
    <button type="submit" class="btn">
      <i class="fas fa-sign-in-alt"></i> 로그인
    </button>
    <a href="register1.jsp" class="btn">
      <i class="fas fa-user-plus"></i> 회원가입
    </a>
  </form>

<hr />
<div class="info">
    현재시각: <%= new SimpleDateFormat("HH:mm:ss").format(new Date()) %>
</div>

<% if (에러메시지 != null) { %>
  <div class="error">
    로그인 실패: <%= 에러메시지 %>
  </div>
<% } %>
</div>
</body>
</html>


