package kr.or.ddit.lprod.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.lprod.service.ILprodService;
import kr.or.ddit.lprod.service.LprodServiceImpl;
import kr.or.ddit.lprod.vo.LprodVO;

/**
 * Servlet implementation class LprodList
 */
@WebServlet("/LprodList.do")
public class LprodList extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//요청시 데이터 전송 받기
		
		//service 객체 얻기
		ILprodService service = LprodServiceImpl.getService();
		
		//service 메소드 호출 - 결과값
		List<LprodVO> list = service.selectAll();
		
		//결과값 request에 저장
		request.setAttribute("listValue", list);
		
		
		//view 페이지로 이동
		request.getRequestDispatcher("/prodview/lprodList.jsp").forward(request, response);
		
		
		
	}

}
