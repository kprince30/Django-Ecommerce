<!DOCTYPE html>
<html>
<head>
	<title>Submitted Data</title>
	<style>
	    h1{
	      text-align:center;
	    }
		table {
			border-collapse: collapse;
			width: 100%;
		}

		th, td {
			text-align: left;
			padding: 8px;
			border-bottom: 1px solid #ddd;
		}

		th {
			background-color: #4CAF50;
			color: white;
		}
	</style>
</head>
<body>
	<h1>Submitted Data</h1>
	<table>
		<tr>
			<th>Field</th>
			<th>Value</th>
		</tr>
		<tr>
			<td>Name:</td>
			<td><%= request.getParameter("name") %></td>
		</tr>
		<tr>
			<td>Query:</td>
			<td><%= request.getParameter("query") %></td>
		</tr>
		<tr>
			<td>Email:</td>
			<td><%= request.getParameter("email") %></td>
		</tr>
		<tr>
			<td>Mobile Number:</td>
			<td><%= request.getParameter("mobile") %></td>
		</tr>
	</table>
</body>
</html>
