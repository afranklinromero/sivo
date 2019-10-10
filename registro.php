<?php
error_reporting(0);
require ("conexion.php");
include ("datos.php");
require_once ( "conf.php" ) ; // esto debe incluirse en cada página que use phpChart.

$sql = ("SELECT `id_candidato`, SUM(`cantidad`) FROM `votos` GROUP BY (`id_candidato`)");
$result = $db->query($sql) ;

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
    <script src="https://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>
    
    
    </head>
<body>
<div class="container">

  <table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Sigla</th>
      <th scope="col">Votos</th>
      
    </tr>
  </thead>
  <tbody>
    <?php
    if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) { 
        $id_candidato =  $row["id_candidato"];
        $resultado = $row["SUM(`cantidad`)"];
        ?>
    <tr>
      <th scope="row">1</th>
         <td><?php echo $id_candidato; ?></td>
         <td><?php echo $resultado?></td>
    </tr>
    <?php 
        }
    } else {
        echo "0 results";
    }
    ?>
    
   
   
  </tbody>
</table>



</div>
<div id="container" style="height: 400px">
<?php
 $HOLA=0;
 $pc = new C_PhpChartX(array(array(11, 9, 5, 12, 14)),'basic_chart');
$pc->draw();
?>

</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>