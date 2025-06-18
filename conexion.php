<?php
$host = "db";
$user = "cristina";
$clave = "12345";
$bd = "sistema";

$conexion = mysqli_connect($host, $user, $clave, $bd);

if (!$conexion) {
    die("No se pudo conectar a la base de datos: " . mysqli_connect_error());
}

mysqli_set_charset($conexion, "utf8");
?>