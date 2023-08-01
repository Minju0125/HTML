package kr.or.ddit.buyer.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.buyer.service.BuyerServiceImpl;
import kr.or.ddit.buyer.service.IBuyerService;
import kr.or.ddit.buyer.vo.BuyerVO;

@WebServlet("/buyerNames.do")
public class BuyerNames extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//요청시 전송데이터 받기
		//service 객체 요청 - 가져오기
		IBuyerService service = BuyerServiceImpl.getService();
		
		//service 메소드 호출 - 결과값 받기  - list
		List<BuyerVO> list = service.selectList();
	
		//request객체에 list 결과값을 저장한다.
		request.setAttribute("listvalue", list);
		
		//view 페이지로 이동
		request.getRequestDispatcher("/buyerview/buyerNames.jsp").forward(request, response);
		
		
	}


}
