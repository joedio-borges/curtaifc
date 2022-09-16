<?php

$servername = "localhost";
$database = "curtasifc";
$username = "root";
$password = "A1b1c1d1";

// Cria a conexão

$conn = mysqli_connect($servername, $username, $password, $database);

// Checa a conec
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>