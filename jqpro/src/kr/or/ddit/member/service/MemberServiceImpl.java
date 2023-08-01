package kr.or.ddit.member.service;

import java.util.List;

import kr.or.ddit.member.dao.IMemberDao;
import kr.or.ddit.member.dao.MemberDaoImpl;
import kr.or.ddit.member.vo.MemberVO;

public class MemberServiceImpl implements IMemberService {

	// 자기 자신의 객체를 생성하고 리턴
	private static IMemberService service;

	private IMemberDao dao;

	private MemberServiceImpl() {
		dao = MemberDaoImpl.getDao();
	}

	public static IMemberService getService() {
		if (service == null)
			service = new MemberServiceImpl();

		return service;
	}
  
	@Override
	public List<MemberVO> getAllMember() {
		
		//변수선언
		List<MemberVO> list = null;
		
		//실행
		list = dao.getAllMember();
		
		return list;
	}

	@Override
	public int insertMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
