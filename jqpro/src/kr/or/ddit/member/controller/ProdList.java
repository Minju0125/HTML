package kr.or.ddit.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.prod.service.IProdService;
import kr.or.ddit.prod.service.ProdServiceImpl;
import kr.or.ddit.prod.vo.ProdVO;

@WebServlet("/ProdList.do")
public class ProdList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 요청시 전송 데이터 받기
		String lgu = request.getParameter("gu");
		// 'P101', 'P401'

		// service 객체 얻기
		IProdService service = ProdServiceImpl.getInstance();

		List<ProdVO> list = service.idSelectByLgu(lgu);

		request.setAttribute("list", list);

		request.getRequestDispatcher("/prodview/prodList.jsp").forward(request, response);

	}
}