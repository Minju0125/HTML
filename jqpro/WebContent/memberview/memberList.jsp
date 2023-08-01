<%@page import="kr.or.ddit.member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    //서블릿 컨트롤러에서 저장된 값을 꺼내기
    	List<MemberVO> list= (List<MemberVO>)request.getAttribute("listvalue");
%>
[

<%
	for(int i=0; i<list.size(); i++){
		MemberVO vo = list.get(i);
		if(i>0) out.print(",");
%>		

	{
	"mem_id" : "<%= vo.getMem_id() %>",
	"mem_name" : "<%= vo.getMem_name() %>",
	"mem_hp" : "<%= vo.getMem_hp() %>",
	"mem_mail" : "<%=vo.getMem_mail() %>"
	}

<%
	}
%>


]