<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
   request.setCharacterEncoding("UTF-8");
   String cp = request.getContextPath();  
   String eventName= request.getParameter("eventName"); 
 %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  
    <link rel="stylesheet" href="/project/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/project/resources/css/animate.css">
    
    <link rel="stylesheet" href="/project/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/project/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/project/resources/css/magnific-popup.css">

    <link rel="stylesheet" href="/project/resources/css/aos.css">

    <link rel="stylesheet" href="/project/resources/css/ionicons.min.css">

    <link rel="stylesheet" href="/project/resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/project/resources/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="/project/resources/css/flaticon.css">
    <link rel="stylesheet" href="/project/resources/css/icomoon.css">
    <link rel="stylesheet" href="/project/resources/css/style.css">
    
 <style>
 .tab{
    height:auto;
   /*  overflow:hidden; */
}
 
.tab ul{
    padding:0;
    margin:0;
    list-style:none;
    width:1200px; 
    align:left;
    height:auto;
    overflow:hidden;
}
 
.tab ul li{
    display:inline-block;
    width:25%;
    font-size:17px;
    font-weight:bold;
    float:left; 
    line-height:100px;
    text-align:center;
    cursor:pointer;
    background:white; /* #f4f4f4; */
    border:1px solid #ccc;
}
 
.tab ul li:hover,
.tab ul li.on{
    background:red; 
	color:white;
}

.tab ul li.on{
    background:red; 
	color:white;
}
 
.tab .conBox{
    width:1200px; 
    height:auto;    
    overflow:hidden;     
    background:white;
    display:none;
    /* valign:center; */
    text-align:left;
    border:1px solid #ccc;
    

}
 
.tab .conBox.on{
    display:block;
  /*   text-align:left; */
    font-color:black;
    font-size:17px;
    padding: 35px 70px 35px 20px;
    align:center;
}

</style>   
<script src="/project/resources/js/jquery.min.js"></script>
<script type="text/javascript">

 window.onload =function(){

	loadevent();
}

function loadevent(){
		
	//var param1 = location.search.substr(location.search.indexOf("=")+1); //jeju
	//var param = "#"+param1;	
	var eventName = '${eventName}'; //jeju	
		 $.ajax({		
	    	url:"tpack.action",
	    	dataType:"text",
		   	type:"post",	   
		   	data:{eventName:eventName},
		   	success:function(result){
		   	 	$("#eventContent").empty();
		   	  	$("#eventContent").append(result);		
		   	 $(this).css('backgroundColor', 'red');
		   	},
		    error:function(request,status,error){
		    	alert("evenName 에러 " + error);
		    }		 
	 });
}

 

$(function(){
	$(".tab ul li").click(function(){
		
		var id = $(this).attr('id'); //#jeju
		var eventName= id.substring(id.indexOf('#')+1,id.length);
		//alert(eventName);//jeju
		
		$.ajax({		
	    	url:"tpack.action",
	    	dataType:"text",
		   	type:"post",	   
		   	data:{eventName:eventName},
		   	success:function(result){	  
		   		//$("#eventContent").empty();
		   	  //$("#eventContent").append(result);	   	  	
		   	 window.location.assign("tevent.action?eventName="+eventName);
		   	
		   	// $(this).css('backgroundColor', 'red');
		   	// $(this).addClass('on');
		   //  alert("#"+$(this).data('id')); //#con2	
		   	 /* $(this).addClass('on'); //li 
	 	        $("#"+$(this).data('id')).addClass('on');  
	 	       $(".tab ul li").removeClass('on');
		    	  $(".tab .conBox").removeClass('on');    
	    	       */		    	      
		    },
		    error:function(request,status,error){
		    	alert("evenName 에러 " + error);
		    }
	    })//ajax
		/* .always(function(xhr, status) {
	    	    $("eventContent").append(status);     	       
	    }); */
	});
});

</script>

