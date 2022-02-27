<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<link href="/temp.css" rel="stylesheet" /> 
<meta charset="UTF-8">
<title>Party Details</title>
</head>
<body>
<h1>Event: <br>${party.name}</h1>
<p>Date of event : ${party.date}</p><br>


<table class="table">
			<thead><h3>RSVPS</h3>
				<tr>
					<th>Attendees</th> <th>Comments</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="att" items="${party.rsvps}">
				<tr>
						<td>${att.attendee}</td>
						<td>${att.comment}</td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
</div>
 <a href="/" >Return Home</a>
</body>
</html>