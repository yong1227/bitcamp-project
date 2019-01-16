<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
int memberID = Integer.parseInt(request.getParameter("memberID"));
int sal = Integer.parseInt(request.getParameter("sal"));
String name = request.getParameter("name");
String job = request.getParameter("job");

//드라이브 연결
Class.forName("oracle.jdbc.driver.OracleDriver");

Connection conn = null;
PreparedStatement pstmt = null;

try{
	String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbUser = "student";
	String dbPass = "1234";
	
conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
pstmt = conn.prepareStatement("insert into EMP(empno, sal, ename, job) values(?,?,?,?)");

pstmt.setInt(1, memberID);
pstmt.setInt(2, sal);
pstmt.setString(3, name);
pstmt.setString(4, job);

pstmt.executeUpdate();

}finally{
	if(pstmt != null) try {pstmt.close();} catch(SQLException ex){}
	if(conn != null) try {conn.close();} catch(SQLException ex){}
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삽입</title>
</head>
<body>
MEMBER 테이블에 새로운 레코드를 삽입했습니다.
</body>
</html>