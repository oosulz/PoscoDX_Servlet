<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt"%>
<%@ taglib uri="jakarta.tags.functions" prefix="fn"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<%
pageContext.setAttribute("newline","\n");
%>
	<h4>JSTL Test: for Each, set</h4>

	${fn.length(list)}
	
	
	<c:set var="count" value="{fn:length(list)}" />
	<c:forEach items="${list }" var="vo" varStatus="status">
		<h4>[${ fn:length(list) - status.index }] (
			${status.count}:${status.index}) ${vo.id } : x${vo.name }</h4>
	</c:forEach>
	
	<p>
	${fn:replace(contents, newline , "<br>") }
	</p>
	
</body>
</html>
