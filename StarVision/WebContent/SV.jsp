<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 
<script src="jquery.js"></script>
<script src="mediaelement-and-player.min.js"></script>
<link rel="stylesheet" href="mediaelementplayer.css" />
<link href="http://fonts.googleapis.com/css?family=Dancing+Script" rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet" type="text/css">
<title>StarVision</title>
<style>

*{
	box-sizing:border-box;
}
body{
	margin:0px;
	padding:0px
}
#firstcontainer{
	overflow:auto;
	border:solid black 1px;
	}

.images{
	float:left;
	max-width:40%;

}

.images img{
		width:200px;
		height:200px;
}

#showcase{
	float:left;
	
}

#showcase img{
	max-width:500px;
	max-height:500px;
}
#colors{

	min-height:100px;
	background-color: red;
	z-index:-1;
	position:relative;
	top:+100px;
}
</style>
</head>
<body>
<div id="firstcontainer">
	<div id="colors"></div>
	<h2>Wedding Photography</h2>
	<div class="images">
		<img  src="images/4.jpg"></img>
		<img src="images/6.jpg"></img>
		<img src="images/7.jpg"></img>
		<img  src="images/8.jpg"></img>
		<img src="images/4.jpg"></img>
	</div>
	
	<div id="showcase">
		<img src="images/6.jpg"></img>
	</div>
</div>

<div id="second container">
<h2>This is Second</h2>

</div>
</body>
</html>