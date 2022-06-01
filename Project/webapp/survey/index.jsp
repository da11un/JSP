<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="project_survey.*"%>
<%
	SurveyDao dao = SurveyDao.getInstance();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>survey page</title>
<script src="script.js"></script>
</head>
<body>
	<h2>설문 조사 메인</h2>
	<br>
	<h3>★좋아하는 영화 장르 설문조사★</h3>
	<ul>
		<li><a href="voteForm.jsp">설문 참여하기</a>
		<li><a href="listForm.jsp">설문 현황보기</a>
		<li><a href="updateForm.jsp">항목 이름 변경하기</a></li>
		<li><a href="deleteForm.jsp">항목 삭제하기</a></li>
	</ul>
</body>
</html>