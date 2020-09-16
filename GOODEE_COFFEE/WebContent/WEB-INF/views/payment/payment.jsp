<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@ include file="./payment_header.jsp" %>

    <!-- main -->
    <div id="display_wrap">
        <div id="left">
            <div id="tab_kind">
               <div class="tab_wrap">
                   <div class="tab-link current" data-tab="coffee_menu"><input type="button" value="Coffee"></div>
                   <div class="tab-link" data-tab="beverage_menu"><input type="button" value="Beverage"></div>
                   <div class="tab-link" data-tab="tea_menu"><input type="button" value="Tea"></div>
                   <div class="tab-link" data-tab="ade_menu"><input type="button" value="Ade"></div>
                   <div class="tab-link" data-tab="shake_menu"><input type="button" value="Shake"></div>
                   <div class="tab-link" data-tab="bakery_menu"><input type="button" value="Bakery"></div>
                    <div class="tab-link" data-tab="bakery_menu"><input type="button" value="빈슬롯"></div>
               </div>
            </div>
            <section id="coffee_menu" class="tab-content current">
                <nav>
                    <ul id="listofproduct">
                    	<c:forEach items="${coffeeMenu}" var="coffeeMenu">
	                        <li>
	                            <button type="button" class="menu-item">
	                                <span class="menu_name">${coffeeMenu.menu_name}</span>
	                                <p class="menu_price">${coffeeMenu.price}</p>원
	                            </button>
	                        </li>
                        </c:forEach>
                    </ul>
                </nav>
            </section>
            <section id="beverage_menu" class="tab-content">
                <nav>
                    <ul id="listofproduct">
                    	<c:forEach items="${beverageMenu}" var="beverageMenu">
                        <li>
                            <button type="button" class="menu-item">
                                <span class="menu_name">${beverageMenu.menu_name}</span>
                                <p class="menu_price">${beverageMenu.price}</p>원
                            </button>
                        </li>
                  		</c:forEach>
                    </ul>
                </nav>
            </section>
            <section id="tea_menu" class="tab-content">
                <nav>
                    <ul id="listofproduct">
                    	<c:forEach items="${teaMenu}" var="teaMenu">
                        <li>
                            <button>
                                <span class="menu_name">${teaMenu.menu_name}</span>
                                <p class="menu_price">${teaMenu.price}</p>원
                            </button>
                        </li>
                        </c:forEach>
                    </ul>
                </nav>
            </section>
            <section id="ade_menu" class="tab-content">
                <nav>
                    <ul id="listofproduct">
                    	<c:forEach items="${adeMenu}" var="adeMenu">
                        <li>
                            <button>
                                <span class="menu_name">${adeMenu.menu_name}</span>
                                <p class="menu_price">${adeMenu.price}</p>원
                            </button>
                        </li>
                        </c:forEach>
                    </ul>
                </nav>
            </section>
            <section id="shake_menu" class="tab-content">
                <nav>
                    <ul id="listofproduct">
                    	<c:forEach items="${shakeMenu}" var="shakeMenu">
	                        <li>
	                            <button>
	                                <span class="menu_name">${shakeMenu.menu_name}</span>
	                                <p class="menu_price">${shakeMenu.price}</p>원
	                            </button>
	                        </li>
  						</c:forEach>
                    </ul>
                </nav>
            </section>
            <section id="bakery_menu" class="tab-content">
                <nav>
                    <ul id="listofproduct">
                    	<c:forEach items="${bakeryMenu}" var="bakeryMenu">
                        <li>
                            <button>
                                <span class="menu_name">${bakeryMenu.menu_name}</span>
                                <p class="menu_price">${bakeryMenu.price}</p>원
                            </button>
                        </li>
       					</c:forEach>
                    </ul>
                </nav>
            </section>
            <br>
            <div id="manage_btn">
                <div class="main_btn">
                    <div class="top">
                        <nav>
                            <ul>
                                <li class="reset"><input type="button" id="deleteAllItemsBtn"value="초기화"></li>
                                <li><input type="button" value="영수증 조회" class="receipt_btn"></li>
                                <li><input type="button" value="판매내역" class="breakdown_btn"></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="bottom">
                        <nav>
                            <ul>
                                <li><input type="button" value="결제취소"></li>
                                <li><input type="button" value="회원조회"></li>
                                <li><input type="button" value="결제" class="payment_btn"></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="aside_btn">
                    <input type="button" value="보류">
                </div>
            </div>
        </div>
        <div id="right">
            <div class="selected_menu">
                <table id="order_table">
                	<thead>
	                    <tr>
	                        <th>상품이름</th>
	                        <th>수량</th>
	                        <th>정가</th>
	                        <th>합계</th>
	                        <th>삭제</th>
	                    </tr>
                    </thead>
                 
                    <tbody class="added_area">
	                    <!-- 데이터 추가될 곳 -->
                    </tbody>
	     
                </table>
            </div>
            <div class="payment">
                <div class="total_money">
                    <p>총 합계 :<span class="sum">0</span>원</p>
                    <p>포인트사용 :<span class="point">0</span> 원</p>
                </div>
                <hr>
                <div class="calc_money">
                    <p>결제가격 :<span>0</span>원</p>
                </div>
            </div>
        </div>
    </div>
    <!-- //main -->
    <script>
	$(document).ready(function(){
 		
 		//상품 클릭
 		$("#listofproduct li").on("click", function(){
 				
 			  var m_name = $(this).find('.menu_name').text();
 		      var m_price = $(this).find('.menu_price').text();
 		      var flag = 0;
 		      $("#order_table .added_area tr").each(function() {
	 		        if ($(this).find("td").eq(0).text() == m_name) {//같은 이름이 있으면
	 		          var qty = $(this).find("td").eq(1).text();
	 		          var temp = parseInt(qty) + 1;
	 		          var unit_price = $(this).find("td").eq(2).text();
	 		          $(this).find("td").eq(1).text(temp);
	 		          $(this).find("td").eq(3).text(parseInt(temp)*parseInt(unit_price));
	 		          flag = 1;
	 		          console.log(flag);
	 		        }
 		      });

 		      if (flag == 0) {//같은이름이 없으면
 		        $('#order_table > tbody:last').append('<tr><td>' + m_name + '</td><td>1</td><td>' + m_price + '</td><td>' + m_price + '</td><td class="intd"><input type="button" class="delete" value="삭제"></td></tr>');
 		      }

 		      var sum = 0;
			  //합계가격
 		      $('#order_table tbody tr').each(function(i) {
 		        var tr = $(this);
 		        var td = tr.children();
 		        var text = td.eq(3).text();

 		        sum += parseInt(text);
 		      });

 		      $(".total_money .sum").text(sum);
 		      
	 		  //결제합계 구하는 코드
	 		  var point = $(".point").text();
	 		  $(".calc_money > p > span").text(sum - point);


 		});
		
 		
		//주문 테이블에 있는 모든 행을 삭제하는 코드
	    $('#deleteAllItemsBtn').click(function() {
	 	      $('#order_table> .added_area').empty();
	 	     $(".total_money .sum").text(0);
	 	      $(".calc_money > p > span").text(0);
	    });
	 });
    </script>
    
<%@ include file="./payment_footer.jsp" %>