<?php 
// Include the database config file 
include_once 'conexion.php'; 

if(!empty($_POST["distrito_id"])){ 
    echo $_POST;
    // Fetch state data based on the specific country 
    $query = "SELECT * FROM recintos WHERE id_distrito = ".$_POST['distrito_id'].""; 
    $result = $db->query($query); 
     
    // Generate HTML of state options list 
    if($result->num_rows > 0){ 
        echo '<option value="">Selecionar Recinto</option>'; 
        while($row = $result->fetch_assoc()){  
            echo '<option value="'.$row['id_recinto'].'">'.$row['nombre_recinto'].'</option>'; 
        } 
    }else{ 
        echo '<option value="">No existe Recintos</option>'; 
    } 
}elseif(!empty($_POST["recinto_id"])){ 
    // Fetch city data based on the specific state 
    $query = "SELECT * FROM mesas WHERE id_recinto = ".$_POST['recinto_id'].""; 
    $result = $db->query($query); 
     
    // Generate HTML of city options list 
    if($result->num_rows > 0){ 
        echo '<option value="">Seleccionar Mesa</option>'; 
        while($row = $result->fetch_assoc()){  
            echo '<option value="'.$row['id_mesa'].'">'.$row['numero_mesa'].'</option>'; 
        } 
    }else{ 
        echo '<option value="">No Existe mesa</option>'; 
        
    } 
} 
?>