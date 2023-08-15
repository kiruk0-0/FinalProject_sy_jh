<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userMyPage</title>


<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
<script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>



<link rel="stylesheet" type="text/css" href="<%=cp%>/css/user_main.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/storeDetail.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/userMyPage.css">


<!-- 배너 스크립트 -->
<script type="text/javascript">
	$(function()
	{
		$(".left_sub_menu").hide();
		$(".has_sub").click(function()
		{
			$(".left_sub_menu").fadeToggle(300);
			if ($('#checkOverlay').val() == "true")
			{
				$('.overlay').css("position", "fixed");
				$('.overlay').css("width", "0%");
				$('.overlay').css("height", "0%");
				$('.overlay').css("background", "rgba(0, 0, 0, 0.7)");
				$('.overlay').css("z-index", "0");
				$('#checkOverlay').attr("value", "false");
			} else
			{
				$('.overlay').css("position", "fixed");
				$('.overlay').css("width", "100%");
				$('.overlay').css("height", "100%");
				$('.overlay').css("background", "rgba(0, 0, 0, 0.7)");
				$('.overlay').css("z-index", "3");
				$('.overlay').css("margin-top", "1.011vh");
				$('#checkOverlay').attr("value", "true");
			}

		});
		// 왼쪽메뉴 드롭다운
		$(".sub_menu ul.small_menu").hide();
		$(".sub_menu ul.big_menu").click(function()
		{
			$("ul", this).slideToggle(300);
		});
		// 외부 클릭 시 좌측 사이드 메뉴 숨기기
		$('.overlay').on('click', function()
		{
			$('.left_sub_menu').fadeOut();
			$('.overlay').css("position", "fixed");
			$('.overlay').css("width", "0%");
			$('.overlay').css("height", "0%");
			$('.overlay').css("background", "rgba(0, 0, 0, 0.7)");
			$('.overlay').css("z-index", "0");
			$('#checkOverlay').attr("value", "false");
		});
	});
	
	$(document).ready(function()
	{
		$("#rvBtn").click(function()
		{
			var userNum = "${user.user_num}";
			window.location.href="usermodify.action?user_num=" +userNum;
		});
	});
	
	
	// 모달 -------------------------------------
	function pwPopupOpen()
	{
		//alert("확인");
		var pw = document.querySelectorAll(".rej_rs_content");
		
		//alert(pw);
		/* 
		for (var i = 0; i < rejRsElements.length; i++) 
		{
            var pwValue = rejRsElements[i].textContent;
            rejRsContentElements[i].textContent = rejRsValue;
        }
		 */
		if (document.all.rvPopup.style.visibility == "hidden")
		{
			//alert("확인");
			document.all.rvPopup.style.visibility = "visible";
			bgLayerOpen();
			//alert("visible check");
			
			var $layerPopupObj = $('#rvPopup');
			
			var left = ($(window).scrollLeft() + ($(window).width() - $layerPopupObj
					.width()) / 2);
			var top = ($(window).scrollTop() + ($(window).height() - $layerPopupObj
					.height()) / 4);
			
			$layerPopupObj.css(
			{
				'left' : left,
				'top' : top,
				'position' : 'absolute'
			});
			$('body').css('position', 'relative').append($layerPopupObj);
			
			return false;
		} 
		else
		{
			document.all.rvPopup.style.visibility = "hidden";
			bgLayerClear();
			return false;
		}
		
	}
	
	function bgLayerOpen()
	{
		if (!$('.bgLayer').length)
		{
			$('<div class="bgLayer"></div>').appendTo($('body'));
		}
		var object = $(".bgLayer");
		var w = $(document).width();
		var h = $(document).height();

		object.css(
		{
			'width' : w,
			'height' : h
		});
		object.fadeIn(500); //생성되는 시간 설정
	}
	
	function bgLayerClear()
	{
		var object = $('.bgLayer');

		if (object.length)
		{
			object.fadeOut(500, function()
			{
				object.remove();

			});
		}
	}
	
	
</script>


