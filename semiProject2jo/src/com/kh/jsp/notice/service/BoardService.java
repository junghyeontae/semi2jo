package com.kh.jsp.notice.service;

import java.util.ArrayList;
import java.sql.Connection;
import java.util.ArrayList;
import static com.kh.jsp.common.JDBCTemplate.*;

import com.kh.jsp.notice.model.dao.BoardDao;
import com.kh.jsp.notice.model.vo.Board;

public class BoardService {
	
	public int getListCount() {
		
		Connection con = getConnection();
		int listCount =  new BoardDao().getListCount(con);
		
		close(con);
		
		return listCount;
	}

	public ArrayList<Board> selectList(int currentPage, int limit) {
		
		Connection con = getConnection();
		
		ArrayList<Board> list = new BoardDao().selectList(con, currentPage, limit);
		
		close(con);
		
		return list;
	}

}
