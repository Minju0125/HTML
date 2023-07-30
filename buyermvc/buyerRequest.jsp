<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="../js/jquery-3.7.0.min.js"></script>
<script>
	function proc1() {
	$.ajax({
			url : "/jqpro/buyerNames.do",
			type : 'get',
			dataType : 'json',
			success : function(res){
				code = "";
				
				$.each(res, function(i,v){
// 					code += "<p class='" + this.id + "'>" + this.name + "</p>";
					code += `<p class='${this.id}'>${this.name}</p>`
				})
				
				$('#names').html(code);
			},
			error : function(xhr){
				alert("상태 : " + xhr.status);
			}
	})
}//proc1 끝

$(function(){

	$(document).on('click', 'p', function(){//문서 기준으로 새로 만들어서
		vattr = $(this).attr('class');
		
// 		alert(vattr);
		$.ajax({
			url : "<%=request.getContextPath()%>/buyerDatil.do",
			data : "id=" + vattr;
			type : 'get',
			datatype : 'json',
			success : function(res){
				
			},
			error : function(xhr){
				alert("상태 : " + xhr.status);
			}
		})
	})
})

	
</script>
<style>
	table{
	border : 1px solid blue;
	}
	td{
	width : 200px;
	height: auto;
	}
	th{
	background: skyblue;
	height: 50px;
	padding : 10px;
	}
	.info{
	width : 500px;
	}
	p:hover{
	background:lime;
	}
	

</style>

<body>


	<input type="button" value="buyer동기"
		onclick="location.href='/jqpro/buyerNames.do'">

	<input type="button" value="buyer비동기" onclick="proc1()">
	<br>
	<br>
	
	<div id="result1">
		<table>
			<tr>
				<th>거래처이름</th><th class="info">거래처상세정보</th>
			</tr>
		
			<tr>
				<td id="names"></td>
				<td id="detail"></td>
			</tr>
		
		</table>
	
	
	</div>
	
	
</body>
</html>