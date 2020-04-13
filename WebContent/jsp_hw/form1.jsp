<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form1</title>
</head>
<body>
<%
String s2 = request.getParameter("number");
int number = (s2 == null) ? 0 : (Integer.parseInt(s2)+1);

%>
   <div class="container">
      <form action = "form1.jsp" method = "get">
         <div>
            <input type = "text"  name = "number"  value = "<%= number%>">
            <button type = "submit" >++</button>
         </div>
      </form>
   </div> 
</body>
</html>