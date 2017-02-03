<?php

		$animal_id = $_POST['animal_id'];	
		$zone_id = $_POST['zone_id'];
		$field_id = $_POST['field_id'];
		$date = $_POST['date'];
		$temp = $_POST['temp'];
		$lat = $_POST['latitude'];
		$long = $_POST['longitude'];
		$bat = $_POST['bat'];
		
		require('Dados_BD.php');

					$nome_tabela="historic";
					$conexao= mysql_connect($servidor,$user,$senha);
					$colecta_banco = mysql_select_db($banco_dados,$conexao);
					if($conexao && $colecta_banco)
					
						$sql_select="INSERT INTO `".$banco_dados."`.`".$nome_tabela."` (`id_animal_zone`,`date`, `temp`, `latitude`, `longitude`, `bat`) VALUES ('1','".$date."', '".$temp."', '".$lat."', '".$long."', '".$bat."');"; 
						echo "Aqui $zone_id";
					/*	if ($resultado= mysql_query($sql_select))
						{
							header("Location: give.php");
							exit();
						}
						else die('Error: ' . mysql_error());
					*/

?>
