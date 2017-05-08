<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Y.H Kim </title>

	<link rel="stylesheet" media="screen" href="/resources/bootstrap/css/bootstrap.css" />
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
		
		// modal : user register
		$('#userRegisterModal').on('shown.bs.modal', function () {
			  console.log('userRegisterModal');
			  $('#userRegisterModal').focus()
		})
		
		// modal : user login
		$('#loginModal').on('shown.bs.modal', function () {
			console.log('loginModal');
			  $('#myInput').focus()
		})
		
		
		$('#signin').click(function(){
			this.close;
			
		});
		
		
		$('#loginok').click(function(){
		
			alert('login button');
			console.log('loginOk');
			
			var loginForm	=	$('#loginForm');
			console.log(loginForm);
			
			alert(loginForm);
		});
		
		
		//회원가입 button
		//$('#regok').click(function(){
		$('#regok').on("click", function(){
			
			var regForm	=	$('#regForm');
			//var formObj = $("form[role='regForm']");
			
			
			alert('regForm : ' + regForm);
			console.log('regForm : ' + regForm);
			
			regForm.attr("action", "/user/regist");
			regForm.attr("method", "post");
			regForm.submit();
			
			//formObj.attr("action", "/sboard/modifyPage");
			//formObj.attr("method", "get");		
			//formObj.submit();
			
		});
		
		
	});


</script>

</head>



<body>

	<!-- <header>
		this is header
	</header>




 <nav class="navbar navbar-default">
  <div class="container-fluid">
  
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/"> Home </a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
      <ul class="nav navbar-nav">
        
         <li class="active"><a href="#"> 게시판 <span class="sr-only">(current)</span></a></li>
       
         <li><a href="#">Link</a></li>
       
         <li><a href="/nav/contact">Contact</a></li> 지도
        
         <li><a href="./home.jsp">22222</a></li>
       
       	 관리자
      	 <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
	          		관리자 
	          		<span class="caret"></span>
	          </a>
	          <ul class="dropdown-menu" role="menu">
		            <li><a href="#"> 사용자 목록 </a></li>
		            <li><a href="#"> 222222222 </a></li>
		            <li><a href="#">Something else here</a></li>
		            
		            <li class="divider"></li>
		            
		            <li><a href="#">Separated link</a></li>
		            
		            <li class="divider"></li>
		            
		            <li><a href="#">One more separated link</a></li>
	          </ul>
          </li>
       
       
	        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
		          		Dropdown 
		          		<span class="caret"></span>
		          </a>
		          <ul class="dropdown-menu" role="menu">
			            <li><a href="/user/list">이력</a></li>
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
        <li> 
        	<a href="#" class="btn btn-link" data-toggle="modal" data-target="#loginModal"> Login </a> 
        </li>
        <li> 
        	<a href="#" class="btn btn-link" data-toggle="modal" data-target="#userRegisterModal"> 회원가입 </a> 
        </li>
      </ul> 
      
      
    </div>
  </div>
</nav> -->


<%@include file="body/header.jsp" %>


	<div id="content">
		this is content
		
		<div class="jumbotron">
			  <h1>YoungHwan. Kim </h1>
			  <p>ETC Web Page.</p>
			  <p><a class="btn btn-primary btn-lg">Learn more</a></p>
			   <p><a class="btn btn-default" href="#" role="button">View details »</a></p>
			   
			  <!-- <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#loginModal">
		  			Launch demo modal
			  </button> -->
	        
	        
	       <!--  <div class="col-xs-6 col-lg-4">
	              <h2>Heading</h2>
	              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
	              <p><a class="btn btn-default" href="#" role="button">View details »</a></p>
	        </div> -->
	        
		</div>
        
        
        
		
	</div>

<%@include file="body/footer.jsp" %>
   <!--  <footer class=".navbar-fixed-bottom"> footer </footer> -->



		<!--  Modal : Login Page  -->
		<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="myModalLabel"> 로그인 </h4>
		      </div>
		      <div class="modal-body">
		        
		        
		        <form class="form-horizontal" id="loginForm">
					  <div class="form-group">
					    	<label for="inputEmail3" class="col-sm-2 control-label">User ID</label>
					    	
						    <div class="col-sm-10">
						      	<input type="email" class="form-control" id="inputEmail3" placeholder="Email">
						    </div>
					  </div>
					  
					  <div class="form-group">
						    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
						    <div class="col-sm-10">
						      	<input type="password" class="form-control" id="inputPassword3" placeholder="Password">
						    </div>
					  </div>
					  
					  <div class="form-group">
						    <div class="col-sm-offset-2 col-sm-10">
						       <div class="checkbox">
						          <label>
						         	  <input type="checkbox"> Remember me 
						          </label>
						       </div>
						    </div>
					  </div>
					  
					  <div class="form-group">
					      <div class="col-sm-offset-2 col-sm-10">
					      	   <button type="submit" class="btn btn-default" id="signin">Sign in</button>
					      </div>
					  </div>
			   </form>
		        
		        
		        
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        <button type="button" id="loginok" name="loginok" class="btn btn-primary">OK</button>
		      </div>
		    </div>
		  </div>
		</div>
	



		<!--  Modal : regist Page 회원가입  -->
		<div class="modal fade" id="userRegisterModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel"> 회원가입 </h4>
			      </div>
			      <div class="modal-body">
			        
			        ..
			        
				        <form class="form-horizontal" id="regForm" method="post">
				        
								  <fieldset>
								    <legend>Legend</legend>
								    
									    <div class="form-group">
									      <label for="inputid" class="col-lg-2 control-label">ID</label>
									      <div class="col-lg-10">
									        <input class="form-control" id="id" name="id" placeholder="id" type="text">
									      </div>
									    </div>
								    
									    <div class="form-group">
									      <label for="inputname" class="col-lg-2 control-label">Name</label>
									      <div class="col-lg-10">
									        <input class="form-control" id="name" name="name" placeholder="name" type="text">
									      </div>
									    </div>
								    
									    <div class="form-group">
									      <label for="inputPassword" class="col-lg-2 control-label">Password</label>
									      <div class="col-lg-10">
									        <input class="form-control" id="pwd" name="pwd" placeholder="Password" type="password">
									      </div>
									    </div>
								    
									    <div class="form-group">
									      <label for="inputEmail" class="col-lg-2 control-label">Email</label>
									      <div class="col-lg-10">
									        <input class="form-control" id="email" name="email" placeholder="Email" type="text">
									      </div>
									    </div>
		
								  </fieldset>
						</form>
			      </div>
			      
			      
			      <div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				        <button type="button" id="regok" name="regok" class="btn btn-primary">OK</button>
			      </div>
			      
			      
			    </div>
			  </div>
		</div>
		<!--  Login Modal end -->



</body>
</html>