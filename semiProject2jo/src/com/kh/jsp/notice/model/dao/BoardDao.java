package com.kh.jsp.notice.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.jsp.notice.model.vo.Board;

public class BoardDao {
	
	private Properties prop;
	
	public BoardDao() {
		prop = new Properties();
		
		String filePath = BoardDao.class.getResource("/config/board-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public int getListCount(Connection con) {
		// 전체 부서 리스트 수를 불러 온다.
		return 0;
	}

	public ArrayList<Board> selectList(Connection con, int currentPage, int limit) {
		// 페이징 처리를 위한 곳
		return null;
	}

}
