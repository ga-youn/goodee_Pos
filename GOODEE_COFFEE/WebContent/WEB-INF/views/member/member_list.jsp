<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="김세인">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>회원리스트</title>
    <script src="https://kit.fontawesome.com/cccee664d4.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/member.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/prefixfree.min.js"></script>
   <script>
      $(function(){$(document).attr("title","GOODEE COFFEE | "+$('#title').html());});
   </script>
</head>
<body>
     <!-- 헤더 -->
   <header>
        <div id="header_wrapper">
            <div id="logo_image"><!-- <img src="#"> --></div>
            <h1 id="title">매출조회</h1>
            <p id="login_name"><span>이름</span> 님</p>
            <p id="login_date">영업일자 :<span>날짜</span></p>
        </div>
    </header>
   <%@ include file="../gnb_staff.jsp"%>
   <script type="text/javascript">
         $(document).ready(function() {
            printTime();
            setInterval(printTime, 1000);   
         });
         // TODO 보여주는 시간을 서버 시간으로 고칠 것(처음에 한번만 서버 시간을 가져와서 셋팅)
         function printTime() {
            var d = new Date();
            var currentDate = d.getFullYear() + "년 " + ( d.getMonth() + 1 ) + "월 " + d.getDate() + "일"; 
            var currentTime = d.getHours() + "시 " + d.getMinutes() + "분 " + d.getSeconds() + "초"; 
            
            $("#login_date").find("span").html(currentDate+currentTime);
         }
         
   </script>
    <div id="memberList">
        <h1>-고객 리스트-</h1>
        <table border="1">
            <tr>
                <th></td>
                <th>순번</th>
                <th>고객번호</th>
                <th>이름</th>
                <th>휴대번호</th>
                <th>결제금액</th>
            </tr>
            <tr>
                <td><input type="checkbox"></td>
                <td>1</td>
                <td>GC-01</td>
                <td>홍길동</td>
                <td>010-1234-5678</td>
                <td>3,500</td>
            </tr>
            <tr>
                <td><input type="checkbox"></td>
                <td>2</td>
                <td>GC-02</td>
                <td>홍길동</td>
                <td>010-1234-5678</td>
                <td>3,500</td>
            </tr>
            <tr>
                <td><input type="checkbox"></td>
                <td>3</td>
                <td>GC-03</td>
                <td>홍길동</td>
                <td>010-1234-5678</td>
                <td>3,500</td>
            </tr>
            <tr>
                <td><input type="checkbox"></td>
                <td>4</td>
                <td>GC-04</td>
                <td>홍길동</td>
                <td>010-1234-5678</td>
                <td>3,500</td>
            </tr>
            <tr>
                <td><input type="checkbox"></td>
                <td>5</td>
                <td>GC-05</td>
                <td>홍길동</td>
                <td>010-1234-5678</td>
                <td>3,500</td>
            </tr>
            <tr>
                <td><input type="checkbox"></td>
                <td>6</td>
                <td>GC-06</td>
                <td>홍길동</td>
                <td>010-1234-5678</td>
                <td>3,500</td>
            </tr>
        </table>
        <p id="page">
            <span>&lt; &nbsp;</span>
            <span>1</span>
            <span>2</span>
            <span>3</span>
            <span>4</span>
            <span>5</span>
            <span>&nbsp; &gt;</span>
        </p>
        <div id="ListbtnBox">
            <a href="${pageContext.request.contextPath}/member/member_withdraw"><button id="movetoWithdraw">삭제</button></a>
            <a href="${pageContext.request.contextPath}/member/member_alterInfo"><button id="movetoAlter">수정</button></a>
            <a href="${pageContext.request.contextPath}/member/member_rigister"><button id="movetoRegi">등록</button></a>
        </div>
    </div>
</body>
</html>