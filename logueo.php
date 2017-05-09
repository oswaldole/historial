<?php
session_start();
require_once("conexion.php");
//****************************************************
//Preguntamos si el usuario existe en la base de datos
$sql=" SELECT *
FROM `usuario` WHERE 
num_ficha = '".$_POST["num_ficha"]."'";

$res=mysqli_query($con, $sql);

if (mysqli_num_rows($res)==0)
{
	echo "<script type='text/javascript'>
	alert ('El usuario de numero de ficha: ".$_POST["num_ficha"]." no existe en la base de datos');
	window.location ='logeo.html';
	</script>";
}else 
{
	//consulta de si login y el password coinciden 
	$consulta ="select * from usuario 
	where 
	num_ficha='".$_POST["num_ficha"]."' and 
	pass='".$_POST["pass"]."'";
	//*******************************************

	$result = mysqli_query($con, $consulta);
	if (mysqli_num_rows($result)==0)
	{
		echo "<script type='text/javascript'>
		alert ('El Numero de Ficha y la contraseña ingresadas no coinciden');
		window.location ='logeo.html';
		</script>";
	}else{
	//********************************************
	//Acceso a los usuarios
		echo $_SESSION["ficha"];
		$_SESSION["ficha"]=$_POST["num_ficha"];		
		header ("location: contenido.php"); 
		
	//********************************************
		}

	}

?>