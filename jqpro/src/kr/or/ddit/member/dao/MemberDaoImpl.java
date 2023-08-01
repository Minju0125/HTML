package kr.or.ddit.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.mybatis.config.MybatisUtil;

public class MemberDaoImpl implements IMemberDao{

	//자기 자신의 객체
	private static IMemberDao dao;
	
	public static IMemberDao getDao() {
		if(dao == null) dao = new MemberDaoImpl();
		
		return dao;
	}
	
	
	//dao : 데이터에 접근하는 객체 -> mapper를 통해 접근 가능 (sqlSession 필요)
	//session은 한번 수행할 때마다 새로 생성, 반납 (sqlSession 의 사용범위는 각 기능마다 한개 씩 있어함)
	
	@Override
	public List<MemberVO> getAllMember() {
		
		SqlSession sql = MybatisUtil.getSqlSession();
		List<MemberVO> list = null;
		
		try {
			list = sql.selectList("member.getAllMember");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sql.commit();//insert, delete, update일때는 반드시 commit, mybatisUtil에서 세션 만들때 매개변수값을 true로 설정하면 autocommit
			sql.close();
		}
		return list;
		
	}

}
