<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Website CSS style -->
<link rel="stylesheet" type="text/css"
   href="/resources/vendor/bootstrap/css/register.css">


<link href="/resources/vendor/bootstrap/css/bootstrap.min.css"
   rel="stylesheet" type="text/css" />

<!-- Website Font style -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">

<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Passion+One'
   rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen'
   rel='stylesheet' type='text/css'>
<title>Admin</title>

</head>
<body>
   <div class="container">
      <div class="row main">
         <div style="width:100%; test-align: left;">
            <div class="panel-title text-center">
               <h1 class="title">Company Name</h1>
               <hr />
            </div>
         </div>
         
         <div>
         <img src="${login.MIMG }"/>
         </div>
         
         <div class="main-login main-center">
              <input type='hidden' name="MPW" value="${login.MPW}">
             <div class="form-group">
                  <div class="cols-sm-10">
                     <div class="input-group">
                     <span class="input-group-addon">사&nbsp; 번 </span>
                        <input type="text" class="form-control"
                             value="${login.MID}" />
                     </div>
                  </div>
               </div>
        
            
           
               <div class="form-group">
                  <div class="cols-sm-10">
                     <div class="input-group">
                        <span class="input-group-addon">이&nbsp; 름</span> <input type="text" class="form-control"
                           name="MNAME"  value="${login.MNAME}" />
                     </div>
                  </div>
               </div>

            

               <div class="form-group">
                  <div class="cols-sm-10">
                     <div class="input-group">
                        <span class="input-group-addon">부&nbsp; 서</span> <input type="text" class="form-control"
                           name="MDP"  value="${login.MDP}" />
                     </div>
                  </div>
               </div>

               <div class="form-group">
                  <div class="cols-sm-10">
                     <div class="input-group">
                        <span class="input-group-addon">연락처</span> <input type="text" class="form-control"
                           name="MPHONE"  value="${login.MPHONE}" />
                     </div>
                  </div>
               </div>

               <div class="form-group">
                  <div class="cols-sm-10">
                     <div class="input-group">
                        <span class="input-group-addon">이메일</span> <input
                           type="text" class="form-control" name="MMAIL"  value="${login.MMAIL}" />
                     </div>
                  </div>
               </div>
          
               <%-- <div class="form-group ">
                  <input type='text'name="checkIn" value="${check.checkIn }"/>
               </div>
               
              
               <div class="form-group ">
                  <input type='text'name="checkIn" value="${check.checkIn }"/>
               </div> --%>
         </div>
         
         
         
         <!-- 출퇴근시간 -->
			<div class="box">
				<div class="box-body">
					<table class="table table-bordered">
						<tr>
							<th>날짜</th>
							<th>출근</th>
							<th>퇴근</th>
							<th>확인</th>
						</tr>

						<c:forEach items="${list}" var="checkVO">

							<tr>
							
							<td>${checkVO.checkDate}</td>
								<%-- <td><a
									href='/sboard/readPage${pageMaker.makeSearch(pageMaker.cri.page) }&bno=${boardVO.bno}'>
										${boardVO.title} </a></td> --%>
								<td>${checkVO.checkIn}</td>
								<td>${checkVO.checkOut}</td>
								<td></td>
							</tr>

						</c:forEach>

					</table>
				</div>
				<!-- /.box-body -->
<%-- 

				<div class="box-footer">
                  <div class="text-center">
                  <ul class="pagination">

                     <c:if test="${pageMaker.prev}">
                        <li><a
                           href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
                     </c:if>

                     <c:forEach begin="${pageMaker.startPage }"
                        end="${pageMaker.endPage }" var="idx">
                        <li
                           <c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
                           <a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
                        </li>
                     </c:forEach>

                     <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                        <li><a
                           href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
                     </c:if>

                  </ul>
               </div>
 --%>
					

				</div>
				<!-- /.box-footer-->
			</div>
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
</div>

<script>
	
	$(document).ready(
			function() {

				$('#searchBtn').on(
						"click",
						function(event) {

							self.location = "list"
									+ '${pageMaker.makeQuery(1)}'
									+ "&searchType="
									+ $("select option:selected").val()
									+ "&keyword=" + $('#keywordInput').val();

						});

				$('#newBtn').on("click", function(evt) {

					self.location = "register";

				});

			});
</script>
         
      </div>
      
   </div>
   
              
   

   <script src="/resources/vendor/jquery/jquery.min.js"></script>
   <script src="/resources/vendor/popper/popper.min.js"></script>
   <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>