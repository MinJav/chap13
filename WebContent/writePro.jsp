<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="ch13.board.BoardDataBean" %>
    <%@ page import="ch13.board.BoardDBBean" %>
    
    <%
    
    	String subject = request.getParameter("subject");  //url에서 subject의 값을 불러옴.  
    	String name = request.getParameter("writer");
    	String email = request.getParameter("email");
    	String contents = request.getParameter("contents");
    	String password = request.getParameter("password");
    	
    	BoardDataBean dataBean = new BoardDataBean();
    	
    	
    	dataBean.setSubject(subject);
    	dataBean.setWriter(name);
    	dataBean.setEmail(email);
    	dataBean.setContent(contents);
    	dataBean.setPasswd(password);
    	out.println(dataBean.toString());
    	
    	BoardDBBean bdb = BoardDBBean.getInstance();
    	//bdb.insertDetailArticle(name, subject, email, content, password);
    	
		bdb.insertArticle(dataBean);
    	
    %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>