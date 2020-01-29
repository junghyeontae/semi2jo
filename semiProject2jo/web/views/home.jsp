<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>COO - 홈</title>

    <link rel="stylesheet" href="../resources/css/common/basic.css">

    <!-- home 이미지 -->
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>

    <!-- 달력 -->
    <!-- // jQuery UI CSS파일  -->
    <link rel="stylesheet" href="../resources/css/common/jquery-ui.css" />  
    <link rel="stylesheet" href="../resources/css/common/jquery-ui2.css" />  
    <!-- // jQuery 기본 js파일 -->
    <script src="../resources/js/common/calendar.js"></script>  
    <!-- // jQuery UI 라이브러리 js파일 -->
    <script src="../resources/js/common/calendar2.js"></script>
    <!-- 왼쪽 메뉴 쿼리 -->
    <script src="../resources/js/common/leftmenu.js?v=<%=System.currentTimeMillis() %>"></script>
    
    <!--메인메뉴쿼리  -->
    <!-- <script src="../resources/js/home/mainMenu.js"></script> -->
    
</head>
<body>
    <div class="total">
    	<!-- 헤더부분 include -->
    	<%@ include file="common/COO_header.jsp" %>
    	
    	<!-- 화면 좌측 고정부 include -->
    	<%@ include file="common/COO_left.jsp" %>
        

        <div class="right">
            <div id="notice" style="background:#f8f9fa;"></div>
            <span id="todo"></span>
            <span id="approval"></span>
        </div>

		<!-- 풋터 부분 include -->
        <%@ include file="common/COO_footer.jsp" %>
    </div>
</body>
</html>