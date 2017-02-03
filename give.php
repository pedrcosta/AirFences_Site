<html>
<?php
		include "head.php";
		
		require('Dados_BD.php');

					$nome_tabela="users";
					$conexao= mysql_connect($servidor,$user,$senha);
					$colecta_banco = mysql_select_db($banco_dados,$conexao);
					if($conexao && $colecta_banco)
					
						$sql_select="select * from ".$nome_tabela;
						$k=0;
						if ($resultado= mysql_query($sql_select))
						{
							$n_dados=mysql_num_rows($resultado);
							while($registos=mysql_fetch_array($resultado))
							{
								$users[$k] = $registos['id'];
								$k++;
							}
						}
						else die('Error: ' . mysql_error());
						
?>
<meta http-equiv=Content-Type content="text/html; charset=windows-1252">
<title>Sensing Share</title>
<style>
		#corpo
		{
			width:100%;
			top:100px;
			left:0;
			position:absolute;
			cursor:default;
			z-index:1;
		}
		
</style>
<script src="js/jquery-1.10.2.js"></script>
<script src="js/Migrate.js"></script>
<script>
			
			$(document).ready(function()
			{
				var users_id = new Array("<?php echo implode('","', $users);?>");
				/********************************System**********************************/
				var widht=innerWidth;//+"px"
				var heigth=innerHeight;
				document.body.style.height = heigth+"px";
				html = document.documentElement;
				//document.getElementById("fundo").style.marginTop = (html.clientHeight-16)+"px";
				document.getElementById("corpo").style.top = heigth*0.15+"px";
				
				var x = document.getElementById("user_id");
				
				for(var k=0 ; k<users_id.length;k++){
						var option = document.createElement("option");
						option.text = users_id[k];
						option.value = users_id[k];
						x.add(option);
				}
			
			  
			});
				
			
		  /********************************************************/
</script>
<body><div id="corpo"><form action="give_data.php" method="post">
<a>UserID: </a><select id="user_id" name="user_id" ></select><br>
<input type="text" name="m" placeholder="m"/><br>
<input type="text" name="p" placeholder="p"/><br>
<input type="text" name="temp" placeholder="temp"/><br>
<input type="text" name="pressure" placeholder="pressure"/><br>
<input type="text" name="air_quality" placeholder="air_quality"/><br>
<input type="text" name="alcohol_rate" placeholder="alcohol_rate"/><br>
<input type="text" name="humidity" placeholder="humidity"/><br>
<input type="text" name="noise" placeholder="noise"/><br>
<input type="text" name="infrared_temp" placeholder="infrared_temp"/><br>
<input type="submit"/></form></div></body>
</html>