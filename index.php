<?php

include ("conexion.php");
include ("datos.php");

$query = "SELECT * FROM distrito"; 
$result = $db->query($query); 


?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
    <title>Sistema de Votación</title>
    <script  src="https://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>
    <script type="text/javascript">

$(document).ready(function(){
    $('#distrito').on('change', function(){
        var distritoID = $(this).val();
        if(distritoID){
         
            $.ajax({
                type:'POST',
                url:'datos.php',
                data:'distrito_id='+distritoID,
                success:function(html){
                    $('#recinto').html(html);
                    $('#mesa').html('<option value="">Selecciona primero Recinto</option>'); 
                }
            }); 
        }else{
            $('#recinto').html('<option value="">Selecciona primero Recinto</option>');
            $('#mesa').html('<option value="">Selecciona primero Recinto</option>'); 
        }
    });
    
    $('#recinto').on('change', function(){
        var recintoID = $(this).val();
        if(recintoID){
            $.ajax({
                type:'POST',
                url:'datos.php',
                data:'recinto_id='+recintoID,
                success:function(html){
                    $('#mesa').html(html);
                }
            }); 
        }else{
            $('#mesa').html('<option value="">Selecciona primero Recinto</option>'); 
        }
    });
});

    </script>
  </head>
  <body>

  <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">SICOEL</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.php">Registro <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/sivo/registro.php">Reporte</a>
      </li>
      
    </ul>
    
  </div>
</nav>
      <div class="container">
    <form action ="" method="POST">



        <p>Datos: <?php $sql = "SELECT * FROM mesas where estado='1'"; 
                        $suma = $db->query($sql) ;
                        $total = $suma->num_rows;
                        echo $total;
      ?> 
        Mesas aun fatan regitrar</p>
     
        <div class="form-row">
          <div class="form-group col-md-12">
              <label >Distrito</label>
              <select id="distrito" name ="distrito" class="form-control">
                      <option value=" ">Selecciona el Distrito </option>
                      <?php 
                          if($result->num_rows > 0){ 
                          while($row = $result->fetch_assoc()){  
                            echo '<option value="'.$row['id_distrito'].'">'.$row['numero_distrito'].'</option>'; 
                            } 
                          }else{ 
                        echo '<option value="">no hay distritos</option>'; 
                        } 
                        ?>
                    
                    </select>
          </div>

        <div class="form-group col-md-12">
            <label >Recinto</label>
            <select id="recinto" name ="recinto"class="form-control">
            <option value=" ">Selecciona primero Distrito </option>
                  </select>
          </div>
          <div class="form-group col-md-4">
            <label >Mesa</label>
            <select id="mesa" name ="mesa" class="form-control">
            <option value=" ">Selecciona primero Distrito </option>
            </select>
          </div>
         
        </div>

        <div class="row justify-content-md-center">
        <div clas="col col-md-6"> 
        <div class="card" style="width: 7rem;">
            <img class="card-img-top" src="doc/cc2.jpg" alt="Card image cap">
              <div class="card-body">
              <h6 class="card-title text-center">Votos</h6>
              <input type="number" name="voto_cc" class="card-text" style="width: 100%;"> 
              
            </div>
          </div>
        </div>
        <div clas="col"> 
        <div class="card" style="width: 7rem;">
            <img class="card-img-top" src="doc/fpv.jpg" alt="Card image cap">
              <div class="card-body">
              <h6 class="card-title text-center">Votos</h6>
              <input type="number" name="voto_fpv" class="card-text" style="width: 100%;"> 
              
            </div>
          </div>
        </div>
        <div clas="col"> 
        <div class="card" style="width: 7rem;">
            <img class="card-img-top" src="doc/mts.jpg" alt="Card image cap">
              <div class="card-body">
              <h6 class="card-title text-center">Votos</h6>
              <input type="number" name="voto_mts" class="card-text" style="width: 100%;"> 
              
            </div>
          </div>
        </div>

        <div clas="col"> 
        <div class="card" style="width: 7rem;">
            <img class="card-img-top" src="doc/ucs.jpg" alt="Card image cap">
              <div class="card-body">
              <h6 class="card-title text-center">Votos</h6>
              <input type="number" name="voto_ucs" class="card-text" style="width: 100%;"> 
              
            </div>
          </div>
        </div>
        <div clas="col"> 
        <div class="card" style="width: 7rem;">
            <img class="card-img-top" src="doc/mas.jpg" alt="Card image cap">
              <div class="card-body">
              <h6 class="card-title text-center">Votos</h6>
              <input type="number" name="voto_mas" class="card-text" style="width: 100%;"> 
              
            </div>
          </div>
        </div>
        <div clas="col col-md6"> 
        <div class="card" style="width: 7rem;">
            <img class="card-img-top" src="doc/bdn.jpg" alt="Card image cap">
              <div class="card-body">
              <h6 class="card-title text-center">Votos</h6>
              <input type="number" name="voto_bdn" class="card-text" style="width: 100%;"> 
              
            </div>
          </div>
        </div>
        </div>
        <div class="row justify-content-md-center">

        
        <div clas="col col-md6"> 
        <div class="card" style="width: 7rem;">
            <img class="card-img-top" src="doc/pdc.jpg" alt="Card image cap">
              <div class="card-body">
              <h6 class="card-title text-center">Votos</h6>
              <input type="number" name="voto_pdc" class="card-text" style="width: 100%;"> 
              
            </div>
          </div>
        </div>
        <div clas="col"> 
        <div class="card" style="width: 7rem;">
            <img class="card-img-top" src="doc/mnr.jpg" alt="Card image cap">
              <div class="card-body">
              <h6 class="card-title text-center">Votos</h6>
              <input type="number" name="voto_mnr" class="card-text" style="width: 100%;"> 
              
            </div>
          </div>
        </div>
        <div clas="col"> 
        <div class="card" style="width: 7rem;">
            <img class="card-img-top" src="doc/pb.jpg" alt="Card image cap">
              <div class="card-body">
              <h6 class="card-title text-center">Votos</h6>
              <input type="number" name="voto_pb" class="card-text" style="width: 100%;"> 
              
            </div>
          </div>
        </div>

        <div clas="col"> 
        <div class="card" style="width: 7rem;">
            <img class="card-img-top" src="doc/blanco.jpg" alt="Card image cap">
              <div class="card-body">
              <h6 class="card-title text-center">Votos</h6>
              <input type="number" name="voto_blanco" class="card-text" style="width: 100%;"> 
              
            </div>
          </div>
        </div>

        <div clas="col"> 
        <div class="card" style="width: 7rem;">
            <img class="card-img-top" src="doc/nulo.jpg" alt="Card image cap">
              <div class="card-body">
              <h6 class="card-title text-center">Votos</h6>
              <input type="number" name="voto_nulo" class="card-text" style="width: 100%;"> 
              
            </div>
          </div>
        </div>
            </div>
        <br>
        <button type="submit" name ="submit"  value="submit " class="btn btn-primary">Registrar Voto</button>
        <br>
        
    </form> 







    
     </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <?php
