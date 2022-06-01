<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import = "memberone.*" %>
<% MemberDao dao = MemberDao.getInstance(); %>
<jsp:useBean id="dto" class="memberone.MemberDto"/>
<jsp:setProperty property="*" name="dto"/>
<%
	boolean flag = dao.memberInsert(dto);
%>
<html>
<head>
<title>회원 가입 확인</title>
</head>
<link href="css/style.css" rel="stylesheet" type="text/css">
<body>
<br/><br/>
<%
	if(flag) {
		out.println("<b>회원 가입을 축하드립니다!</b><br/>");
		out.println("<a href = login.jsp>로그인</a>");
	}else {
		out.println("<b>다시 입력하여 주십시오.</b><br/>");
		out.println("<a href = regForm.jsp>다시 가입</a>");
	}
%>
</body>
</html>