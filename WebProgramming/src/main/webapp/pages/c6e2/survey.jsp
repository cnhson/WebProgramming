<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Murach's Java Servlets and JSP</title>
<link rel="stylesheet" href="/resources/styles/layout.css">
<link rel="stylesheet" href="/resources/styles/ex.css">
</head>

<body>
	<jsp:include page="/layouts/header.jsp" />
	<div class="centerDiv">
		<h1>Thanks for taking our survey!</h1>

		<p>Here is the information that you entered:</p>

		<label>Email:</label>
		<span>${user.email}</span>
		<br>
		<label>First Name:</label>
		<span>${user.firstName}</span>
		<br>
		<label>Last Name:</label>
		<span>${user.lastName}</span>
		<br>
		<label>Heard From:</label>
		<span>${user.heardFrom}</span>
		<br>
		<label>Updates:</label>
		<span>${user.wantsUpdates}</span>
		<br>

		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<c:if test="${user.wantsUpdates == 'Yes'}">
			<label>Contact Via:</label>
			<span>${user.contactVia}</span>
		</c:if>
	</div>
	<jsp:include page="/layouts/footer.jsp" />
</body>
</html>