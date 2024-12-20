<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>값출력</h4>
	${iVal }
	<br> ${lVal }
	<br> ${fVal }
	<br> ${bVal }
	<br> ${sVal }
	<br>
	<h4>객체 출력</h4>
	${user.id }
	<br> ${user.name }
	<br>

	<h4>맵 출력</h4>
	${val_map.lVal }<br>
	${val_map.sVal }<br>
	
	<h4>Literal</h4>
	${1 }<br>
	${'Hello World' }<br>
	${true }<br>
	
	<h4>산술연산</h4>
		${1+2 }<br>
	${iVal + 23 }<br>
	
	
	<h4>요청파라미터</h4>
	${param.no+10 }<br>
	${param.name }<br>	
</body>

</html>