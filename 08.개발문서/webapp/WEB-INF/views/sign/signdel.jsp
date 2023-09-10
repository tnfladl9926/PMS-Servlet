<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="css/example.css"> -->
    <!-- 부트스트랩 -->
    <!-- <link rel="stylesheet" href="css/bootstrap.css">  -->
    <!-- 아이콘 설치 -->
    <!-- <link rel="stylesheet" href="../node_modules/bootstrap-icons/font/bootstrap-icons.css"> -->
    <!-- 동현 버튼 -->
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
    
        
        .centered-table {
		    display: flex;
	        justify-content: center;
	        align-items: center;
		}        
		.listtbl > tbody > tr > th:first-child {
        width: 120px; 
        }
    
</style>
</head>
<body>
       <div id="container">
        <%@ include file="/WEB-INF/views/inc/sidebar.jsp" %>

        <div id="content">
        	<p>&nbsp결재 안건 관리 > 상세정보</p>
            <hr>
            <div id="topMenu">
                <table>
                    <tr class="tbTop">
                        <td><a href="/pms/sign/signlist.do">결재 목록</a></td>
                        <td><a href="/pms/sign/signadd.do">결재 등록</a></td>
                    </tr>
<!--                     <tr class="tbMid"> -->
<!--                         <td colspan="5" style="text-align: right;background-color: transparent;border: none;"> -->
<!--                         <select> -->
<!--                             <option selected="selected">웹개발 프로젝트</option> -->
<!--                         </select> -->
<!--                     </td> -->
<!--                     </tr> -->
                </table>
            </div>

            <h2 class="subtitle">결재 상세정보</h2>
            
            <form method="POST" action="/pms/sign/signdel.do">
            <div class="centered-table">
            <table class="listtbl" style="text-align: center; width: 400px;">
            	<tr>
            		<th colspan="2" style="text-align: center;">삭제하기</th>
            	</tr>
            	<tr>
            		<td>정말 삭제하시겠습니까?</td>
            	</tr>
            	<tr>
            		<td>
            			<button type="submit" class="btn" value="삭제">삭제하기</button>	
            			<button type="button" class="btnred"
				onclick="history.back();">취소하기</button>
            		</td>
            	</tr>
            </table>
            </div>

            <div style="text-align: center;">
<!--             	<button type="submit" class="btn">확인</button> -->
<!--                 <input name="btn2" id="btn" class="btnred" value="취소" style="width: 25px;" onclick="history.back();"> -->
                <div style="text-align: right; margin-right: 100px;">
				  <a href="/pms/sign/signlist.do" class="btn">목록</a>
				</div>
            </div>
          <input type="hidden" name="signseq" value="${signseq}">
          </form>
        </div>
    </div>
    <script src="js/jquery-3.6.4.js"></script>
    <script>
        var manageMenu = document.querySelector('.manage');
        var manageDetailMenu = document.querySelector('.manageDetail');

        manageMenu.addEventListener('click', function () {
            manageDetailMenu.style.display = manageDetailMenu.style.display === 'none' ? 'block' : 'none';
        });
    </script>

</body>
</html>






















