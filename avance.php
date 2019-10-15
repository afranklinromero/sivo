<?php
error_reporting(0);
require ("conexion.php");
include ("datos.php");
include ("fusioncharts.php");

$query = "SELECT * FROM distrito"; 
$result = $db->query($query); 

$sql = "SELECT * FROM mesas where estado='1'"; 
                            $suma = $db->query($sql) ;
                            $total = $suma->num_rows;
                          
    $sql = "SELECT * FROM mesas"; 
                            $suma2 = $db->query($sql) ;
                            $total2 = $suma2->num_rows;
                            
$resta = $total2 - $total;

                            $operacion =  ($resta * 100);
                          
                            $porcentaje = $operacion / $total2;
                           

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
    
    <script src="js/fusioncharts.js"></script>

        
    <script src="js/themes/fusioncharts.theme.fusion.js"></script>

    </head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">SICOEL</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item ">
        <a class="nav-link" href="index.php">Registro <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="/sivo/avance.php">Avance</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="/sivo/registro.php">Reporte</a>
      </li>
      
      
    </ul>
    
  </div>
</nav>

<br>
<br>
<br>
<br>
<br>
<div class="container text-center">

<p>Datos: <?php $sql = "SELECT * FROM mesas where estado='1'"; 
                            $suma = $db->query($sql) ;
                            $total = $suma->num_rows;
                            echo $total;
                      ?> 
            Mesas aun fatan regitrar</p>



<input type="button" value="Actualizar" onclick="location.reload()"/>
<br>
<br>

<?php
// Widget appearance configuration
$arrChartConfig = array(
"chart" => array(
"caption" => "Avance de llenado de mesas",
"lowerLimit" => "0",
"upperLimit" => "100",
"showValue" => "1",
"numberSuffix" => "%",
"theme" => "fusion",
"showToolTip" => "0"
)
);

    // Widget color range data
    $colorDataObj = array("color" => array(
        ["minValue" => "0", "maxValue" => "50", "code" => "#F2726F"],
        ["minValue" => "50", "maxValue" => "75", "code" => "#FFC533"],
        ["minValue" => "75", "maxValue" => "100", "code" => "#62B58F"]
    ));

    // Dial array
    $dial = array();

    // Widget dial data in array format, multiple values can be separated by comma e.g. ["81", "23", "45",...]
    $widgetDialDataArray = array("$porcentaje");
    for($i = 0; $i < count($widgetDialDataArray); $i++) {
        array_push($dial,array("value" => $widgetDialDataArray[$i]));
    }

    $arrChartConfig["colorRange"] = $colorDataObj;
    $arrChartConfig["dials"] = array( "dial" => $dial);

    // JSON Encode the data to retrieve the string containing the JSON representation of the data in the array.
    $jsonEncodedData = json_encode($arrChartConfig);

    // Widget object
    $Widget = new FusionCharts("angulargauge", "MyFirstWidget" , "400", "250", "widget-container", "json", $jsonEncodedData);

    // Render the Widget
    $Widget->render();

?>

<div id="widget-container">Widget will render here!</div>

<br>
<br>




<div class="text-center">
           
Total de Votos validos : <?php 
            
            $sql = ("SELECT `sigla_candidato`, `total_votos` FROM `candidato`");
$result = $db->query($sql) ;

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) { 
      $valido_total[]  =  $row["total_votos"];
    

      
  }



  
}

$a1=$valido_total[0];
$a2=$valido_total[1];
$a3=$valido_total[2];
$a4=$valido_total[3];
$a5=$valido_total[4];
$a6=$valido_total[5];
$a7=$valido_total[6];
$a8=$valido_total[7];
$a9=$valido_total[8];
$a10=$valido_total[9];
$a11=$valido_total[10];

$total_Valido = $a1+$a2+$a3+$a4+$a5+$a6+$a7+$a8+$a9;
$total_blaco = $a10;
$total_nulo = $a11;



          echo $total_Valido;
            ?>
            </div>
            <div class="text-center">
           
           Total de Votos Blanco : <?php echo $a10 ?>
           </div>
          
           <div class="text-center">
           
Total de Votos Nulos : <?php echo $a11
      ?>
            </div>


<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>

