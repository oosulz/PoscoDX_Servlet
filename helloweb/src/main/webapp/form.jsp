<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action ="/helloweb/join.jsp" method="post">
	<label>이메일:</label>
	<input type = "text" name = "email" placeholder="email" value=""></input>
	<br>
	<label>비밀번호:</label>
	<input type = "password" name = "password" placeholder="password"></input>
	<br>
	<label>생년월일:</label>
	<select name = "birthYear">
	<option value="2000">2000년</option>
	<option value="2001">2001년</option>
	<option value="2002">2002년</option>
	</select>
	<br>
	<label>성별:</label>

<input type="radio" name="gender" value="남" /> 남  
<input type="radio" name="gender" value="여" checked="checked" /> 여  
		<label>취미:</label>
		 <br>
            <input type="checkbox" name="hobby" value="opt1"> 옵션 1
        <br>
        <label>
            <input type="checkbox" name="hobby" value="opt2" checked> 옵션 2 (기본 선택)
        </label>
        <br>
        <label>
            <input type="checkbox" name="hobby" value="opt3"> 옵션 3
        </label>
        <br><br>
        <input type = "submit" name = "submit" value="가입"></input>
		
</form>

</body>
</html>