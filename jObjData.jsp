<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	//응답 데이터를 생성 - json 객체를 생성
%>

{
	"name" : "신나라",
	"addr" :  "대전",
	"id" : "a001",
	"tel" : "010-1234-5678"
}

<%-- {} 을 res로 저장하고 res.name , res.id <- 이렇게
json 파싱해서 for문 안돌고 사용 --%>
