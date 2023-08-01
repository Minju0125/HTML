package kr.or.ddit.member.service;

import java.util.List;

import kr.or.ddit.member.vo.MemberVO;

public interface IMemberService {
//메소드 선언

	public List<MemberVO> getAllMember();

	// 중복 검사
	

	// 회원가입을 위한 메소드
	public int insertMember(MemberVO vo);
	
	// 우편번호 검색 메소드 

	//ZipVO class 만들기
	
	
	/*
	 * 
	 * public String selectById(String mid)
	 * 
	 * select * from ziptb where dong like '탄방%';
	 * 
	 * public List<ZipVO> selectByDong(String dong)
	 * 
	 * insert into member (mem_id, mem_pass, mem_name, mem_bir, mem_zip, mem_add1,
	 * mem_add2, mem_hp, mem_mail) values(값들)
	 * 
	 * 
	 */
}
