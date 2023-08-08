<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>storeDetail-userView.jsp</title>


<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
<script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>

<link rel="stylesheet" type="text/css" href="<%=cp%>/css/compareBox.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/userMyPage.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/user_join2.css">

<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>
	


<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<style type="text/css">
#body 
{	
	width: 100%;
	display: flex;
}

.mainBody
{	
	/* background-color: #F7F4EA; */
	margin-left : 5vw;
	width: 80vw;
}

.main 
{	
	padding-top: 2vh;
}

.container1 
{
	float: left;
}

.main-left
{
	width: 50%;
	height: 40vh;
	float: left;
	text-align: center;
}

.main-right 
{
	width: 50%;
	height: 40vh;
	float: right;
	text-align: center;
}


.opli, .btli
{
	border : 2vw;
	width: 10vw;
	height: 3vh;
}

#weekList li, .time li
{
	padding-bottom: 0.5vw;
	padding-right: 0.5vw;
	padding-left: 0.5vw;
	padding-top: 0.5vw;
	list-style: none;
	border-radius: 11px; 
}

.revKeyList li
{	
	padding-bottom: 0.3vw;
	padding-top: 0.3vw;
	background-color: #F8E6E0;
	border : 1px solid #F781BE;
	margin: 0.5vw;
	border-radius: 11px; 
	list-style: none;
}

.revKeyList input
{	
	background: none;
	border : 0;
	list-style: none;
}

.openclose
{
	width: 50%;
	float: left;
}

.time 
{
	width: 50%;
	float: left;
	text-align: center;
}

.btli
{
	text-align: center;
}

.container2 
{	
	margin-top : 20vh;
	margin-left: 4vw;
}

.info 
{
	width: 100%;
	height: 50%;
	display: flex;
	padding-right: 2vw;
	text-align: left;
	margin: 1vw;
}


.info input, textarea
{	
	width: 35vw;
	height: 4vh;
	background-color: #F8E6E0;
	border: 0;
}

.container3, .container4 
{
	width: 100%;
	float: left;
	margin-top: 3vh;
}

.container3
{
	padding-left: 0.2vw;
}


.thumbnail 
{
	width: 10vw;
	height: 17vh;
	float: left;
}

.img-rounded 
{
	width: 100%;
	height: 100%;
}

.main ul 
{
	list-style-type: none;
}

.menu 
{
	display: flex;
	justify-content: space-evenly;
	padding-right: 5vw;
	padding-left: 5vw;
}


.form 
{
	padding-left: 3vw;
}

.revBoard 
{
	padding-left: 2vw;
}

.menuList 
{
	display: flex;
	margin-left: 3vw;
}

.menuPhoto 
{
	padding: 1vw;
}

.revBack 
{	
	width: 90%;
	height: 14vh;
	background-color: #EED2CE;
	border-radius: 11px; 
}

.btn
{
	background-color: #F7AF97;
    border: 1px #EF6351;
    border-radius: 8px;
    color: white;
    font-size: 10pt;
    font-family: 'IBM Plex Sans KR', sans-serif;
    cursor: pointer;
}

#repCon 
{
	float: right;
}

.reViews 
{
	padding-bottom: 2vh;
}

.recBtn
{
	float: right;
}


.has_sub_menu
{
	list-style-type: none;
}

.side-menu 
{
	top: 50px;
	width: 5vw;
	z-index: 10;
	background: #ef6351;
	border-right: 1px solid rgba(0, 0, 0, 0.07);
	height: 90%;
	margin-top: 5.7vh;
	position: fixed;
	align-items: center;
}

#sidebar-menu li 
{
	font-size: 1.5rem;
}

#sidebar-menu .fas 
{
	padding-top: 3vh;
	padding-left: 1.2vw
}

.left_sub_menu 
{
	position: fixed;
	top: 50px;
	width: 18vw;
	z-index: 10;
	left: 4.6vw;
	background: white;
	height: 90%;
	margin-top: 5.7vh;
}

.sub_menu 
{
	margin-top: 50px;
}

.left_sub_menu>.sub_menu li:hover 
{
	color: ff5858;
	background-color: #e1e1e1;
}

.left_sub_menu>.sub_menu li 
{
	color: black;
	font-size: 17px;
	font-weight: 600;
	padding: 20px 0px 8px 14px;
	border-bottom: 1px solid #e1e1e1;
}

.sub_menu>h2 
{
	padding-bottom: 4px;
	border-bottom: 3px solid #797979;
	margin-top: 30px;
	font-size: 21px;
	font-weight: 600;
	color: #333;
	margin-left: 10px;
	margin-right: 10px;
	font-family: 'NotoKrB';
}

.fas 
{
	color: #ff5858;
	font-size: 20px;
	line-height: 20px;
	float: right;
	margin-top: 0.6vh;
	margin-right: 2vw;
}

.sub_menu>.big_menu>.small_menu li 
{
	color: black;
	font-size: 14px;
	font-weight: 600;
	border-bottom: 0px solid #e1e1e1;
}

