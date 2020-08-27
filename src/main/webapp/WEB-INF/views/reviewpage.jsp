<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<h1>Party & Events</h1>
		<table class="table">
			
			<tbody>
			<th>Party</th><th>Votes</th>
			
				<c:forEach var="party" items="${party}">
				<c:if test="${party.votes >0}">
				<tr>
					
					<td><c:out value=" ${party.name}"/></td>
					
					<td><c:out value="${party.votes}"/></td>
					
					
				</tr>
				</c:if>
				</c:forEach>
	
			</tbody>
			
		</table>
		
	</div>
	<div class="container">
	<tr>
	
    </tr>
    </div>
</body>
</html>