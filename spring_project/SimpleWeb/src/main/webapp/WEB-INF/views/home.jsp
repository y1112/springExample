<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">
<head>
<title>회원리스트</title>
<meta charset="utf-8">

<%@ include file="/WEB-INF/views/frame/top.jsp"%>

</head>
<body>


	<%@ include file="/WEB-INF/views/frame/sideMenuBar.jsp"%>


	<div id="content" class="p-4 p-md-5 pt-5">
		<h1>Hello world!</h1>

		<P>The time on the server is ${serverTime}.</P>
		<hr>
		<a href="list">list</a>
	</div>


	<%@ include file="/WEB-INF/views/frame/bottom.jsp"%>

</body>
</html>

