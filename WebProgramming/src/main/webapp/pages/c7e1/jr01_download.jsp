<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Your Page Title</title>
<link rel="stylesheet" href="/resources/styles/layout.css">
<link rel="stylesheet" href="/resources/styles/ex.css">
</head>
<body>
	<jsp:include page="/layouts/header.jsp" />
	<div class="content">
		<div class="centerDiv">
			<h1>Downloads</h1>
			<h2>Joe Rut - Genuine Wood Grained Finish</h2>
			<table>
				<tr>
					<th>Song title</th>
					<th>Audio Format</th>
				</tr>
				<tr>
					<td width="200">
						<b>Song title</b>
					</td>
					<td width="150">
						<b>Audio Format</b>
					</td>
				</tr>
				<tr>
					<td>Filter</td>
					<td>
						<a href="/musicStore/sound/${productCode}/filter.mp3">MP3</a>
					</td>
				</tr>
				<tr>
					<td>So Long Lazy Ray</td>
					<td>
						<a href="/musicStore/sound/${productCode}/so_long.mp3">MP3</a>
					</td>
				</tr>
			</table>
			<p>
				<a href="/c7e1/index">View list of albums</a>
			</p>
			<p>
				<a href="/c7e1/view_cookies">View all cookies</a>
			</p>
		</div>
	</div>
	<jsp:include page="/layouts/footer.jsp" />
</body>
</html>