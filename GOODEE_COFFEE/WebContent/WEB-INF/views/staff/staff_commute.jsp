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
    <title>직원-출퇴근</title>
    <script src="https://kit.fontawesome.com/cccee664d4.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/commute.css">
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
            <p id="login_name"><span>이름</span> 님</p>
            <p id="login_date">영업일자 :<span>날짜</span></p>
        </div>
    </header>
   <%@ include file="../gnb_admin.jsp"%>
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
  
    <form action="#" name="commuteFrm" id="commuteFrm">
        <h1>출퇴근</h1>
        <!--left_col-->
        <div id="left_col">
            <div id="sysdate" name="sysdate">현재날짜 표시되는곳</div>
            <p class="inputBox">
                <label for="staffNum">▶사원번호</label>
                <input type="text" id="staffNum" name="staffNum">
                <button id="inquiry" name="inquiry">조&nbsp;회</button>
            </p>
            <p class="inputBox">
                <label for="staffName">▶사원명</label>
                <input type="text" id="staffName" name="staffName">
            </p>
            <p class="inputBox">
                <label for="attendTime">▶출근시간</label>
                <input type="time" id="attendTime" name="attendTime">
            </p>
            <p class="inputBox">
                <label for="leaveTime">▶퇴근시간</label>
                <input type="time" id="leaveTime" name="leaveTime">
            </p>
        </div>
        <!--//left_col-->
        <!--right_col-->
        <div id="right_col">

            <!--keypad-->
            <div id="keypad">
            <div class="keypad_7" name="keypad_7">7</div>
            <div class="keypad_8" name="keypad_8">8</div>
            <div class="keypad_9" name="keypad_9">9</div>
            <div class="keypad_4" name="keypad_4">4</div>
            <div class="keypad_5" name="keypad_5">5</div>
            <div class="keypad_6" name="keypad_6">6</div>
            <div class="keypad_1" name="keypad_1">1</div>
            <div class="keypad_2" name="keypad_2">2</div>
            <div class="keypad_3" name="keypad_3">3</div>
            <div class="keypad_0" name="keypad_0">0</div>
            <div class="keypad_00" name="keypad_00">00</div>
            <div class="keypad_clear" name="keypad_clear">clear</div>
            <div class="keypad_back" name="keypad_back">←</div>
            <div id="keypad_enter" class="keypad_enter" name="keypad_enter">Enter</div>
        </div>
        <!--//keypad-->
        <button id="regiBtn" name="regiBtn">등&nbsp;&nbsp;록</button>
    </div>
    <!--//right_col-->
    <div id="msg">메세지 표시되는곳 : 출근등록 완료</div>
    </form>
</body>

</html>