$(function(){
    $('#list tbody>tr').click(function(){
          window.open("dummyNotice/dummy" + $(this).children('td:nth-child(2)').text() + ".html","width=200","height=150");
    });
  });