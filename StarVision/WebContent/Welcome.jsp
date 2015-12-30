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
<style>

	#cover{
		overflow: hidden;
		width:100%;
		
	}
	ul {
		list-style: none;
		border: solid black 1px;
		border-radius:25px;
		background-color: #404040	;
		height:70%;
		
	}

	li{
		padding-top:15px;
		display:inline;
			
	}

	#navigation{
		text-align: center;
		font: italic;
		font-family: fantasy;
		font-size: 3em;	;
		font-weight:bold; 
		padding-right: 5%;
		padding-left: 5%;
		padding-top:2%;
		word-spacing: 1.5em;
		display: none;
		width: 60%;
		margin: auto;
		overflow: hidden;
	}

	 a{
		color: white;
		text-decoration: none;
		padding-top:5px;
		
		
	}
	
	a:FOCUS,a:HOVER,a:VISITED{
		color: white;
		text-decoration: none;
		padding-top:5px;
		border-radius:15px;	
	}
	
	#nav{
		padding-top:2%; 
		padding-right: 2%;
	}

	
</style>

<title>Welcome</title>
<script>
var a,b;
function setwidth(){
	a=screen.height+"px";
	b=screen.width+"px"
	$("#cover").css({"height":a});
	$("video #hd").css({"width":b});
}



$(document).ready(function(){
	$("#cover").fadeIn(1000);
	$("#cover").animate({opacity: '1.0'});
	$("#welcome").fadeIn(700);
	$("#welcome").animate({marginTop: '5%'},"slow",function(){
		$("div span#cinematography").css({"visibility" : 'visible'},"slow").animate({'marginLeft' : '2%'},function(){
			$("#start").fadeIn(800,function(){
				
			});
		});
	});
});
	
	
$(document).ready(function(){
	$("#click").click(function(){
		$("#navigation").slideDown(1000);
		$("#navigation").animate({"margin-left": "43%"},1000,function(){
			
				$('html, body').animate({scrollTop: $("#navigation").offset().top}, 1000,function(){
					
						var plr=document.getElementById("hd");
						plr.play();
						$("#tovid").css({"display":"inherit"});
						$('html,body').animate({scrollTop: $("#tovid").offset().top},1000);
			
		});
			});
	
		});
	});

$(document).ready(function(){
	$("a").hover(function(){
		$(this).css({position: "relative",textDecoration: "underline"});
		$(this).animate({top : '-3px'},200);
		},function(){
			$(this).css({position: "relative",textDecoration: "none"});
			$(this).animate({top :'3px'},500);
		});
	});
	
	
	
	
	

</script>
</head>
<body onload="setwidth()">

<div id="cover" style="background-image: url('images/cover.jpg'); opacity:0.5;border:solid gray 1px;background-repeat: no-repeat;">
<div id="welcome" style="margin:10%;color:white;font-family:fantasy; font-size: 6em;font-weight: bold;border:width:50%;margin-top: 10%;display:none;" >Star Vision <br /> Cinematography <span id="cinematography" style="margin-left: 50%;visibility: hidden;"> . . .</span>
<div id="start" style="display: none;">
<button id="click" type="button" style="height: 60px;width:180px;text-align:center;font-size: 20pt;border-radius:25px;font-family: serif;color: white;border-style: none;" class="btn btn-success"><b>Get Started ..</b> </button>
</div>
</div>
</div> <!-- Div for cover -->

<section>
<div id="navigation">
<ul id="nav" >
<li><a href="#">Home</a></li>
<li id="expand"><a href="#">Portfolio</a></li>
<li><a href="#">Contact</a></li>
<li><a href="#">About-Us</a></li>
</ul>
</div>
</section>

<div id="tovid" style="display:none;opacity:0.4;width:100%;height:100%">
<video controls loop="loop" id="hd"  width="100%" height="300px"  >
  <source src="images/video2.mp4#t=93,98" type="video/mp4">
  <source src="images/video2.mp4#t=93,98" type="video/webm">
  Your browser does not support the video tag.
</video>


</div>




</body>
</html>