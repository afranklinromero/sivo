<?php
$db_servername = "localhost";
$db_username = "root";
$db_password ="";
$db = "sivo";

// Create connection
function conectar(){
$con = new mysqli($db_servername, $db_username, $db_password, $db);


return $con;
}