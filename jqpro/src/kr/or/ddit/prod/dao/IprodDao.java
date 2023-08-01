package kr.or.ddit.prod.dao;

import java.util.List;

import kr.or.ddit.prod.vo.ProdVO;

public interface IprodDao {
	public List<ProdVO> idSelectByLgu(String lgu);
	
	public ProdVO ProdDetail(String id);
}
