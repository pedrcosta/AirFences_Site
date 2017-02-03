<html>
<meta http-equiv=Content-Type content="text/html; charset=windows-1252">
<title>AirFences</title>
<?php
error_reporting(E_ALL);
ini_set('display_errors','Off');
try
{

}
catch (Exception $ex)
{

}
session_start();
$user_on = 0;
$user_name = $_SESSION['user_name'];//pass_wrong
if($user_name!="not" and $user_name!="" and $user_name!="pass_wrong")
{
	$user_on = 1;
}
else if($user_name=="pass_wrong")
{
	$user_on = 2;
}

?>
<head>
	<link rel="shortcut icon" href="imagens/logo.ico">
	<div id="top_div"><img id="logo" src="images/AirFenceLogoBg.png"/><a id="1st" class="head_class">AirFences</a><a id="contatos" class="head_class">Contacts</a><a class="log" id="login" >Sign In</a><a class="log" id="registo" >Create Account</a></div>
</head>
<style>

#top_div
{
	width:100%;
	left:0px;
	top:0px;
	/*position:fixed;*/
	/*z-index:4;*/
	background-color:#085EA4;
}
#logo{
	margin-left:1.5%;
	margin-top:1.5%;
	position:absolute;
	width:1%;
	height:1%;
}
#logo:hover{
	opacity:0.5;
	cursor:pointer;
}
#1st{
	margin-left:25%;
}
.head_class{

	line-height:5em;
	font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
	font-weight:600;
	font-size:110%;
	color:#FFF;
	margin-left:3%;
	/*****************************/
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	/*****************************/
}
.head_class:hover
{
	color:#390;
	cursor:pointer;
	opacity:0.7;
}
.log
{
	font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
	z-index:3;
	font-weight:900;
	top:0;
	color:#999;
	margin-left:1%;
	right:0;
	float:right;
	margin-right:1%;
	margin-top:0.5%;
}
.log:hover
{
	color:#390;
	opacity:0.7;
	cursor:pointer;

}

/*******************************/
#entrar
{
	background-color:#0C6;
	-webkit-border-radius: 50px;-moz-border-radius: 50px; border-radius: 50px;
	text-align:center;
	color:#FFF;
	line-height:1.6em;
	height:11%;
	width:80%;
	margin-left:10%;
	margin-top:10%;
	font-size:150%;
}
#entrar:hover
{
	background-color:#999;
	cursor:pointer;
}
#user_name
{
	text-align:center;
	font-size:100%;
	font-weight:bold;
	font:Arial, Helvetica, sans-serif;
	width:80%;
	height:10%;
	margin-left:10%;
	margin-top:20%;
}
#user_pass
{
	text-align:center;
	font-size:100%;
	font-weight:bold;
	font:Arial, Helvetica, sans-serif;
	width:80%;
	height:10%;
	margin-left:10%;
	margin-top:5%;
	/*position:absolute;
	margin-top:100px; */
}
#forget
{
	width:80%;
	margin-left:20%;
	margin-top:10%;
	color:#FFFFFF;
	text-decoration: underline;
	text-align:center;
	font-size:100%;
}
#forget:hover
{
	color:#900;
	cursor:pointer;
}
#painel_login
{
	background-color:#06C;
	right:0;
	width:20%;
	height:50%;
	float:right;
	position:absolute;
	display:none;
	z-index:3;
}

#nav {
	line-height:30px;
	background-color:#01A9DB;
	text-align: center;
	width:10%;
	height:100%;
	float:left;
	padding:0.5%;
	position:fixed;
	font:Arial;
	margin-bottom:5px;
}

#link
{
	display:block;
	width:80%;
	height:4%;
	margin:10%;
	text-align:center;
	line-height:2.5em;
	-moz-border-radius: 8px;
	-webkit-border-radius: 8px;
	border-radius: 8px;
	background-color:#085EA4;
	font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#FFFFFF;
	text-decoration:none;
}

#link:hover
{
	background-color:#0101DF;
	text-decoration:none;
}

#section {
	background-color:#FFFFFF;
	width:87%;
	height:80%;
	text-align:justify;
	display:inline;
	float:left;
	padding:5px;
	margin-left:12%;
	margin-top:0.5%;
	font-family:"Arial";
}

#text{
	width:300px;
	height:35px;
	font-family:"Arial";
	background-color:#FFFFFF;
	margin-top:5px;
	-moz-border-radius: 8px;
	-webkit-border-radius: 8px;
	border-radius: 8px;
	border: solid;
	border-color: #000000;
	outline: none;
	color:#000000;
	margin-left:30px;
	margin-bottom:5px;
}

