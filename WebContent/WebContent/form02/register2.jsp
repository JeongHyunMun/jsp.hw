<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="lecture1.form02.*" %>
<%
String userid = "";
String name = "";
String password1;
String password2; 
String email = "";
int department = 0;
String 에러메시지 = null;
request.setCharacterEncoding("UTF-8");
if (request.getMethod().equals("POST")) {
    userid = request.getParameter("userid");
    name =  request.getParameter("name");
    password1 = request.getParameter("password1");
    password2 = request.getParameter("password2");
    email = request.getParameter("email");
    String s = request.getParameter("department");
    department = Integer.parseInt(s);
    
    if (userid == null || userid.length() == 0) 
        에러메시지 = "사용자 아이디를 입력하세요";
    else if (name == null || name.length() == 0) 
        에러메시지 = "이름을 입력하세요";
    else if (password1 == null || password1.length() == 0) 
        에러메시지 = "비밀번호1을 입력하세요";
    else if (password2 == null || password2.length() == 0) 
        에러메시지 = "비밀번호2를 입력하세요";
    else if (password1.equals(password2) == false)
        에러메시지 = "비밀번호 불일치";
    else if (email == null || email.length() == 0) 
        에러메시지 = "이메일 주소를 입력하세요";
    else {
        User user = new User(userid, name, password1, email, department);
        session.setAttribute("user", user);
        response.sendRedirect("register2_success.jsp");
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
  form, form div { margin-bottom: 20px; }
  label { display: block; }   
  input.text { width: 200px; padding: 5px; }
  select { width: 150px; padding: 5px; }
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
  <h1>회원가입</h1>
  <div>
    <label>사용자 아이디</label>
    <input type="text" class="text" name="userid" value="<%= userid %>" />
  </div>
  <div>
    <label>이름</label>
    <input type="text" class="text" name="name" value="<%= name %>" />
  </div>
  <div>
    <label>비밀번호1</label>
    <input type="password" class="text" name="password1" />
  </div>
  <div>
    <label>비밀번호2</label>
    <input type="password" class="text" name="password2" />
  </div>
  <div>
    <label>이메일</label>
    <input type="email" class="text" name="email" value="<%= email %>" />
  </div>
  <div>
    <label>학과</label>
    <select class="form-control" name="department">
      <option value="1" <%= department == 1 ? "selected" : "" %>>소프트웨어공학과</option>
      <option value="2" <%= department == 2 ? "selected" : "" %>>컴퓨터공학과</option>
      <option value="3" <%= department == 3 ? "selected" : "" %>>정보통신공학과</option>
      <option value="4" <%= department == 4 ? "selected" : "" %>>글로컬IT공학과</option>
    </select>
  </div>
  <button type="submit" class="btn">
      <i class="fas fa-user-plus"></i> 회원가입
  </button>
</form>

<% if (에러메시지 != null) { %>
  <div class="error">
    회원가입 실패: <%= 에러메시지 %>
  </div>
<% } %>
</div>
</body>
</html>

