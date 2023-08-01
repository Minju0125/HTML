<%@page import="com.google.gson.Gson"%>
<%@page import="kr.or.ddit.buyer.vo.BuyerVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
//서블릿에서 저장한 결과값 가져오기
BuyerVO vo = (BuyerVO)request.getAttribute("key");

response.setContentType("application/json; charset=utf-8");

Gson gson = new Gson();

String result = gson.toJson(vo);

out.print(result); //result는 json 형태의 스트링

%>