</head>
<body>
<form action="search.action" id="userForm" method="post">
	<div class="header">
		<c:import url="header_user.jsp"></c:import>
	</div>

	<div class="container">

		<div class="middle">

			
			<c:import url="sideBar_user.jsp"></c:import>
			
			<!-- 가운데 마이 페이지 영역 -->
			<div class="col-md-8">
				<div class="mypage">
					마이 페이지
					<input type="button" class="myPageBtn" value="개인정보수정" onclick="pwPopupOpen()" style="background-color: #EBC0B7; border-radius: 5px;" >
				</div>
				
				<!-- 개인 정보 영역 -->
				<div class="id">
					
						<div class="id1">
							<div class="title9">닉네임(아이디)</div>
							<div class="sub9">${user.user_nickname }(${user.user_id })</div>
						</div>
						<div class="id1">
							<div class="title9">등급</div>
							<div class="sub9">${user.user_grade }</div>
						</div>
						<div class="id1">
							<div class="title9">포인트</div>
							<div class="sub9">${user.point_sum}pt</div>
						</div>
						<div class="id1">
							<div class="title9">키워드</div>
							<div class="sub9">
								<c:choose>
						            <c:when test="${empty usermp_ukeyword}">
						                키워드가 없습니다.
						            </c:when>
						            <c:otherwise>
						                <c:forEach var="keyword" items="${usermp_ukeyword}">
						                    ${keyword.ukeyword}
						                </c:forEach>
						            </c:otherwise>
						        </c:choose>
							</div>
						</div>
				</div>

				<!-- 개인이 찜한 목록 -->
				<div class="jjimlist">
					<div class="ta">
						<div class="title">찜한가게 목록</div>
						<div class="ado" id="ado1">
							<a href="" class="adoi">더보기+</a>
						</div>
					</div>

					<div class="jimlist">
						<c:choose>
					        <c:when test="${empty likelist}">
					            <div class="jimstore">찜한 가게가 없습니다.</div>
					        </c:when>
					        <c:otherwise>
					            <div class="jimlist">
					                <c:forEach var="store" items="${likelist}">
					                    <div class="jimstore">
					                        <div class="jimstoreImg">
					                            <img src="<%=cp %>/${store.photo_link }" class="jimstImg" alt="...">
					                        </div>
					                        <div class="jimstoreName">
					                            ${store.st_name }
					                        </div>
					                    </div>
					                </c:forEach>
					            </div><!-- .jimlist end -->
					        </c:otherwise>
					    </c:choose>
						
					</div><!-- .jimlist end -->
				</div><!-- .jjimlist end -->


				<!-- 개인이 비교했던 가게목록 -->
				<div class="jjimlist">
					<div class="ta">
						<div class="title">비교했던 가게 목록</div>
						<div class="ado" id="ado2">
							<a href="" class="adoi">더보기+</a>
						</div>
					</div>

					<div class="jimlist">
						<c:choose>
				            <c:when test="${empty comparedlist}">
				                <div class="jimstore">비교한 가게가 없습니다.</div>
				            </c:when>
				            <c:otherwise>
				                <c:forEach var="store" items="${comparedlist}">
				                    <div class="jimstore">
				                        <div class="jimstoreImg">
				                            <img src="<%=cp %>/${store.photo_link }" class="jimstImg" alt="...">
				                        </div>
				                        <div class="jimstoreName">
				                            ${store.st_name }
				                        </div>
				                    </div>
				                </c:forEach>
				            </c:otherwise>
				        </c:choose>
						
					</div><!-- .jimlist end -->
				</div><!-- .jjimlist end -->
				
				
				
				<!-- 개인이 작성한 리뷰목록 -->
				<div class="stalist">
					<div class="ta">
						<div class="title">작성한 리뷰목록</div>
						<div class="ado">
							<a href="" class="adoi">더보기+</a>
						</div>
					</div>

					<div class="list0" id="list0">
						<div class="list1">Num</div>
						<div class="list1">가게명</div>
						<div class="list1">내용</div>
						<div class="list1">리뷰 작성 날짜</div>
					</div>
					<c:choose>
				        <c:when test="${empty rvlist}">
				            <div class="list0">작성한 리뷰가 없습니다.</div>
				        </c:when>
				        <c:otherwise>
				            <c:forEach var="review" items="${rvlist}">
				                <div class="list0">
				                    <div class="list1">${review.rv_num }</div>
				                    <div class="list1">${review.st_num }</div>
				                    <div class="list1">${review.rv_content }</div>
				                    <div class="list1">${review.reg_date }</div>
				                </div>
				            </c:forEach>
				        </c:otherwise>
				    </c:choose>
				</div><!-- .stalist end -->
			</div><!-- .col-md-8 end -->
			
			
			<c:import url="compare_box.jsp"></c:import>
		
		
		
		
			<!-- 비밀번호 확인 모달 -->
			<div id="rvPopup" style="position: absolute; visibility: hidden;">
				<h4>
					<a href="#" class="close" onClick="javascript:pwPopupOpen()">Ⅹ</a>
				</h4>
				<h3>비밀번호 확인</h3>
				<div class="rvPopCont">
					<div class="list">
						<div class="reqRs">
							<h5 style="margin-top: 3vh; margin-left: 5vh;">비밀번호 입력 &nbsp;&nbsp;&nbsp; </h5>
							<!-- <textarea class="rej_rs_content" rows="5" cols="42" id="rvRs" style="resize: none; margin-top: 3vh;" disabled="disabled"></textarea> -->
							<input type="password" class="rej_rs_content" id="rvRs" style="height: 3vh; margin-left: 1vh; margin-top: 3vh; margin-bottom: 2vh;">
						</div>
						
					</div>
					<div class="rv">
						<button id="rvBtn">확인</button>
					</div>
				</div>
				
			</div>
			
			
			
		
		</div><!-- .middle end -->
	</div><!-- container end -->

	<div class="footer">
		<c:import url="footer.jsp"></c:import>
	</div>


</form>
</body>
</html>