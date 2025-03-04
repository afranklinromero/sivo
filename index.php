<?php

include ("conexion.php");
include ("datos.php");
include ("fusioncharts.php");

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
    <link real="stylesheet" href="css/style.css">
    <title>Sistema de Votación</title>
    <script  src="https://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>
    <script src="js/fusioncharts.js"></script>

        
    <script src="js/themes/fusioncharts.theme.fusion.js"></script>
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
        <a class="nav-link" href="/sivo/avance.php">Avance</a>
      </li>
        <li class="nav-item">
          <a class="nav-link" href="/sivo/registro.php">Reporte</a>
        </li>
        
      </ul>
      
    </div>
  </nav>
  
<button onclick="ocultar(1)">Registro por Recinto</button>
<button onclick="ocultar(2)">Registro Manual</button>
  <form id="dos" action ="" style="display:none;" method="POST" >
      <div class="container">
           
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
      </div>
    
  </form> 


  <form id="uno" action ="" method="POST">
      <div class="container">

           <div class="form-row">
              <div class="form-group col-md-12">
                  <label>Ingrese Codigo de recinto: </label>
                  <input type="text" id="rum" name="rum">
            
                  <button type="submit" name ="buscar"  value="buscar " class="btn btn-primary" >Buscar</button>
              </div>
              <?php
              $rum=1;
                  if(isset($_POST['buscar'])){ 
                    $rum = $_POST['rum'];
                    
                  }
                  
                  $query_rum = "SELECT * FROM codigo_recinto WHERE codigo_recinto = '$rum'"; 
                  $result_rum = $db->query($query_rum); 
                  
                  if ($result_rum->num_rows>0){
                    while($num_rum = $result_rum->fetch_assoc()){


                    }
                  }
                  
                  
              ?>

             <div class="form-group col-md-12">
                 <label>Distrito</label>
                  <label id="distrito_label" name ="distrito_label" class="form-control"><?php
                  
                  
                  
                  ?>
                  </div>
                <div class="form-group col-md-12">         
                <label>Recinto</label>
                
                <label id="recinto_label" name ="recinto_label" class="form-control">
                </div>

                <div class="form-group col-md-12">         
                <label>Mesa</label>
                
                <label id="mesa_label" name ="mesa_label" class="form-control">
                </div>
              
              </div>
      </div>
  </form>



<script type="text/javascript">

    function ocultar(a)
{
    if(a==1){
    document.getElementById("dos").style.display="none";
    document.getElementById("uno").style.display="block";
}else{
    document.getElementById("dos").style.display="block"
    document.getElementById("uno").style.display="none";;
}
}
</script>

    
<div>
        <div class="row justify-content-center align-items-center ">
            <div clas="col"> 
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
        <div clas="col"> 
        <div class="card" style="width: 7rem;">
            <img class="card-img-top" src="doc/bdn.jpg" alt="Card image cap">
              <div class="card-body">
              <h6 class="card-title text-center">Votos</h6>
              <input type="number" name="voto_bdn" class="card-text" style="width: 100%;"> 
              
            </div>
          </div>
        </div>
        
        

        
        <div clas="col"> 
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
        <div class="container">
        
        <div class="row">
          <div class="col col-md-6">
            <button type="submit" name ="submit"  value="submit " class="btn btn-primary" >Registrar Voto</button>
            </div>
          
        </div>
        <br>
                          </div>
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

 

}



// An array of hash objects which stores data



?>
<br>
<br>



    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>