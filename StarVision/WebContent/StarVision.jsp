<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 
<script src="jquery.js"></script>
<script src="mediaelement-and-player.min.js"></script>
<link rel="stylesheet" href="mediaelementplayer.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="http://fonts.googleapis.com/css?family=Dancing+Script" rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet" type="text/css">
<link href='http://fonts.googleapis.com/css?family=Playball' rel='stylesheet' type='text/css'>
<title>Insert title here</title>

<script>
$(window).load(function() {
	// Animate loader off screen
	$("#loadanimate").fadeOut("slow");;
});

	
	$(document).ready(function(){
		$("#btn").delay(3000).css({"display":"none"});
		$("#btn").fadeIn("slow");
	});
	
	$(document).ready(function(){
		$("#btn").hover(function(){
			$("#btn").animate({"height":"50px","width":"200px"});
		},function(){
			$("#btn").animate({"height":"40px","width":"160px"});
		})
	})
	
	$(document).ready(function(){
		$("#imagesshowcase").mouseenter(function(){
			$('img').mouseenter(function(){
			var a=($(this).attr("src"));
		
			$("#display").attr("src",a);
		})
		})
	})
	
	
	function myclick(){
		$("#wedding1").css({"display":"inherit"});
			$('html, body').animate({scrollTop: $("#wedding").offset().top},1000,function(){
				$(".headers").fadeIn(1000,function(){
					$(".images").slideDown("slow");
				});
			});
	
	}
	
	$(document).ready(function(){
		$(".navheadings").mouseenter(function(){
			$("li").hover(function(){
				$(this).css({"text-decoration":"underline"});	
			},function(){
				$(this).css({"text-decoration":"none"});	
			});
			
		});
		
	});
	
	$(document).ready(function(){
		$("#portfolio").hover(function(){
			$("#submenu").slideDown("slow");
			
		},function(){
			$("#submenu").slideUp();
		})
	})
	
	
</script>

<style>

#loadanimate{
	width:20%;
	height:auto;
	left:40%;
	top:700px;
	color:red;
	position:relative;
}

	*{
	box-sizing:border-box;
	}
	.headers{
		font-family: 'Dancing Script', Georgia, Times, serif;
    	font-size: 59px;
   		color:white;
		text-align: center;
		letter-spacing: 3px;
		padding-top: 25px;
		display: none; 
	}
	#coverpage{
		position:relative;
		width:100%;
		height:100%;
	}
	
	 
	
	#btn{
		width:auto;
		height:auto;
		text-align:center;
		font-size: 15pt;
		border-radius:25px;
		font-family: sans-serif;
		color: black;
		font-weight: bold;
		position:absolute;
		top:75%;
		left:40%;
		diplay:none;
	}
	
	
	
	 #wedding1{
	
		background-color: pink;
		animation-name: example;
		animation-duration:15s;
		animation-iteration-count: infinite;
		animation-timing-function: ease;
		min-width:100%;
		min-height:400px;
		position:relative;
		display:none; 
		
	}
	
	#wedding{
		width:100%;
		margin-top:100px;
		height:auto;
		overflow:auto;
		height:800px;
		position:relative;
		
		
	}
	 
	@keyframes example {
    0%   {background-color: pink;}
    25%  {background-color: maroon;}
    50%  {background-color: blue;}
    75%  {background-color: green;}
    100% {background-color: orange;}
 }
	 
	
	img:hover{
		opacity:0.5;
	}
	
	
	
	
	
	@keyframes heartbeat{
	 0%{width:120px;height:120px}
	 50%{width:150px;height:150px}
	 100%{width:100px;height:100px}
	 
	}
	
	#heart{
		min-width:200px;
		animation-name:heartbeat;
		animation-duration:3s;
		animation-iteration-count:infinite;
	}
	#video{
		
		margin-left:1%; 
		float:left;
		width:50%;
		border:double black 1px;
	}
	#heartdiv{
		float:left;
		font-family: 'Dancing Script', Georgia, Times, serif;
    	font-size: 3em;
   		color:black;
		text-align:center;
		letter-spacing: 3px;
		font-weight:bolder;
		background-image:url("images/6.jpg") ;
		background-repeat:no-repeat;
		background-position:80px 5px;
		filter:opacity(0.2);
		min-width:47.5%;
		height:auto;
		background-image: url("images/4.jpg");
		background-position: cover;
		background-repeat: no-repeat;
		-webkit-filter: blur(1px);
  -moz-filter: blur(1px);
  -o-filter: blur(1px);
  -ms-filter: blur(1px); 
 filter: blur(1px);  
		
		
	}
	
	
	#imagesshowcase{
	 max-width:45%;
	 float:left;
	 margin-left:3%;
	 line-height: 2em;
	} 
	
	#imageshowcase{
	
	float:left;
	max-width:45%;
	margin-left: 1%;
	
	}
	
	#imagesshowcase img{
	min-width:20%;
	max-height:auto;
	padding:10px;
	}
	
	#imageshowcase img{
		width:65%;
		height:auto;
		
		border: solid white 5px;
		
	} 
	
	 #imagegallery{
		position:relative;
		top:-250px;
		
	} 
	
	@media screen and (max-width:650px){
	#imagesshowcase{
	 min-width:100%;
	 float:left;
	 margin-left:3%;
	 
	} 
	
	#imageshowcase{
	
	float:left;
	min-width:100%;
	}
	
	body{
		background-color: green;
	}
	
}

	.navheadings{
				font-family: 'Playball', cursive; 
				font-weight: 400; 
				color:white;
				font-size: xx-large;
		}
	
	 
