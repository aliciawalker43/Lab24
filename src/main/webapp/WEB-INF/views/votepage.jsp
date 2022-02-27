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
		<h1>Nominees</h1>
		<table class="table">
			
			<tbody>
			<tr>
					<th>ID</th><th> Name</th><th>Description</th><th># Votes</th>
				</tr>
				<c:forEach var="party" items="${party}">
				<tr> 
					<td><c:out value= "${party.id}"/></td>
					<td><c:out value=" ${party.name}"/></td>
					<td><c:out value="${party.description}"/></td>
					<td><c:out value="${party.votes}"/></td>
					
					<td><a href="/addvote?id=${party.id}" >Vote</a></td>
				</tr>
				</c:forEach>
	
			</tbody>
			
		</table>
		
	</div>
	<div class="container"> <h1>Cast New Candidate </h1>
	<tr>
	<form action="/addOption" />
	<h4> Name<input type="name" name="name"></input> Description<input type="text" name="description"></input><button>add</button></h4>
    </form>
    </tr>
    
    <a href="/" >Return Home</a>
    </div>
</body>
</html>