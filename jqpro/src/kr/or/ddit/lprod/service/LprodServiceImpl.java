package kr.or.ddit.lprod.service;

import java.util.List;

import kr.or.ddit.lprod.dao.ILprodDao;
import kr.or.ddit.lprod.dao.LprodDaoImpl;
import kr.or.ddit.lprod.vo.LprodVO;

public class LprodServiceImpl implements ILprodService{

	private static ILprodService service;
	
	//dao 객체
	private ILprodDao dao;
	
	//생성자
	public LprodServiceImpl() {
		dao = LprodDaoImpl.getDao();
	}
	
	public static ILprodService getService() {
		if(service==null) service = new LprodServiceImpl();
		return service;
	}
	
	@Override
	public List<LprodVO> selectAll() {
		return dao.selectAll();
	}
}
