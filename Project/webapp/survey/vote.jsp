<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="project_survey.*"%>
<%
	SurveyDao dao = SurveyDao.getInstance();
%>

<%
	request.setCharacterEncoding("UTF-8");

String checkedVal = request.getParameter("checkedVal");
String checkedNum = request.getParameter("checkedNum");
if (checkedNum.equals("-1")) {
	dao.insertSurvey(checkedVal);
}
dao.counter(checkedVal);
%>

<head>
<meta http-equiv="Refresh" content="3;url=index.jsp">
</head>
<body>
<b>투표가 완료되었습니다.</b><br/>
3초 후에 메인 페이지로 이동합니다.
</body>