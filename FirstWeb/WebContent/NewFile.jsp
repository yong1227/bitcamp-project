<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String path = "/file/notice/notice.txt";
	String realPath = application.getRealPath(path);
%>

<%=realPath  %>
</body>
</html>