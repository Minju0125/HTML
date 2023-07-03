/**
 * 
 */
function proc() {

	var a = 10;
	let sum = 0;

	for (var i = 0; i < 5; i++) { //스크립스에서는 int 안쓰고, var 또는 생략 //var대신 const 쓸 수 없음(i가 0~4까지 변하기 때문)
		sum += 10; 
	}
	
	
	
	let vres = document.getElementById('result');
	vres.innerText = i + " " + sum ; //빠져나오는 순간 i = 5; let은 i를 가지고 밑으로 내려갈 수 없음
	
	
}



function calc() {
	//입력한 값 가져오기
	var vqty = document.getElementById('qty').value;
	var vprice = document.getElementById('price').value;

	var res = vqty * vprice;

//	var str = "수량 : " + vqty + "<br>";
//	str += "가격 : " + vprice + "<br>";
//	str += "총금액 : " + res + "<br>";
	
//	백틱사용
	var str = `수량 : ${vqty}<br>`;
	str += `가격 : ${vprice}<br>`;
	str += `총금액 : ${res}<br>`;
	
	//document.write(str);
	console.log(str);

	var vresult = document.getElementById('result');

	vresult.innerHTML = str;
	//vresult.innerText = str;	//이렇게 하면 <br> 태그까지 찍힘

}



