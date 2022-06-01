<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import = "java.util.*, project_survey.*" %>
<% SurveyDao dao = SurveyDao.getInstance(); %>
<!DOCTYPE html>
<html>
<head>
<title>delete page</title>
<script src="script.js"></script>
</head>
<body>
	<h3>삭제할 항목을 선택하세요.</h3>
	<form method="post" name="deleteForm" action="delete.jsp">
	<%
		List<SurveyVo> al = dao.selectAll();
		for(SurveyVo tmp : al) {
			%>
			<input type="radio" name="List" value="<%=tmp.getList()%>">
			<%= tmp.getList() %>
		<%}
	%>
	<input type="hidden" name="checkedVal">
	<br><br>
	<button type="button" onclick="deleteList()">삭제하기</button>	
	<input type="button" value="뒤로 가기" onclick='history.go(-1);'>
	
</form>
</body>
</html>