<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div {
	display: inline-block;
	width: 100px;
	height: 100px;
	border: 1px solid blue;
}

div.innerHTML {
	text-align: center;
}
</style>
</head>
<body>
	<script>
		for (let i = 1; i <= 25; i++) {
			var div = document.createElement("div");
			var span = document.createElement("span");
			var br = document.createElement("br");
			var num = Math.floor((Math.random() * 50) + 1);
			span.id = num;
			span.innerHTML = num;
			div.append(span);
			div.onclick = clickHandler
			document.body.appendChild(div);
			if (i % 5 == 0) {
				document.body.append(br);
			}
		}
		function clickHandler(e) {
			console.log(e.target.innerHTML, '클릭됨');
			e.target.remove();
		}
	</script>
</body>
</html>