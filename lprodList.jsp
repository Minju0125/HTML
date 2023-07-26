<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.lprod.vo.LprodVO"%>
<%@page import="kr.or.ddit.mybatis.config.MybatisUtil"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//db 처리-SqlSession을 얻어오기
SqlSession sql = MybatisUtil.getSqlSession();

List<LprodVO> list = sql.selectList("lprod.selectAll");

//실행결과 list를 출력한다.

%>
<table border="1">
<tr>
	<th>아이디</th>
	<th>제품코드</th>
	<th>제품명</th>
</tr>

<%
for(int i=0; i<list.size(); i++){
	LprodVO vo = list.get(i);
	%>
	
	<tr>
	<td><%= vo.getLprod_id() %></td>
	<td><%= vo.getLprod_gu() %></td>
	<td><%= vo.getLprod_nm() %></td>
	</tr>
<% 
}

%>

</table>

</body>
</html>