<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8">
<style type="text/css">
div {	margin: 10px auto;}
select { width: 60px;	padding	4px;}
input {	width: 130px;	padding	4px;}
button { width: 80px; }
</style>
</head>
<%
	String cmd = request.getParameter("cmd");
	if ("one".equals(cmd))
		cmd = "one";
	else if ("two".equals(cmd))
		cmd = "two";
	else if ("three".equals(cmd))
		cmd = "three";
	else
		cmd = "one";
%>

<body>
	<div>
	<form action = "form2.jsp" method="get">
		<select name="cmd">
			<option value="one" <%="one".equals(cmd) ? "selected" : ""%>>one</option>
			<option value="two" <%="two".equals(cmd) ? "selected" : ""%>>two</option>
			<option value="three" <%="three".equals(cmd) ? "selected" : ""%>>three</option>
		</select>
	</div>

	<div>
		<input type="text" value="<%=cmd%>">
	</div>

	<div>
		<button type="submit">Ok</button>
	</div>

</body>
</html>