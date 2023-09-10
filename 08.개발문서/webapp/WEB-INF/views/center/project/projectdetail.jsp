<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/pms/asset/css/common.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

<style>
* {
font-family: 'Noto Sans KR', sans-serif;
}
        body {
            margin: 0;
            padding: 0;
        }

        #container {
            display: flex;
            height: 100vh;
        }

        #sidebar {
            width: 250px;
            background-color: #F2F4F7;
            color: #1C1C1C;
            font-family: "맑은 고딕", Arial, sans-serif;
            font-size: 17px;
        }

        #sidebar ul {
           background-color: #F2F4F7;
           list-style-type: none;
           padding-inline-start: 1px;
           padding-inline-end: 0px;
           /* padding-left: 20px; */
        }

       /* #sidebar ul :hover {
           background-color: #D9DADF;
        } */
        

        #sidebar > #info {
            color: #1C1C1C;
            font-size: small;
            text-align: center;
        }

        #sidebar a {
            color: #1C1C1C;
            text-decoration: none;
            padding: 10px 15px;
            display: block;
        }
        

        #sidebar a:hover {
            background-color: #D9DADF;
        }
        
        .manage ul {
            padding-left: 10px;
        }

        .manage ul li {
            margin-bottom: 5px;
        }

        .manageDetail ul li {
            padding-left: 30px;
        }

        #content {
            flex: 1;
            /* padding: 20px; */
        }

        #content > hr {
            border-width: 3px;
            border-style: solid;
            color: #9DB2BF;
        }

        #topMenu > table {
            /* width: 100%; */
            width: 100%;
            table-layout: fixed;
            align-items: center;
            /* margin-left: 20px; */
            margin-bottom: 50px;
        }

        #topMenu .tbTop {
            height: 70px;
            background-color: #2A3954;
        }

        #topMenu .tbTop > td:hover {
            background-color: #000032;
        }

        #topMenu .tbTop td {
            width: 20%;
            text-align: center;
            font-size: large;
            font-weight: bold;
        }

        #topMenu a {
            color: white;
            text-decoration: none;
        }

        h2.subtitle {
            margin-left: 55px;
            color: #1C1C1C;
        }

        img {
            width: 110px;
            height: 120px;
            margin-left: 20px;
        }

      .smwork {
           padding-left: 27px;
           padding-right: 27px;
           padding-top: calc(3px - 3px);
           padding-bottom: calc(3px - 3px);
           font-size: 15px;
           text-indent: -2px;
        }
    

</style>

</head>
<body>


	<div id="container">
		<%@ include file="/WEB-INF/views/inc/sidebar.jsp" %>

		<div id="content">
			<h2>프로젝트 센터 > 프로젝트 상세정보</h2>
			<div id="topMenu">
				<hr>
				<table>
					<tr class="tbTop">
						<td><a href="#">프로젝트 목록</a></td>
						<td><a href="#">상세정보</a></td>
						<td><a href="/pms/center/wbs/view.do?pjseq=${pjseq}">WBS</a></td>
						<td><a href="/pms/center/issue/cissuelist.do?pjseq=${pjseq}">이슈</a></td>
						<c:if test="${complete eq '진행중'}">
						<td><a href="/pms/center/product/cproductlist.do?pjseq=${pjseq}">산출물</a></td>
						</c:if>
						<c:if test="${complete eq '완료'}">
						<td><a href="/pms/center/version/versionlist.do?pjseq=${pjseq}">버전</a></td>
						</c:if> 
					</tr>
					<tr>
						<td colspan="5"
							style="text-align: right; background-color: transparent; border: none;">
							<select>
								<option selected="selected">웹개발 프로젝트</option>
						</select>
						</td>
					</tr>

					<table style="border-collapse: collapse;">
						<h2 class="subtitle">프로젝트 상세정보</h2>
						<tr class="tbMid">
								<table id="tbllist" class="listtbl">
									<tr class="trMenu">
										<th class="short">프로젝트 명:</th>
										<td class="tdShort">${dto.name}</td>
										<th class="short right">프로젝트 유형:</th>
										<td class="tdShort">${dto.projectType}</td>
									</tr>

									<tr class="trMenu">
										<th class="short right">시작일:</th>
										<td class="tdShort right">${dto.startDate}</td>
										<th class="short right">종료일:</th>
										<td class="tdShort right">${dto.endDate}</td>
									</tr>

									<tr class="trMenu">
										<th class="short">PM:</th>
										<%-- <c:if test="${detail.lv == 2}"> --%>
											<td class="tdShort right"></td>
										<%-- </c:if> --%>
										<th class="short">PA:</th>
										<td class="tdShort right">
												<%-- <c:forEach varStatus="status" begin="1" end="4"> --%>
													<div></div>
												<%-- </c:forEach> --%>
											</td>
									</tr>
									<tr class="trMenu">
										<th class="short right">R&D 개발:</th>
										<td class="tdShort right">${dto.rndType}</td>
										<th class="short">초기예산:</th>
										<td class="tdShort">${dto.budget}</td>
									</tr>
									<tr class="trMenu">
										<th class="short thContent">프로젝트 내용:</th>
										<td colspan="3" class="tdShort">${dto.content}</td>
									</tr>
									
									
									
								</table>
							
						</tr>
					</table>


					<h2 class="subtitle">비용정보</h2>
					<table style="border-collapse: collapse;">
						<thead>
							<tr class="tbMid">
								<table class="listtbl" id="cost">
									<tr class="trMenu">
										<th class="short right">프로젝트 명</th>
										<th class="short right">지출항목</th>
										<th class="short right">지출비용</th>
										<th class="short right">지출일자</th>
										<th class="short right">등록일</th>
										<th class="short right"><input type="button" name="btn1"
											id="btnRowAdd" class="btn btnAdd" value="+"
											onclick="rowAdd();">
											<input type="button" name="btn1"
											id="btnCostAdd" class="btn btnAdd" value="등록"
											onclick="rowAdd();">
										</th>
									</tr>
							</tr>
						</thead>
						
						<tbody>
									
								<c:forEach items="${costList}" var="cdto" varStatus="colStatus">
								<tr>
									<td class="tdShort">${cdto.projectName}</td>
										<td class="tdShort">${cdto.items}</td>
										<td class="tdShort">${cdto.money}</td>
										<td class="tdShort right">${cdto.costDate}</td>
										<td class="tdShort right">${cdto.signDate}</td>
										<td class="tdShort">
										<input type="button" name="btn2"
											id="btnRowDel" class="btnred" value="-" onclick="">
										</td>
									
								<c:if test="${colStatus.count % 1 == 0}">
									<tr></tr>
								</c:if>
								  </tr>
								</c:forEach>

						</tbody>

						</table>
				</table>
									<div style="text-align: center;">
									<input type="submit" name="btnAdd" id="btnAdd"
										class="btn btnAdd" value="수정"
										onclick="location.href='/pms/center/project/projectlist.do';">
									<input type="button" name="btnBack" id="btnBack" class="btnred"
										value="취소"
										onclick="location.href='/pms/center/project/projectlist.do';">
								</div>


		</div>
		</div>
								<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
								<script src="js/jquery-3.6.4.js"></script>
								
								<script>
									var manageMenu = document
											.querySelector('.manage');
									var manageDetailMenu = document
											.querySelector('.manageDetail');

									manageMenu
											.addEventListener(
													'click',
													function() {
														manageDetailMenu.style.display = manageDetailMenu.style.display === 'none' ? 'block'
																: 'none';
													});
									let seq = ${dto.projectSeq};
									
