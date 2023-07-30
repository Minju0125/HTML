<%@page import="kr.or.ddit.buyer.vo.BuyerVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//서블릿에 컨테이너에 저장된 결과값 꺼내오기
	List<BuyerVO> list = (List<BuyerVO>)request.getAttribute("listvalue");
%>
[
<%
	int i=0;
	for(BuyerVO vo : list){
		if(i>0) out.print(",");
	

%>
   {
      "id" : "<%=vo.getBuyer_id() %>",
      "name" : "<%=vo.getBuyer_name() %>"
   }
<%
i++;
   }

%>
]