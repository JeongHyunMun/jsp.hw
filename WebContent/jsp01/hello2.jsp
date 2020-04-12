<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

<% 
    for (int i=8; i <= 30; i+=2) {
        out.println("<div style='font-size: " + i + "pt;'>");  
        out.println("    안녕 JSP! " + i + "pt");
        out.println("</div>");
    }
%>
</body>
</html>
