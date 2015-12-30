<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 

<link rel="stylesheet" type="text/css" href="final.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">


<script src="final.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Star vision</title>
</head>
<body onload="start()">

	

	<div class="row col-m-hide ">
		<div >
			<video class="video fixedpos" autoplay loop muted>
				<source src="images/video3.mp4" type="video/mp4">
  				<source src="images/video3.mp4" type="video/webm">
  					Your browser does not support the video tag.
			</video>
		</div>
		
	</div> 
	
	<div class="row relativepos " >
		<div class="col-m-12 backgroundcolor col-navigation">
			<span class=" col-1 glyphicon glyphicon-list backgroundcolor" aria-hidden="true" style="margin-left: 4%;"></span>
			<div class="col-4 relativepos " style="margin-left:30%;height:60px;text-align: center;margin-top: 0%;padding-top: 0;">
			<img class="video" alt="Your Browser doesn't support Images" src="images/logo.jpg"></img>
		</div>
		</div>
		<div class="col-m-4 col-navigationlist" >
			<ul class="list" style="margin-left:2%;" >
				<li class="col-m-12 galleryfont col-font">Home</li>
				<li class="col-m-12 galleryfont col-font" >Portfolios
					<ul class="col-navigation-sublist" >
					<li class="col-m-12 galleryfont col-font black">Wedding</li>
					<li class="col-m-12 galleryfont col-font black">Candid</li>
					<li class="col-m-12 galleryfont col-font black">Partys</li>
					</ul>
				</li>
				<li class="col-m-12 galleryfont col-font">Contact</li>
				<li class="col-m-12 galleryfont col-font">About-Us</li>
			</ul>
		</div>
	</div>
	
	<div  class="row cover absolutepos col-m-cover ">
		
		<div class="backgroundcolor row" >
				<ul class="col-5 list galleryfont visovrflw col-m-hide   " >
					<li class="col-2 weddingleft ">Home</li>
					<li class="col-3 weddingleft visovrflw  " id="expand">Portfolio 
						<ul class="sublist relativepos nodisplay zindx ">
							<li style="width:150%">Weddings</li>
							<li style="width:150%">Candid</li>
							<li style="width:150%">Partys</li>
							<li  style="width:150%">Models</li>
						</ul>
					</li>
				<li class="col-2 weddingleft">Contact</li>
				<li class="col-3 weddingleft">About-Us</li>
			</ul>
		</div>
	
			<div class="row relativepos capturemoments " >
				
				<div class="absolutepos whiteboldcover" >
					<p class="whitebold col-font">We Capture</p>
					<p class="whitebold col-font">Moments ..</p>
				</div>
			</div>
		
			
		<div class="row relativepos" style="margin-top:3%;background-color:black;"  >
			 <div class="col-1  absolutepos col-m-2 col-m-portfoliotitle portfoliotitle ">
				<p class="galleryfont relativepos col-font">Portfolio</p>
			</div>
			
			<div class="col-4 weddingportfoliocover col-m-4 weddingleft " >
				<p class="galleryfont col-font weddingtitle relativepos " >Wedding Photoshoots</p>
			</div>
			
			<div class="col-8 col-m-8 weddingportfoliocover relativepos">
				<div class="col-4 col-m-hide one-thirdheight" ></div>
				<div class="col-2 col-m-6 one-thirdheight " >
					<img class="video image" src="images/4.jpg"></img>
				</div>
				<div class="col-2 col-m-6 relativepos one-thirdheight" >
					<img class="video image" src="images/image2.jpg"></img>
				</div>
				<div class="col-2 col-m-6 relativepos one-thirdheight" >
					<img class="video image" src="images/7.jpg"></img>
				</div>
				<div class="col-2 col-m-hide relativepos one-thirdheight" ></div>
				<div class="col-8 col-m-hide relativepos one-thirdheight" ></div>
				<div class="col-2 col-m-6 relativepos one-thirdheight" >
					<img class="video image " src="images/8.jpg"></img>
				</div>
				<div class="col-2 col-m-6 relativepos one-thirdheight" >
					<img class="video image" src="images/8.jpg"></img>
				</div>
				<div class="col-2 col-m-6 relativepos one-thirdheight" >
					<img class="video image" src="images/6.jpg"></img>
				</div>
				<div class="col-2 col-m-hide relativepos one-thirdheight" >
					<img class="video image" src="images/4.jpg"></img>
				</div>
				<div class="col-2 col-m-hide relativepos one-thirdheight" >
					<img class="video image " src="images/6.jpg"></img>
				</div>
				<div class="col-2 col-m-hide relativepos one-thirdheight">
					<img class="video " src="images/image2.jpg"></img>
				</div>
				<div class="col-2 col-m-hide relativepos one-thirdheight" >
					<img class="video " src="images/image1.jpg"></img>
				</div>
			</div>
	</div>
		
	<div class="row relativepos " id="candidportfoliocover" >
		<div class="col-12 weddingleft galleryfont col-font">
			<h3 style="color: black;">Candid Photography</h3>
		</div>
		<div class="col-m-2"></div>
		
		<div class="arrows absolutepos rightarrow col-1 col-m-2"  onclick="slide()">
			<img class="video" src="images/right.png"></img>
		</div>
		<div class="absolutepos arrows leftarrow col-1 col-m-2"   onclick="reverseSlide()">
			<img class="video" src="images/left.png"></img>
		</div>	
		<div class="col-2 candid3images  col-m-4" >
			<img class="video slide" src="images/image2.jpg"></img>
		</div>
		<div class="col-3 candid3images  col-m-4" >
			<img class="video slide" src="images/image4.jpg"></img>
		</div>
		<div class="col-4 candid1image col-m-hide">
			<img class="video slide" src="images/image8.jpg"></img>
		</div>
		<div class="col-2 candid3images  col-m-hide" >
			<img class="video slide" src="images/image9.jpg"></img>
		</div>
	</div>
	
	<div class="row relativepos videoscover " >
		
		<div class="col-2 col-m-12 cinematographytitle absolutepos "  >
			
				<h3 class="galleryfont col-font" >Wedding Cinematography </h3>
			
		</div>
		
		<div class="col-5 col-m-12" style="height:100%"  >
			<iframe class="video" src="https://www.youtube.com/embed/F5c0xoYkL6k?autoplay=0&controls=0;" frameborder="0" allowfullscreen></iframe>
		</div>
		<div class="col-4  col-m-hide" style="height:100%;">
			<div class="col-6 one-thirdheight" >
				<iframe class="video" src="https://www.youtube.com/embed/LKi5iyYm7dg" frameborder="0" allowfullscreen></iframe>
			</div>
			<div class="col-6 one-thirdheight" >
				<iframe class="video" src="https://www.youtube.com/embed/5AdBzdWbKks" frameborder="0" allowfullscreen></iframe>
			</div>
			<div class="col-6 one-thirdheight" >
				<iframe class="video" src="https://www.youtube.com/embed/wFy89_bf7-I" frameborder="0" allowfullscreen></iframe>
			</div>
			<div class="col-6 one-thirdheight" >
				<iframe class="video" src="https://www.youtube.com/embed/gQ3VTplPdrE" frameborder="0" allowfullscreen></iframe>
			</div>
			<div class="col-6 one-thirdheight" >
				<iframe class="video" src="https://www.youtube.com/embed/bpYM2bSvLgw" frameborder="0" allowfullscreen></iframe>
			</div>
			<div class="col-6 one-thirdheight" >
				<iframe class="video" src="https://www.youtube.com/embed/Cvl9hJa3zNE" frameborder="0" allowfullscreen></iframe>
			</div>
		</div>
	</div>	
	<div class="row backgroundcolor ">
		<h1 class="galleryfont weddingleft black col-12 " >Contact Information</h1>
	<hr>
		<div class="col-12 col-m-12 galleryfont relativepos weddingleft col-font" >
				<p class="black col-12 col-font">Star Vision Cinematography</p>
				<p class="black col-12 col-font"><u>Office:</u></p>
				<p class="black col-12 col-font">109, South Almansor Street Alhambra main Apartment no. #56</p>
				<hr>
				<p class="black col-12 col-font"><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>&nbsp +91-9074999994 &nbsp &nbsp
				<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>&nbsp +1-626-6930146</p>
				<p class="black col-12 col-font"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>&nbsp<a href=""> savin.sachdev@yahoo.co.in </a></p>
		</div>
	</div>	
</div>
	

</body>
</html>