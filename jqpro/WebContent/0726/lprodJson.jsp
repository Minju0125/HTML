<%@page import="kr.or.ddit.lprod.vo.LprodVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.mybatis.config.MybatisUtil"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 요청시 전송데이터 받기 예) id, pass, ..
	// db 처리 - SqlSession 
	
	SqlSession sql = MybatisUtil.getSqlSession();
	
	//mapper 실행
	List<LprodVO> list = sql.selectList("lprod.selectAll");
	
	//결과값 list를 가지고 json 데이터를 생성(비동기)
%>

[

<%
	for(int i=0; i<list.size(); i++){
		LprodVO vo = list.get(i);
		if(i > 0) out.print(",");
%>

{ 
		"lprod_id" : "<%=vo.getLprod_id() %>",
		"lprod_gu" : "<%=vo.getLprod_gu() %>",
		"lprod_nm" : "<%=vo.getLprod_nm() %>"
	}
<% 
	}
%>




]
