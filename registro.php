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
<!--<script>
            const dataSource = {
            chart: {
                caption: "Recommended Portfolio Split",
                subcaption: "For a net-worth of $1M",
                showvalues: "1",
                showpercentintooltip: "0",
                numberprefix: "$",
                enablemultislicing: "1",
                theme: "fusion"
            },
            data: [
                {
                label: "Equity",
                value: "300000"
                },
                {
                label: "Debt",
                value: "230000"
                },
                {
                label: "Bullion",
                value: "180000"
                },
                {
                label: "Real-estate",
                value: "270000"
                },
                {
                label: "Insurance",
                value: "20000"
                }
            ]
            };

        FusionCharts.ready(function() {
        var myChart = new FusionCharts({
            type: "pie3d",
            renderAt: "chart-contenedor",
            width: "100%",
            height: "100%",
            dataFormat: "json",
            dataSource
        }).render();
        });

    </script> -->
    
    </head>
<body>
<div class="container">

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
          $sql = ('UPDATE `candidato` SET `total_votos`="'.$resultado.'" WHERE `id_candidato` = "'.$id_candidato.'"');
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
<div id="container" style="height: 400px">


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



    <div id="chart-container">Chart will render here!</div>


    <?php
              

                $columnChart = new FusionCharts("pie3d", "ex1", "100%", 400, "chart-1", "json", '{
                "chart": {
                    "caption": "Recommended Portfolio Split",
                    "subcaption": "For a net-worth of $1M",
                    "showvalues": "1",
                    "showpercentintooltip": "0",
                    "numberprefix": "$",
                    "enablemultislicing": "1",
                    "theme": "fusion"
                },
                "data": [
                    {
                    "label": "Equity",
                    "value": "300000"
                    },
                    {
                    "label": "Debt",
                    "value": "230000"
                    },
                    {
                    "label": "Bullion",
                    "value": "180000"
                    },
                    {
                    "label": "Real-estate",
                    "value": "270000"
                    },
                    {
                    "label": "Insurance",
                    "value": "20000"
                    }
                ]
                }');

                $columnChart->render();
?>

    <div id="chart-1" style ="width :60%;" ></div>


</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>