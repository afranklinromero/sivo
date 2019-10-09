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
    <script src="https://code.jquery.com/jquery-3.2.1.js"
integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>
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
      <div class="container">
    <form action ="registro.php" method="POST">

        <p>Datos: 634 Mesas 40 Recintos</p>
     
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

        <div class="row">
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
        <div clas="col col-md"> 
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
        </div>
        <br>
        <button type="submit" name ="submit"  value="submit " class="btn btn-primary">Registrar Voto</button>
        <br>
      
    </form>






  
    
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>