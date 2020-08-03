<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
 td>img {
	width: 50px;
	height: 50px;
	}

    #contentForm {
     /*  width: 70%; */
      margin: 0 auto;
      padding-top: 2%;
    }
 
    .table > thead > tr > th, .table > tbody > tr > th {
      background-color: #e6ecff;
      text-align: center;
    }
	.check_ok {
		color : blue;
	}
	.check_not {
		color : red;
	}
	#idchk {
		display: none;
	}
.check_ok {
	color: blue;
}

.check_not {
	color: red;
}

#idchk {
	display: none;
}
</style>

	<%@ include file="/WEB-INF/views/frame/top.jsp"%>
</head>
<body>
	<%@ include file="/WEB-INF/views/frame/sideMenuBar.jsp"%>

<div id="contentForm" align="center">
	<hr width="500" color="green">
	<h2 class="subtitle">글쓰기 페이지</h2>
	<hr width="500" color="green">
	<a class="btn btn-outline-primary" href="list">목록</a> 
	
	  <div class="input-group input-group-sm" role="group" aria-label="...">
	<table class="table table-striped table-bordered" width="500" cellpadding="0" cellspacing="0" border="1">
		<form:form commandName="BVO" action="writeOk" method="post" >
			<tr>
				<th width="20%">작성자</th>
				<td><form:input path="bName" size="20"/></td>
			</tr>
		    <tr>
				<th style="padding-top: 15px" width="20%">제목</th>
				<td><form:input class="form-control" aria-describedby="basic-addon1" path="bSubject" size="50"/></td>
			</tr>
			<tr>
				<th width="20%">내용</th>
				<td><form:textarea path="bContent" cols="60" rows = "8"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input class="btn btn-outline-primary" type="submit" value="등록"/></td>
			</tr>			
		</form:form>	
	</table>
</div>
</div>

	<%@ include file="/WEB-INF/views/frame/bottom.jsp"%>

</body>
</html>