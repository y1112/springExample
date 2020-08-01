<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<a href="<%=request.getContextPath() %>/WEB-INF/views/list.jsp">list</a>
<a href="/WEB-INF/views/list.jsp">list</a>
</body>
</html>
