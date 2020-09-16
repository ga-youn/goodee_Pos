<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!-- footer -->
<footer>
	<!-- 팝업 될 레이어 --> 
	<div class="receipt-modal"> 
	    <div class="receipt-modal-content"> 
	        <span class="close-btn">&times;</span> 
	        <h1 class="title">영수증 조회</h1> 
	        <form id="receipt_frm" action="#" method="POST"> 
	          <dl>
	          	<dt>결제번호</dt>
	          	<dd>
	          		<input id="receipt_code" type="text" placeholder="입력">
	          	</dd>
	          </dl>
	          <div class="btn_wrap">
	          	<input type="submit" id="submit" value="조회">
	          	<input type="button" id="cancel" value="취소">  
	          </div>
	        </form> 
	    </div> 
	</div>
	
	<div class="breakdown-modal"> 
	    <div class="breakdown-modal-content">
	    <span class="close-button">&times;</span>
	    <h1 class="title">판매내역 조회</h1>
	        <form id="breakdown_frm" action="#" method="POST">   
			    <!-- search -->
			    <table class="searchBox">
			        <caption>조회</caption>
			        <colgroup>
			            <col width="123px">
			            <col width="*">
			        </colgroup>
			        <tbody>
			            <tr>
			                <th>조회기간</th>
			                <td>
			                    <ul class="searchDate">
			                        <li>
			                            <span class="chkbox2">
			                                <input type="radio" name="dateType" id="dateType1" onclick="setSearchDate('0d')"/>
			                                <label for="dateType1">당일</label>
			                            </span>
			                        </li>
			                        <li>
			                            <span class="chkbox2">
			                                <input type="radio" name="dateType" id="dateType2" onclick="setSearchDate('3d')"/>
			                                <label for="dateType2">3일</label>
			                            </span>
			                        </li>
			                        <li>
			                            <span class="chkbox2">
			                                <input type="radio" name="dateType" id="dateType3" onclick="setSearchDate('1w')"/>
			                                <label for="dateType3">1주</label>
			                            </span>
			                        </li>
			                        <li>
			                            <span class="chkbox2">
			                                <input type="radio" name="dateType" id="dateType4" onclick="setSearchDate('2w')"/>
			                                <label for="dateType4">2주</label>
			                            </span>
			                        </li>
			                        <li>
			                            <span class="chkbox2">
			                                <input type="radio" name="dateType" id="dateType5" onclick="setSearchDate('1m')"/>
			                                <label for="dateType5">1개월</label>
			                            </span>
			                        </li>
			                        <li>
			                            <span class="chkbox2">
			                                <input type="radio" name="dateType" id="dateType6" onclick="setSearchDate('3m')"/>
			                                <label for="dateType6">3개월</label>
			                            </span>
			                        </li>
			                        <li>
			                            <span class="chkbox2">
			                                <input type="radio" name="dateType" id="dateType7" onclick="setSearchDate('6m')"/>
			                                <label for="dateType7">6개월</label>
			                            </span>
			                        </li>
			                    </ul>	                    
			                    <div class="clearfix">
			                        <!-- 시작일 -->
			                        <span class="dset">
			                            <input type="text" class="datepicker inpType" name="searchStartDate" id="searchStartDate" >
			                            <a href="#none" class="btncalendar dateclick">달력</a>
			                        </span>
			                        <span class="demi">~</span>
			                        <!-- 종료일 -->
			                        <span class="dset">
			                            <input type="text" class="datepicker inpType" name="searchEndDate" id="searchEndDate" >
			                            <a href="#none" class="btncalendar dateclick">달력</a>
			                        </span>
			                    </div>
			                </td>
			                <td>
			                	<input type="submit" id="search" value="조회">    
			                </td>
			            </tr>
			        <tbody>
			    </table>
			</form>
	    </div> 
	</div>
	<!-- 결제 
	<div class="pay-modal"> 
	    <div class="pay-modal-content"> 
	        <span class="close-btn">&times;</span> 
	        <h1 class="title">결제</h1> 
	        <form id="pay_frm" action="#" method="POST"> 
	          <dl>
	          	<dt>카드</dt>
	          	<dd>
	          		<input id="card_pay" type="text" placeholder="입력">
	          	</dd>
	          </dl>
	          <dl>
	          	<dt>현금</dt>
	          	<dd>
	          		<input id="cash_pay" type="text" placeholder="입력">
	          	</dd>
	          </dl>
	          <div class="btn_wrap">
	          	<input type="submit" class="submit" value="결제">
	          	<input type="button" class="cancel" value="취소">  
	          </div>
	        </form> 
	    </div> 
	</div>
	-->
<!-- // -->
</footer>
<!-- //footer -->
</body>
<script src="${path}/resources/js/open.js"></script>
<script src="${path}/resources/js/receipt.js"></script>
<script src="${path}/resources/js/breakdown.js"></script>
<script src="${path}/resources/js/payment.js"></script>
</html>