package kr.or.ddit.lprod.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.lprod.vo.LprodVO;
import kr.or.ddit.mybatis.config.MybatisUtil;

public class LprodDaoImpl implements ILprodDao {

	private static ILprodDao dao;

	// SqlSession -> mapper 접근
	private SqlSession sql;

	public static ILprodDao getDao() {
		if (dao == null)
			dao = new LprodDaoImpl();
		return dao;
	}

	@Override
	public List<LprodVO> selectAll() {
		// 선언
		List<LprodVO> list = null;

		// 실행
		try {
			sql = MybatisUtil.getSqlSession();
			list = sql.selectList("lprod.selectAll");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sql.commit();
			sql.close();
		}
		// 리턴
		return list;
	}
}
