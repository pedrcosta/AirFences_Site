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
	
		$nome_tabela = "historic";
		$nome_tabela2 = "animal";
		$conexao= mysql_connect($servidor,$user,$senha);
		$colecta_banco = mysql_select_db($banco_dados,$conexao);
		if($conexao && $colecta_banco)
		
	
		$sql_select="INSERT INTO `".$banco_dados."`.`".$nome_tabela."` (`id_historic`, `date`, `temperature`, `latitude`, `longitude`, `battery`, `id_animal`, `id_zone`, `id_field`) VALUES (NULL, '".$date."', '".$temp."', '".$lat."', '".$long."', '".$bat."', '".$animal_id."', '".$zone_id."', '".$field_id."');"; 
		
		$query = sprintf("SELECT updated FROM animal WHERE id_animal='%s'",
    mysql_real_escape_string($animal_id));
    	$result = mysql_query($query);
    	$query_firstconf = "SELECT id_animal FROM animal WHERE first_config=0";
    	$result_firstconf = mysql_query($query_firstconf);
    	
    	$row = mysql_fetch_assoc($result);
		$row_firstconf = mysql_fetch_assoc($result_firstconf);
		
		if ($resultado= mysql_query($sql_select))
		{
			
			echo $row['updated'];
			
			echo "#";
			echo $row_firstconf['id_animal'];
			echo "#";
			
			$query_update_firstconf = sprintf("UPDATE animal SET first_config=1 WHERE id_animal='%s'", mysql_real_escape_string($row_firstconf['id_animal']));
					$update_firstconf = mysql_query($query_update_firstconf);
		
			
			if($row['updated']==0)
				{
					$query2 = sprintf("UPDATE animal SET updated=1 WHERE id_animal='%s'", mysql_real_escape_string($animal_id));
					//$result2 = mysql_query($query2);
					
				}
				
			exit();
		}
		else die('Error: ' . mysql_error());
		
?>
