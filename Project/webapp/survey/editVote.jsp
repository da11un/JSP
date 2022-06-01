<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "project_survey.*" %>

<% 
	SurveyDao dao = SurveyDao.getInstance();
	dao.editVote();
%>
    
<!DOCTYPE html>
<html>
<head>
<title>edit vote page</title>
</head>
<body>
<h3>투표 수가 모두 초기화 되었습니다.</h3>
<button type="button" onclick="javascript:window.location='index.jsp'">메인 페이지로 이동</button>
</body>
</html>