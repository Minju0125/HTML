<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.7.0.min.js"></script>


<!-- 얘는 html 용도 -->


<script>

var xhr = new XMLHttpRequest();

function proc1(){
	
	// 요청
	xhr.open("get", "memberList.jsp", true); //특정해서 하려면 "memberList.jsp?id=aaaa"
	xhr.send();
	
	// 응답
	xhr.onreadystatechange = function(){
		if(this.readyState == 4 && this.status == 200){
			res = this.responseText;
			
			jpres = JSON.parse(res); //res에 Json에 올바르지 않은 형식이 잇으면 오류, 얘는 배열이라 출력을 위해 for문
			
			code="<table border='1'>";
			code+= "<tr><th>아이디</th>";
			code+= "<th>이름</th>";
			code+= "<th>메일</th>";
			code+= "<th>메일</th>";
			code+= "<th>비밀번호</th></tr>";
			code+= "<tr>"
			
			//여기는 자바 스크립트 공간이니까 let 
			for(let i=0; i<jpres.length; i++){
				code += "<tr><td>" + jpres[i].id + "</td>";
				code += "<td>" + jpres[i].name + "</td>";
				code += "<td>" + jpres[i].mail + "</td>";
				code += "<td>" + jpres[i].hp + "</td>";
				code += "<td>" + jpres[i].pass + "</td></tr>";
			}
			
			code += "</table>";
			
// 			document.getElementById('result1').innerHTML = code;
			
			$('#result1').html(code);
			
			
		}
	}
	
	
	
}
</script>
</head>

<body>

<input type="button" value="memberList" onclick="proc1()">

<br><br>

<div id="result1"></div>
</body>
</html>