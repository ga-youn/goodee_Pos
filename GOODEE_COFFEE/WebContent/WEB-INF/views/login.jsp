<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="김세인">
    <title>GOODEE CAFE-로그인</title>
    <link rel="stylesheet" href="${path}/resources/css/common.css">
    <link rel="stylesheet" href="${path}/resources/css/login.css">
</head>
<body>
    <img src="${path}/resources/images/prevBtn.PNG" alt="이전 화면으로" id="prevBtn">
    <div id="logo"><a href="/index.jsp"><img src="${path}/resources/images/gc_logo1.PNG" alt="구디카페 로고" ></a></div>
    <h2 id="mobileLogin">로그인</h2>
    <!--form-->
    <form action="#" method="get" id="loginFrm" name="loginFrm">
        <h2 id="pcLogin">로그인</h2>
        
        <input type="text" id="userId" name="userId" placeholder="아이디를 입력해주세요">
        <input type="password" id="userPwd" name="userPwd" placeholder="패스워드를 입력해주세요">
        <input type="checkbox" id="userIdSave" name="userIdSave">
        <label for="userIdSave">아이디 저장하기</label>
        <ul id="plusInfo">
            <li><a href="/gc/login/id_find">아이디찾기</a></li>
            <li><a href="/gc/login/pw_find">비밀번호찾기</a></li>
            <li><a href="/gc/staff/register11">회원가입</a></li>
        </ul>
        <div id="clear"></div>
        <input type="submit" value="로그인" id="loginSubmit" name="loginSubmit">
    </form>
    <!--//form-->
    <!--footer-->
    <footer>

    </footer>
    <!--//footer-->
</body>
</html>