<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>COO - 근태관리</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="../../resources/js/TA/TAscript.js"></script>
    
    <!-- css Link -->
    <link rel="stylesheet" href="../../resources/css/TA/TAcss.css">
</head>
<body>
    <div id="area">
        <div id="area1">
            <div id="day"></div>
            <div id="time"></div>
            <hr>
            <span class="start">출근시간</span>
            <span id="start">08 : 50</span> <br>    <!--로직짜야됨--> 
            <span class="start">퇴근시간</span>
            <span id="end">18 : 10</span> <br>    <!--로직짜야됨--> 

            <button id="startBtn" class="btn">출근</button>
            <button id="endBtn" class="btn">퇴근</button>
            <button id="leaveBtn" class="btn">조퇴/외근</button>
            <button id="vacationBtn" class="btn">휴무신청</button>
            <button class="btn">근태현황</button>
        </div>

        <div id="blankArea" class="changeArea"></div>

        <div id="leaveBtnClickArea" class="changeArea" style="display: none;">
            <br>
            <div class="leaveArea1">
                <p><b>1. 항목을 선택하세요.</b></p>
                <input type="radio" id="leave_radio1" class="radioL" name="leaveRadio"><label for="leave_radio1">조퇴</label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" id="leave_radio2" class="radioL" name="leaveRadio"><label for="leave_radio2">외근</label>
                <br>
                <p><b>2. 시간을 선택하세요.</b></p>
                <input type="time" id="leave_sTime">&nbsp;&nbsp;<label> - </label>
                <input type="time" id="leave_eTime">
                <br>
                <p><b>3. 승인권자를 선택하세요.</b></p>
                <select name="approver" id="approverSelectBox">      <!-- 팀장 혹은 부장 상무 부사장 사장 등이 나올 수 있도록 로직 짜야됨 -->
                    <option value="">홍길동</option>
                    <option value="">홍길동</option>
                    <option value="">홍길동</option>
                </select>
                <br>
                <p><b>4. 상세내용을 입력하세요.</b></p>
                <textarea id="detail_contents" cols="49" rows="8"></textarea>
                <br>
                <button id="send" class="sendBtn">문서상신</button>     <!-- 승인권자에게 1,2,3 내용 담아서 전송 로직 -->
            </div>
        </div>

        <div id="vacationBtnClickArea" class="changeArea" style="display: none;">
            <br>
            <div class="leaveArea1">
                <p><b>1. 항목을 선택하세요.</b></p>
                <input type="radio" id="vacation_radio1" class="radioL" name="vacationRadio"><label for="vacation_radio1">연차</label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" id="vacation_radio2" class="radioL" name="vacationRadio"><label for="vacation_radio2">월차</label>
                <br>
                <p><b>2. 기간을 선택하세요.</b></p>
                <input type="date" id="vacation_sDate">&nbsp;&nbsp;<label> - </label>
                <input type="date" id="vacation_eDate">
                <br>
                <p><b>3. 승인권자를 선택하세요.</b></p>
                <select name="approver" id="approverSelectBox">      <!-- 팀장 혹은 부장 상무 부사장 사장 등이 나올 수 있도록 로직 짜야됨 -->
                    <option value="">홍길동</option>
                    <option value="">홍길동</option>
                    <option value="">홍길동</option>
                </select>
                <br>
                <p><b>4. 상세내용을 입력하세요.</b></p>
                <textarea id="detail_contents" cols="49" rows="8"></textarea>
                <br>
                <button id="send" class="sendBtn">문서상신</button>     <!-- 승인권자에게 1,2,3 내용 담아서 전송 로직 -->
            </div>
        </div>

        <div id="TAstatusArea" class="changeArea" style="display: none;">

        </div>
    </div>



</body>
</html>