<%@page import="java.util.Map"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="org.kyh.domain.UserVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<%

	System.out.println("------------ selectUserListView.jsp -----------");	

	//List<UserVO> aa = (List<UserVO>)request.getParameter("list");
	

%>
    
<rows>
	<page><c:out value="${page}"/></page>
	<total><c:out value="${records}"/></total>
	<records><c:out value="${totalCnt}"/></records>
	<c:forEach var="result" items="${list}" varStatus="status">
		<row id="${status.index + 1}">
	        <cell><c:out value="${result.id}"/></cell>
			<cell><c:out value="${result.name}"/></cell>
			<cell><c:out value="${result.email}"/></cell>
		</row>
	</c:forEach>
</rows>


     
     
     