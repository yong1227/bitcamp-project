<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); 

String memberID = request.getParameter("memberID");
String name = request.getParameter("name");

int updateCount = 0;

Class.forName("oracle.jdbc.driver.OracleDriver");

Connection conn = null;
Statement stmt = null;

try{
	String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbUser = "student";
	String dbPass = "1234";
	String query = "update emp set ENAME = '"+name+"'"+"where EMPNO = " + memberID+"";
	conn = DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
	stmt = conn.createStatement();
	updateCount = stmt.executeUpdate(query);
}finally{
	if(stmt != null)try{stmt.close();} catch (SQLException ex){}
	if(conn != null)try{conn.close();} catch (SQLException ex){}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이름 변경</title>
</head>
<body>
<% if(updateCount > 0) {%>
<%= memberID %>의 이름을 <%= name %>(으)로 변경
<% } else{ %>
<%= memberID %>아이디가 존재하지 않음
<% } %>
</body>
</html>