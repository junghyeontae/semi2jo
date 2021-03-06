    $(function(){
        
        // function getContextPath(url){
        //    var find = document.location.href;
        //     if(find.length > 33){
        //       find = find.substring(0,33).concat(url);  
        //       return find;
        //     }else{
        //       return url;
        //     }
        // };

        //  달력 생성 메소드
        $('#datepicker').datepicker({

        });

        //  HOME 버튼 - 메인으로 이동
        $('#homeBtn').click(function(){
            location.href="/semi/views/home.jsp";
        });

        //  근태관리 버튼 - 팝업 띄우기
        $('#btn2').click(function(){
            var url = "/semi/views/popup/TA.jsp";
            var name = "근태관리";
            var option = 'top=100px, left=300px width=500px,height=800px, resizable=no, location=no, toolbars=no,scrollbars=no';
            window.open(url, name, option);
        });

        //  전자결재 버튼 - 팝업 띄우기
        $('#btn1').click(function(){
            var url = "";
            var name = "문서상신";
            var option = 'top=80px, left=250px width=920px,height=850px, resizable=no, location=no, toolbars=no,scrollbars=no';
            window.open(url, name, option);
        });

        //  로그아웃 Btn - 로그인 화면으로 이동
        $('#btn3').click(function(){
            location.href ="/semi/signIn.html"
        });

        

        //  조직도 nav 버튼 - 팝업 띄우기
        $('#jojicBtn').click(function(){
            var url = "/semi/views/popup/dept_chart.jsp";
            var name = "조직도";
            var option = 'top=100px, left=300px width=420px,height=800px, resizable=no, location=no, toolbars=no,scrollbars=no';
            window.open(url, name, option);
        });

        //  나머지 nav 5개 버튼 - 화면 이동
        $('#listBtn').click(function(){
            location.href = "/semi/views/dept_board/dept_board.jsp";
        });

        $('#noticeBtn').click(function(){
            location.href = "/semi/views/notice/notice.jsp"
        });

        $('#mypageBtn').click(function(){
            location.href = "/semi/views/Calendar.jsp";
        });

        $('#managerBtn').click(function(){
            
            location.href = "/semi/views/manager.jsp";
        });

        $('#documentsBtn').click(function(){
            
            location.href = "/semi/views/EP_list.jsp";
        });

        //  헤더 span - 화면이동 및 팝업
        $('#headHome').click(function(){
           
            location.href = "/semi/views/home.jsp"
        });

        $('#headDocument').click(function(){
            var url = "";
            var name = "문서상신";
            var option = 'top=80px, left=250px width=920px,height=850px, resizable=no, location=no, toolbars=no,scrollbars=no';
            window.open(url, name, option);
        });

        $('#headSchedule').click(function(){
            location.href="/semi/views/Calendar.jsp";
        });

        $('#headTA').click(function(){
            var url = "/semi/views/popup/TA.jsp";
            var name = "근태관리";
            var option = 'top=100px, left=300px width=500px,height=800px, resizable=no, location=no, toolbars=no,scrollbars=no';
            window.open(url, name, option);
        });

        $('#headJojic').click(function(){
            var url = "/semi/views/popup/dept_chart.jsp";
            var name = "조직도";
            var option = 'top=100px, left=300px width=420px,height=800px, resizable=no, location=no, toolbars=no,scrollbars=no';
            window.open(url, name, option);
        });

        $('#headManager').click(function(){
            location.href="/semi/views/manager.jsp";
        });

        $('#headPwdChange').click(function(){
            var url = "/semi/views/popup/pwdChange.jsp";
            var name = "비밀번호변경";
            var option = 'top=100px, left=300px width=505px,height=530px, resizable=no, location=no, toolbars=no,scrollbars=no';
            window.open(url, name, option);
        });

        $('#headLogout').click(function(){
            location.href = "/semi/signIn.html";
        });
    });