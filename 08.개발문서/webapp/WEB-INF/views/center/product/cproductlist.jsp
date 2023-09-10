<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 번호 산출물명 작성자 등록일 파일명 -->
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
	<!-- cproductlist.jsp -->
	<div id="container">
        <%@ include file="/WEB-INF/views/inc/sidebar.jsp" %>

        <div id="content">
        	<p>&nbsp이슈목록 > 이슈</p>
            <hr>
            <div id="topMenu">
                <table>
                    <tr class="tbTop">
                        <td><a href="#">프로젝트 목록</a></td>
                        <td><a href="#">상세정보</a></td>
                        <td><a href="#">WBS</a></td>
                        <td><a href="#">이슈</a></td>
                        <td><a href="#">산출물</a></td>
                    </tr>
                    <tr class="tbMid">
                        <td></td>
                    </tr>
                </table>
            </div>

            <h2 class="subtitle">&nbsp산출물 목록</h2>
<!-- 번호 산출물명 작성자 등록일 파일명 -->
            <table class="listtbl">
                <tr>
                    <th>번호</th>
                    <th>산출물명</th>
                    <th>작성자</th>
                    <th>등록일</th>
                    <th>다운로드</th>
                </tr>
                
                <c:forEach items="${cplist}" var="dto">
                <tr>
                    <td>${dto.productseq}</td>
                    <td>
                    <a href="/pms/center/product/cproductdetail.do?projectseq=${dto.projectseq}&productseq=${dto.productseq}">
                    ${dto.productname}
                    </a>
                    </td>
                    <td>${dto.employeeseq}</td>
                    <td>${dto.productdate}</td>
                    <td><span class="material-symbols-outlined">
download
</span></td>
                </tr>
                </c:forEach>
            </table>
            <div id="pagination" style="text-align: center; margin-bottom: 15px;">${pagination}</div>
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

</script>
</body>
</html>






