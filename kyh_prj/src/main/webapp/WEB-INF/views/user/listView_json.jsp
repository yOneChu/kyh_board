<%@page import="org.kyh.domain.UserVO"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%

	System.out.println("----------- listView_json.jsp -----------------");

	out.clear();
	
	List<UserVO> result = (List<UserVO>)request.getAttribute("userList");
	System.out.println("result--> " + result);
	
	boolean flag1 = false;
	out.print("{");
	out.print("\""+ "data" +"\":");
	out.print("[");
	
	for(int i=0; i < result.size(); i++) {
		UserVO vo = result.get(i);
		
		if(flag1){
			out.print(",");
		}
		
		out.print("{");
			out.print("\""+ "sortOrdr" +"\":\"" +  (i + 1) + "\"");
			out.print(",");
			out.print("\""+ "name" +"\":\"" + vo.getName() + "\"");
			out.print(",");
			out.print("\""+ "id" +"\":\"" + vo.getId() + "\"");
			out.print(",");
			out.print("\""+ "email" +"\":\""+ vo.getEmail() + "\"");
		out.print("}");
		
		flag1 = true;
	}
	
	out.print("]");
	out.print("}");
	
%>