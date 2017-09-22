<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Y.H Kim Location</title>


	<link rel="stylesheet" media="screen" href="/resources/bootstrap/css/bootstrap.css" />
	<link rel="stylesheet" media="screen" href="/resources/bootstrap/css/bootstrap.min.css" />


	<script src='/resources/bootstrap/js/jQuery-2.1.4.min.js'></script>
	<script src='/resources/bootstrap/js/bootstrap.min.js'></script>



  <style>
       #map {
	        height: 400px;
	        width: 100%;
       }
       
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
        function initMap() {
            var uluru = { lat: 37.203210, lng: 127.057839 };
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 16,
                center: uluru
            });
            var marker = new google.maps.Marker({
                position: uluru,
                map: map
            });
        }
    </script>


    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDsDt15bIGszhtDSTHShWXnSHBGl6Ia-o0&callback=initMap" />
    </script>


</head>

<body>

	<%@include file="../body/header.jsp" %>
	
    
    <div id="content">
		<div class="jumbotron">
			    <h3>Y.H Km - Location</h3>
    			<div id="map"></div>
		</div>
	</div>


	<%@include file="../body/footer.jsp" %>


<!--  <footer class=".navbar-fixed-bottom"> footer </footer> -->
    
	
</body>
</html>