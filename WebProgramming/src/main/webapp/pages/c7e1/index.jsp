<div class="centerDiv">
	<h1>List of albums</h1>
	<%@ page import="javax.servlet.http.Cookie"%>
	<%
	Cookie[] cookies = request.getCookies();

	if (cookies != null) {
		for (Cookie cookie : cookies) {
			if ("Email".equals(cookie.getName())) {
		String userEmail = cookie.getValue();
	%>
	<p>
		User Email: &nbsp;
		<%=userEmail%></p>
	<%
	break; // No need to continue checking other cookies
	}
	}
	} else {
	%>
	<p>User Email:&nbsp; Not registered</p>
	<%
	}
	%>

	<%-- 	<p>User Email: ${cookie.userEmail.value}</p> --%>
	<p style="line-height: 2rem; margin-top: 1rem">
		<a href="/api/chap7/download?action=checkUser&amp;productCode=8601"> 86 (the band) - True Life Songs and Pictures
		</a>
		<br>
		<a href="/api/chap7/download?action=checkUser&amp;productCode=pf01"> Paddlefoot - The First CD </a>
		<br>
		<a href="/api/chap7/download?action=checkUser&amp;productCode=pf02"> Paddlefoot - The Second CD </a>
		<br>
		<a href="/api/chap7/download?action=checkUser&amp;productCode=jr01"> Joe Rut - Genuine Wood Grained Finish </a>
	</p>
</div>