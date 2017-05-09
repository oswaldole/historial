<?php
	session_start();
	if (isset ($_SESSION["ficha"]))
	{
		require_once("nombre.php");
		
	
		
		$sql="INSERT INTO `historial`.`trabajos_taller` (`id_trabajos`, `fecha`, `turno`, `ficha`, `grupo`, `actividad`, `descripcion`) VALUES (NULL,'".$fecha."','".$_GET["turno"]."','".$Ficha."','".$_GET["grupo"]."','".$_GET["actividad"]."','".$_GET["descripcion"]."')";
	   
		mysqli_query($con,$sql);
 	    
		 echo "<script type='text/javascript'>
		    alert('Reporte Registrado Satisfactoriamnete');
		    window.location='contenido.php';
	    </script>";

	}
?>