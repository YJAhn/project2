<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//디비연동 JDBC / json 형태로 바꾸어 주는 파일 설치
//	mysql-connector-java-5.1.38-bin.jar
//	json-simple-1.1.1.jar
// 자바빈=> JSONObject /배열=>JSONArray
//1단계 드라이버 로더
//2단계 디비연결

Class.forName("com.mysql.jdbc.Driver");
String dbUrl="jdbc:mysql://localhost:3306/jspdb2";
String dbUser="jspid";
String dbPass="jsppass";
Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);

//3단계 sql 객체 생성 member테이블 모든 정보 가져오기.
String sql="select * from member";
PreparedStatement pstmt=con.prepareStatement(sql);

//4단계 rs <=실행결과 저장
ResultSet rs= pstmt.executeQuery();

//5단계 rs 첫행 이동 데이터 있으면, 
//자바빈 객체 생성
//자바빈 id 변수 <= 첫행 id 열 데이티 가져와서 저장
//배열 변수 한칸 저장<= 한사람의 정보 (자바빈)
JSONArray arr= new JSONArray();
while(rs.next()){
	//한 사람의 정보를 저장
	JSONObject obj= new JSONObject();
	obj.put("id", rs.getString("id"));
	obj.put("pass", rs.getString("pass"));
	obj.put("name", rs.getString("name"));
	
	//배열 한칸에 저장

	arr.add(obj);
}

%>

<%=arr%>