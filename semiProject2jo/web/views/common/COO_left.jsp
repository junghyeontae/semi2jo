<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="left">
    
    <div class="user">
        <img src="../resources/image/user_icon.png" class="user_icon">
        <sapn id="user_name"><b>홍 길동</b></sapn> 
        <br>
        <b id="user_dept">부서명</b> <b id="user_job">직급명</b> 
        <br><br><br><br>
        <button id="btn1" class="btn">전자결재</button>
        <button id="btn2" class="btn">근태관리</button>
        <button id="btn3" class="btn">로그아웃</button>
    </div>


    <div class="nav">
        <button id="documentsBtn" class="btn_nav"><img src="../resources/image/documents.svg"><br>결재목록</button>
        <button id="noticeBtn" class="btn_nav"><img src="../resources/image/info-fill.svg"><br>공지사항</button>
        <button id="listBtn" class="btn_nav"><img src="../resources/image/list-ul.svg"><br>부서<br>게시판</button>
        <button id="mypageBtn" class="btn_nav"><img src="../resources/image/date.svg"><br>일정관리</button>
        <button id="jojicBtn" class="btn_nav"><img src="../resources/image/people-fill.svg"><br>조직도</button>
        <button id="managerBtn" class="btn_nav"><img src="../resources/image/envelope-fill.svg"><br>메일</button>
    </div>
    
    <div class="calendarArea">
        <div id="datepicker">
        </div>
    </div>
</div>