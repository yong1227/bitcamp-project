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
<title>회원 목록</title>
</head>
<body>

MEMBER 테이블의 내용
<table width="100%" border="1">
<tr>
	<td>이름</td><td>아이디</td><td>이메일</td><td>고용날짜</td><td>급여</td><td>커미션</td><td>부서번호</td>
</tr>
<%
	//1.JDBC 드라이버 로딩
	//Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	try{
		String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbUser = "student";
		String dbPass = "1234";
		
		String query = "select * from emp order by empno";
		
		//2. 데이터베이스 커넥션 생성
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		//3. Statement 생성
		stmt = conn.createStatement();
		
		//4. 쿼리 실행
		rs = stmt.executeQuery(query);
		
		//5. 쿼리 실행 결과 출력
		while(rs.next()){
%>
<tr>
	<td><%= rs.getString("ENAME") %></td>
	<td><%= rs.getString("EMPNO") %></td>
	<td><%= rs.getString("JOB") %></td>	
	<td><%= rs.getString("HIREDATE") %></td>
	<td><%= rs.getString("SAL") %></td>
	<td><%= rs.getString("COMM") %></td>
	<td><%= rs.getString("DEPTNO") %></td>
</tr>			
<%
		}
	}catch(SQLException ex){
		out.println(ex.getMessage());
		ex.printStackTrace();
	}finally{
		//6. 사용한 Statement 종료
		if(rs != null) try{ rs.close();} catch(SQLException ex){}
		if(stmt != null) try{ stmt.close();} catch(SQLException ex){}
		
		//7. 커넥션 종료
		if(conn != null)try{conn.close();} catch(SQLException ex){}
	}
	%>
</table>
</body>
</html>