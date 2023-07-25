<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.7.0.min.js"></script>

<script>
	var xhr = new XMLHttpRequest();

	function textPro() {
		//요청
		xhr.open('get', 'testData.jsp?id=aaaa', true);
		xhr.send();
		
		//응답
		xhr.onreadystatechange = function(){
			if(this.readyState == 4 && this.status == 200){
				res = this.responseText;
				//홍길동/개나리/진달래/무궁화/삼천리/금수강산
				names = res.split("/");
				console.log(names);
				code = "<ul>";
				for(i=0; i<names.length; i++){
					code+= "<li>" + names[i] + "</li>"
				}
				code += "</ul>";
				
				document.getElementById('result1').innerHTML = code;
				
			}
		}
	}

	function jsonArrPro() {
		
		//요청
		data = "id=aaaa&pass=1234";
		xhr.open('post', 'jArrData.jsp',true);
		
		xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded')
		xhr.send(data);
		
		//응답
		xhr.onreadystatechange = function(){
			if(this.readyState==4 && this.status ==200){
				res = this.responseText; //서버에 요청하여 응답으로 받은 데이터를 문자열로 반환
				//res = ["홍길동", "이도령", "성춘향", "진달래", "수선화", "라일락"]
			
				jpres = JSON.parse(res);
				
				code= "<ol>";
				
				//$(jpres).each(function(i,v)) 
				//반복문의 대상. each(~~)~~~~
				$.each(jpres,function(){
					code += "<li>" + this + "</li>"
				})
				
				code += "</ol>";
				
				$('#result2').html(code);
			}
		}
	}

	function jsonObjPro() {

		//요청
		xhr.open('get', 'jObjData.jsp', true);
		xhr.send()
		
		//응답
		xhr.onreadystatechange = function(){
			if(this.readyState == 4 & this.status == 200){
				res = this.responseText;
				
				parse = JSON.parse(res);

				code = "이름 : " + parse.name + "<br>";
				code += "아이디 : " + parse.id + "<br>";
				code += "주소 : " + parse.addr + "<br>";
				code += "전화번호 : " + parse.tel ;
				
				$('#result3').html(code);
			}
		}
	}

	function joarrPro() {

	}
</script>

<style>
#content {
	display: flex;
	flex-direction: row;
}

.out {
	margin: 1px;
	border: 1px dotted orange;
	flex: 25%;
	padding: 15px;
}
</style>

</head>
<body>
	<input type="button" value="text" onclick="textPro()">
	<input type="button" value="json배열" onclick="jsonArrPro()">
	<input type="button" value="json객체" onclick="jsonObjPro()">
	<input type="button" value="json객체배열" onclick="joarrPro()">

	<br><br>
	<div id="content">
		<div class="out" id="result1"></div>
		<div class="out" id="result2"></div>
		<div class="out" id="result3"></div>
		<div class="out" id="result4"></div>
	</div>
</body>
</html>