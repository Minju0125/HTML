package kr.or.ddit.buyer.service;

import java.util.List;

import kr.or.ddit.buyer.dao.BuyerDaoImpl;
import kr.or.ddit.buyer.dao.IBuyerDao;
import kr.or.ddit.buyer.vo.BuyerVO;

public class BuyerServiceImpl implements IBuyerService {

	private static IBuyerService service;
	
	private IBuyerDao dao;
	
	private BuyerServiceImpl() {
		dao = BuyerDaoImpl.getDao();
	}
	
	public static IBuyerService getService() {
		if(service ==null) service = new BuyerServiceImpl();
		return service;
	}
	
	@Override
	public List<BuyerVO> selectList() {
		List<BuyerVO> list = null;
		list = dao.selectList();
		return list;
	}

	@Override
	public BuyerVO selectById(String id) {
		return dao.selectById(id);
	}

}
