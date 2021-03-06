<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="Cache-Control" content="No-Cache"> 

<meta http-equiv="Pragma" content="No-Cache"> 
    <title>타이틀</title>

    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
      integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
      crossorigin="anonymous"
    />
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script
      src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
      integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
      integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
      crossorigin="anonymous"
    ></script>

    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
      integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
      crossorigin="anonymous"
    />

    <style>
      .project_create_top_bar {
        position: fixed;
        border: 1px solid #f0f0f0;
        width: 100%;
            z-index: 2;
        background-color: white;
      }
      .span {
        position: fixed;
        left: 50%;
        transform: translate(-50%, 0);
        top: 2%;
      }

      .project_create_top_bar_choice {
        left: 86.5%;
        top: 2%;
      }

      .project_open_nav {
        padding-right: 0%;
        border: 1px solid #f0f0f0 ;
        overflow: auto;
        position: fixed;
        z-index: 2;
      }

      .funding_open_deail_container {
        padding-top: 3%;
      }

      .project_open_ready {
        padding-top: 3.1%;

        margin-left: 3.4%;

        color:  #808080;
      }

      .temp_box2{
        font-size: 1.3rem;
        border: 1px solid #f0f0f0;
        border-left-color: #008080;
        border-left-width: 0.3rem;
        padding: 2%;
        font-weight: bold;
        
      }

      .popoking{
          font-size: 1.3rem;
      }

      .btn-outline-primary{
        color: #00a0a0;
        border-color: #00a0a0;
        font-size: 0.95rem;
        
  border-radius:1em;
  -moz-border-radius: 1.5em;
  -webkit-border-radius: 1.5em;

      }
      .btn-outline-primary:hover{

        background-color: #00a0a0;
        border-color:#00a0a0;
        color: white;

      }
      
      .span *{
        color: 	#808080;
      }
      
      .project_create_top_bar_choice{
        color: #808080;
        line-height: 3.5rem;
        font-size: 0.9rem;
        
      }

      .title_msg{
        color: black;
      }

      .project_open_no_intro{
        background: linear-gradient(to bottom, #00cc99 0%, #009999 100%);
        color: white;
        margin-top: 2%;

        padding-bottom: 8%;
        padding-top: 10%;
        padding-left: 10%;
        padding-right: 0%;
      }

      .smallbox{
        border: 1px solid white;
      }
      .funding_ready{
        
        padding-left: 7%;
        padding-top: 6.75%;
        padding-bottom: 6.75%;
        color:    #808080;
        font-weight: bold;
        font-size: 0.85rem;
      }

      .myStep{
        text-decoration: underline;
      }

      .temp_box{
        border: 2px solid #f0f0f0 ;
        padding :2%;
        padding-left: 3.5%;
        color : #202020

      }
      .mintclick{
        background-color: #00a0a0 ;
        border-style: none;
        opacity: 0.6;
      }
      .mintclick:hover{


        opacity: 1;
        background-color: #00a0a0 ;
      }
      .black{
        color: black;
      }

      .star{
          color: red;
      }



      .form-check-input{
        -webkit-transform: scale(2);
        
      }
      .form-group{
          margin-top: 1%;
      }
      .form-control{
        margin-top: 0.8%;
      }
      input::-webkit-outer-spin-button,
      input::-webkit-inner-spin-button {
    /* display: none; <- Crashes Chrome on hover */
    -webkit-appearance: none;
    margin: 0; /* <-- Apparently some margin are still there even though it's hidden */
}

.upload-btn-wrapper {
  position: relative;
  overflow: hidden;
  display: inline-block;
  margin-top: 1%;
}

.btn {
  border: 2px solid gray;
  color: gray;
  background-color: white;
  padding: 8px 20px;
  border-radius: 8px;
  font-size: 20px;
  font-weight: bold;
}

.upload-btn-wrapper input[type=file] {
  font-size: 100px;
  position: absolute;
  left: 0;
  top: 0;
  opacity: 0;
}


      .funding_ready_menubar:hover{

        cursor: pointer;


      }
      .box{
        display: block;
        height: 20%;
        padding-left: 20%;
        font-size: 0.84rem;
        color: black;
        font-weight: bold;
        background-color: 				#F8F8F8;
        line-height: 390%;
        
      }
      .box:hover{
        text-decoration: none;
        color: black;
        cursor: pointer;
      }
      .menu_box{
        height: 300px;
      }

      .project_open_nav{

        width: 260px;
      }

      .run{
        background-color: white;
        border: white;
        color: #808080;
      }
      .run:hover{
        background-color: white;
        border: white;
        color: black;
      }



    </style>

<link rel="stylesheet" href="${contextPath}/resources/pickdate/themes/default.css">
<link rel="stylesheet" href="${contextPath}/resources/pickdate/themes/default.date.css">



  </head>
  <body>
    <div class="project_create_top_bar">
      &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="/helpZoo/resources/images/도와주60.png" />

      <span class="span"> <i class="fas fa-paw popoking"></i> &nbsp;${makerName} </span>
      <div class="float-right project_create_top_bar_choice"> 
        <button type="button" class="btn btn-outline-primary">미리보기</button>&nbsp;&nbsp;&nbsp;

    나가기    &nbsp;&nbsp;&nbsp;&nbsp;
      </div>

      <br />
    </div>
    
    
<script src="${contextPath}/resources/pickdate/js/picker.js"></script>
<script src="${contextPath}/resources/pickdate/js/picker.date.js"></script>
<script src="${contextPath}/resources/pickdate/js/legacy.js"></script>
<script src="${contextPath}/resources/pickdate/js/ko_KR.js"></script>
    
    
    

    <div>
      <div class="funding_open_deail_container">
        <div class="row">
          <nav class="col-md-2 col-lg-2 col-sm-2   project_open_nav">
            <div class="project_open_no_intro  justify-content-center container">

              <small class="smallbox">펀딩</small> <small class="smallbox">펀딩 준비 작성 중</small>
              <br>
              <br>

       ${makerName}의 <br />
              멋진 프로젝트 <br />
              <br>
              프로젝트 번호 ${fundingNo}
              <br>
            </div>




            <div class="funding_ready container align-middle funding_ready_menubar">
            펀딩준비 <i class="fas fa-chevron-up float-right menuopen"></i>
          </div>
          <div class="funding_ready container">
            새소식  <i class="fas fa-lock float-right"></i>
          </div> <div class="funding_ready container">
            오픈 예정 현황 <i class="fas fa-lock float-right"></i>
          </div> <div class="funding_ready container">
            펀딩 현황 <i class="fas fa-lock float-right"></i>
          </div> <div class="funding_ready container">
            결제 현황 <i class="fas fa-lock float-right"></i>
          </div> <div class="funding_ready container">
            펀딩・발송 관리 <i class="fas fa-lock float-right"></i>
          </div> <div class="funding_ready container">
            수수료 관리 <i class="fas fa-lock float-right"></i>
          </div>
          </nav>
          
          
          <!-- 빈공간 만들기용 -->
            <div class="col-md-2 col-lg-2 col-sm-2">
  
          </div>
         

	 <form action="${contextPath}/funding/fundingOpenInfo/${fundingNo}" method="post" role="form" 
				  encType="multipart/form-data">
          <div class="col-md-9 col-lg-9 col-sm-9">
            <div class="container project_open_ready">
              <h1 class="title_msg">기본 정보</h1>
              <br>
              <div>
                프로젝트를 대표할 주요 기본 정보를 입력하세요.
                <br>
                <br>
            </div>        


                프로젝트 제목 <span class="star">*</span> <br>
                <input class="form-control form-control-lg" type="text" placeholder="제목 입력" name="fundingTitle" value="${fundingOpenInfoView.fundingTitle}">
                <small>40자 남음</small>
                <br>
                <br>
                <br>


                목표 금액 <span class="star">*</span><br>
                <small>최소 50만 원 ~ 최대 1억 원으로 설정하세요.</small>
                <input class="form-control form-control-lg" type="number" placeholder="제목 입력" name="fundingGoal"
                value="${fundingOpenInfoView.fundingGoal}"
                >
                
              
                <br>
                <br>
                
                
                
                
                
                
                
                
                대표 이미지 <span class="star">*</span>
                <br>
                <div class="upload-btn-wrapper">
                    <button class="btn"> <i class="fas fa-camera-retro"></i>&nbsp;등록하기</button>
                      <input type="file" name="titleImage" onchange="LoadImg(this,1)"/>
                  </div>
                  <br>
                <small>  3MB 이하의 JPEG, PNG 파일<br>
				                사이즈 : 1200X675 픽셀 이상<br>
				                텍스트 및 로고 삽입 금지<br>
				            </small>
  
  	
  
                <br>
                
                   <c:set var="at"
			value="${file}"/>
                
                
                
                
                
  	<div class="form-inline mb-2">
					<label class="input-group-addon mr-3 insert-label">업로드<br>이미지</label>
					<div class="boardImg" id="titleImgArea">
						<img id="titleImg" width="200" height="200"
						
						<c:if test="${!empty at }">
								src="${contextPath}${at.filePath}/${at.fileChangeName }"
							</c:if>>
						
						
						
						
						
						
						
					</div>
				</div>
  
  
  
                
                <br>


                
               카테고리 <span class="star">*</span><br>
               <select class="form-control form-control-lg" name="category">
                <option <c:if test="${fundingOpenInfoView.category eq 1}">selected</c:if>>장난감</option>
                <option <c:if test="${fundingOpenInfoView.category eq 3}">selected</c:if>>운동기구</option>
                <option <c:if test="${fundingOpenInfoView.category eq 2}">selected</c:if>>사료</option>
                <option <c:if test="${fundingOpenInfoView.category eq 4}">selected</c:if>>옷</option>
                <option <c:if test="${fundingOpenInfoView.category eq 5}">selected</c:if>>간식</option>
                <option <c:if test="${fundingOpenInfoView.category eq 6}">selected</c:if>>기타</option>
              </select>
                <br>  
                <br>

                프로젝트 종료일 <span class="star">*</span><br>
             <input
                    id="input_01"
                    class="datepicker form-control form-control-lg"
                    name="fundingEndDay"
                    type="text"
                    value="${fundingOpenInfoView.fundingEndDay}"
                    >
                    
                    
                    
                    
                <small>요건・콘텐츠 확인 및 프로젝트 진행 일정과 리워드 발송 일정을 함께 고려하여 종료일을 설정해주세요.</small>
                
                
            
             
              

                <br>  
                <br>

                
                검색용 태그 <span class="star">*</span><br>
                <small>엔터를 누르면 태그가 등록됩니다. (최대 10개까지 입력 가능)</small>
                <input class="form-control form-control-lg" type="text" placeholder="태그 입력" name ="fundingTag"
                   value="${fundingOpenInfoView.fundingTag}"
                >



            
                <br>
                <br>
                <button
                type="submit"
                class="btn btn-primary col-md-4 col-sm-4 col-xs-4 btn-lg funding_btn mintclick"
              >저장하기</button>

</form>


<script>


var deleteImages = []; // 삭제될 이미지 정보를 담을 배열

// 이미지 삭제 버튼의 수 만큼 배열을 만들고 모두 false로 초기화
for(var i = 0; i<$(".deleteImg").length; i++){
	deleteImages.push(false);
	
}



function LoadImg(value, num) {
    if (value.files && value.files[0]) {
      var reader = new FileReader();

      reader.onload = function (e) {
        switch (num) {
          case 1:
            $("#titleImg").attr("src", e.target.result);
            break;
          case 2:
            $("#contentImg1").attr("src", e.target.result);
            break;
          case 3:
            $("#contentImg2").attr("src", e.target.result);
            break;
          case 4:
            $("#contentImg3").attr("src", e.target.result);
            break;
        }
        
        // 이미지가 업로드 된 경우 삭제 이미지 목록 (deleteImages) 에서
        // 해당 index값을 false로 변경해라.
        deleteImages[num-1] = false;
        console.log(deleteImages);
        
        
      }

      reader.readAsDataURL(value.files[0]);
    }
  }








$('.datepicker').pickadate({
	  monthsFull:["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
	  weekdaysShort:["일","월","화","수","목","금","토"],
	  today: "오늘",
	  clear: '취소',
	  formatSubmit: 'yyyymmdd',
	  format:"yyyymmdd"
	})

	
	

</script>



  <script type="text/javascript">
       
  
  
  var $input = $( '.datepicker' ).pickadate({
            formatSubmit: 'yyyy/mm/dd',
            // min: [2015, 7, 14],
            container: '#container',
            // editable: true,
            closeOnSelect: false,
            closeOnClear: false,
        })
        
        var picker = $input.pickadate('picker')
        // picker.set('select', '14 October, 2014')
        
    
        
      
        
    </script>





     <script>

     
     
     
                  var menubarFlag = true;

                  var menuBar = $("<div class='menu_box'></div>");

              var require = $("<a class='box funding_require' href='${contextPath}/funding/fundingOpenRequire' >기본 요건</a>");
              var fundingInfo = $("<a class='box funding_info' href='${contextPath}/funding/fundingOpenInfo'>기본 정보</a>");
              var story = $("<a class='box funding_story' href='${contextPath}/funding/fundingOpenStory'>스토리 작성</a>");
              var reward = $("<a class='box funding_reward_build' href='${contextPath}/funding/fundingOpenReward'>리워드 설계</a>");
              var makerInfo = $("<a class='box funding_maker_info' href='${contextPath}/funding/fundingOpenMakerInfo'>메이커 정보</a>");

                    $(".funding_ready_menubar").on("click", function() {
                      console.log( $( this ).text() );
                      console.log("haha");

                      
                      if(menubarFlag){
                      $(".funding_ready_menubar i").remove();

                      $(".funding_ready_menubar").append("<i class='fas fa-chevron-down float-right'></i>")
                     
                    
                      
                        
                        menuBar.append(require,fundingInfo,story,reward,makerInfo)


                        $(".funding_ready_menubar").after(menuBar);
                        






                      menubarFlag = false;



                      }
                      else{

                        $(".funding_ready_menubar i").remove();

                      $(".funding_ready_menubar").append("<i class='fas fa-chevron-up float-right'></i>")

                      menuBar.remove();


                        
                      menubarFlag = true;


                      }






                    });



                </script>



          </div>
        </div>
      </div>
    </div>
  </body>
</html>