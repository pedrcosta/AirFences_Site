<html>
<meta http-equiv=Content-Type content="text/html; charset=windows-1252">
<title>Registo</title>

<?php
include "head.php";
?>
<style>
		#corpo
		{
			width:100%;
			bottom:6%;
			left:0;
			position:absolute;
			cursor:default;
			z-index:1;
		}
		#user_enter{
			margin-left:29%;
			margin-top:1%;
			-webkit-border-radius: 10px;-moz-border-radius: 10px; border-radius: 10px;
			width:20%;
			height:12%;
			text-align:center;
			border:none;
			background-color:#CCC;
		}
		#user_pass_enter{
			margin-left:1%;
			-webkit-border-radius: 10px;-moz-border-radius: 10px; border-radius: 10px;
			width:20%;
			height:12%;
			text-align:center;
			border:none;
			background-color:#CCC;
		}
		#user_mail_enter{
			margin-left:29%;
			margin-top:1%;
			-webkit-border-radius: 10px;-moz-border-radius: 10px; border-radius: 10px;
			width:41%;
			height:12%;
			text-align:center;
			border:none;
			background-color:#CCC;
		}
		#lb_regista{
			margin-left:40%;
			line-height:3em;
			text-align:center;
			border:none;
			color:#FFF;
			font-family:Arial, Helvetica, sans-serif;
			color:#666;
		}
		#user_submit{
			margin-left:29%;
			margin-top:1%;
			-webkit-border-radius: 10px;-moz-border-radius: 10px; border-radius: 10px;
			width:41%;
			height:12%;
			text-align:center;
			border:none;
			background-color:#0C6;
			color:#FFF;
			font-family:Arial, Helvetica, sans-serif;
			line-height:2em;
		}
		#user_submit:hover{
			opacity:0.5;
			cursor:pointer;
		}


</style>
<script src="js/jquery-1.10.2.js"></script>
<script src="js/Migrate.js"></script>
<script>
			var nulo = false;
			
			$(document).ready(function()
			{
				
				/********************************System**********************************/
				
				var widht=innerWidth;//+"px"
				var heigth=innerHeight;
				document.body.style.height = heigth+"px";
				html = document.documentElement;
				document.getElementById("corpo").style.top = altura*0.155+"px";
				//document.getElementById("corpo").style.height = heigth*0.79+"px";
				var font_reg = widht*0.02;
				document.getElementById("user_enter").style.fontSize = font_reg+"px";
				document.getElementById("user_pass_enter").style.fontSize = font_reg+"px";
				document.getElementById("user_mail_enter").style.fontSize = font_reg+"px";
				document.getElementById("user_submit").style.fontSize = font_reg+"px";
				document.getElementById("lb_regista").style.fontSize = font_reg+"px";
				
				
				
				$("#user_submit").click(function(){
					document.getElementById("regista_form").submit();
				});
				
				
			  
			});
			
</script>
<body><div id="corpo"><a id="lb_regista">Create Your Account:</a><br><form id="regista_form" action="register.php" method="post" ><input id="user_enter" name="user_name" type="text" placeholder="User Name" /><input id="user_pass_enter" name="user_pass" type="password" placeholder="User Password" /><br><input id="user_mail_enter" name="user_mail" type="email" placeholder="User Email" /></form><div id="user_submit">Submit</div></div></body>
</html>
