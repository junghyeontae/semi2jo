package com.kh.jsp.notice.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.jsp.notice.model.vo.Board;
import com.kh.jsp.notice.model.vo.PageInfo;
import com.kh.jsp.notice.service.BoardService;

/**
 * Servlet implementation class BoardListServlet
 */
@WebServlet("/BoardListServlet")
public class BoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BoardListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    // 부서별 게시판 작성
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		ArrayList<Board> list = null;
//		BoardService bs = new BoardService();
//		
//		// 페이징 처리에 필요한 변수들 한번에 표시할 페이지들 중 가장 앞의 페이지 : 
//		int startPage;
//		
//		// 한 번에 표시할 페이지들 중 가장 뒤의 페이지
//		int endPage;
//		
//		// 전체 페이지의 가장 마지막 페이지
//		int maxPage;
//		
//		// 사용자가 위치한 현재 페이지
//		int currentPage;
//		
//		//총 페이지 수(한 페이지 당 보여줄 게시글 수)
//		int limit;
//		
//		// 처음에 접속시 페이지는 1페이지 부터 시작한다.
//		currentPage = 1;
//		
//		// 글 개수 및 페이지 수 10개로 제한하기
//		limit = 10;
//		
//		// 특정 페이지호 수정해야 한다.
//		if(request.getParameter("currentPage") != null) {
//			currentPage = Integer.parseInt(request.getParameter("currentPage"));
//			System.out.println("request.getParameter(currentPage) != null");
//		}
//		
//		int listcount = bs.getListCount();
//		
//		maxPage = (int)((double)listcount/limit+0.9);
//		
//		startPage = ((int)((double)currentPage / limit + 0.9) -1) * limit + 1;
//		
//		endPage = startPage + limit -1;
//		
//		if(endPage > maxPage) {
//			endPage = maxPage;
//		}
//		
//		list = bs.selectList(currentPage, limit);
//		
//		String page = "";
//		
//		if(list != null) {
//			page = "";
//			request.setAttribute("list", list);
//			
//			PageInfo pi = new PageInfo(currentPage, listcount, limit, maxPage, startPage, endPage);
//			System.out.println(pi.toString());
//			request.setAttribute("pi", pi);
//		}else {
//			page = "s";
//			request.setAttribute("msg", "게시글 목록 조회 실패");
//		}
//		
//		request.getRequestDispatcher(page).forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
