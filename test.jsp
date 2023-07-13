<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1 {
	color: red
}

span {
	font-size: 2.0rem;
}
</style>
</head>
<body>
	<h1>JSP : Java Server Page</h1>

	<%
		request.setCharacterEncoding("UTF-8");
	String userName = request.getParameter("name");
	%>

	<h3>
		당신의 이름은 <span><%=userName%></span>입니다.
	</h3>
</body>
</html>