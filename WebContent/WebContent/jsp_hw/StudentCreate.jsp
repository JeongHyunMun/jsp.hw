<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="lecture1.form02.*" %> 
<% 
String id; 
String studentNumber;  
String name; 
String departmentId;
String year;
int department = 0;
String 에러메시지 = null;
request.setCharacterEncoding("UTF-8");
if (request.getMethod().equals("POST")) {
    id = request.getParameter("id");
    studentNumber = request.getParameter("studentNumber");
    name =  request.getParameter("name");
    departmentId = request.getParameter("departmentId");
    year = request.getParameter("year");
    departmentId = request.getParameter("department");
    department = Integer.parseInt(departmentId);
    
    if ( id == null  || id.length() == 0 )
		 에러메시지 = "ID를 입력하세요";
    else if (studentNumber == null || studentNumber.length() == 0) 
       	 에러메시지 = "학번을 입력하세요";
    else if (name == null || name.length() == 0) 
                   에러메시지 = "이름을 입력하세요";
    else if ( year == null ||year.length() == 0) 
       	 에러메시지 = "학년를 입력하세요";
    else {
        Student student = new Student(id, studentNumber, name, departmentId, year);
        session.setAttribute("student", student);
        response.sendRedirect("studentCreate_success.jsp");
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
  <h1>학생 등록</h1>
  <div>
    <label>ID</label>
    <input type="text" class="text" name="id" value= "0" />
  </div>
  <div>
    <label>학번</label>
    <input type="text" class="text" name="studentNumber"  />
  </div>
  <div>
    <label>이름</label>
    <input type="text" class="text" name= "name" />
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
  <div>
    <label>학년</label>
    <input type="text" class="text" name="year" value= "0" />
  </div>
  <button type="submit" class="btn">
      <i class="fas fa-user-plus"></i> 학생 등록
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