.big_menu 
{
	list-style-type: none;
	cursor: pointer;
}

.samll_menu 
{
	position: fixed;
	list-style-type: none;
	padding-inline-start: 0px;
	list-style: none;
	transition-duration: 0.5s;
}

.small_menuA 
{
	color: black;
	text-decoration-line: none;
	background-color: transparent;
	margin-bottom: 1vh
}

.big_menu ul 
{
	margin-top: 0;
	margin-bottom: 0;
}

.has_sub 
{
	width: 100%;
}
.main
{
	margin: 10%;
}
table
{
	border-spacing: 6px;
}

#label {
  display: block;
  position: relative;
  margin: 40px 0px;
}

.input {
  width: 100%;
  padding: 10px;
  background: transparent;
  border: none;
  outline: none;
}

.line-box {
  position: relative;
  width: 100%;
  height: 2px;
  background: #BCBCBC;
}

.line {
  position: absolute;
  width: 0%;
  height: 2px;
  top: 0px;
  left: 50%;
  transform: translateX(-50%);
  background: #ef6351;
  transition: ease .6s;
}

.input:focus + .line-box .line {
  width: 100%;
}
.label-active {
  top: -3em;
}

.label-txt {
  position: absolute;
  top: -1.6em;
  padding: 10px;
  font-family: sans-serif;
  font-size: .8em;
  letter-spacing: 1px;
  color: rgb(120,120,120);
  transition: ease .3s;
}
.storeOption input
{
	zoom:1.5;
}
.food_cat input
{
	border: 0;
	font-size: 13px;
	width: 2vh;
}
.food_cat input
{
	margin-left: 1vh;
}

</style>


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
	
	
	$(document).ready(function(){

		$('input[type="text"][class="input"]').focus(function(){
			$(this).parent().find(".label-txt").addClass('label-active');
		});
		
		
		$('input[type="text"][class="input"]').focusout(function(){
			if ($(this).val() == '') {
				$(this).parent().find(".label-txt").removeClass('label-active');
			};
		});
	});
	
	
	/* checkbox 하나만 선택 가능 */
	$(document).ready(function()
	{
		$('input[type="checkbox"][name="toilet"]').click(function()
		{
			if($(this).prop('checked')){
				$('input[type="checkbox"][name="toilet"]').prop('checked',false);
				$(this).prop('checked', true);
			}
		});
		
		$('input[type="checkbox"][name="puppy"]').click(function()
		{
			if($(this).prop('checked')){
				$('input[type="checkbox"][name="puppy"]').prop('checked',false);
				$(this).prop('checked', true);
			}
		});
		
		$('input[type="checkbox"][name="room"]').click(function()
		{
			if($(this).prop('checked')){
				$('input[type="checkbox"][name="room"]').prop('checked',false);
				$(this).prop('checked', true);
			}
		});

		$('input[type="checkbox"][name="reservation"]').click(function()
		{
			if($(this).prop('checked')){
				$('input[type="checkbox"][name="reservation"]').prop('checked',false);
				$(this).prop('checked', true);
			}
		});
				
		$('input[type="checkbox"][name="parking"]').click(function()
		{
			if($(this).prop('checked')){
				$('input[type="checkbox"][name="parking"]').prop('checked',false);
				$(this).prop('checked', true);
			}
		});
		
		$('input[type="checkbox"][name="internet"]').click(function()
		{
			if($(this).prop('checked')){
				$('input[type="checkbox"][name="internet"]').prop('checked',false);
				$(this).prop('checked', true);
			}
		});
		
		$('input[type="checkbox"][name="food_cat"]').click(function()
		{
			if($(this).prop('checked')){
				$('input[type="checkbox"][name="food_cat"]').prop('checked',false);
				$(this).prop('checked', true);
			}
		});
		
	});
	
</script>

</head>


