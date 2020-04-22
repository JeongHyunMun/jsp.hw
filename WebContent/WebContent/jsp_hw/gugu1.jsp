<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<<<<<<< HEAD
<html> 
<head> 
=======
<html>
<head>
>>>>>>> refs/remotes/origin/master
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	table { border-collapse: collapse; }
	td { padding: 3px; text-align: left; font-weight: bold; width: 85px;}
</style>
</head>
<body>
	<table border = 1>
		<% for (int i = 1; i <= 9; i++){
				out.println(" <tr> ");
				for (int j = 2; j <= 9; j++){
					out.println(" <td> " + j + " x " + i + " = " + (j * i) + " </td> ");
				}
				out.println(" </tr> ");
			}
		%>
	</table>

</body>
</html>