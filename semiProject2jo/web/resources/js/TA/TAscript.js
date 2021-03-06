

$(function(){
    //  현재시간 설정
    $('#day').html(new Date().toLocaleDateString());
    $('#time').html(new Date().toLocaleTimeString());

    var time = setInterval(timer, 1000);
    function timer(){
        $('#time').html(new Date().toLocaleTimeString());
    }

    //  출근버튼 클릭
    $('#startBtn').click(function(){
        var startTime = new Date();

        //  이미 출근을 했다면 alert 이미 출근 했습니다.

        if(startTime.getHours() >= 9){
            alert(startTime.toLocaleString() + " 출근!\n지각입니다!!!");
        }else{
            alert(startTime.toLocaleString() + " 출근!\n정상 출근입니다.");
        }


        //  출근 시간(sapn)이 바뀌는 로직
        //  출근 시간 DB 입력 로직
    });

    //  퇴근버튼 클릭
    $('#endBtn').click(function(){
        var endTime = new Date();

        if(endTime.getHours() < 18){
            alert(endTime.toLocaleString() + " 퇴근 불가!\n퇴근시간전입니다!!");
        }else{
            alert(endTime.toLocaleString() + " 퇴근!\n고생하셨습니다!!!");
        }

        //  퇴근 시간(sapn)이 바뀌는 로직
        //  퇴근 시간 DB 입력 로직 
    });

    //  조퇴/외근 버튼
    $('#leaveBtn').click(function(){
        $('.changeArea').css("display",'none');
        $('#leaveBtnClickArea').css({
            'display':'block',
            'background':'#4a83da'
        });
    });

    //  조퇴 radio 클릭 시
    $(".radioL").change(function(){
        if($('#leave_radio1').prop("checked")){
            $('#leave_eTime').attr('disabled',true).val('18:00');
        }else{
            $('#leave_eTime').attr('disabled',false);
        }
    });

    //  조퇴/외근 버튼
    $('#vacationBtn').click(function(){
        $('.changeArea').css("display",'none');
        $('#vacationBtnClickArea').css({
            'display':'block',
            'background':'#4a83da'
        });
    });
    

});