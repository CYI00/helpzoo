<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css?family=Raleway:400,500,500i,700,800i" rel="stylesheet">
<title>My page - 회원정보 변경</title>
<style>
	.social-part .fa{
	    padding-right:20px;
	}
	
	ul li a{
	    margin-right: 20px;
	}
	
	#mainTxt{
	font-family: "Recipekorea";
	text-align:center;
	}
	#submitBtn{
	background-color:#7fcdcd;
	border:none;
	}
	#postcodify_search_button{
	background-color:#7fcdcd;
	border:none;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function () {
$('.navbar-light .dmenu').hover(function () {
        $(this).find('.sm-menu').first().stop(true, true).slideDown(150);
    }, function () {
        $(this).find('.sm-menu').first().stop(true, true).slideUp(105)
    });
});
</script>
</head>
<body style="overflow-x:hidden; overflow-y:auto;">
		<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-12">
				<jsp:include page="/WEB-INF/views/common/header.jsp" />
				</div>
			</div>
		</div>
		</div>
			<div class="row">
		<div class="col-md-12">
		  <nav class="navbar navbar-expand-sm navbar-light bg-light">
	        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
	          <span class="navbar-toggler-icon"></span>
	        </button>
	        <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
	          <ul class="navbar-nav mx-auto mt-2 mt-lg-0">
	            <li class="nav-item">
	              <a class="nav-link" href="${contextPath}/mypage/updateMember">회원정보 수정</a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" href="${contextPath}/mypage/changePwd">비밀번호 변경</a>
	            </li>
	            <li class="nav-item dropdown dmenu">
	            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
	              	펀딩 내역
	            </a>
	            <div class="dropdown-menu sm-menu">
				  <a class="dropdown-item" href="${contextPath}/mypage/fundingList/1">내가 주최한</a>
	              <a class="dropdown-item" href="${contextPath}/mypage/partiFundingList/1">내가 참여한</a>
	            </div>
	          </li>
	            <li class="nav-item dropdown dmenu">
	            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
	              	기부 내역
	            </a>
	            <div class="dropdown-menu sm-menu">
	              <a class="dropdown-item" href="${contextPath}/mypage/donationList/1">내가 주최한</a>
	              <a class="dropdown-item" href="${contextPath}/mypage/donationListPt/1">내가 참여한</a>
	            </div>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="${contextPath}/mypage/secession">회원탈퇴</a>
	          </li>
	          </ul>
	        </div>
	      </nav>
				</div>
			</div>
			<div class="row">
			<div class="col-md-6 mx-auto">
			<br><h1 id="mainTxt">${loginMember.memberName}님의 회원 정보 수정</h1>
			<div class="bg-white rounded shadow-sm container p-3">
					<form method="POST" action="updateAction" name="updateForm" onsubmit="return validate();" class="form-horizontal" role="form">
					<hr class="mb-4">
						<!-- 아이디 -->
						<div class="row mb-3 form-row">
							<div class="col-md-3">
								<h6>아이디</h6>
							</div>
							<div class="col-md-6">
							<!-- loginMember가 session 객체에 존재하면 id를 꺼내와라 -->
								<!--  --><h5 id="id">${loginMember.memberId}</h5>
							</div>
						</div>
						<!-- 이름 -->
						<div class="row mb-3 form-row">
							<div class="col-md-3">
								<h6>이름</h6>
							</div>
							<div class="col-md-6">
							<input type="text" class="form-control" id="name" name="memberName" value="${loginMember.memberName}">
								<!--  <h5 id="name">${loginMember.memberName}</h5>-->
							</div>
						</div>
	
						<!-- 전화번호 -->
						<div class="row mb-3 form-row">
							<div class="col-md-3">
								<label for="phone1">연락처</label>
							</div>
							
							<!-- fn 태그를 이용하여 split을 진행 -->
							<!-- session에서 memberPhone을 꺼내와서 문자열을 쪼개서 배열로 만들어 배열로 지정-->
							<!-- 010  /  1234  / 5678 -->
							<!-- phone[0] phone[1]  phone[2]-->
							<c:set var="phone" value="${fn:split(loginMember.memberPhone, '-') }"/>
							
							<!-- 전화번호1 -->
							<div class="col-md-3">
								<select class="custom-select" id="phone1" name="phone1">
									<option <c:if test="${phone[0] == '010'}">selected</c:if> >010</option>
									<option<c:if test="${phone[0] == '011'}">selected</c:if> >011</option>
									<option<c:if test="${phone[0] == '016'}">selected</c:if> >016</option>
									<option<c:if test="${phone[0] == '017'}">selected</c:if> >017</option>
									<option<c:if test="${phone[0] == '019'}">selected</c:if> >019</option>
								</select>
							</div>
							<!-- 전화번호2 -->
							<div class="col-md-3">
								<input type="number" class="form-control phone" id="phone2" name="phone2" maxlength="4" value="${phone[1] }">
							</div>
	
							<!-- 전화번호3 -->
							<div class="col-md-3">
								<input type="number" class="form-control phone" id="phone3" name="phone3" maxlength="4" value="${phone[2] }">
							</div>
						</div>
	
						<!-- 이메일 -->
						<div class="row mb-3 form-row">
							<div class="col-md-3">
								<label for="memberEmail">Email</label>
							</div>
							<div class="col-md-6">
								<h6 id="email">${loginMember.memberEmail}</h6>
							</div>
						</div>
					<!-- 주소 -->
					<!-- 오픈소스 도로명 주소 API -->
					<!-- https://www.poesis.org/postcodify/ -->
					<div class="row mb-3 form-row">
						<c:set var="address" value="${fn:split(loginMember.memberAddress, ',')}"/>
					
						<div class="col-md-3">
							<label for="postcodify_search_button">우편번호</label>
						</div>
						<div class="col-md-3">
							<input type="text" name="post" id="post" class="form-control postcodify_postcode5" value="${address[0]}">
						</div>
						<div class="col-md-3">
							<button type="button" class="btn btn-primary" id="postcodify_search_button" id="searchBtn">검색</button>
						</div>
					</div>
		
					<div class="row mb-3 form-row">
						<div class="col-md-3">
							<label for="address1">도로명 주소</label>
						</div>
						<div class="col-md-9">
							<input type="text" class="form-control postcodify_address" name="address1" id="address1"  value="${address[1]}">
						</div>
					</div>
		
					<div class="row mb-3 form-row">
						<div class="col-md-3">
							<label for="address2">상세주소</label>
						</div>
						<div class="col-md-9">
							<input type="text" class="form-control postcodify_details" name="address2" id="address2"  value="${address[2]}">
						</div>
					</div>
						<!-- jQuery와 postcodify 를 로딩한다. -->
						<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
						<script>
							// 검색 단추를 누르면 팝업 레이어가 열리도록 설정한다.
							$(function() {
								$("#postcodify_search_button").postcodifyPopUp();
							});
						</script>
						<!-- 추가정보  1-->
                        <div class="row mb-3 form-row">
						<div class="col-md-3">
							<label for="petType">반려동물 종류</label>
						</div>
						<div class="col-md-9">
						<select name="memberPetType" id="pet-select" style="height:30px">
									<option value="">--반려동물 종류를 선택해주세요--</option>
									<option <c:if test="${loginMember.memberPetType == 'dog'}">selected</c:if> value="dog">강아지</option>
									<option <c:if test="${loginMember.memberPetType == 'cat'}">selected</c:if> value="cat">고양이</option>
									<option <c:if test="${loginMember.memberPetType == 'hamster'}">selected</c:if> value="hamster">햄스터</option>
									<option <c:if test="${loginMember.memberPetType == 'hedgehog'}">selected</c:if> value="hedgehog">고슴도치</option>
									<option <c:if test="${loginMember.memberPetType == 'rabbit'}">selected</c:if> value="rabbit">토끼</option>
									<option <c:if test="${loginMember.memberPetType == 'goldfish'}">selected</c:if> value="goldfish">금붕어</option>
						</select>
						</div>
					</div>
					<!-- 추가정보 2 -->
                    <div class="row mb-3 form-row">
						<div class="col-md-3">
							<label for="petName">반려동물 이름</label>
						</div>
						<div class="col-md-9">
							<input type="text" class="form-control" name="memberPetName" id="petName" value="${loginMember.memberPetName}">
						</div>
					</div>
					<div class="col-md-6 mx-auto">
						<hr class="mb-4">
						<button class="btn btn-primary btn-lg btn-block" type="submit" id="submitBtn">수정</button><br>
					</div>
					</form>
				</div>
			</div>
		</div>
			<div class="row">
				<div class="col-md-12">
				<jsp:include page="/WEB-INF/views/common/footer.jsp" />
				</div>
			</div>
	
	<script>
	
	$(".phone").on("input", function() {
		if ($(this).val().length > $(this).prop("maxLength")) {
			$(this).val($(this).val().slice(0,$(this).prop("maxLength")));
		}
	});
	
	// 각 유효성 검사 결과를 저장할 객체
	var signUpCheck = {		
			"phone3" : false	
	}
	
    // submit 동작
	function validate(){
		var $phone2 = $("#phone2");
		var $phone3 = $("#phone3");
		
		// 전화번호 관련
		$(".phone").on("input", function() {
			
			if($(this).val().length > $(this).prop("maxLength")){
				$(this).val($(this).val().slice(0, $(this).prop("maxLength")));
			}	
		});
		
		var regExp1 = /^\d{3,4}$/;
		var regExp2 = /^\d{4,4}$/;
		
		if(!regExp1.test($phone2.val()) || !regExp2.test($phone3.val())){
			signUpCheck.phone3 = false;
			swal({
				  icon: "error",
				  text : "유효한 전화번호를 작성해 주세요."
				});
			
		}else{
			signUpCheck.phone3 = true;
		}
		
		for(var key in signUpCheck){
			if(!signUpCheck[key]){
				swal({
					  icon: "error",
					  text : "일부 입력 값이 잘못되었습니다."
					});
				var id = "#"+key;
				$(id).focus;
				return false;
			}
		}

		$memberPhone = $("<input>", {type : "hidden", name: "memberPhone",
						value : $("#phone1").val()+"-"+$("#phone2").val() + "-" +
								$("#phone3").val()});
		
		$memberAddress = $("<input>", {type : "hidden", name: "memberAddress",
			value : $("#post").val()+","+$("#address1").val() + "," +
					$("#address2").val()});
		
		// append : form 태그의 자식 중 마지막에 추가함
		$("form[name='updateForm']").append($memberPhone).append($memberAddress);
	}
    </script>
</body>
</html>