<?php

$dbHost = "localhost";
$dbUsername = "root";
$dbPassword ="";
$dbName = "sivo";


//  Create a new connection to the MySQL database using PDO
$db = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName); 
 
// Check connection 
if ($db->connect_error) { 
    die("Connection failed: " . $db->connect_error); 
}
?>

