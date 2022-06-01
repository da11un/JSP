<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import = "java.util.*, project_survey.*" %>
<% SurveyDao dao = SurveyDao.getInstance(); %>
<!DOCTYPE html>
<html>
<head>
<title>update page</title>
<script src="script.js"></script>
</head>
<body>
	<h3>항목 이름 변경하기</h3>
	<h4>변경할 항목</h4>
	<form name="updateForm" method="post" action="update.jsp">
	<%
	List<SurveyVo> al = dao.selectAll();
	for(SurveyVo tmp : al) {
		%>
		<input type="radio" name="movieName" value="<%=tmp.getList()%>"><%= tmp.getList() %>
	<%}
	%>
	<input type="hidden" name="checkedVal">
	<h4>변경 내용</h4>
	<input type="text" name="updateName" >
	<button type="button" onclick="update()">변경하기</button>
	<input type="button" value="뒤로 가기" onclick='history.go(-1);'>
	</form>
</body></html>