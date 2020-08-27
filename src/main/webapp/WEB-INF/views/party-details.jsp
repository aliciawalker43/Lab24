<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Party Details</title>
</head>
<body>
<h1>Party:${party.name}</h1>
<p>${party.date}</p><br>
<h2>RSVPs</h2>
<table class="table">
			<thead>
				<tr>
					<th>Attendee</th>
					<th>Comment</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="rsvp" items="${party.rsvps}">
				<tr>
						<td>${rsvp.attendee}</td>
						<td>${rsvp.comment}</td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
</div>
</body>
</html>