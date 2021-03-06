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
    <title>DowaZoo</title>
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
      integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
      crossorigin="anonymous"
    />
    <script
      src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
      crossorigin="anonymous"
    ></script>
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
      .div {
        width: 5em;
        height: 5em;
        border-radius: 50%;
        background-color: #20b2aa;
        border: 4px solid #fff;
        box-shadow: 0 0 0 5px #20b2aa;
        color: white;
        font-size: 0.9rem;
      }

      .div2 {
        width: 5em;
        height: 5em;
        border-radius: 50%;
        border: 4px solid #fff;
        box-shadow: 0 0 0 5px#20b2aa;
        font-size: 0.9rem;
        font-weight: bold;
      }

      .container {
        padding: 5% 7.8% 5%;
      }

      h5 {
        display: inline;
      }
      .alert_funding {
        font-size: 0.8rem;
      }
      .fa-info-circle {
        color: #20b2aa;
      }

      .bmi {
        /*my additional class name -for card*/
        margin-left: 18%;
        margin-right: 18%;
        width: auto;
        margin-top: 6%;
      }

      .small {
        font-size: 0.8rem;
      }
      .card-text {
        padding-top: 2%;
        padding-bottom: 2%;
      }

      .littlebig {
        -webkit-transform: scale(2); /* Safari and Chrome */
        color: #7fcdcd;
      }

      .lasttt {
        margin-top: 7%;
      }

      .checkboxSmallSize{
        -webkit-transform: scale(1.2);
      }

      .info_card{


        width: 160px;
        height: 100px;

        background-color: 			#E8E8E8;
        margin-left: 20%;
      }

      .fa-user-circle{
        -webkit-transform: scale(2); 
        padding-top: 10%;
      }
      .smallicon{

        width: 28px;

      }
      .col{
      }

      .add_Money{
        margin-top: 1%;
      }

      .mintclick{
        margin-left: 35%;
          background-color:  #20b2aa;
        border-color: white;
      }

    
      .modal-content{
        font-size: 0.8rem;
      }

      .info_table{
        width: 100%;
        height: 50%;
      }

      .info_info{

        width: 30%;
        height: 50%;

      } 
      
      td{
        height: 150%;
      }
      .papapa{
        padding-top: 1.57%;
      }

      .run_info{
        background-color: white;
        color: #808080;
        border-color: white;
        text-decoration:underline
      }



    </style>
  </head>
  <body>
  
  <jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <div class="container">
      <div class="d-flex justify-content-around">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

        <div class="div2 papapa">
          &nbsp;&nbsp;&nbsp;리워드 <br />&nbsp;&nbsp;&nbsp;&nbsp;선택
        </div>
        <div class="div"><br />결제 예약</div>
        <div class="div2"><br />소문 내기</div>
      </div>

      <c:forEach var="item" items="${rewardList}">
      <hr>
      ${item.title}

      <div class="float-right">수량 : ${item.amount}개 ${item.price}원</div>





      
    </c:forEach>
    
    <hr>
    추가후원금   <div class="float-right">0원</div>
    <hr>
    배송비   <div class="float-right">2500원</div>
      <hr>
      펀딩금액   <div class="float-right">${orderReward.totalAmount}</div>
      <hr>
      최종결제금액   <div class="float-right">${orderReward.totalAmount}</div>

    




    








    

        <br><br>
        <br>
        
        <h4 class="card-title">약관 동의</h5>
        <div class="card text-center lasttt">
          <div class="card-body">
           
              <br>
              <input type="checkbox" class="float-left littlebig" />       <h5>전체 동의하기</h4>
            
                <hr>

                <input type="checkbox" class="float-left littlebig" />       <h5>제 3자에 대한 개인정보 제공 동의</h4>  <button type="button" class="btn btn-primary run_info float-right" data-toggle="modal" data-target="#exampleModal">
                  보기
                  </button>   &nbsp;&nbsp;&nbsp;&nbsp;
                  <br><br>
                  <input type="checkbox" class="float-left littlebig" />       <h5>책임 규정에 대한 동의</h4>     <button type="button" class="btn btn-primary run_info float-right" data-toggle="modal" data-target="#exampleModal2">
                    보기
                    </button> 



          </div>
        </div>




        </div>



        <br><br>
        




    <br />
  </div>


  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">제 3자에 대한 개인정보 제공 동의</h5>
        </div>
        
<br>
        '펀딩하기'를 통한 결제 및 리워드 전달 서비스를 제공하기 위해, 이용자의 사전 동의 아래 제3자(프로젝트 메이커)에게 제공합니다.
        <br>
        <br>
메이커에게 전달되는 개인 정보는 기재된 목적 달성 후 파기에 대한 책임이 메이커에게 있으며,

<br>
<br> 파기하지 않아 생기는 문제에 대한 법적 책임은 메이커에게 있습니다.

<br>
<br>
아래 내용에 대하여 동의를 거부하실 수 있으며, 거부 시 서비스 이용이 제한됩니다.

<hr>


        <table class="smalltable info_table">
            <tr>
              <td class="info_info">
                제공받는자
              </td>
              <td>
                주식회사 HelpZoo 
              </td>
              </tr>
              <tr>
                <td class="info_info">
                  목적
                </td>
                <td>
                  리워드 펀딩 정보 확인 및 발송, 리워드 발송과 관련된 공지 및 민원처리
                </td>
                </tr>

                <tr>
                  <td class="info_info">
                    항목
                  </td>
                  <td>
                    서포터 정보(이름, 이메일, 휴대폰 번호), 수취인 정보(이름, 휴대폰 번호, 주소, 배송 시 요청사항)
                  </td>
                  </tr>

                  <tr>
                    <td class="info_info">
                      보유기간
                    </td>
                    <td>
                      펀딩 마감 후 1년
                    </td>
                    </tr>
        </table>

        <div class="modal-footer">
          <button type="button" class="btn btn-primary">확인</button>
        </div>
      </div>
    </div>
  </div>


  <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">제 3자에 대한 개인정보 제공 동의</h5>
        </div>
        
        helpzoo는 플랫폼을 제공하는 중개자로 크라우드펀딩을 받는 당사자가 아닙니다.   <br>  <br>보상품 제공 등에 관한 지연,
        
        제품의 하자 등으로 인한 일체의 법적책임은 펀딩을 받는 프로젝트 개설자가 부담합니다.    <br>   <br>
      
        하지만, helpzoo는 프로젝트 진행자와 후원자간의 원활한 의사소통을 위해 최선의 노력을 다하고 있습니다.

        <div class="modal-footer">
          <button type="button" class="btn btn-primary">확인</button>
        </div>
      </div>
    </div>
  </div>




	<form method="post" action="${contextPath}/fundingAttend/kakaoPay">
	

	<c:forEach var="itemId" items="${orderReward.id}">
	 <input type="hidden" value="${itemId}" name="id">
    </c:forEach>
	 
	 <input type="hidden" value="${fundingNo}" name="fundingNo">
	 
	 
	 
	 <c:forEach var="itemAm" items="${orderReward.amount}">
	 <input type="hidden" value="${itemAm}" name="amount">
	 </c:forEach>
	 
	 
	 
    <button class="btn btn-primary col-md-4 col-sm-4 col-xs-4 btn-lg funding_btn mintclick ">카카오페이로 결제하기</button>
    
  
    
    
    
</form>



      </div>


    </div>

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
  </body>
</html>
