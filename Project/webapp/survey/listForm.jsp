<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import = "java.util.*, project_survey.*" %>
<% SurveyDao dao = SurveyDao.getInstance(); %>

<html>
<head>
<meta charset="UTF-8">
<title>list page</title>
</head>
<body>
<h3>설문 현황보기</h3>
<form name="listForm" action="editVote.jsp">
<%
	int virtualNum = 1;
	List<SurveyVo> al = dao.selectAll();
	for(SurveyVo tmp : al) {
		%><%=virtualNum + ". "%><%= tmp %><br/>
		<%
		virtualNum++;
	}
%>
<br>
※ 총 투표 수 : <%=dao.sumVote()%> 표 <br><br>
<input type="button" value="메인 페이지로 이동" onclick="javascript:window.location='index.jsp'">
<input type="submit" value="투표 수 초기화" >
</form>
</body>
</html>