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
<title>review_insert</title>
<link rel="stylesheet" type="text/css" href="css/review_insert.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>

<script type="text/javascript">
	$(function()
	{
		$("#submitReviewBtn").click(function()
		{
			if($("#reviewContent").val()=="")
			{
				alert("리뷰 내용을 입력해주세요.");
				return;
			}
			
			// 리뷰 키워드 선택값
			var rkArr = [];

			$("input:checkbox[name=rvKeyCb]:checked").each(function()
			{
				rkArr.push($(this).val());
			});

			$("#rvArrHidden").val(rkArr);
			alert("리뷰 키워드 선택값 : " + $("#rvArrHidden").val());

			// 별점 입력값
			var star = $("#starSelect").val();
			$("#starHidden").attr("value", star);
			alert("별점 입력값 : " + $("#starHidden").val());

			// 검색 키워드 입력값
			var skArr = [];

			if ($("#sk1").val() != "")
				skArr.push($("#sk1").val().trim());
			if ($("#sk2").val() != "")
				skArr.push($("#sk2").val().trim());
			if ($("#sk3").val() != "")
				skArr.push($("#sk3").val().trim());
			if ($("#sk4").val() != "")
				skArr.push($("#sk4").val().trim());
			if ($("#sk5").val() != "")
				skArr.push($("#sk5").val().trim());

			$("input[name=skArrHidden]").attr("value", skArr);
			alert("검색 키워드 선택값 : " + $("input[name=skArrHidden]").val());

			$("#userForm").attr("action", "insertreview.action");
			$("#userForm").submit();
		});
	});

	function loadFile(input)
	{
		var num = $(input).attr("id").slice(-1);
		
		if($(".photoAdd").length > 5)
		{
			alert("사진은 최대 5개까지 등록 가능합니다.");
			return;
		}
		else
		{
			var name = document.getElementById('fileName'+num);
			var container = input.parentNode.querySelector('.image-show');
			
			// 이미 업로드된 사진이 있을 경우 삭제
			var existingImage = container.querySelector('img');
			if (existingImage)
			{
				container.removeChild(existingImage);
				$("#fileName"+num).html("");
			}

			var file = input.files[0]; // 선택된 파일 가져오기
			
			if(file.name.length > 15)
			{
				name.textContent = file.name.substring(0,15) + "..." + file.name.slice(-4);
			}
			else
				name.textContent = file.name;
			
			

			var newImage = document.createElement('img');
			newImage.setAttribute('class', 'img');

			// 이미지 source 가져오기
			newImage.src = URL.createObjectURL(file);

			newImage.style.width = '30vw';
			newImage.style.height = '50%';
			newImage.style.objectFit = 'contain';

			// 이미지를 image-show div에 추가
			container.appendChild(newImage);

			// 이미지는 화면에 나타나도록 설정
			newImage.style.visibility = 'visible';
		}
		
	};

	var count = 0;
	
	function plusTd()
	{
	   /* var table = document.getElementById('food_table'); */
	   /* var lastRow = table.rows[table.rows.length - 1]; // 맨 뒤에 <tr> 추가 */
	    
	   /* var cellCount = lastRow.cells.length; */

	   /* var newCell = lastRow.insertCell(cellCount-1); // <td> 추가 */
	    //newDiv = document.createElement("div");
	    //newDiv.class='button';
	    
	    count += 1;
	    
	    if (count >= 5)
	    {
	    	alert("사진은 5개까지만 추가가능합니다.");
	    	return;
	    }
	    
	    var element = document.getElementById('reviewPhotoDiv');
	    var num =  $('.button').length + 1;
	   
	    var content = "<div class='photoAdd'>";
	    content += "	<div class='button'>"
	    content += "		<label for='file" + num + "'>";
	    content += "			👉사진 업로드👈";
	    content += "		</label>";
	    content += "	</div>";
	    content += "	<input type='file' id='file" + num + "' name='chooseFile' accept='image/*' onchange='loadFile(this)' style='visibility: hidden'>";
	    content += "	<div class='image-show'" + num + "></div>";
	    content += "		<p id='fileName" + num + "' style='font-size: small'></p>";
	    content += "		<label class='label'>";
	    content += "		<div class='line-box' style='width:60%; margin-left: 3vw;'>";
	    content += "			<div class='line'></div>";
	    content += "		</div>";
	    content += "		</label>";
	    content += "	</div>";
	    content += "	<div>";
	    content += "	<p style='text-align: center;'>&nbsp;</p>";
	    content += "	</div>";
	    content += "</div>";
	                					
	   // $(".reviewPhotoDiv").innerText += content;
	    element.innerHTML += content;
	}
</script>

