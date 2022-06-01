<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import = "java.util.*, project_survey.*" %>
<% SurveyDao dao = SurveyDao.getInstance(); %>
<!DOCTYPE html>
<html>
<head>
<title>vote page</title>
<script src="script.js"></script>
<script>
function etcFocus(){
	let etcElement = document.querySelector("#etc");
	etcElement.checked = true;
}
</script>
</head>
<body>
	<h3>설문 참여하기</h3>
	<h4>좋아하는 영화 장르를 선택하세요.</h4>
	<form name="voteForm" method="post" action="vote.jsp">
		<ol type="1">
			<%	List<SurveyVo> al = dao.selectAll();
				for(SurveyVo tmp : al) {
					%>
					<li><%= tmp.getList() %><input type="radio" name="movie" value="<%=tmp.getList()%>"></li>
				<%}%>
			<li><label for="etc">기타</label><input type="radio" id="etc" name="movie" value="기타">
				</li>
			<input type="text" name="other" placeholder="(직접 입력)" onfocus="etcFocus()">
			<br>
			<input type="hidden" name="checkedVal">
			<input type="hidden" name="checkedNum" value="0">
			<br>
			<button type="button" onclick="values()">제출</button>
			<input type="reset" value="다시 선택">
			<input type="button" value="뒤로 가기" onclick='history.go(-1);'>
		</ol>
	</form>
</body>
</html>