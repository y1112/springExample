<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 리스트</title>



<link
	href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<style>
#container {
	width: 70%;
	margin: 0 auto; /* 가로로 중앙에 배치 */
	padding-top: 5%; /* 테두리와 내용 사이의 패딩 여백 */
}

#list {
	text-align: center;
}

#write {
	text-align: right;
}

td {
	height: 10%;
}
/* Bootstrap 수정 */
.table>thead {
	background-color: #b3c6ff;
}

.table>thead>tr>th {
	text-align: center;
}

.table-hover>tbody>tr:hover {
	background-color: #e6ecff;
}

.table>tbody>tr>td {
	text-align: center;
}

.table>tbody>tr>#title {
	text-align: left;
}

div>#paging {
	text-align: center;
}

.hit {
	animation-name: blink;
	animation-duration: 1.5s;
	animation-timing-function: ease;
	animation-iteration-count: infinite;
	/* 위 속성들을 한 줄로 표기하기 */
	/* -webkit-animation: blink 1.5s ease infinite; */
}

/* 애니메이션 지점 설정하기 */
/* 익스플로러 10 이상, 최신 모던 브라우저에서 지원 */
@
keyframes blink {
	from {color: white;
}

30


%
{
color


:


yellow
;


}
to {
	color: red;
	font-weight: bold;
}
/* 0% {color:white;}
      30% {color: yellow;}
      100% {color:red; font-weight: bold;} */
}
td>img {
	width: 50px;
	height: 50px;
}
</style>
</head>
<body>
	<div align="center">
		<h2>게시판 리스트</h2>
		<hr width="400" color="red" />

		<table class="table table-striped table-bordered table-hover"
			border="1" cellpadding="0" cellspacing="0" width="500">

			<tr>
				<th width="10%">번호</th>
				<th width="50%">제목</th>
				<th width="10%">작성자</th>
				<th width="15%">날짜</th>
				<th width="15%">조회수</th>
			</tr>
			<!-- 게시글 목록 가져오기 -->
			<c:forEach items="${list}" var="vo">
				<tr>
					<td>${vo.bNo}</td>
					<td><a href="contentView?bNo=${vo.bNo}">${vo.bSubject}</td>
					<td>${vo.bName}</td>
					<td>${vo.bDate}</td>
					<td>${vo.bHit}</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="5" align="center"><a href="writeForm">글쓰기</a></td>
			</tr>
		</table>

	</div>
</body>
</html>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 리스트</title>
</head>
<body>
<div align="center">
	<h2>게시판 리스트</h2>
	<hr width="400" color="red"/>
	
	<table border="1" cellpadding="0" cellspacing="0" width="500">
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>날짜</td>
			<td>조회수</td>
		</tr>
		<!-- 게시글 목록 가져오기 -->
		<c:forEach items="${list}" var="vo">
			<tr>
				<td>${vo.bNo}</td>
				<td>
					<c:forEach begin="1" end="${vo.bIndent}">ㄴ</c:forEach>
					<a href="contentView?bNo=${vo.bNo}">${vo.bSubject}</a>
				</td>
				<td>${vo.bName}</td>
				<td>${vo.bDate}</td>
				<td>${vo.bHit}</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="5" align="center"><a href="writeForm">글쓰기</a></td>
		</tr>
	</table>	

</div>
</body>
</html> --%>