<body>
<form action="search.action" id="userForm" method="post">
	<div class="header">
		<c:import url="/WEB-INF/view/header_user.jsp"></c:import>
	</div>

	<div id="body">
	
		<div id="column">

		<!-- 왼쪽 메뉴 배너 -->
		<!-- 왼쪽 메뉴 -->
		<div class="left side-menu">
			<div class="sidebar-inner">
				<div id="sidebar-menu">
					<ul class="has_sub_menu">
						<li class="has_sub"><a href="javascript:void(0);"
							class="waves-effect"> <i class="fas fa-bars"
								style="color: #fff"></i>
						</a></li>
					</ul>
				</div>
			</div>
		</div>

		<!-- 왼쪽 서브 메뉴 -->
		<div class="left_sub_menu">
			<div class="sub_menu">
				<h2>MENU</h2>
				<ul class="big_menu">
					<li>가게 리스트<i class="arrow fas fa-angle-right"></i></li>

					<ul class="small_menu">
						<li><a href="#" class="small_menuA">가게1</a></li>
						<li><a href="#" class="small_menuA">가게2</a></li>
						<li><a href="#" class="small_menuA">가게3</a></li>
						<li><a href="#" class="small_menuA">가게4</a></li>
					</ul>
				</ul>
				<ul class="big_menu">
					<li>접수 내역<i class="arrow fas fa-angle-right"></i></li>
					<ul class="small_menu">
						<li><a href="#" class="small_menuA">소메뉴2-1</a></li>
						<li><a href="#" class="small_menuA">소메뉴2-2</a></li>
					</ul>
				</ul>
				<ul class="big_menu">
					<li>경고 내역</li>
				</ul>
				<ul class="big_menu">
					<li>새로운 가게 등록 신청</i></li>
				</ul>
			</div>
		</div>
		
		<div class="overlay">
			<input type="hidden" id="checkOverlay" value="false">
		</div>
		
	</div>
		
		
	
	<div class="mainBody" style="margin: 0 auto;">
		
		<div id="st_detail_header">
			<h1>매장 정보 기입(선택)</h1><br>
			<hr>
		</div>
		
		<!-- 영업시간 -->
		<div class="opentime">
			<div>
				<table border="0">
					<tr>
						<th style="border-bottom: 5px solid;">&nbsp;&nbsp;영업시간&nbsp;&nbsp;</th>
					</tr>
					<tr>
						<td></td>
						<th style="padding-right: 1vh;">월요일</th>
						<td>10:00</td>
						<td> ~ </td>
						<td>10:00</td>
						<td><input type="checkbox" id="rest1"></td>
						<td><label for="rest1">휴무</label></td>
					</tr>
					<tr>
						<td></td>
						<th style="padding-right: 1vh;">화요일</th>
						<td>10:00</td>
						<td> ~ </td>
						<td>10:00</td>
						<td><input type="checkbox" id="rest"2></td>
						<td><label for="rest2">휴무</label></td>
					</tr>
					<tr>
						<td></td>
						<th style="padding-right: 1vh;">수요일</th>
						<td>10:00</td>
						<td> ~ </td>
						<td>10:00</td>
						<td><input type="checkbox" id="rest3"></td>
						<td><label for="rest3">휴무</label></td>
					</tr>
					<tr>
						<td></td>
						<th style="padding-right: 1vh;">목요일</th>
						<td>10:00</td>
						<td> ~ </td>
						<td>10:00</td>
						<td><input type="checkbox" id="rest4"></td>
						<td><label for="rest4">휴무</label></td>
					</tr>
					<tr>
						<td></td>
						<th style="padding-right: 1vh;">금요일</th>
						<td>10:00</td>
						<td> ~ </td>
						<td>10:00</td>
						<td><input type="checkbox" id="rest5"></td>
						<td><label for="rest5">휴무</label></td>
					</tr>
					<tr>
						<td></td>
						<th style="padding-right: 1vh;">토요일</th>
						<td>10:00</td>
						<td> ~ </td>
						<td>10:00</td>
						<td><input type="checkbox" id="rest6"></td>
						<td><label for="rest6">휴무</label></td>
					</tr>
					<tr>
						<td></td>
						<th style="padding-right: 1vh;">일요일</th>
						<td>10:00</td>
						<td> ~ </td>
						<td>10:00</td>
						<td><input type="checkbox" id="rest7"></td>
						<td><label for="rest7">휴무</label></td>
					</tr>
				</table>
			</div>
			<br>
			<div>
				<table border="0">
					<tr>
						<th style="border-bottom: 5px solid;">브레이크타임</th>
					</tr>
					<tr>
						<td></td>
						<th style="padding-right: 1vh;">평일</th>
						<td>10:00</td>
						<td> ~ </td>
						<td>10:00</td>
						<td><input type="checkbox" id="breaktime1"></td>
						<td><label for="breaktime1">없음</label></td>
					</tr>
					<tr>
						<td></td>
						<th style="padding-right: 1vh;">주말</th>
						<td>10:00</td>
						<td> ~ </td>
						<td>10:00</td>
						<td><input type="checkbox" id="breaktime2"></td>
						<td><label for="breaktime2">없음</label></td>
					</tr>
				</table>
			</div>
		</div>
		
		<!-- 결제수단 -->
		<label class="input" id="label">
			<p class="label-txt label-active">결제수단</p>
			<input type="text" class="input">
			<div class="line-box">
				<div class="line"></div>
			</div>
		</label>
		
		
		<!-- 음식 카테고리 -->
		<div class="food_cat">
			<table border="0">
				<tr>
					<th style="border-bottom: 5px solid;">음식카테고리</th>
					<td>
						<input type="checkbox" id="chbox1" name="food_cat"><label for="chbox1">한식</label>
						<input type="checkbox" id="chbox2" name="food_cat"><label for="chbox2">일식</label>
						<input type="checkbox" id="chbox3" name="food_cat"><label for="chbox3">중식</label>
						<input type="checkbox" id="chbox4" name="food_cat"><label for="chbox4">양식</label>
						<input type="checkbox" id="chbox5" name="food_cat"><label for="chbox5">카페</label>
						<input type="checkbox" id="chbox6" name="food_cat"><label for="chbox6">베이커리</label>
					</td>
				</tr>
			</table>
		</div>
		
		<br>
		
		<!-- 메뉴등록 -->
		<div class="food_menu">
			<table border="0">
				<tr>
					<th style="border-bottom: 5px solid;">메뉴</th>
				</tr>
				<tr>
					<td></td>
					
					<td>
						<div>
							<img src="#" style="width: 200px; height: 150px;">
						</div>
						<div>
							<p style="text-align: center;">떡볶이</p>
						</div>
					</td>
					
					<td>
						<div>
								<img src="#" style="width: 200px; height: 150px;">
						</div>
						<div>
							<p style="text-align: center;">어묵</p>
						</div>
					</td>
					<td>
						<div>
							<img src="#" style="width: 200px; height: 150px;">
						</div>
						<div>
							<p style="text-align: center;">순대</p>
						</div>				
					</td>
					<td>
						<div style="width: 200px; height: 150px; display: flex; justify-content: center;">
							<input type="button" class="plusBtn" value="+" style="border: 1; margin: auto; display: block;"> 
						</div>
						<div>
							<p style="text-align: center;">&nbsp;</p>
						</div>
						
					</td>
				</tr>
			</table>
		</div>
		
		
		<!-- 수용인원 -->
		<label id="label">
			<p class="label-txt">수용인원</p>
			<input type="text" class="input">
			<div class="line-box">
			  	<div class="line"></div>
			</div>
		</label>
		
		
		<!-- 사업자 이메일 -->
		<label id="label">
			<p class="label-txt">사업자 이메일</p>
			<input type="text" class="input">
			<div class="line-box">
			    <div class="line"></div>
			</div>
		</label>
		
		
		
		<!-- 가게 설명 -->
		<label id="label">
			<p class="label-txt">가게 설명</p>
			<input type="text" class="input">
			<div class="line-box">
			    <div class="line"></div>
			</div>
		</label>
		
		
		<!-- 가게페이지 링크 -->
		<label id="label">
			<p class="label-txt label-active">가게페이지 링크</p>
			<input type="text" class="input">
			<div class="line-box">
			    <div class="line"></div>
			</div>
		</label>
		
		
		<!-- 가게 옵션 -->
		<div class="storeOption">
			<div>
				<table border="0">
					<tr>
						<th style="border-bottom: 5px solid;">&nbsp;&nbsp;가게옵션&nbsp;&nbsp;</th>
					</tr>
					<tr>
						<td></td>
						<th style="padding-right: 1vh; text-align: left;">화장실 존재 여부</th>
						<td><input type="checkbox" name="toilet" id="toilet" onclick="checkOnlyOne(this)"></td>
						<td style="padding-right: 1vh;"><label for="toilet">있음</label></td>
						<td><input type="checkbox" name="toilet" id="toilet2" onclick="checkOnlyOne(this)"></td>
						<td><label for="toilet2">없음</label></td>
					</tr>
					<tr>
						<td></td>
						<th style="padding-right: 1vh; text-align: left;">애견 동반 여부</th>
						<td><input type="checkbox" name="puppy" id="puppy"></td>
						<td style="padding-right: 1vh;"><label for="puppy">가능</label></td>
						<td><input type="checkbox" name="puppy" id="puppy2"></td>
						<td><label for="puppy2">불가능</label></td>
					</tr>
					
					<tr>
						<td></td>
						<th style="padding-right: 1vh; text-align: left;">연회석 존재 여부</th>
						<td><input type="checkbox" name="room" id="room"></td>
						<td><label for="room">있음</label></td>
						<td><input type="checkbox" name="room" id="room2"></td>
						<td><label for="room2">없음</label></td>
					</tr>
					<tr>
						<td></td>
						<th style="padding-right: 1vh; text-align: left;">예약 가능 여부</th>
						<td><input type="checkbox" name="reservation" id="reservation"></td>
						<td><label for="reservation">가능</label></td>
						<td><input type="checkbox" name="reservation" id="reservation2"></td>
						<td><label for="reservation2">불가능</label></td>
					</tr>
					<tr>
						<td></td>
						<th style="padding-right: 1vh; text-align: left;">주차 가능 여부</th>
						<td><input type="checkbox" name="parking" id="parking"></td>
						<td><label for="parking">가능</label></td>           
						<td><input type="checkbox" name="parking" id="parking2"></td>
						<td><label for="parking2">불가능</label></td>
					</tr>
					<tr>
						<td></td>
						<th style="padding-right: 2vh; text-align: left;">무선 인터넷 사용 가능 여부</th>
						<td><input type="checkbox" name="internet" id="internet"></td>
						<td><label for="internet">가능</label></td>           
						<td><input type="checkbox" name="internet" id="internet2"></td>
						<td><label for="internet2">불가능</label></td>          
					</tr>
				</table>
			</div>
		</div>
		
		
		<!-- 가게 선택 키워드 -->
		<div class="userIbmat">
		<div class="ibmatTitleDiv">
			<span id="ibmatTitle">가게키워드 선택</span> &nbsp;&nbsp;&nbsp;&nbsp;
		</div>
	
		<div class="ibmatSelectDiv">
			<div class="selectLeft">
				<label class="ibmatlabel" for="ibmat1">
					<input type="checkbox" class="ibmatCB" id="ibmat1">
					인테리어가 멋져요
				</label>
				<br><br>
				
				
				<label class="ibmatlabel" for="ibmat2">
					<input type="checkbox" class="ibmatCB" id="ibmat2">
					혼자오기 좋아요
				</label>
				<br><br>
			
				<label class="ibmatlabel" for="ibmat3">
					<input type="checkbox" class="ibmatCB" id="ibmat3">
					단체모임하기 좋아요
				</label>
				<br><br>
					
			
				<label class="ibmatlabel" for="ibmat4">
					<input type="checkbox" class="ibmatCB" id="ibmat4">
					매장이 넓어요
				</label>
				<br><br>
			</div>
			
			<div class="selectRight">	
				<label class="ibmatlabel" for="ibmat5">
					<input type="checkbox" class="ibmatCB" id="ibmat5">
					애견메뉴가 있어요
				</label>
				<br><br>
			
				<label class="ibmatlabel" for="ibmat6">
					<input type="checkbox" class="ibmatCB" id="ibmat6">
					포장이 가능해요
				</label>
				<br><br>
				
			</div>
		</div>
	</div>
		<!-- 가게 검색 키워드 -->
		
		
		<!-- 등록버튼 -->
		<button>등록</button>
		
			
			
		
		
		<%-- 
		<div id="container1" class="">

			<div class="placeholders main">

				<div class="placeholder main-left">
					<div class="background" style="font-weight: bold; margin-top: 1vh;">
						

						<div id="weekList" class="openclose background">

							
						</div>

						<div class="time background">
							<div>
								<ul>
									 <c:forEach var="bt" items="${breakTime}">
									 	<li><input class="btli" type="text"
										placeholder="${bt.week_weekend} / 브레이크 타임" readonly="readonly" /></li>
									 	<li><input class="btli" type="text"
										placeholder="${bt.start_breaktime} ~ ${bt.end_breaktime} " readonly="readonly" /></li>
									 </c:forEach>
									 <c:forEach var="h" items="${holiday}">
									 	<li><input class="btli" type="text"
										placeholder="휴일 : ${h.day_name}" readonly="readonly" /></li>
									 </c:forEach>
								</ul>

							</div>

						</div>

					</div>

				</div>


				<div class="placeholder main-right">
					<c:forEach var="s" items="${store }">
					<div class="background" 
						style="font-weight: bold; margin-top: 1vh; margin-left: 1vw;">
						<span style="font-size:30pt; font-weight: bold;">${s.st_name }</span>
						<br /> <br /> <br />

						<div class="revBoard">

								<div class="info">
									<div class="likeRevC likeNum">
										<label for="likeNum" class=""
											style="font-weight: bold; display: inline;"> 좋아요 수
											: &nbsp;&nbsp; <span class="glyphicon glyphicon-heart"
											aria-hidden="true"> </span> <span id="likeNum"
											style="display: inline;">${s.like_count }</span>
										</label>
									</div>
									<div class="likeRevC score">
										<label for="score" class=""
											style="font-weight: bold; display: inline;">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 평점 :
											&nbsp;&nbsp;&nbsp;&nbsp; <span id="score"
											style="display: inline;">${s.star_score}</span>
										</label>
									</div>

									<div class="likeRevC reviewNum">
										<label for="reviewNum" class=""
											style="font-weight: bold; display: inline;">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											리뷰 수 : &nbsp;&nbsp; <span id="reviewNum"
											style="display: inline;">${s.review_count}</span>
										</label>
									</div>
								</div>
								<!-- .likeRevC    info background -->

								<br />

								<div class="info background">
									<label for="addr" class=""
										style="font-weight: bold; display: inline;">
										주소&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<span id="addr" style="display: inline;"> : ${s.st_location }</span>
									</label>
								</div>

								<br /> 

								<div class="info background">
									<label for="tel" class=""
										style="font-weight: bold; display: inline;">
										전화번호&nbsp;&nbsp;&nbsp;&nbsp; <span id="tel"
										style="display: inline;"> : ${s.st_tel }</span>
									</label>
								</div>
								<br />

						</div>
					</div>
					</c:forEach>
				</div>
				
			</div>

				<!-- <br /> -->

			

			<!-- 기타 관련 -->

			<div class="container2 " id="storePay">
				
				
				<c:forEach var="o" items="${others }" varStatus="status">
						<br /> <br /> <br /><br /> <br /> <br />
						<br /> <br /> <br /><br /> <br /> <br />							
						<div class="info background">
							<label for="payTool" class="oTool"
								style="font-weight: bold">결제 수단&nbsp;&nbsp;&nbsp;&nbsp;</label>
							<!-- 결제 수단 -->
							<div class=" form">
								<input class="" type="text" id="payTool" class="oInfo"
									placeholder="${o.pay_name }" readonly>
							</div>
						</div>
						
						<div class="info background">
							<label for="storePage" class="oTool"
								style="font-weight: bold">가게 이메일</label>
							<!-- 페이지 -->
							<div class="form">
								<input class="" type="text" id="storePage" class="oInfo"
									placeholder="${o.st_email }" readonly>
							</div>
						</div>
						<div class="info background">
							<label for="etcInfo" class="oTool"
								style="font-weight: bold">기타 정보&nbsp;&nbsp;&nbsp;&nbsp;</label>
							<!-- 수용 인원 등 -->
							<div class=" form">
								<input class="" type="text" id="etcInfo" class="oInfo"
									placeholder="최대 수용 인원 : ${o.max_customers }, 와이파이 있음, 주차 가능 등..." readonly>
							</div>
						</div>
						<div class="info background">
							<label for="storeExplain" class="oTool"
								style="font-weight: bold">가게 설명&nbsp;&nbsp;&nbsp;&nbsp;</label>
							<!-- 가게 설명 -->
							<div class="form">
								<textarea class="" rows="3" id="storeExplain" class="oInfo"
									placeholder="${o.st_explain }" readonly></textarea>
							</div>
						</div>
						<div>
							<button type="submit" class="btn" onclick="reqapplyform.action" value="${o.st_num }" 
							style="width: 10vw; height: 3vh; margin-left: 33vw;">가게정보오류수정</button>
						</div>
					
				</c:forEach>
			</div>
			<!-- class="container2 " id="storePay" -->
			<div id="menuboard" class="container3">
				<div id="rv-Keyword">
					<br /> <br />
					<!-- 메뉴 -->
					<h1 style="padding-left: 4vw;">메뉴</h1>
					<div class="menuList"  style="padding-bottom: 1vh;">
						<!-- 
						<div class="menuPhoto">
							<a href="#" class="thumbnail"> <img src="images/store_img01.png"
								alt="..." class="img-rounded">메뉴1 : 15,000원
							</a>
						</div>
						<div class="menuPhoto">
							<a href="#" class="thumbnail"> <img src="images/store_img01.png"
								alt="..." class="img-rounded">메뉴2 : 14,000원
							</a>
						</div>
						<div class="menuPhoto">
							<a href="#" class="thumbnail"> <img src="images/store_img01.png"
								alt="..." class="img-rounded">메뉴3 : 13,000원
							</a>
						</div>
						<div class="menuPhoto">
							<a href="#" class="thumbnail"> <img src="images/store_img01.png"
								alt="..." class="img-rounded">메뉴4 : 13,500원
							</a>
						</div>
						<div class="menuPhoto">
							<a href="#" class="thumbnail"> <img src="images/store_img01.png"
								alt="..." class="img-rounded">메뉴5 : 15,500원
							</a>
						</div>
						 -->
					</div>
					<div class="col-xs-16 col-md-16 menuList">
						<!-- 
						<div class="menuPhoto">
							<a href="#" class="thumbnail"> <img src="images/store_img01.png"
								alt="..." class="img-rounded">메뉴6 : 14,000원
							</a>
						</div>
						<div class="menuPhoto">
							<a href="#" class="thumbnail"> <img src="images/store_img01.png"
								alt="..." class="img-rounded">메뉴7 : 12,000원
							</a>
						</div>
						<div class="menuPhoto">
							<a href="#" class="thumbnail"> <img src="images/store_img01.png"
								alt="..." class="img-rounded">메뉴8 : 11,000원
							</a>
						</div>
						<div class="menuPhoto">
							<a href="#" class="thumbnail"> <img src="images/store_img01.png"
								alt="..." class="img-rounded">메뉴9 : 9,000원
							</a>
						</div>
						<div class="menuPhoto">
							<a href="#" class="thumbnail"> <img src="images/store_img01.png"
								alt="..." class="img-rounded">메뉴10 : 8,000원
							</a>
						</div>
						 -->
						<c:forEach var="ml" items="${menuLists }">
							<div class="menuPhoto">
								<a class="thumbnail" style="font-weight: bold;"> <img src="images/${ml.image_link }"
									alt="..." class="img-rounded" style="border-radius: 15px;">${ml.menu_name } <br /> : ${ml.price }원
								</a>
							</div>
						</c:forEach>
						
					</div>
				</div>
			</div>
			<!-- id="menuboard" class="col-md-offset-1 col-md-1 container3  " -->
			<br /> <br /> <br /> <br />
			<div class=" container4">
				<div id="reviewList" style="margin-top: 5vh; margin-left: 2vw;">
					<h1 style="padding-left: 2vw; display: inline;">리뷰</h1>
					<button type="submit" class="btn" style="margin-left: 42vw;">리뷰 작성하기</button>
					<br />
					<div class="revKeyList">
						<br />
						<ul style="display: flex; text-align: center;">
							<!-- 
							<li><input class="" type="text"
								placeholder="리뷰 키워드1" readonly="readonly" /></li>
							<li><input class="" type="text"
								placeholder="리뷰 키워드2" readonly="readonly" /></li>
							<li><input class="" type="text"
								placeholder="리뷰 키워드3" readonly="readonly" /></li>
							<li><input class="" type="text"
								placeholder="리뷰 키워드4" readonly="readonly" /></li>
							<li><input class="" type="text"
								placeholder="리뷰 키워드5" readonly="readonly" /></li>
							 -->	
							<c:forEach var="sK" items="${stKeys }">
								<li style="display: inline-block;"><input class="" type="text" style="text-align: center; font-weight: bold;"
								placeholder="${sK.st_keyword }" readonly="readonly" /></li>
							</c:forEach>
						</ul>
						<!-- 
						<ul style="display: flex;">
							<li><input class="" type="text"
								placeholder="리뷰 키워드6" readonly="readonly" /></li>
							<li><input class="" type="text"
								placeholder="리뷰 키워드7" readonly="readonly" /></li>
							<li><input class="" type="text"
								placeholder="리뷰 키워드8" readonly="readonly" /></li>
							<li><input class="" type="text"
								placeholder="리뷰 키워드9" readonly="readonly" /></li>
							<li><input class="" type="text"
								placeholder="리뷰 키워드10" readonly="readonly" /></li>
						</ul>
						 -->
						<br />
						<div id="revList" style="margin-left: 1vw;">
							<!-- 
							<div class="reViews">
								<div class="reView revBack">
									<span id="userId" style="font-size: 15pt; font-weight: bold; margin-left: 1vw;">디토</span><br />
									<textarea class=" reV" style="height: 7vh; margin-left: 1vw;" placeholder="훌쩍 훌쩍 커버렸어"
										readonly="readonly"></textarea>
									<div id="repCon">
										<span style="padding-left: 16px; display: inline;">작성
											일자 : 2023.08.02</span><br />
										<div class="revRec" style="padding-left: 5px;">
											<button type="button" class="recBtn" onclick="">비추천</button>
											<span class="glyphicon glyphicon-star-empty"aria-hidden="true" style="float: right;"></span>
											<button type="button" class="recBtn" onclick="">추천</button>
											<span class="glyphicon glyphicon-star" style="float: right;" aria-hidden="true"></span>
										</div>
										<button type="submit" class="reportBtn" style="float: right;">신고하기</button><br /><br />
									</div>
								</div>
							</div>
							<div class="reViews">
								<div class="reView revBack">
									<span id="userId" style="font-size: 15pt; font-weight: bold; margin-left: 1vw;">ETA</span><br />
									<textarea class=" reV" style="height: 7vh;  margin-left: 1vw;" 
										placeholder="뭐니 너의 ETA 뭐니 너의 ETA" readonly="readonly"></textarea>
									<div id="repCon">
										<span style="padding-left: 16px; display: inline;">작성
											일자 : 2023.08.02</span><br />
										<div class="revRec" style="padding-left: 5px;">
											<button type="button" class="recBtn" onclick="">비추천</button>
											<span class="glyphicon glyphicon-star-empty"aria-hidden="true" style="float: right;"></span>
											<button type="button" class="recBtn" onclick="">추천</button>
											<span class="glyphicon glyphicon-star" style="float: right;" aria-hidden="true"></span>
										</div>
										<button type="submit" class="reportBtn" style="float: right;">신고하기</button><br /><br />
									</div>
								</div>
							</div>
							<div class="reViews">
								<div class="reView revBack">
									<span id="userId" style="font-size: 15pt; font-weight: bold; margin-left: 1vw;">주목</span><br />
									<textarea class=" reV" style="height: 7vh; margin-left: 1vw;"
										placeholder="너에게 필요한 건 주목이야--" readonly="readonly"></textarea>
									<div id="repCon">
										<span style="padding-left: 16px; display: inline;">작성
											일자 : 2023.08.02</span><br />
										<div class="revRec" style="padding-left: 5px;">
											<button type="button" class="recBtn" onclick="">비추천</button>
											<span class="glyphicon glyphicon-star-empty"aria-hidden="true" style="float: right;"></span>
											<button type="button" class="recBtn" onclick="">추천</button>
											<span class="glyphicon glyphicon-star" style="float: right;" aria-hidden="true"></span>
										</div>
										<button type="submit" class="reportBtn" style="float: right;">신고하기</button><br /><br />
									</div>
								</div>
							</div>
							 -->
						<c:forEach var="rv" items="${reViews }">
							<div class="reViews">
								<div class="reView revBack">
									<span id="userId" style="font-size: 15pt; font-weight: bold; margin-left: 1vw;">${rv.user_nickname }</span><br />
									<textarea class=" reV" style="height: 7vh; margin-left: 1vw; font-size: 12pt; font-weight: bold;"
										placeholder="${rv.rv_content}" readonly="readonly"></textarea>
									<div id="repCon">
										<span style="padding-left: 16px; display: inline;">작성
											일자 : ${rv.reg_date }</span><br />
										<button type="submit" class="reportBtn btn" style="float: right;">신고하기</button><br />
										<div class="revRec" style="padding-left: 5px;">
											<button type="button" class="recBtn btn" onclick="">비추천</button>
											<span class="glyphicon glyphicon-star-empty" style="float: right;" aria-hidden="true"> ${rv.rec_nonrec_name2 } </span>
											<button type="button" class="recBtn btn" onclick="">추천</button>
											<span class="glyphicon glyphicon-star" style="float: right;" aria-hidden="true"> ${rv.rec_nonrec_name1 } </span>
										</div>
										
									</div>
								</div>
							</div>
						 </c:forEach>	
						 
						</div>
						<!-- id="revList" -->
					</div>
					<!-- class="revKeyList"  -->
				</div>
			</div>
			<!-- class="col-md-8  container4" -->
		</div>
		<!-- id="container1" class="col-md-8" -->
		 --%>
	</div>
	<!-- main -->




		<!-- 
		<div class="main" style="margin: 0 auto;">
		
			<div id="st_detail_header">
				<h1>매장 정보 기입(선택)</h1><br>
				<hr>
			</div>
			
			
			<div class="time" style="display: table;">
				
				<div>영업시간</div>
				<div class="time"> 
					<table border="0">
						<tr>
							<th>월요일</th>
							<td>10:00</td>
							<td> ~ </td>
							<td>10:00</td>
						</tr>
					</table>
				</div>
			</div>
		
		</div>
		
		 -->
		
		
		
		
		
		
		
		
		
		
		
		<!-- 비교함 영역 -->
		<div id="compareDiv">
			<div class="rectDiv">
				<!-- 비교함 이름 영역 -->
				<div class="comNameDiv">
					<span style="font-color: #ef6351">비교함</span>
				</div>
				<!-- 비교함 담은 가게 리스트 영역 -->
				<div class="comStoreListDiv">
					<!-- 한 가게 영역 -->
					<div class="comStoreDiv">
						<!-- 한 가게 대표사진 영역 -->
						<div class="comStoreImgDiv">
							<input type="checkbox" class="comStImgCB" id="st1"> <img
								class="comStImg" src="<%=cp%>/images/store_img01.png">
						</div>
						<!-- 한 가게 가게이름 영역 -->
						<div class="comStoreNameDiv">가게1</div>
					</div>

					<!-- 한 가게 영역 -->
					<div class="comStoreDiv">
						<!-- 한 가게 대표사진 영역 -->
						<div class="comStoreImgDiv">
							<input type="checkbox" class="comStImgCB" id="st2"> <img
								class="comStImg" src="<%=cp%>/images/store_img01.png">
						</div>
						<!-- 한 가게 가게이름 영역 -->
						<div class="comStoreNameDiv">가게2</div>
					</div>

					<!-- 한 가게 영역 -->
					<div class="comStoreDiv">
						<!-- 한 가게 대표사진 영역 -->
						<div class="comStoreImgDiv">
							<input type="checkbox" class="comStImgCB" id="st3"> <img
								class="comStImg" src="<%=cp%>/images/store_img01.png">
						</div>
						<!-- 한 가게 가게이름 영역 -->
						<div class="comStoreNameDiv">가게3</div>
					</div>

					<!-- 한 가게 영역 -->
					<div class="comStoreDiv">
						<!-- 한 가게 대표사진 영역 -->
						<div class="comStoreImgDiv">
							<input type="checkbox" class="comStImgCB" id="st4"> <img
								class="comStImg" src="<%=cp%>/images/store_img01.png">
						</div>
						<!-- 한 가게 가게이름 영역 -->
						<div class="comStoreNameDiv">가게4</div>
					</div>

					<!-- 한 가게 영역 -->
					<div class="comStoreDiv">
						<!-- 한 가게 대표사진 영역 -->
						<div class="comStoreImgDiv">
							<input type="checkbox" class="comStImgCB" id="st5"> <img
								class="comStImg" src="<%=cp%>/images/store_img01.png">
						</div>
						<!-- 한 가게 가게이름 영역 -->
						<div class="comStoreNameDiv">가게5</div>
					</div>

					<!-- 한 가게 영역 -->
					<div class="comStoreDiv">
						<!-- 한 가게 대표사진 영역 -->
						<div class="comStoreImgDiv">
							<input type="checkbox" class="comStImgCB" id="st6"> <img
								class="comStImg" src="<%=cp%>/images/store_img01.png">
						</div>
						<!-- 한 가게 가게이름 영역 -->
						<div class="comStoreNameDiv">가게6</div>
					</div>


				</div>
			</div>

			<div class="comStoreBtnDiv">
				<button type="button" class="btn" id="comBtn" name="comBtn">비교하기</button>
			</div>
		</div>

	</div>
		
	<div class="footer">
		<c:import url="/WEB-INF/view/footer.jsp"></c:import>
	</div>
	
</form>
</body>
</html>