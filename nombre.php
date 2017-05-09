<?php
require_once ("conexion.php");

$ficha = $_SESSION["ficha"];

$consulta = " SELECT * FROM `usuario` WHERE num_ficha = '".$ficha."'";
$comprobar = mysqli_query($con, $consulta) or die ("Error en $consulta <br> MySQL dice: ".mysql_error());
$comp = mysqli_fetch_array($comprobar);

$Nombre = $comp["Nombre"];
$Apellido = $comp["Apellido"];
$Ficha = $comp["num_ficha"];

$fecha = date("Y-m-d");

?>