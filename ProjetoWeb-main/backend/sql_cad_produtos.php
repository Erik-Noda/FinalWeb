<?php
// <--#include file="bd.php"-->
// verificar sessão adm 
//if session ("adm") <> "ativo" then
    // encaminhar para login
//else
$idgrupo = $_POST['cbogrupo'];
$nome1 = $_POST['txtnome'];
$preco = $_POST['txtpreco'];
$desconto = $_POST['txtdesconto'];
$descricao = $_POST['txtdescricao'];
$situacao = $_POST['cbosituacao'];
$foto = $_POST['txtfoto'];
$fornecedor = $_POST['txtfornecedor'];

//  connection bd
include 'bd.php';
   
$sql = "INSERT INTO produtos (idgrupo,nomeproduto, precoproduto, descontoproduto,descricaoproduto, situacaoproduto, fotoproduto, fornecedorproduto ) 
VALUES ('$idgrupo','$nome1', '$preco','$desconto','$descricao','$situacao','$foto','$fornecedor')";

mysqli_query($strcon,$sql) or die("Erro ao tentar cadastrar registro");
mysqli_close($strcon);
echo "Produto cadastrado com sucesso!";
?>