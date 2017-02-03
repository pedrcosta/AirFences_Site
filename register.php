<?php

	require('Dados_BD.php');

					function get_client_ip() {
					$ipaddress = '';
					if ($_SERVER['HTTP_CLIENT_IP'])
					$ipaddress = $_SERVER['HTTP_CLIENT_IP'];
					else if($_SERVER['HTTP_X_FORWARDED_FOR'])
					$ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
					else if($_SERVER['HTTP_X_FORWARDED'])
					$ipaddress = $_SERVER['HTTP_X_FORWARDED'];
					else if($_SERVER['HTTP_FORWARDED_FOR'])
					$ipaddress = $_SERVER['HTTP_FORWARDED_FOR'];
					else if($_SERVER['HTTP_FORWARDED'])
					$ipaddress = $_SERVER['HTTP_FORWARDED'];
					else if($_SERVER['REMOTE_ADDR'])
					$ipaddress = $_SERVER['REMOTE_ADDR'];
					else
					$ipaddress = 'UNKNOWN';
					return $ipaddress; 
					}
					
					$nome_tabela="users";
					$conexao= mysql_connect($servidor,$user,$senha);
					$colecta_banco = mysql_select_db($banco_dados,$conexao);
					if($conexao && $colecta_banco)
					$nome_lido = $_POST['user_name'];
					$pass_lida=$_POST['user_pass'];
					$mail_lido=$_POST['user_mail'];
					$sql_select="select * from ".$nome_tabela; 
					date_default_timezone_set('Europe/London');
					$date = date('m/d/Y H:i:s', time());
					$user_ip = get_client_ip();
					
						$sql_select="select * from ".$nome_tabela; 
						$found=false;
						if ($resultado= mysql_query($sql_select))
						{
							$n_dados=mysql_num_rows($resultado);
							while($registos=mysql_fetch_array($resultado))
							{
								if($nome_lido==$registos['user_name'])
								{
									$found=true;
								}
							}
						}
					
					if(!$found && $nome_lido!="")
					{
					$sql_select="INSERT INTO  `".$banco_dados."`.`users` (`id` ,`user_name` ,`user_pass`,`user_activated` ,`user_mail` ,`user_ip` ,`user_register`,`user_last_login`)VALUES (NULL ,  '".$nome_lido."',  '".$pass_lida."',  '0',  '".$mail_lido."',  '".$user_ip."',  '".$date."',  '".$date."');";
										if ($resultado= mysql_query($sql_select) )
										{
											echo "Sucess!";
											session_start();
											$_SESSION['user_name'] = $nome_lido;
											header("Location: index.php");
											exit();
										}
										else
										{
											echo "Error!";
										}
					}
					else if($found && $nome_lido!="")
					{
						echo "Repeated!";
					}
					else{
						echo "Invalid User!";
					}
					


?>
<html>
<meta http-equiv=Content-Type content="text/html; charset=windows-1252">
<title>Register</title>
<head></head>
<body></body>
</html>
