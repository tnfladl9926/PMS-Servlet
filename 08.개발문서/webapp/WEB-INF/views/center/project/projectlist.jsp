<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <h4>프로젝트 센터</h4>
            <hr>
            <form action="/pms/center/project/projectlist.do" method="POST">
            <div id="search">
            	<select name= "column" class="form-select form-select-sm" aria-label=".form-select-sm example">
            		<option value="PM">이름</option>
            		<option value="name">제목</option>
            	</select>
                <input type="text" name="searchBar" id="searchBar" class="txtbox" placeholder="검색어 입력">
                <input type="submit" class="btn btn-primary" value="검색" name="searchBtn" id="searchBtn">
                <input type="button" value="프로젝트 등록" class="btn btn-primary" name="addBtn" id="addBtn" onclick="location.href='/pms/center/project/projectadd.do';">
            </div>
            </form>
            <div id="table_container">
                <table>
                    <tr class="tbMid">
                            <table id="tbllist" class="listtbl">
                                <thead>
                                  <tr>
                                    <th>프로젝트명</th>
                                    <th>프로젝트 유형</th>
                                    <th>PM</th>
                                    <th>기간</th>
                                  </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${list}" var="dto">
                                  <tr>
                                    <td><a href="/pms/center/project/projectdetail.do?projectSeq=${dto.projectSeq}">${dto.name}</a></td>
                                    <td>${dto.projectType}</td>
                                    <td></td>
                                    <td>${dto.startDate}  ${dto.endDate}</td>
                                  </tr>
                                 </c:forEach>
                                </tbody>
                            </table>
                   	</tr>
               	 </table>
            </div>
   	 	 </div>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <!-- <script src="js/jquery-3.6.4.js"></script> -->
    <!-- <script type="text/javascript" src="js/bootstrap.js"></script> -->
    <script>
        var manageMenu = document.querySelector('.manage');
            var manageDetailMenu = document.querySelector('.manageDetail');
        
            manageMenu.addEventListener('click', function() {
                manageDetailMenu.style.display = manageDetailMenu.style.display === 'none' ? 'block' : 'none';
        });
    </script>
</body>
</html>