<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글내용 보기</title>

<%-- <link href="<%=request.getContextPath() %>/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
 --%>  <style>
  td>img {
	width: 50px;
	height: 50px;
	}

    #contentForm {
/*       width: 70%;
 */      margin: 0 auto;
      padding-top: 2%;
    }
 
    .table > thead > tr > th, .table > tbody > tr > th {
      background-color: #e6ecff;
      text-align: center;
    }
  </style>
	<%@ include file="/WEB-INF/views/frame/top.jsp"%>
</head>
<body>
	<%@ include file="/WEB-INF/views/frame/sideMenuBar.jsp"%>
<div id="contentForm" align="center">
	<hr width="500" color="green">
	<h2 class="subtitle">글내용 확인</h2>
	<hr width="500" color="green">

<!-- 	<div id="container" align="center">
 -->
		<div class="input-group input-group-sm" role="group" aria-label="...">
			<form action="modify" method="post">
				<table class="table table-striped table-bordered" width="500"
					cellpadding="0" cellspacing="0" border="1">
					<thead>
						<input type="hidden" name="bNo" value="${contentView.bNo}" />
						<tr>
							<td>번호</td>
							<td>${contentView.bNo}</td>
						</tr>
						<tr>
							<td>조회수</td>
							<td>${contentView.bHit}</td>
						</tr>
						<tr>
							<td>작성자</td>
							<td><input type="text" name="bName"
								value="${contentView.bName}" /></td>
						</tr>
						<tr>
							<td>제목</td>
							<td><input class="form-control"
								aria-describedby="basic-addon1" type="text" name="bSubject"
								value="${contentView.bSubject}" /></td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>내용</td>
							<td><textarea rows="10" cols="80" name="bContent">${contentView.bContent}</textarea></td>
						</tr>
					</tbody>
					<tr>
						<div class="btn-group btn-group-sm" role="group" aria-label="...">
							<td colspan="2" align="center"><input
								class="btn btn-outline-primary" type="submit" value="수정하기" />
								&nbsp;&nbsp;&nbsp;<a class="btn btn-outline-primary" href="list">목록보기</a>
								&nbsp;&nbsp;&nbsp;<a class="btn btn-outline-primary"
								href="delete?bNo=${contentView.bNo}">삭제</a> &nbsp;&nbsp;&nbsp;<a
								class="btn btn-outline-primary"
								href="replyForm?bNo=${contentView.bNo}">답변</a>
						</div>
						</td>
					</tr>
					</form>
				</table>
		</div>
	</div>
	
		<%@ include file="/WEB-INF/views/frame/bottom.jsp"%>
	
</body>
</html>