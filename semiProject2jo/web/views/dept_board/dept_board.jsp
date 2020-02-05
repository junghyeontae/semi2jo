<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.kh.jsp.notice.model.vo.*, java.util.*"%>
<!-- 들어 가면 리스트 구현을 해야 된다. -->
<%-- <% 
	ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list"); 
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
%> --%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>COO - 부서게시판</title>

<link rel="stylesheet" href="/semi/resources/css/common/basic.css">
<link rel="stylesheet" href="/semi/resources/css/notice/button.css">
<link rel="stylesheet" href="/semi/resources/css/notice/margin.css">
<link rel="stylesheet" href="/semi/resources/css/notice/table.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- 임시 게시판 스크립트 -->
<script src="../resources/js/notice/list.js"></script>


</head>
<body>
	<div class="total">
		<!-- 헤더부분 include -->
		<%@ include file="../common/COO_header.jsp"%>

		<!-- 화면 좌측 고정부 include -->
		<%@ include file="../common/COO_left.jsp"%>

		<div class="right">
			<!-- 게시판 시작 -->
			<div class="margin-list-head">
				<h1 align="left">부서별 게시판</h1>
				<hr class="table-line" color="lightgray">

				<form action action="" method="post">

					<button type="button" class="btn btn-light">전체</button>
					<button type="button" class="btn btn-primary">부서별</button>
					<button type="button" class="btn btn-info">일반</button>
					<button type="button" class="btn btn-success">업무</button>
					<br>
					<br>
					<br>
					<!-- 홍석코드 -->
					&nbsp; <label>분류</label> <select id="searchType" name="searchType">
						<!-- 로그인한 사용자에 대한 권한과 부서등에 따라서 alert등으로 접근 금지를 설정 한다. --->
						<option value="">전체</option>
						<option value="">일반</option>
						<!-- 업무  -->
						<option value="task">업무</option>
						<option value="notice">부서별</option>
					</select> &nbsp;
					<!-- 부서, 관리자의 전체 공지등 알아야 하는 필요한 만 띄운다.  -->
					<!--<input type="checkbox" name="name1">  -->
					공 지 <input type="checkbox" name="name1"> &nbsp;&nbsp;&nbsp;
					<!-- 안 될것 같으면 변경 및 삭제 -->
					<label>기 간 설 정</label> <input type="month" id="time1"> ~ <input
						type="month" id="time2">&nbsp;
					<!-- <select id="showNumber" style="float: right;">
                     <option></option>
                 </select> -->
					<hr class="table-line" style="margin-left: -0px;">
					<div class="table-line">
						<table style="width: 100%; border-collapse: collapse;" id="list">
							<tr class='table-line'>
								<th><input type="checkbox" id="checkAll"></th>
								<th>번호</th>
								<th>분류</th>
								<th>제목</th>
								<th>작성자</th>
								<th>날짜</th>
								<th>조회수</th>
							</tr>
							<tr align="center" class='table-line'>

							</tr>
							<%--                             <% for(Notice n : noticeList){ %>
                             <tr align="center" class='table-line'>
 								<td><%= n.getNno() %></td>
								<td><%= n.getNtitle() %></td>
								<td><%= n.getNwriter() %></td>
								<td><%= n.getNcount() %></td>
								<td><%= n.getNdate() %></td> 
						    </tr>
                           <% } %> --%>
						</table>
						<button id="write" class="btn btn-light"
							style="margin-left: -10px;">글쓰기</button>
						<br>
						<div align="center"></div>
						<div>

							<select id="search" name="search"
								style="height: 30px; margin-left: 300px;">
								<option value="">검색조건</option>
								<option value="title">제목</option>
								<option value="content">내용</option>
								<option value="jobs">직급</option>
								<!-- 분류에 따른 게시판을 직급별로 쓴 것을 보는 것 단 권한이 없으면 접근 불가 -->
								<option value="">제목+내용</option>
								<option value="">전체조건</option>
							</select>&nbsp; <input class="form-control" type="text" id="keyword"
								name="keyword" placeholder="검색어를 입력하세요" style="width: 200px;" />

							<input type="submit" value="검색"> <input type="reset"
								value="취소">
							<!-- 여기서 부터 jsp 페이징 처리를 해야 된다. -->
							<%-- 페이지 처리 --%>
<%-- 							<div class="" align="center">
								<button onclick="location.href='<%=request.getContextPath()%>/selectList.bo?currentPage=1'"> << </button>
								<%
									if (currentPage <= 1) {
								%>
								<button disabled><</button>
								<%
									} else {
								%>
								<button
									onclick="location.href='<%=request.getContextPath()%>/selectList.bo?currentPage=<%=currentPage - 1%>'"> < </button>
								<%
									}
								%>

								<%
									for (int p = startPage; p <= endPage; p++) {
										if (p == currentPage) {
								%>
								<button disabled><%=p%></button>
								<%
									} else {
								%>
								<button
									onclick="location.href='<%=request.getContextPath()%>/selectList.bo?currentPage=<%=p%>' "><%=p%></button>
								<%
									}
								%>
								<%
									}
								%>

								<%
									if (currentPage >= maxPage) {
								%>
								<button disabled>></button>
								<%
									} else {
								%>
								<button
									onclick="location.href='<%=request.getContextPath()%>/selectList.bo?currentPage=<%=currentPage + 1%>' "> > </button>
								<%
									}
								%>
								<button onclick="location.href='<%=request.getContextPath()%>/selectList.bo?currentPage=<%=maxPage%>' "> >></button>
							</div> --%><!-- 페이징 처리 부분 -->
						</div>
					</div>
				</div>
			</form>
		</div>

		<!-- 풋터 부분 include -->
		<%@ include file="../common/COO_footer.jsp"%>

	</div>

</body>
</html>