
<!DOCTYPE html>
<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<%@ include file="header3.jsp"%>

</head>
<body>
	<c:url var="url" value="/login.jsp" />
	<h2>Invalid user name or password.</h2>

	<p>
		Please enter a user name or password that is authorized to access this
		application. For this application, this means a user that has been
		created in the
		<code>file</code>
		realm and has been assigned to the <em>group</em> of
		<code>user</code>
		. Click here to <a href="${url}">Try Again</a>
	</p>
</body>
</html>