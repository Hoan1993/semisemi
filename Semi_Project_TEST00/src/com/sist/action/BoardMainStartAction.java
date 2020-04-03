package com.sist.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardMainStartAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		// 헤더 뉴스, 사이드바 뉴스
		String url = "./board/board_main.jsp";
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath(url);
		
	
		return forward;
	}

}
