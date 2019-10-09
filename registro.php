<?php
error_reporting(0);
require ("conexion.php");
include ("datos.php");
if (mysqli_connect_errno()){
    echo "Failed to " . mysqli_error();
}
$cc_id = 1;
$fpv_id = 2;
$mts_id = 3;
$ucs_id = 4;
$mas_id = 5;
$bdn_id = 6;
$pdc_id = 7;
$mnr_id = 8;
$pb_id = 9;
$blancos_id = 10;
$nulos_id = 11;


if(isset($_POST['submit'])){ 
    $Distrito =(int) $_POST['distrito']." <br>";
    $Recinto = $_POST['recinto']." <br>"; 
    $Mesa = $_POST['mesa']." <br>"; 
    $cc = (int)$_POST['voto_cc']." <br>";
    $fpv = $_POST['voto_fpv']." <br>";
    $mts = $_POST['voto_mts']." <br>";
    $ucs = $_POST['voto_ucs']." <br>";
    $mas = $_POST['voto_mas']." <br>";
    $bdn = $_POST['voto_bdn']." <br>";
    $pdc = $_POST['voto_pdc']." <br>";
    $mnr =$_POST['voto_mnr']." <br>";
    $pb= $_POST['voto_pb']." <br>"; 

$mesa=mysqli_real_escape_string($mesa);
$cc=mysqli_real_escape_string($cc);
$cc_id=mysqli_real_escape_string($cc_id);

 
 $mysql = ('INSERT INTO `votos`(`id_candidato`, `id_mesa`, `cantidad`) VALUES ('$cc_id','$Mesa','$cc')');
 mysqli_query($db,$mysql);
 $id=mysqli_insert_id($db);
}
 mysqli_close($enlace);
    
?>