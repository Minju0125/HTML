package kr.or.ddit.lprod.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.prod.service.IProdService;
import kr.or.ddit.prod.service.ProdServiceImpl;
import kr.or.ddit.prod.vo.ProdVO;

@WebServlet("/ProdDetail.do")
public class ProdDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String pid = request.getParameter("id");
		
		IProdService service = ProdServiceImpl.getInstance();
		
		ProdVO vo = service.ProdDetail(pid);
		
		request.setAttribute("vo", vo);
		
		request.getRequestDispatcher("/prodview/prodDetail.jsp").forward(request, response);
	}

}
