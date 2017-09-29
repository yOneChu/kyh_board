<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<script src='/resources/bootstrap/js/jQuery-2.1.4.min.js'></script> <!-- datatable --


<!-- basic layout CSS -->
<link rel="stylesheet" media="screen" href="/resources/basic_layout.css" />

<link rel="stylesheet" media="screen" href="/resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" media="screen" href="/resources/bootstrap/css/bootstrap.min.css" />


	
<link rel="stylesheet" type="text/css" href="/resources/DataTables/datatables.css" /> <!-- datatable -->
<script type="text/javascript" charset="utf8" src="/resources/DataTables/datatables.js"></script>  <!-- datatable -->

<style>

		#wrap {
			min-height: 100%; /* relative 선언을 통해 하단바의 absolute position 이 정확한 위치에 오도록 한다.*/
			position: relative;
			/* background: #0202F7; */
			
		}

        #header {
            width : 100%;
            margin: 0 auto;
            border : 1px solid #cccccc;
            height: 70px;
            
        }

        #content {
            width : 85%;
            margin: 0 auto;
            padding-bottom: 50px;
            /* border : 1px solid #cccccc; */
        }

        #footer {
            width : 100%;
            margin: 0 auto;
            border : 1px solid #cccccc;
           /*   position : absolute; */
               height : 60px;
               bottom: 0;
        }
    </style>
    
    
<title>Insert title here</title>
</head>

<script>

	$(document).ready(function(){
		
		$('#example').DataTable({
			pageLength : 10,
		 	ajax : {
				url :  "/user/listView",
				type : "POST",
				dataType : "JSON",
				data : function (row, type, set) {
					console.log(row);
					console.log(type);
				}
			},  
			columns : [
				{ data : "sortOrdr" },
				{ data : "id" },
				{ data : "name" },
				{ data : "email" }
			],
			buttons : [
				'excel',
				'print'
			]
		});
		
		
	    $('#example tbody')
        .on( 'mouseenter', 'td', function () {
            var colIdx = table.cell(this).index().column;
 
            //$( table.cells().nodes() ).removeClass( 'highlight' );
           // $( table.column( colIdx ).nodes() ).addClass( 'highlight' );
        } );
		
	});


</script>


<body>


<div id="wrap">

<%@include file="../body/header.jsp" %>


	<div id="content">
	
		<div style="width:1280px; margin:0 auto;">
			  <table id="example" class="table table-striped table-hover" cellspacing="0" width="100%">
			         <thead>
			             <tr class="success">
			             	 <th>번호</th>
			                 <th>ID</th>
			                 <th>NAME</th>
			                 <th>이메일</th>
			             </tr>
			         </thead>
			  </table>
		 </div>
	</div>


	<%@include file="../body/footer.jsp" %>


</div>

</body>
</html>