<html>
<?php
		include "head.php";
?>
<meta http-equiv=Content-Type content="text/html; charset=windows-1252">
<!-- <title>SensingShare</title> -->

<style>
		#main{
			left:0;
			position:absolute;
			width:1%;
			height:1%;
			margin-left:1%;

				/*****************************/
			-webkit-touch-callout: none;
			-webkit-user-select: none;
			-khtml-user-select: none;
			-moz-user-select: none;
			-ms-user-select: none;
			user-select: none;
			/*****************************/
		}
</style>
<body>
	<img id="main" src="images/AirFenceLogoBg.png" draggable="false"/>
<div id="section">
</div>





</body>

<script src="js/jquery-1.10.2.js"></script>
<script src="js/Migrate.js"></script>
<script>
				var largura = innerWidth;
				var altura = innerHeight;

				document.getElementById("main").style.marginTop = altura *0.1+"px";
				document.getElementById("main").style.width = largura *0.3+"px";
				document.getElementById("main").style.height = (largura *0.5)/1.77+"px";

</script>



</html>
