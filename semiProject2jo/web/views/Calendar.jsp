<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>COO - 일정관리</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
    <link rel="stylesheet" href="../resources/css/common/basic.css">

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
    
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
    <script src="../resources/js/Calendar/jquery.datetimepicker.full.min.js"></script>
    <script src="../resources/js/Calendar/jquery.datetimepicker.js"></script>


    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <link href="../resources/css/Calendar/main2.css" rel="stylesheet" />
    <link href="../resources/css/Calendar/main.css" rel="stylesheet" />
    <script src="../resources/js/Calendar/main3.js"></script>
    <script src="../resources/js/Calendar/main2.js"></script>
    <script src="../resources/js/Calendar/main.js"></script>
    <script src="../resources/js/Calendar/editEvent.js"></script>
    <script src="../resources/js/Calendar/addEvent.js"></script>
    <script src="../resources/js/Calendar/etcSetting.js"></script>
    
    
    <!-- 추가 js / css -->
    <script src="../resources/js/Calendar/js1.js"></script>
	<link href="../resources/css/Calendar/css1.css" rel="stylesheet" />

</head>

<body>
    <window></window>
    <div class="total">
        <!-- 헤더부분 include -->
    	<%@ include file="common/COO_header.jsp" %>
    	
    	<!-- 화면 좌측 고정부 include -->
    	<%@ include file="common/COO_left.jsp" %>


        <div class="right">

            <div id="calendar"></div>

            <div id="todolistArea">
                <h3 id="todo_date">2020년 01월 21일 </h3>
                <div id="todo_list">
                    <ul>
                        <li>January 01 All Day Event </li>
                        <li>January 07 ~ 09 Long Event</li>
                        <li>January 11 ~ 12 Conference </li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- 풋터 부분 include -->
        <%@ include file="common/COO_footer.jsp" %>
</div>
</body>

</html>