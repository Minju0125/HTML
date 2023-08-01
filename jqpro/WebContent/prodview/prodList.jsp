<%@page import="com.google.gson.JsonElement"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="kr.or.ddit.prod.vo.ProdVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
//서블릿에서 저장한 데이터 꺼내기
	List<ProdVO> list = (List<ProdVO>)request.getAttribute("list");

	response.setContentType("application/json; charset=utf-8");

	
	JsonObject obj = new JsonObject();
	// list 에 값이 있을 수도 없을 수도
	if(list != null && list.size()>0){// 데이터 있는 경우
	
	
	obj.addProperty("sw", "ok");
	
	Gson gson = new Gson();
	
	JsonElement ele = gson.toJsonTree(list);
	
	obj.add("datas", ele);
	
	
	}else{//데이터가 없는 경우
		obj.addProperty("sw", "no");
	}
	out.print(obj);
%>