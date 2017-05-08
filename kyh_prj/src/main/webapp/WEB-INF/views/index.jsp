<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<title>Insert title here</title>


<!-- http://bootswatch.com/darkly/#containers -->

<!-- <link rel="stylesheet" type="text/css" href="/resources/bootstrap/bootstrap.css" /> -->

	<link rel="stylesheet" media="screen" href="/resources/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" media="screen" href="/resources/bootstrap/css/bootstrap.min.css" />


	<script src='/resources/bootstrap/js/jQuery-2.1.4.min.js'></script>
	<script src='/resources/bootstrap/js/bootstrap.min.js'></script>
	
	
	



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


<script>

	$(document).ready(function(){
		
		//alert('start');
		
		$('#myModal').on('shown.bs.modal', function () {
			  $('#myInput').focus()
		})
		
	});


</script>

</head>
<body>



	<header>
		this is header
	</header>




 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
  
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Brand</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
      <ul class="nav navbar-nav">
        
        <li class="active"><a href="#">게시판 <span class="sr-only">(current)</span></a></li>
       
        <li><a href="#">Link</a></li>
       
       
       
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
          		Dropdown <span class="caret"></span>
          </a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">이력</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      
      
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Link</a></li>
      </ul> 
    </div>
  </div>
</nav>


	<div id="content">
		this is content
		
		<div class="jumbotron">
			  <h1>김영환 </h1>
			  <p>화니의 루신공부를 위한 Page.</p>
			  <p><a class="btn btn-primary btn-lg">Learn more</a></p>
			  
			  <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
		  			Launch demo modal
			  </button>
			  
		</div>
		
		
		
	</div>




 <footer class=".navbar-fixed-bottom"> footer </footer>






<!-- Modal : Launch demo modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
        ... modal content.....
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>


</body>
</html>




