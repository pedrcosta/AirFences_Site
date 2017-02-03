<?php

	require('Dados_BD.php');

					$nome_tabela="users";
					$conexao= mysql_connect($servidor,$user,$senha);
					$colecta_banco = mysql_select_db($banco_dados,$conexao);
					if($conexao && $colecta_banco)
					$nome_lido = $_POST['user_name'];
					//echo "Nome: ".$nome_lido."<br>";
					$pass_lida=$_POST['user_pass'];
					//echo "Pass: ".$pass_lida."<br>";
					$sql_select="select * from ".$nome_tabela; 
					date_default_timezone_set('Europe/London');
					$date = date('m/d/Y H:i:s', time());
					
						$sql_select="select * from ".$nome_tabela; 
						$found=0;
						if ($resultado= mysql_query($sql_select))
						{
							$n_dados=mysql_num_rows($resultado);
							while($registos=mysql_fetch_array($resultado))
							{
								if($nome_lido==$registos['user_name'] && $pass_lida== $registos['user_pass'])
								{
									$found=1;
									$id_user = $registos['id'];
									//echo"Id: ".$id_user;
								}
								else if($nome_lido==$registos['user_name'] && $pass_lida!= $registos['user_pass'])
								{
									$found=2;
								}
							}
						}
						else die('Error: ' . mysql_error());
					
					if($found==1)
					{
						$sql = "UPDATE  `".$banco_dados."`.`users` SET  `user_last_login` =  '".$date."' WHERE  `users`.`id` ='".$id_user."' LIMIT 1 ;";
						if($resultado = mysql_query($sql)){/*echo "Update";*/}
						session_start();
						$_SESSION['user_name'] = $nome_lido;
						echo "Sucess!";
						header("Location: index.php");
						exit;
						
					}
					else if ($found==2)
					{
						echo "Password!";
					}
					else
					{
						echo "Error!";
					}
					
					


?>
<html>
<meta http-equiv=Content-Type content="text/html; charset=windows-1252">
<title>Register</title>
<head></head>
<body></body>
</html>
