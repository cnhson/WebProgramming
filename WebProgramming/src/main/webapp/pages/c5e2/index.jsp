<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Murach's Java Servlets and JSP</title>
<link rel="stylesheet" href="/resources/styles/ex.css">
<jsp:include page="${pageContext.request.contextPath}/layouts/header.jsp" />
</head>
<body>
	<form action="${pageContext.request.contextPath}/api/chap5/senddata" method="post">
		<img class="murach_logo" src="/resources/images/murach_logo.jpg" alt="logo" width="100" />
		<h1>Survey</h1>
		<p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>
		<h2>Your information:</h2>
		<label>First Name</label>
		<input type="text" name="firstname" required>
		<br>
		<label>Last Name</label>
		<input type="text" name="lastname" required>
		<br>
		<label>Email</label>
		<input type="email" name="email" required>
		<br>
		<label>Date of Birth</label>
		<input type="date" name="dob">
		<br>
		<h2>How did you hear about us?</h2>
		<p>
			<input type=radio name="heardFrom" value="Social Media">
			Social Media
			<input type=radio name="heardFrom" value="Search Engine" checked>
			Search engine
			<input type=radio name="heardFrom" value="Friend">
			Word of mouth
			<input type=radio name="heardFrom" value="Other">
			Other
		</p>
		<h2>Would you like to receive announcements about new CDs and special offers?</h2>
		<p>
			<input type="checkbox" name="wantsUpdates">
			YES, I'd like that.
		</p>
		<p>
			<input type="checkbox" name="emailOk">
			YES, please send me email announcements.
		</p>
		<p>
			Please contact me by:
			<select name="contactVia">
				<option value="Both" selected>Email or postal mail</option>
				<option value="Email">Email only</option>
				<option value="Postal Mail">Postal mail only</option>
			</select>
		</p>
		<input type=submit value="Submit">
	</form>
</body>
</html>