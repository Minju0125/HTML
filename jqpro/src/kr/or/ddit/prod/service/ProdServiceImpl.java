package kr.or.ddit.prod.service;

import java.util.List;

import kr.or.ddit.prod.dao.IprodDao;
import kr.or.ddit.prod.dao.ProdDaoImpl;
import kr.or.ddit.prod.vo.ProdVO;

public class ProdServiceImpl implements IProdService{

	private static IProdService service;
	
	public static IProdService getInstance() {
		if(service==null) service= new ProdServiceImpl();
		return service;
	}
	
	private IprodDao dao;
	private ProdServiceImpl() {
		dao = ProdDaoImpl.getInstance();
	}
	
	@Override
	public List<ProdVO> idSelectByLgu(String lgu) {
		return dao.idSelectByLgu(lgu);
	}

	@Override
	public ProdVO ProdDetail(String id) {
		return dao.ProdDetail(id);
	}

	

}
