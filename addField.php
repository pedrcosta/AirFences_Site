<html>
<?php
		include "head.php";
?>
<meta http-equiv=Content-Type content="text/html; charset=windows-1252">

<script src="js/jquery-1.10.2.js"></script>
<script src="js/Migrate.js"></script>

<body>

  <div>
    <form id="nav" action="" >
      <a  id="link" href="addField.php"> Add Field </a>
      <a  id="link" href=""> Add Animal </a>
      <a  id="link" href=""> Change Field </a>
      <a  id="link" href=""> Animal Info </a>
      <a  id="link" href="session_destroy.php"> Logout </a>
    </form>
  </div>

  <div id="section">
    <br>
    <form action="inserpro.php" method="POST" >

      <input type="text" autocomplete="off" id="text" value="Descricao" name="descricao">
      <br>

      <select name="categoria"id="comb">

        <option value="0">Categoria</option>
        <option value="1">Animais</option>
        <option value="2">Eletronica</option>
        <option value="3">Jogos</option>
        <option value="4">Desporto</option>
        <option value="5">Automoveis</option>
        <option value="6">Motos</option>
        <option value="7">Moda</option>
        <option value="8">Musica</option>
        <option value="9">Imoveis</option>
      </select>
      <br>
      <select name="estado" id="comb">
        <option value="0">Estado</option>
        <option value="1">novo</option>
        <option value="2">usado</option>

      </select>
      <br>


      <input style="margin-top:5px;" id="log" type="submit" name="inserir" value="Inserir">

    </form>

  </div>



</body>
</html>
