package kr.or.ddit.prod.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.mybatis.config.MybatisUtil;
import kr.or.ddit.prod.vo.ProdVO;

public class ProdDaoImpl implements IprodDao{

	private static IprodDao dao;
	
	public static IprodDao getInstance() {
		if(dao==null) dao= new ProdDaoImpl();
		return dao;
	}
	
	private SqlSession sql;
	
	
	@Override
	public List<ProdVO> idSelectByLgu(String lgu) {
		
		//선언
		List<ProdVO> list =null;
		
		//실행
		try {
			sql = MybatisUtil.getSqlSession();
			list = sql.selectList("prod.idSelectByLgu", lgu);
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			sql.close();
		}
		
		//리턴
		return list;
		
		
	}

	@Override
	public ProdVO ProdDetail(String id) {
		
		ProdVO vo =null;
		try {
			//선언
			sql =MybatisUtil.getSqlSession();
			vo = sql.selectOne("prod.ProdDetail", id);
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			sql.close();
		}		
		
		return vo;
	}

}