</head>
<body>
	<form action="" id="userForm" method="post" enctype="multipart/form-data">
		<div class="header"><c:import url="header_userMain.jsp"></c:import></div>
		<div id="container">

			<!-- 리뷰작성 타이틀 -->
			<div class="bigTitle reviewTitleDiv">&nbsp;&nbsp;리뷰
				작성&nbsp;&nbsp;[${st_name }]</div>

			<!-- 리뷰 키워드 선택 -->
			<div class="box1 reviewKeywordDiv">
				<!-- 리뷰 키워드 선택 타이틀 -->
				<div class="middleTitle reviewKeywordTitleDiv">&nbsp;&nbsp;리뷰
					키워드 선택</div>

				<!-- 리뷰 키워드 선택 CB -->
				<div class="reviewKeywordCB">
					<div class="stCb">
						<c:forEach var="rvKey" items="${reviewKeywords }" begin="0"
							end="${fn:length(reviewKeywords) }" step="1" varStatus="status">
							<c:choose>
								<c:when test="${status.index == 0 }">
									<div class="stCbList">
										<label for="${rvKey.rv_key_num }"> <input
											type="checkbox" name="rvKeyCb" value="${rvKey.rv_key_num }"
											id="${rvKey.rv_key_num }">${rvKey.rv_key_name }
										</label>
								</c:when>
								<c:when test="${status.index mod 5 == 0}">
					</div>
					<div class="stCbList">
						<label for="${rvKey.rv_key_num }"> <input type="checkbox"
							name="rvKeyCb" value="${rvKey.rv_key_num }"
							id="${rvKey.rv_key_num }">${rvKey.rv_key_name }
						</label>
						</c:when>
						<c:otherwise>
							<label for="${rvKey.rv_key_num }"> <input type="checkbox"
								name="rvKeyCb" value="${rvKey.rv_key_num }"
								id="${rvKey.rv_key_num }">${rvKey.rv_key_name }
							</label>
						</c:otherwise>
						</c:choose>
						</c:forEach>
					</div>
				</div>
				<input type="hidden" id="rvArrHidden" name="rkArrHidden">
			</div>

			<!-- 검색 키워드 작성 -->
			<div class="box2 searchKeywordDiv">
				<!-- 검색 키워드 타이틀 -->
				<div class="middleTitle searchKeywordTitleDiv">
					&nbsp;&nbsp;검색 키워드&nbsp;&nbsp; <i style="font-size: 10pt;">(각
						칸에 하나의 공백 없는 단어로 작성해주세요! 추후 이 가게가 검색되는 경로로 사용됩니다.)</i>
				</div>

				<!-- 검색 키워드 작성란 -->
				<div class="searchKeyword">
					1. <input type="text" id="sk1" class="searchKeywordtxt"> 2.
					<input type="text" id="sk2" class="searchKeywordtxt"> 3. <input
						type="text" id="sk3" class="searchKeywordtxt"> 4. <input
						type="text" id="sk4" class="searchKeywordtxt"> 5. <input
						type="text" id="sk5" class="searchKeywordtxt">
				</div>
				<input type="hidden" id="skArrHidden" name="skArrHidden">
			</div>

			<!-- 별점 -->
			<div class="box3 starDiv">

				<!-- 별점 타이틀 -->
				<div class="middleTitle starTitleDiv">&nbsp;&nbsp;별점</div>
				<!-- 별점 선택 -->
				<div class="starSelectDiv">
					<select name="starSelect" id="starSelect">
						<option id="fiv" value="5" selected="selected">⭐⭐⭐⭐⭐</option>
						<option id="fou" value="4">⭐⭐⭐⭐</option>
						<option id="thi" value="3">⭐⭐⭐</option>
						<option id="sec" value="2">⭐⭐</option>
						<option id="one" value="1">⭐</option>
					</select>
				</div>
				<input type="hidden" id="starHidden" name="starHidden">
			</div>

			<!-- 리뷰작성 -->
			<div class="box1 reviewDiv">
				<!-- 리뷰작성 타이틀 -->
				<div class="middleTitle reviewInsertTitleDiv">
					&nbsp;&nbsp;리뷰작성</div>

				<!-- 리뷰작성란 -->
				<div class="reviewInsertDiv">
					<textarea rows="6" cols="130" name="reviewContent" id="reviewContent" style="font-family: 'IBM Plex Sans KR', sans-serif;"></textarea>
				</div>
				<div id="test_cnt" style="margin-left: 24vw; font-size: 0.7vw; width: 20vw; text-align: right;">(0 / 500)</div>
				
				<script>
 
				    $(document).ready(function() {
				        $('#reviewContent').on('keyup', function() {
				            $('#test_cnt').html("("+$(this).val().length+" / 500)");
				 
				            if($(this).val().length > 500) {
				                $(this).val($(this).val().substring(0, 500));
				                $('#test_cnt').html("(500 / 500)");
				            }
				        });
				    });
			        
			    </script>
				
				<div class="rvPhotoDiv">
					<span class="rvphotospan"><i>리뷰 사진을 첨부하면 추가 포인트(+5p)가 지급됩니다!</i></span>
					<input type="button" class="plusBtn" value="사진 더 추가하기"
						style="display: block; font-size: 0.6vw; width: 7vw; height: 30px;"
						onclick="plusTd()" countPhotoChecked(field)>
				</div>

				<!-- 리뷰사진 업로드 버튼 -->
				<div class="reviewPhotoDiv" id="reviewPhotoDiv">
					<div class="photoAdd">
						<div class="button">
							<label for="file1"> 👉사진 업로드👈 </label>
						</div>
						<input type="file" id="file1" name="chooseFile" accept="image/*"
							onchange="loadFile(this)" style="visibility: hidden">
						<div class="image-show"></div>
						<p id="fileName1" style="font-size: small"></p>
						<label class="label">
							<div class="line-box" style="width: 60%; margin-left: 3vw;">
								<div class="line"></div>
							</div>
						</label>
					</div>
				</div>
			</div>

			<!-- 리뷰작성완료 버튼 -->
			<div class="reviewInsertBtnDiv">
				<input type="hidden" id="st_num" name="st_num" value="${st_num }">
				<button type="button" id="submitReviewBtn" class="reviewBtn">작성완료</button>
			</div>

		</div>
	</form>
</body>
</html>