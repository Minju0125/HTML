<%@page import="kr.or.ddit.member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="kr.or.ddit.mybatis.config.MybatisUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 요청시 전송 데이터 받기
	
	// db 처리- 결과값 얻기
	//SqlSession 얻어오기
	SqlSession sql = MybatisUtil.getSqlSession();

	//db의 member table에서 select를 수행
	List<MemberVO> list = sql.selectList("member.getAllMember");
	

	// 결과값으로 출력 또는 응답데이터 생성
%>

[

<%
	for(int i=0; i<list.size(); i++) {
	MemberVO vo = list.get(i);
	if(i>0) out.print(","); //out 은 내장 객체(자바 내부에서 출력할 때에는 out.print)
%>

	{
	"name" : "<%=vo.getMem_name() %>",
	"id" : "<%=vo.getMem_id() %>",
	"pass" : "<%=vo.getMem_pass() %>",
	"mail" : "<%=vo.getMem_mail() %>",
	"hp" : "<%=vo.getMem_hp() %>"
	}
	
	
<%
}

%>	

] 