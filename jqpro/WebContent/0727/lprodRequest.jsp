<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.7.0.min.js"></script>
<script>

//jQuery를 이용한 AJAX

// 실행화면 주소에는 http://localhost/jqpro/0727/lprodRequest.jsp 인데,
// 실행된 결과는  /jqpro/0726/lprodJson.jsp 여기에서 (데이터만) 가져와서 만든것 - 페이지는 안바뀜
// => 비동기를 사용하면 페이지가 바뀌지 않고, 데이터만 가져옴 / JSON 데이터만 보내주면, 그 데이터가 동일한 페이지에 출력됨 (아래 예제에서는 테이블로 가공함)
// 즉, 비동기에서는 데이터만 가져와서 현재 페이지에 맞게 가공
// 동기방식은 그대로 통째로 가져옴


// 동기방식은 클릭해서 실행하면 jsp로 완전히 페이지가 바뀜


	$(function() {
		$('#lprod').on('click', function() {

			$.ajax({
				///요청///
				url : "/jqpro/0726/lprodJson.jsp",//원래 여기는 서블릿 파일의 경로 (경로/서블릿파일)
				type : 'get',

				///응답////
				success : function(res) { //수행한 결과값을 받을 변수이름을 매개변수로, res가 결과 받음

					code = "<table border = '1'>";
					code+= "<tr><th>LPROD_ID</th>";
					code+= "<th>LPROD_GU</th>";
					code+= "<th>LPROD_NM</th></tr>";
					
					$.each(res, function(i,v){
						code += "<tr><td>" + res[i].lprod_id + "</td>";
						code += "<td>" + res[i].lprod_gu + "</td>";
						code += "<td>" + res[i].lprod_nm + "</td></tr>";
						
						
					})//반복문
					
					code += "</table>"
					
					//출력 - result1에
					$('#result1').html(code);
					
				},
				error : function(xhr) { // new HTTP~ 어쩌구를 생성하지 않고도 사용할 수 있음
					alert("상태 : " + xhr.status) //status에 찍히는 정보는 200,404,403,500 ,,,../
				},
				dataType : 'json' //파싱 안해도 얘가 대신 파싱해줌
			}) // $.ajax

		})// click

	})// $(function())
</script>


</head>
<body>

	<input type="button" value="lprod" id="lprod">
	<br>
	<br>
	<div id="result1"></div>

</body>
</html>