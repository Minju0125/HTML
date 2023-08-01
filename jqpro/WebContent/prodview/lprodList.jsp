<%@page import="com.google.gson.Gson"%>
<%@page import="kr.or.ddit.lprod.vo.LprodVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
//서블릿에서 가져온 결과값 저장하기

List<LprodVO> list = (List<LprodVO>)request.getAttribute("listValue");

response.setContentType("application/json; charset=utf-8");

Gson gson = new Gson();

String result = gson.toJson(list);

out.print(result);
%>