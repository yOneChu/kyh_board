<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


</head>
<body>


	<header>
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
       
         <li><a href="/nav/contact">Contact</a></li> <!-- 지도 -->
        
         <li><a href="./home.jsp">22222</a></li>
       
       	 <!-- 관리자 -->
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
</nav>



</body>
</html>