error_reporting(0);
require ("conexion.php");
include ("datos.php");

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
    $blancos= $_POST['voto_blanco']." <br>"; 
    $nulos= $_POST['voto_nulo']." <br>"; 
   



 $sql = ('INSERT INTO `votos`(`id_candidato`, `id_mesa`, `cantidad`) VALUES ("'.$cc_id.'","'.$Mesa.'","'.$cc.'")');
 $db->query($sql) ;
 $sql = ('INSERT INTO `votos`(`id_candidato`, `id_mesa`, `cantidad`) VALUES ("'.$fpv_id.'","'.$Mesa.'","'.$fpv.'")');
 $db->query($sql) ;
 $sql = ('INSERT INTO `votos`(`id_candidato`, `id_mesa`, `cantidad`) VALUES ("'.$mts_id.'","'.$Mesa.'","'.$mts.'")');
 $db->query($sql) ;
 $sql = ('INSERT INTO `votos`(`id_candidato`, `id_mesa`, `cantidad`) VALUES ("'.$ucs_id.'","'.$Mesa.'","'.$ucs.'")');
 $db->query($sql) ;
 $sql = ('INSERT INTO `votos`(`id_candidato`, `id_mesa`, `cantidad`) VALUES ("'.$mas_id.'","'.$Mesa.'","'.$mas.'")');
 $db->query($sql) ;
 $sql = ('INSERT INTO `votos`(`id_candidato`, `id_mesa`, `cantidad`) VALUES ("'.$bdn_id.'","'.$Mesa.'","'.$bdn.'")');
 $db->query($sql) ;
 $sql = ('INSERT INTO `votos`(`id_candidato`, `id_mesa`, `cantidad`) VALUES ("'.$pdc_id.'","'.$Mesa.'","'.$pdc.'")');
 $db->query($sql) ;
 $sql = ('INSERT INTO `votos`(`id_candidato`, `id_mesa`, `cantidad`) VALUES ("'.$mnr_id.'","'.$Mesa.'","'.$mnr.'")');
 $db->query($sql) ;
 $sql = ('INSERT INTO `votos`(`id_candidato`, `id_mesa`, `cantidad`) VALUES ("'.$pb_id.'","'.$Mesa.'","'.$pb.'")');
 $db->query($sql) ;
 $sql = ('INSERT INTO `votos`(`id_candidato`, `id_mesa`, `cantidad`) VALUES ("'.$blancos_id.'","'.$Mesa.'","'.$blancos.'")');
 $db->query($sql) ;
 $sql = ('INSERT INTO `votos`(`id_candidato`, `id_mesa`, `cantidad`) VALUES ("'.$nulos_id.'","'.$Mesa.'","'.$nulos.'")');
  $db->query($sql) ;
 
  $sql = ("UPDATE mesas SET estado= 0 WHERE id_mesa ='".$Mesa."'");
  $db->query($sql) ;

  echo $sql;

}







?>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>