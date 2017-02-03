<?php
	session_start();
	session_destroy();
	echo "Sessao Terminada!";
	header("Location: index.php");
	exit;
?>