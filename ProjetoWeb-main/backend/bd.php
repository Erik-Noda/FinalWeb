<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bdd3";

// Create connection
 
$strcon = mysqli_connect($servername, $username, $password, $dbname, 3306) or die('Erro ao conectar ao banco de dados');
  
?>      