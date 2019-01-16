<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<title>PROJECT</title>
    <style>
       	ul li{
	        display: inline-block;
	        width: 155px;
    	}
    	a{
    	text-decoration: none;
    	color : black;
    	}
    </style>
</head>
<body>
    <h1> Open Project</h1>
<!--    회원가입 메뉴 만들기-->
<!--   한줄-->
    <hr>
    <form action="">
<!--        회원가입 목록 만들기-->
       <ul>
            <li><a href="${pageContext.request.contextPath}/memberRegForm.jsp">회원가입</a></li>
            <li><a href="${pageContext.request.contextPath}/memberLogout.jsp">로그아웃</a></li>
            <li><a href="${pageContext.request.contextPath}/memberMypage.jsp">회원마이페이지(회원)</a></li>
            <li><a href="${pageContext.request.contextPath}/memberList.jsp">회원리스트(회원)</a></li>
            <li>사원리스트</li>
            <li>사원등록</li>
        </ul>
    </form>
<!--    한줄-->
    <hr>
    <h2>회원 리스트</h2>
    <table border="1">
       <tr>
        <th>회원번호</th>
        <th>회원 아이디(이메일)</th>
        <th>비밀번호</th>
        <th>회원 사진</th>
        <th>회원 이름</th>
        <th>회원가입일</th>
        <th>관리</th>
        </tr>
    </table>
</body>
</html>