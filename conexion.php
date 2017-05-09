<?php


$con = mysqli_connect("localhost", "root", "SistemaPlanta", "historial");

if (!$con) {
    echo "Error: No se pudo conectar a MySQL." . PHP_EOL;
    echo "errno de depuración: " . mysqli_connect_errno() . PHP_EOL;
    echo "error de depuración: " . mysqli_connect_error() . PHP_EOL;
    exit;
}
	//////////////////////////////////////////////////// 
	//Convierte fecha de mysql a normal 
	//////////////////////////////////////////////////// 
	function cambiaf_a_normal($fecha){ 
		ereg( "([0-9]{2,4})-([0-9]{1,2})-([0-9]{1,2})", $fecha, $mifecha); 
		$lafecha=$mifecha[3]."/".$mifecha[2]."/".$mifecha[1]; 
		echo $lafecha; 
		return $lafecha; 
	} 

	//////////////////////////////////////////////////// 
	//Convierte fecha de normal a mysql 
	//////////////////////////////////////////////////// 

	function cambiaf_a_mysql($fecha){ 
		ereg( "([0-9]{1,2})/([0-9]{1,2})/([0-9]{2,4})", $fecha, $mifecha); 
		$lafecha=$mifecha[3]."-".$mifecha[2]."-".$mifecha[1]; 
		return $lafecha; 
	} 

?>
