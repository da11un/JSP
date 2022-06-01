<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "project_survey.*" %>
<% SurveyDao dao = SurveyDao.getInstance(); %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
	String deleteList = request.getParameter("checkedVal");
	dao.deleteList(deleteList);
%>
<head>
<meta http-equiv="Refresh" content="3;url=index.jsp">
</head>
<body>
<b> <%= deleteList %> 가(이) 삭제되었습니다. </b> <br/>
3초 후에 메인 페이지로 이동합니다.
</body>