#text::-webkit-input-placeholder { /* Chrome/Opera/Safari */
  color: #000000;
}

#comb{
	width:300px;
	height:35px;
	font-family:"Arial";
	background-color:#FFFFFF;
	margin-top:5px;
	-moz-border-radius: 8px;
	-webkit-border-radius: 8px;
	border-radius: 8px;
	border: solid;
	border-color: #000000;
	outline: none;
	color:#000000;
	margin-left:30px;
	margin-bottom:5px;
}

#log
{
	width: 100px;
	height:30px;
	font-size:110%;
	color: #FFFFFF;
	-moz-border-radius: 8px;
	-webkit-border-radius: 8px;
	border-radius: 8px;
	border: solid;
	border-color:#121517;
	background-color:#121517;
	font-family:"Arial";
	margin-left:30px;
	outline:none;
}

/*#log:focus
{
	border-color:#221000;
	background-color:#221000;

}*/
#log:hover
{
	border-color:#000000;
	background-color:#5E5F5F;
}


</style>
<script src="js/jquery-1.10.2.js"></script>
<script src="js/Migrate.js"></script>
<script>
var largura = innerWidth;
var altura = innerHeight;
document.getElementById("logo").style.width = largura*0.08+"px";
document.getElementById("logo").style.height = (largura*0.18)/3.16+"px";
document.getElementById("logo").style.marginTop = altura*0.02+"px";

document.getElementById("1st").style.marginLeft = largura *0.43+"px";
document.getElementById("1st").style.lineHeight = altura *0.15+"px";

document.getElementById("top_div").style.height = altura *0.15+"px";



var font_size = largura*0.013+"px";
document.getElementsByClassName("head_class").item(0).style.fontSize = font_size;
document.getElementsByClassName("head_class").item(1).style.fontSize = font_size;

//document.getElementById("forget").style.fontSize = font_size;

var font_size = largura*0.01+"px";
document.getElementsByClassName("log").item(0).style.fontSize = font_size;
document.getElementsByClassName("log").item(1).style.fontSize = font_size;



$(document).ready(function(){

	document.getElementById("painel_login").style.marginTop = altura *0.13+"px";
	document.getElementById("painel_login").style.height = largura*0.25+"px";
	document.getElementById("forget").style.fontSize = largura*0.013+"px";
	document.getElementById("entrar").style.fontSize = largura*0.015+"px";
	document.getElementById("entrar").style.height = largura*0.03+"px";

	var login_on = false;
	var user_on = '<?php echo $user_on; ?>';
	var user_name = '<?php echo $user_name; ?>';
	if(user_on==1){
		document.getElementById("login").innerHTML = user_name;
		document.getElementById("login").style.color = "#F88017";
		document.getElementById("registo").style.display = "none";
		login_on=true;
	}


	$("#1st").click(function(){

		window.location.href = "index.php";

	});
	$("#contatos").click(function(){

		window.location.href = "Contacts.php";

	});
	$("#logo").click(function(){

		window.location.href = "index.php";

	});
	$("#entrar").click(function(){

		document.forms["entrar_click"].submit();

	});

	$('#login').click(function () {

		if(!login_on)
		{
			body_up();
			$("#painel_login").slideDown("slow");
			opacity("corpo",1);
		}
		else{
			window.location.href = "home.php";
		}
	});

	$('#painel_login').mouseleave(function () {
		if(!login_on)
		{
			body_up();
			$("#painel_login").slideUp("slow");
			opacity("corpo",100);
		}
	});

	$(document).keypress(function(e)
	{
		if(e.which == 13)
		{
			if ($('#painel_login').is(':visible'))
			{
				document.forms["entrar_click"].submit();
			}
		}
	});

	$('#registo').click(function () {

		if(!login_on)
		{
			window.location.href = "account.php";
		}
		else{

		}
	});

	/************************************************/
	function opacity(element,value)
	{
		var element = document.getElementById(element);
		element.style.opacity = (value/10);
		element.style.filter  = 'alpha(opacity='+value+')';
	}
	function body_up(){
		$('body,html').animate({
			scrollTop: 0
		}, 100);
	}
});

</script>
<body><div id="painel_login" class="paineis"><form class="margin_painel" id="entrar_click" action="login.php" method="post"><input class="margin_painel" type="text" name="user_name" id="user_name" size="18px" placeholder="User Name" /><input class="margin_painel" type="password" name="user_pass" id="user_pass" size="18px" placeholder="Password" /><div id="entrar">Login</div></form><a class="margin_painel" id="forget">Forgot your Password?</a></div></body>
</html>
