<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String email = request.getParameter("email");
String password = request.getParameter("password");
String birthYear = request.getParameter("birthYear");
String gender = request.getParameter("gender");
String[] hobbies = request.getParameterValues("hobby");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=email%>
	<br>
	<%=password%>
	<br>
	<%=birthYear%>
	<br>
	<%=gender%>
	<br>
	<h3>Hobbies:</h3>
	<%
        // null 체크 후 hobbies 배열 출력
        if (hobbies != null) {
            for (String hobby : hobbies) {
    %>
	<%= hobby %>
	<br>
	<%
            }
        } else {
    %>
	No hobbies selected.
	<%
        }
    %>
	/


</body>
</html>