</head>
<body>


    <section>
    	<div class="container"></div>
   
    </section>
    
    
	 <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="hi.jsp">Auto<span>road</span></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
	          <li class="nav-item active"><a href="tmem.action" class="nav-link">T멤버쉽</a></li>
	          <li class="nav-item"><a href="pricing.html" class="nav-link">Pricing</a></li>
	          <li class="nav-item"><a href="car.html" class="nav-link">Our Car</a></li>
	          <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
	          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
	  
	       <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('/project/resources/images/bg_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>About us <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-3 bread">About Us</h1>
          </div>
        </div>
      </div>
    </section> 
        
<br/><br/><br/>

<div class="container">

<div class="tab" >
	    <ul>
	        <li id="#tableevent">Table 행사</li>
	        <li id="#happypass">T 해피패스</li>
	        <li id="#jcard">제휴카드</li>
	        <li id="#jeju" >제주도 멤버쉽</li>
	    </ul>
	   <br/><br/>
	   
	  <div id="eventContent" > 
	   
	   </div>
	   
	    <div id="tableevent" class="conBox">
	   	 <h3 class="hidden">Table행사</h3>
	 		<img src="/project/resources/images/tableeven80.png" />
		 </div>
	   
	    <div id="happypass" class="conBox">
	    <h3 class="hidden">T 해피패스</h3>
			<img src="/project/resources/images/thappypass80.png" />
	    </div>
	    
	    <div id="jcard" class="conBox">
	    <h3 class="hidden">제휴카드</h3>
	       제휴카드 한눈에 보기
		 <br/>	T 멤버십과 만나 더욱 알찬 혜택! 제휴카드로 더 많은 혜택을 누릴 수 있는 T 멤버십만의 제휴카드 서비스 입니다.
		 <br/>	혜택에 대한 세부 안내는 각 카드별 상세페이지에서 확인 하실 수 있습니다.
	    </div>

		<div id="jeju" class="conBox">
		<h3 class="hidden">제주도 멤버쉽</h3>
		<br/> <img src="/project/resources/images/jejueven80.png" />
	    </div>
	    
</div> <!-- tab  -->
	<br/><br/><br/>

</div>
<footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">About Autoroad</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Information</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">About</a></li>
                <li><a href="#" class="py-2 d-block">Services</a></li>
                <li><a href="#" class="py-2 d-block">Term and Conditions</a></li>
                <li><a href="#" class="py-2 d-block">Best Price Guarantee</a></li>
                <li><a href="#" class="py-2 d-block">Privacy &amp; Cookies Policy</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Customer Support</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">FAQ</a></li>
                <li><a href="#" class="py-2 d-block">Payment Option</a></li>
                <li><a href="#" class="py-2 d-block">Booking Tips</a></li>
                <li><a href="#" class="py-2 d-block">How it works</a></li>
                <li><a href="#" class="py-2 d-block">Contact Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  
   <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


<script src="/project/resources/js/jquery.min.js"></script>
  <script src="/project/resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="/project/resources/js/popper.min.js"></script>
  <script src="/project/resources/js/bootstrap.min.js"></script>
  <script src="/project/resources/js/jquery.easing.1.3.js"></script>
  <script src="/project/resources/js/jquery.waypoints.min.js"></script>
  <script src="/project/resources/js/jquery.stellar.min.js"></script>
  <script src="/project/resources/js/owl.carousel.min.js"></script>
  <script src="/project/resources/js/jquery.magnific-popup.min.js"></script>
  <script src="/project/resources/js/aos.js"></script>
  <script src="/project/resources/js/jquery.animateNumber.min.js"></script>
  <script src="/project/resources/js/bootstrap-datepicker.js"></script>
  <script src="/project/resources/js/jquery.timepicker.min.js"></script>
  <script src="/project/resources/js/scrollax.min.js"></script>
  
  <script src="/project/resources/js/main.js"></script>
    
</body>
</html>