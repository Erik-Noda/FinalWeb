<?php
// verificar sessão adm 
//if session ("adm") <> "ativo" then
    // encaminhar para login
//else

$login = $_POST['txtlogin'];
$senha = $_POST['txtsenha'];
$email = $_POST['txtemail'];


//  connection bd
include 'bd.php';
 
$sql = "INSERT INTO usuarios (loginusuario, senhausuario, emailusuario) VALUES ('$login', '$senha','$email')";

mysqli_query($strcon,$sql) or die("Erro ao tentar cadastrar registro");
mysqli_close($strcon);
echo "Usuário cadastrado com sucesso!";

?>