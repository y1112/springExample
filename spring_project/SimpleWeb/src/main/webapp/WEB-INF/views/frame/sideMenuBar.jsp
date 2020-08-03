<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="ko">
<meta charset="utf-8">

<div class="wrapper d-flex align-items-stretch">
<nav id="sidebar">
<div class="custom-menu">
<button type="button" id="sidebarCollapse" class="btn btn-primary">
<i class="fa fa-bars"></i>
<span class="sr-only">토글메뉴</span>
</button>
</div>
<div class="p-4 pt-5">
<h1><a href="${pageContext.request.contextPath}/" class="logo">임시</a></h1>

<ul class="list-unstyled components mb-5">
<li class="active">
<!-- <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">홈</a> -->

<ul class="collapse list-unstyled" id="homeSubmenu">
</ul>

<li>
<a href="home">홈</a>
</li>
<c:if test="${empty info}">
<li>
<a href="${pageContext.request.contextPath}/member/memberRegForm.do">회원가입</a>
</li>
</c:if>
<li>
<a href="<%=request.getContextPath() %>/member/memberList.do">회원리스트</a>
</li>
<li>
	<c:if test="${empty info}">
		<a href="<%=request.getContextPath() %>/member/memberLogin.do"/>로그인</a>
	</c:if>
	<c:if test="${!empty info}">
		<a href="<%=request.getContextPath() %>/member/memberLogout.do"/>로그아웃</a>
	</c:if>
</li>
<li>
	<c:if test="${!empty info}">
<a href="<%=request.getContextPath() %>/member/memberMypage.do"/>마이페이지</a>
	</c:if>
</li>
</li>
<li>
<a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">게시판</a>
<ul class="collapse list-unstyled" id="pageSubmenu">
   <a href="list"/>임시게시판</a>
   <a href="<%=request.getContextPath() %>/board/buyerBoard.do"/>임시게시판2</a>
   <a href="<%=request.getContextPath() %>/board/buyerBoard.do"/>임시게시판3</a>
</ul>
</li>
</ul>

<div class="mb-5">
<h3 class="h6">Subscribe for newsletter</h3>
<form action="#" class="colorlib-subscribe-form">
<div class="form-group d-flex">
<div class="icon"><span class="icon-paper-plane"></span></div>
<input type="text" class="form-control" placeholder="Enter Email Address">
</div>
</form>
</div>
<div class="footer">
<p>
Copyright &copy;<script type="937e342de99a9ff8a5348d28-text/javascript">document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib.com</a>
</p>
</div>
</div>
</nav>