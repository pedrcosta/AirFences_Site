<html>
<?php
		include "head.php";
?>
<meta http-equiv=Content-Type content="text/html; charset=windows-1252">
<!-- <title>SensingShare</title> -->

<style>
		/*#main{
			left:0;
			position:absolute;
			width:1%;
			height:1%;
			margin-left:1%;

				/*****************************/
			/*-webkit-touch-callout: none;
			-webkit-user-select: none;
			-khtml-user-select: none;
			-moz-user-select: none;
			-ms-user-select: none;
			user-select: none;*/
			/*****************************/
		/*}*/
		#image{
			/*background-color:#01A9DB;*/
			margin-left:5%;
			margin-top:10%;
			position:absolute;
			/*width:30%;
			height:30%;*/
		}
		#what {
			font-family:"Arial";
			margin-left:30%;
			margin-top:1%;
			position:absolute;
			width:60%;
			height:80%;
		}
		#overview {
			margin-left:15%;
			margin-top:20%;
			position:absolute;
			width:30%;
			height:30%;
		}
</style>

<body>
	<img id="image" src="images/AirFenceLogoBg.png" draggable="false"/>


	<div id="what">
		<b><h1> What is AirFences? </h1></b>
		<br>
		AirFences are a non-pet animal management system through action of nonphysical boundaries/
		limits. They have the potential to manage wild life and livestock like farm animals.
		<br>
		The main goal of AirFences is the development of an invisible and controlled environment
		for animals, which would allow to change the layout of the field with only one
		click. Through a continuous data reception from GPS, the animal movements are registered.
		The behavior of the animal with the control collar is altered by electric shocks.
		The product its composed by two different devices, that includes the Animal Module and
		Field Module. To manage all the devices, the AirFences offers an intuitiveWebpage.
		<br>
		The communication procedure works with the data from the Animal module (GPS
		and animal temperature), located in the collar, being transmitted by Radio Frequency
		to the Field module. The Field module, with a mobile Internet connection, sends the
		information, received from the Animal module, to the web page.
		<br>

		<img src="images/systemOverview.png">

	</div>

</body>

<script src="js/jquery-1.10.2.js"></script>
<script src="js/Migrate.js"></script>
<script>
				// var largura = innerWidth;
				// var altura = innerHeight;
				//
				// document.getElementById("main").style.marginTop = altura *0.1+"px";
				// document.getElementById("main").style.width = largura *0.3+"px";
				// document.getElementById("main").style.height = (largura *0.5)/1.77+"px";

</script>



</html>
