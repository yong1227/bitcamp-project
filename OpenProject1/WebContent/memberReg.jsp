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
<!--    회원가입 제목-->
    <h2> 회원가입</h2>
    <hr>
    <h4>회원가입 성공!!</h4>
<!--    로그인 하러가기 링크-->
    <a href="/memberLoginForm.jsp">로그인 하러가기</a>
</body>
</html>