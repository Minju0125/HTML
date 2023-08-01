package kr.or.ddit.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.member.service.IMemberService;
import kr.or.ddit.member.service.MemberServiceImpl;
import kr.or.ddit.member.vo.MemberVO;

/**
 * Servlet implementation class MemberList
 */
@WebServlet("/memberList.do")
public class MemberList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberList() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청시 전송 데이터 받기 : 예)id, pass
		
		// service 객체 가 필요 - service객체 얻기
		IMemberService service = MemberServiceImpl.getService();
				
		// service 메소드 호출 - 결과값 받기 -list
		List<MemberVO> list = service.getAllMember();
		
		// request 객체에 list 결과값을 저장
		// 결과값 list 출력 또는 json 데이터 생성 - vies 페이지로 이동
		request.setAttribute("listvalue", list);
		
		// forward를 이용하여 view 페이지로 이동
		RequestDispatcher disp = request.getRequestDispatcher("/memberview/memberList.jsp");
		
		disp.forward(request, response);
		
	}

}
