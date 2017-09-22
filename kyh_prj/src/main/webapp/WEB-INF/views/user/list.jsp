<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<!-- basic layout CSS -->
	<link rel="stylesheet" media="screen" href="/resources/basic_layout.css" />
	
	<link rel="stylesheet" media="screen" href="/resources/bootstrap/css/bootstrap.css" />
	<link rel="stylesheet" media="screen" href="/resources/bootstrap/css/bootstrap.min.css" />


	<script src='/resources/bootstrap/js/jQuery-2.1.4.min.js'></script>
	<script src='/resources/bootstrap/js/bootstrap.min.js'></script>



 	<link rel="stylesheet" type="text/css" media="screen" href="/resources/jquery-ui-1.12.1.custom/jquery-ui.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="/resources/jqgrid/css/ui.jqgrid.css" />

	<!-- <script src='/resources/jQuery-2.1.4.min.js'></script> -->
    <script type="text/ecmascript" src="/resources/jqgrid/src/i18n/grid.locale-kr.js"></script>
    <script src='/resources/jquery-ui-1.12.1.custom/jquery-ui.js'></script>
    <script src='/resources/jqgrid/js/jquery.jqGrid.min.js'></script>


	<style>
        header {
            width : 100%;
            margin: 0 auto;
            border : 1px solid #cccccc;
        }

        #content {
            width : 85%;
            margin: 0 auto;
            /* border : 1px solid #cccccc; */
        }

        footer {
            width : 100%;
            margin: 0 auto;
            border : 1px solid #cccccc;
        }
    </style>



	
   <!--  <script src="/resources/js/jQuery-2.1.4.min.js"></script> 
    <script type="text/ecmascript" src="/resources/jqgrid/src/i18n/grid.locale-kr.js"></script>
    <script src="/resources/jqgrid/js/jquery.jqGrid.min.js"></script>
	
	<link rel="stylesheet" href="/resources/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/jqgrid/css/jquery-ui.css">
	<link rel="stylesheet" type="text/css" media="screen" href="/resources/jqgrid/css/ui.jqgrid-bootstrap.css" /> -->


	
<script>
	$(document).ready(function(){
		
		
		//var gridData = [{seq:"1",create_date:"2007-10-01",create_name:"test",title:"note",hitnum:"11"},
		 //                {seq:"2",create_date:"2007-10-02",create_name:"test2",title:"note2",hitnum:"22"}];
		
		
		jQuery("#list1").jqGrid({
			//height: 250,
		   	//url:'/user/test',
		    datatype: 'xml',
		    mtype: "GET",
		    colNames:['NO','ID', '이름', '이메일','조회수'],
            colModel:[ 
                {name:'seq', align : 'center' },
                {name:'id', align : 'center' },
                {name:'name', align : 'center' },
                {name:'email'}
            ],
		   	rowNum:15,
			rowList : [15,30,45],
			//rownumbers: true,
			rownumWidth: 40,
			gridview: true,
			pager: '#pager1',
		    viewrecords: true,
		   // multiselect: true,
			toolbar: [true,"top"],
			caption: "사용자 정보",
			emptyrecords: "조회된 데이터가 없습니다."
		});
		
		
		jQuery("#list1").jqGrid('navGrid', '#pager2', {edit:false, add:false, del:false});
		
		//for(var i=0;i<=gridData.length;i++){
	           // $("#list1").jqGrid('addRowData',i+1,gridData[i]);  //jqgrid의 addRowData를 이용하여 각각의 row에 gridData변수의 데이터를 add한다
	   // }
		
	});
</script>

</head>
<body>

	<%@include file="../body/header.jsp" %>


	<div id="content">
		<h1>사용자 정보 </h1>

		<table id="list1"></table> 
		<div id="pager1"></div>
	</div>






	<%@include file="../body/footer.jsp" %>
</body>
</html>