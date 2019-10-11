<?php
error_reporting(0);
require ("conexion.php");
include ("datos.php");
include("fusioncharts.php");

$sql = ("SELECT candidato.sigla_candidato , SUM(votos.cantidad) as total FROM votos inner JOIN candidato ON (votos.id_candidato=candidato.id_candidato) GROUP BY (candidato.sigla_candidato)");
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
        <a class="nav-link" href="/sivo/registro.php">Reporte</a>
      </li>
      
    </ul>
    
  </div>
</nav>
<div class="container ">


        <div clas="col col-md-12 "> 
            <table class="table">
            <thead>
                <tr>
                
                <th scope="col">Sigla</th>
                <th scope="col">Votos</th>
                
                </tr>
            </thead>
            <tbody>
                <?php
                if ($result->num_rows > 0) {
                // output data of each row
                while($row = $result->fetch_assoc()) { 
                    $id_sigla =  $row["sigla_candidato"];
                    $resultado = $row["total"];
                    ?>
                <tr>
                
                    <td><?php echo $id_sigla; ?></td>

                    <td><?php echo $resultado;
                    $sql = ('UPDATE `candidato` SET `total_votos`="'.$resultado.'" WHERE `sigla_candidato` = "'.$id_sigla.'"');
                        $db->query($sql) ; 
                ?> </td>
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
        <div class="row">
            <div clas="col-md-auto align-items-center"> 
                    
                    <?php

                        $sql = ("SELECT `sigla_candidato`, `total_votos` FROM `candidato`");
                        $result = $db->query($sql) ;
                        $arrChartConfig = array(
                            "chart" => array(
                                "caption" => "VOTACION ELECCION DIPUTADOS 2019",
                                "subCaption" => "C-51",
                                "xAxisName" => "BOLIVIA",
                                "yAxisName" => "VOTOS",
                                "numberSuffix" => "",
                                "theme" => "fusion"
                            )
                        );
                        if ($result->num_rows > 0) {
                            // output data of each row
                            while($row = $result->fetch_assoc()) { 
                                $total[]  =  $row["total_votos"];
                                $sigla[]  =  $row["sigla_candidato"];

                                
                            }
                            
                        }



                        // An array of hash objects which stores data
                        
                        $arrChartData = array(
                            [$sigla[0], $total[0]],
                            [$sigla[1], $total[1]],
                            [$sigla[2], $total[2]],
                            [$sigla[3], $total[3]],
                            [$sigla[4], $total[4]],
                            [$sigla[5], $total[5]],
                            [$sigla[6], $total[6]],
                            [$sigla[7], $total[7]],
                            [$sigla[8], $total[8]],
                            [$sigla[9], $total[9]],
                            [$sigla[10], $total[10]],
                            [$sigla[11], $total[11]],


                        );

                        $arrLabelValueData = array();

                        // Pushing labels and values
                        for($i = 0; $i < count($arrChartData); $i++) {
                            array_push($arrLabelValueData, array(
                                "label" => $arrChartData[$i][0], "value" => $arrChartData[$i][1]
                            ));
                        }



                        $arrChartConfig["data"] = $arrLabelValueData;

                        // JSON Encode the data to retrieve the string containing the JSON representation of the data in the array.
                        $jsonEncodedData = json_encode($arrChartConfig);

                        // chart object
                        $Chart = new FusionCharts("column2d", "MyFirstChart" , "700", "400", "chart-container", "json", $jsonEncodedData);

                        // Render the chart
                        $Chart->render();


                    ?>
            </div>
        
        <div clas="col-md-auto align-items-center"> 
            <div id="chart-container">Chart will render here!</div>
        </div>
</div>






    


    <?php

                    if ($result->num_rows > 0) {
                        // output data of each row
                        while($row = $result->fetch_assoc()) { 
                            $total[]  =  $row["total_votos"];
                            $sigla[]  =  $row["sigla_candidato"];

                            
                        }
                        
                    }

                    $ChartData = "{
                        \"chart\": {
                          \"showValues\":\"1\",
                          \"showPercentInTooltip\" : \"0\",
                          \"numberPrefix\" : \"$\",
                          \"enableMultiSlicing\":\"1\",
                          \"theme\": \"fusion\"
                        },
                        \"data\": [{
                            \"label\": \"$sigla[0]\",
                            \"value\": \"$total[0]\"
                          }, {
                            \"label\":\"$sigla[1]\",
                            \"value\": \"$total[1]\"
                          }, {
                            \"label\": \"$sigla[2]\",
                            \"value\": \"$total[2]\"
                          }, {
                            \"label\": \"$sigla[3]\",
                            \"value\": \"$total[3]\"
                          }, {
                            \"label\": \"$sigla[4]\",
                            \"value\": \"$total[4]\"
                          }]
                        }" ;
                   
                $columnChart = new FusionCharts("pie3d", "ex1", "100%", 400, "chart-1", "json",$ChartData);
                
              
  
                    
                
                

                $columnChart->render();
?>

    <div id="chart-1" style ="width :100%;" ></div>


</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>