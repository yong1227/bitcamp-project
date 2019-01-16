<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 목록</title>
</head>
<body>
직원 테이블의 내용
<table width="100%" border="1">
<tr>
	<td>이름</td><td>아이디</td><td>이메일</td>
</tr>
<%
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	try{
		String jdbcDriver = "jdbc:apache:commons:dbcp:pooltest";
		String query = "select * from EMP order by EMPNO";
		conn = DriverManager.getConnection(jdbcDriver);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(query);
		while(rs.next()){
%> <tr>
	<td><%= rs.getString("ENAME") %></td>
	<td><%= rs.getString("EMPNO") %></td>
	<td><%= rs.getString("JOB") %></td>
</tr>			
<% 		}
	} finally{
		if(rs != null)try {rs.close();} catch(SQLException ex){}
		if(stmt != null)try{stmt.close();} catch(SQLException ex){}
		if(conn != null)try{conn.close();} catch(SQLException ex){}
	}
%></table>
</body>
</html>