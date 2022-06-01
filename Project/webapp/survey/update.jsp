<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="project_survey.*"%>
<%
	SurveyDao dao = SurveyDao.getInstance();
%>

<% request.setCharacterEncoding("UTF-8"); 
	String updateName = request.getParameter("updateName");
	String checkedVal = request.getParameter("checkedVal");
	dao.modifyList(updateName, checkedVal);


%>

<!DOCTYPE html>
<html>
<head>
</head>
<body>
<b>수정이 완료되었습니다.</b>
<br/><br/>
<input type="button" value="메인 페이지로 이동" onclick="javascript:window.location='index.jsp'">

</body>
</html>