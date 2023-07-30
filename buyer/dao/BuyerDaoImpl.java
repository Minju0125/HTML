package kr.or.ddit.buyer.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.buyer.vo.BuyerVO;
import kr.or.ddit.mybatis.config.MybatisUtil;

public class BuyerDaoImpl implements IBuyerDao {

	// 싱글톤
	private static IBuyerDao dao;

	public static IBuyerDao getDao() {
		if (dao == null)
			dao = new BuyerDaoImpl();
		return dao;
	}

	private SqlSession sql;

	@Override
	public List<BuyerVO> selectList() {
		// 변수 선언
		List<BuyerVO> list = null;
		try {
			// 실행
			sql = MybatisUtil.getSqlSession();
			list = sql.selectList("buyer.selectList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sql.close();
		}

		// 리턴
		return list;

	}

	@Override
	public BuyerVO selectById(String id) {
		
		//변수선언
		BuyerVO vo = null;
		try {
			sql = MybatisUtil.getSqlSession();
			vo = sql.selectOne("buyer.selectById", id);
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			sql.close();
		}
		
		return vo;
	}

}