// 									alert(seq);
				

									/* 행추가 해주는 함수 */
									function rowAdd() {

										var innerHtml = "";
										innerHtml = '<tr>'
												+ '<td class="tdShort"><input type="text" name="txtname" class="txt1"></td>'
												+ '<td class="tdShort"><input type="text" name="txtname" class="txt1"></td>'
												+ '<td class="tdShort"><input type="text" name="txtname" class="txt1"></td>'
												+ '<td class="tdShort"><input type="text" name="txtname" class="txt1"></td>'
												+ '<td class="tdShort"><input type="text" name="txtname" class="txt1"></td>'
												+ '<td class="tdShort">'
												+ '<input type="button" name="btn2" id="btn_rowDel" class="btnred" value="-" onclick="rowDelete(this)">'
												+ '</td>' + '</tr>';
										$('#cost > tbody:last').append(innerHtml);
									}

									
									function rowDelete(btn) {
										$(btn).closest('tr').remove();
									}

									
									
									const input = document.querySelector('#budget');
									input.addEventListener(
													'keyup',
													function(e) {
														let value = e.target.value;
														value = Number(value
																.replaceAll(
																		',', ''));
														if (isNaN(value)) { //NaN인지 판별
															input.value = '';
														} else { //NaN이 아닌 경우
															const formatValue = value
																	.toLocaleString('ko-KR');
															input.value = formatValue;
														}
													})
										
													
									
													
													
									$('#btnRowAdd').click(function(){
										
											
									
										let seq = ${dto.projectSeq};
										
										var rows = document.querySelectorAll('tbody tr');

										// 각 행을 순회하며 요소를 찾습니다
										rows.forEach(function(row) {
										  // projectName 요소를 찾습니다
										  var projectNameElement = row.querySelector('.tdShort');
										  var projectName = projectNameElement.textContent;

										  // items 요소를 찾습니다
										  var itemsElement = projectNameElement.nextElementSibling;
										  var items = itemsElement.textContent;

										  // money 요소를 찾습니다
										  var moneyElement = itemsElement.nextElementSibling;
										  var money = moneyElement.textContent;

										  // costDate 요소를 찾습니다
										  var costDateElement = moneyElement.nextElementSibling;
										  var costDate = costDateElement.textContent;

										  // signDate 요소를 찾습니다
										  var signDateElement = costDateElement.nextElementSibling;
										  var signDate = signDateElement.textContent;
										
										
										
										
										$.ajax({
											
											url: '/pms/center/project/projectdetail.do',
											type: 'POST',
											data: {
												
												projectName: projectName,
												items: items,
												money: money,
												costDate: costDate,
												signDate: signDate,
												seq: projectSeq
												
											},
											success: function(result){
												
											
												
												
											
											},
											error: (a,b,c) => console.log(a,b,c)
											
											
										});  
										
										});
									
									});  
													
													
													
								
													
								</script>
</body>
</html>