<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset-utf-8" pageEncoding="utf-8" %>
<%@ page session="false" %>

<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>
<table border="1">
		<tr>
		<td align="center" class="listtd"><c:out value="number"/></td>
		<td align="center" class="listtd"><c:out value="id"/></td>
		<td align="center" class="listtd"><c:out value="e-mail"/></td>
		<td align="center" class="listtd"><c:out value="name"/></td>
		</tr>
		<c:forEach var="calendar_users" items="${calendar_users}" varStatus="status">
			<tr>
				<td align="center" class="listtd"><c:out value="${status.count}" /></td>
				<td align="center" class="listtd"><c:out value="${calendar_users.id}" /></td>
				<td align="center" class="listtd"><c:out value="${calendar_users.email}" /></td>
				<td align="left" class="listtd"><c:out value="${calendar_users.name}" /></td>
			</tr>
		</c:forEach>
	</table>

<table border="1">
		<tr>
		<td align="center" class="listtd"><c:out value="number"/></td>
		<td align="center" class="listtd"><c:out value="id"/></td>
		<td align="center" class="listtd"><c:out value="when"/></td>
		<td align="center" class="listtd"><c:out value="summary"/></td>
		<td align="center" class="listtd"><c:out value="description"/></td>
		<td align="center" class="listtd"><c:out value="owner"/></td>
		<td align="center" class="listtd"><c:out value="numLikes"/></td>
		<td align="center" class="listtd"><c:out value="eventLevel"/></td>
		</tr>
		<c:forEach var="events" items="${events}" varStatus="status">
			<tr>
				<td align="center" class="listtd"><c:out value="${status.count}" /></td>
				<td align="center" class="listtd"><c:out value="${events.id}" /></td>
				<td align="center" class="listtd"><c:out value="${events.when.getTime()}" /></td>
				<td align="center" class="listtd"><c:out value="${events.summary}" /></td>
				<td align="left" class="listtd"><c:out value="${events.description}" /></td>
				<td align="left" class="listtd"><c:out value="${events.owner.id}" /></td>
				<td align="left" class="listtd"><c:out value="${events.numLikes}" /></td>
				<td align="left" class="listtd"><c:out value="${events.eventLevel}" /></td>
			</tr>
		</c:forEach>
	</table>
	
<table border="1">
		<tr>
		<td align="center" class="listtd"><c:out value="number"/></td>
		<td align="center" class="listtd"><c:out value="id"/></td>
		<td align="center" class="listtd"><c:out value="event_id"/></td>
		<td align="center" class="listtd"><c:out value="attendee"/></td>
		</tr>
		<c:forEach var="eventAttentees" items="${eventAttentees}" varStatus="status">
			<tr>
				<td align="center" class="listtd"><c:out value="${status.count}" /></td>
				<td align="center" class="listtd"><c:out value="${eventAttentees.id}" /></td>
				<td align="center" class="listtd"><c:out value="${eventAttentees.event.id}" /></td>
				<td align="center" class="listtd"><c:out value="${eventAttentees.attendee.id}" /></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>
