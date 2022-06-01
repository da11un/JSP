<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "memberone.*" %>
<% MemberDao dao = MemberDao.getInstance(); %>

<%
	String id = request.getParameter("id");
	boolean check = dao.idCheck(id);
%>
<html>
<head>
<title>ID 중복체크</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<script src="script.js"></script>
<style>
a{ text-decoration: none; }
</style>
</head>
	<body>
	<br><b><%= id %></b>
	<%
		if(check){
			out.println("는 이미 존재하는 ID입니다.<br/><br/>");
		}else {
			out.println("는 사용가능합니다.<br/><br/>");
		}
	%>
	<a href="#" onClick="javascript:self.close()">닫기</a>
</body>
</html>