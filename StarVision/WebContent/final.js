
$(document).ready(function(){
	
	$("#expand").hover(function(){
		$(".sublist").slideDown(600);
		
	},function(){
		$(".sublist").slideUp(600);
	})
});


var images=['4.jpg','6.jpg','8.jpg','back3.jpg','back4.jpg','back5.jpg','back6.jpg','back7.jpg','back8.jpg'];

	
	$(window).scroll(function(){
		var win_height=  $(window).height();
		var win_top=$(window).scrollTop();
		
		var win_bottom= win_height+win_top;
		console.log("win_offsetTop:"+win_top);
		var elements=document.getElementsByClassName("animation");
		var element; 
		for(element in elements){
		
		var element_height=elements[element].offsetHeight;
		var element_top=elements[element].offsetTop;
		
		var element_bottom=element_height+element_top;
		
		if(element_top<win_top&&(element_bottom)<win_bottom){
			
			elements[element].classList.add('in-view');
			
			
		}	else{
			elements[element].classList.remove('in-view');
			
		}	
		}
		});
function start(){
	
	setInterval(shuffle,5000);
	
}
function shuffle(){
	$('.image').slideUp(700,function(){
		var no=randomno();
		var image=images[no];
		var random="images/"+image;
		$('.image').attr('src',random);
		$('.image').slideDown(600);
	
	});
		
}

function randomno() {
	var lngth=images.length-1;
    var x = Math.floor((Math.random() * lngth) + 1);
    return x;
}
var index=0;
var e=document.getElementsByClassName('slide');

function slide(){
	$('.slide').animate({width:'0%'},500);
	setTimeout(slider,500);
	
}

function reverseSlide(){
	$('.slide').animate({width:'0%'},500);
	setTimeout(reverseSlider,500);
	
}

function slider(){
	 for(var i=0;i<=e.length-2;i++){
		 e[i].setAttribute('src',e[i+1].getAttribute('src'));
	 }
	 if(index<images.length){
	 e[e.length-1].setAttribute('src','images/'+images[index++]);
	 }else{
		 index=0;
		 e[e.length-1].setAttribute('src','images/'+images[index++]);
	 }
	 $('.slide').animate({width:'100%'},5);
}

function reverseSlider(){
	 for(var i=e.length-1;i>0;i--){
		 e[i].setAttribute('src',e[i-1].getAttribute('src'));
	 }
	 if(index<images.length){
	 e[0].setAttribute('src','images/'+images[index++]);
	 }else{
		 index=0;
		 e[0].setAttribute('src','images/'+images[index++]);
	 }
	 $('.slide').animate({width:'100%'},5);
}

$(document).ready(function(){
	$('.slide').click(function(){
		var temp=e[2].getAttribute('src');
		var clickedtemp=$(this).attr('src');
		e[2].setAttribute('src',clickedtemp);
		$(this).attr('src',temp);
	})
})

$(document).ready(function(){
	$("#portfoliotitle").click(function(){
		var top=document.getElementById("portfoliotitle").offsetTop;
		var height=document.getElementById("portfoliotitle").offsetHeight;
		alert("Portfolio top +Height"+top+" "+height+"window top:"+$(window).scrollTop());
	})
})