<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Rooms</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<link href="/temp.css" rel="stylesheet" /> 
</head>
<body>
	<div class="container">
		<h1>Pizza Specials</h1>
		<table class="table">
			
			<tbody>
				<c:forEach var="party" items="${party}">
				<tr>
					<td><c:out value= "${party.id}"/></td>
					<td><c:out value=" ${party.name}"/></td>
					<td><c:out value="${party.description}"/></td>
					<td><c:out value="${party.votes}"/></td>
					
					<td><a href="/votepage?id=${party.id}" >Vote</a></td>
				</tr>
				</c:forEach>
	
			</tbody>
			
		</table>
		
	</div>
	<div class="container">
	<tr>
	<form action=("/addOption") />
	<h4> Special Name<input type="name" name="name"></input> Description<input type="text" name="description"></input><button>add</button></h4>
    </form>
    </tr>
    </div>
</body>
</html>