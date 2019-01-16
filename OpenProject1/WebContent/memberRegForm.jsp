<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<title>PROJECT</title>
    <style>
        #ul li{
            display: inline-block;
            width: 155px;
        }
        #ul2 li span{
            display: inline-block;
            width: 150px;
        }
        #btn1{
            margin-left: 190px;
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

<!--        회원가입 목록 만들기-->
       <ul id="ul">
            <li><a href="${pageContext.request.contextPath}/memberRegForm.jsp">회원가입</a></li>
            <li><a href="${pageContext.request.contextPath}/memberLogout.jsp">로그아웃</a></li>
            <li><a href="${pageContext.request.contextPath}/memberMypage.jsp">회원마이페이지(회원)</a></li>
            <li><a href="${pageContext.request.contextPath}/memberList.jsp">회원리스트(회원)</a></li>
            <li>사원리스트</li>
            <li>사원등록</li>
        </ul>
 
<!--    한줄-->
    <hr>
<!--    회원가입 제목-->
    <h2> 회원 가입 </h2>
    <hr>
<!--    회원정보 입력받기-->
    <form action="">
        <ul id="ul2">
            <li><span>아이디(이메일)</span><input type="text"></li>
            <li><span>비밀번호</span><input type="text"></li>
            <li><span>이름</span><input type="text"></li>
            <li><span>사진</span><input type="file" value="파일선택"></li>
        </ul>
<!--        등록 버튼-->
        <input type="submit" value="등록" id="btn1">
    </form>
</body>
</html>