</style>

</head>
<body >
<div id="loadanimate">
<h1>Loading</h1>
</div>
<div  id="coverpage">
	<video id="vidsize"  autoplay loop="loop" muted style="width:100%;height:auto;">
  		<source src="images/video3.mp4" type="video/mp4">
  		<source src="images/video3.mp4" type="video/webm">
  		Your browser does not support the video tag.
  	</video>
	
		<button id="btn" type="button"  class="btn btn-default" onclick="myclick();"><i>Get Started...</i></button>
	
</div>

<div style="position:relative;top:3%;left:60%;z-index: +5;word-spacing:15px;width:30%">
<div >
		<ul style="list-style: none;"  class="navheadings">
			<li style="float:left;position:relative;margin-left: 10px;border:aolid red 1px;">Home</li>
			<li style="float:left;position:relative;margin-left: 10px;" id="portfolio">Portfolios
				
			<ul style="list-style: none;font-size: large;display:none;background-color: black;border:dashed red 2px;" id="submenu" class="navheadings" >
				<li>Wedding</li>
				<li>Birthdays</li>
				<li>Candid</li>
			</ul></li>
	
			<li style="float:left;position:relative;margin-left: 10px;">About-Us</li>
			<li style="float:left;position:relative;margin-left: 10px;">Contact</li>
		</ul>
		</div>
		
	</div>


<div id="wedding" >
	<div id="wedding1">
		<h2 class="headers"> Wedding Photography ...</h2>
	</div>
 
 
 	<div id="imagegallery" style="float:left;" >
		<div id="imagesshowcase"> 
			<img src="images/4.jpg" style="width:250px;height:250px;"></img>
			<img src="images/6.jpg" style="width:250px;height:250px;"></img>
			<img src="images/7.jpg" style="width:250px;height:250px;"></img>
			<img src="images/8.jpg" style="width:250px;height:250px;"></img>
			<img src="images/4.jpg" style="width:250px;height:250px;"></img>
			<img src="images/6.jpg" style="width:250px;height:250px;"></img>
		</div>

		<div id="imageshowcase">
			<img id="display" src="images/7.jpg"></img>
		</div>
	</div>
	<div style="float:right;background-color: white;width:auto;position: relative;top:5%;right:6%;">
			<ul style="list-style:none;padding: 3px;">
				<li><a>Wedding Portfolios</a></li>
					<li><a>Candid Photography</a></li>
					<li><a>Fashion Shoots</a></li>
					<li><a>Birthdays Photography</a></li>
					<li><a>Party's Capture</a></li>
					<li><a>Outdoor Photoshoots</a></li>
					</ul>
	</div>
</div>
	
<div style="margin-top: 50px;">
	<div id="video">
		<video autoplay loop="loop" muted="muted" style="width:100%;height:auto;borded:solid red 2px">
			<source src="images/video2.mp4" type="video/mp4">
			<source src="images/video2.mp4" type="video/webm">
		</video>
			
	</div>
	<div id="heartdiv" >
			<h2 class="headers" style="font-size: 90%;" >We Capture moments of today <br />that will <br /> <span style="font-size:3em;">wow </span><br />your<br /><br /><span><img id="heart" src="images/images.png"></img></span> <br /> tomorrow</h2>
	</div>
		
		
</div>  


		

</body>
</html>