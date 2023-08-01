<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userId = request.getParameter("id");
	String userPass = request.getParameter("pass");
	
	//db 처리 후 결과값을 얻는다 - 응답데이터를 생성 - json 배열
			
%>
["홍길동", "이도령", "성춘향", "진달래", "수선화", "라일락"]