<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
    table { border-collapse: collapse; }
    td { padding: 5px; border: solid 1px gray; }
</style>
</head>
<body>

<%
    String s1 = "hello world";
    String s2 = " JSP!";
%>

<table>
    <tr>
        <td><% out.print(s1); %></td>
        <td><%= s1 %></td>
    </tr>
    <tr>
        <td><% out.print(s1.toUpperCase()); %></td>
        <td><%= s1.toUpperCase() %></td>
    </tr>
    <tr>
        <td><% out.print(Math.PI); %></td>
        <td><%= Math.PI %></td>
    </tr>
    <tr>
        <td><% out.print(s1 + s2); %></td>
        <td><%= s1 + s2 %></td>
    </tr>
</table>

</body>
</html>
