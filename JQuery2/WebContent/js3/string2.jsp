<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//string2.jsp
//name, age파라미터 가져와서 출력
//request.setCharacterEncoding('utf-8');
String name=request.getParameter("name");
String age=request.getParameter("age");


%>

<h1><%=name %></h1>
<h1><%=age %></h1>

