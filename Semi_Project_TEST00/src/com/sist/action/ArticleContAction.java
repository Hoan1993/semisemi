package com.sist.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.model.ArticleDAO;
import com.sist.model.ArticleVO;

public class ArticleContAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		int article_no = Integer.parseInt(request.getParameter("no"));
		
		ArticleDAO dao = ArticleDAO.getInstance();
		
		ActionForward forward = new ActionForward();
		
		if(dao.articleHit(article_no)==1) {
			ArticleVO vo = dao.articleCont(article_no);
			request.setAttribute("Cont", vo);
			forward.setRedirect(false);
			forward.setPath("article_cont.jsp");
		}else {
			forward.setRedirect(false);
			forward.setPath("index.jsp");
		};

		return forward;
	}
}
