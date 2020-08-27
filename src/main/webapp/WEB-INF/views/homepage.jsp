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

<p> Navigation: <a href="/votepage" name= "vote"> Options & Votes</a> <a href="/reviewpage" name= "review">Review Options</a></p>
<div>
			<h2> PARTIES</h2>
				
		<p></p>
		<tr>
		
		<h3><th>List of Events</th><th> RSVP Count </th></h3>
		
		<div>
					<c:forEach var="party" items="${partys}">

						<td><option value="${party.id}"></td>
						<td><c:out value="${party.name}" /></td>
						<td><c:out value="${party.rsvps.size()}" /></td>
						
						</option>
                        <td><a href="/party-details?id=${party.id}" >Click for Detail</a></td>
					</c:forEach>
				</select>
				
			</div>
				
				
		</div>	
		<div>
		<div >

		<h4>RSVP</h4>

		<form action="/save-rsvp" method="post">
			<p><label>Attendee</label> <input type="name" required name="name"></p>
			<p><label>Comments</label> <input type="text" required min="0"
				name="level">

			<div>
				<label>Events To RSVP</label> <select name="party">
					<c:forEach var="party" items="${partys}">

						<option value="${party.id}">
						<c:out value="${party.name}" />
						
						
						</option>

					</c:forEach>
				</select>
			</div>

			<button type="submit" class="btn btn-warning">RSVP</button>

		</form>
		

	</div>
				
		</div>	
		
		

</body>
</html>