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
	border: 1px solid black;
}
</style>

</head>
<body>
	<script>
		for (i = 0; i < 10; i++) {
			var div = document.createElement("div");
			div.innerHTML = i;
			div.onclick = clickHandler
			document.body.appendChild(div);
		}
		function clickHandler(e) {
			console.log(e.target.innerHTML, '클릭됨');
			e.target.remove();
			var len = document.getElementsByTagName("div").length;
			if (len == 0) {
				var h1 = document.createElement("h1");
				h1.innerHTML = "모두 제거되었습니다!"
				document.body.appendChild(h1);
			}

		}
	</script>
</body>
</html>