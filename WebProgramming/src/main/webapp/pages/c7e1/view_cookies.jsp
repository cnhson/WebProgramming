<div class="centerDiv">
	<h1>Cookies</h1>
	<p>Here's a table with all of the cookies that this browser is sending to the current server.</p>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<table>
		<tr>
			<th>Name</th>
			<th>Value</th>
		</tr>
		<c:forEach var="c" items="${cookie}">
			<tr>
				<td>${c.value.name}</td>
				<td>${c.value.value}</td>
			</tr>
		</c:forEach>
	</table>
	<p>
		<a href="/c7e1/index">View list of albums</a>
	</p>
	<p>
		<a href="/api/chap7/download?action=deleteCookies">Delete all persistent cookies</a>
	</p>
</div>
