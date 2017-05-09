<?php
	session_start();
	if (isset ($_SESSION["ficha"]))
	{
		require_once("nombre.php");
		
		$tiempo_perdido = 1;
		
		if (isset ($_GET["produccion"])){
			$produccion = 1;
		}
		else{
			$produccion = 0;
			$tiempo_perdido = 0;
		}
		
		if ($tiempo_perdido != 0){
			$tiempo_perdido = $_GET["tiempo_perdido"];}

		
		$sql="INSERT INTO `historial`.`agua_de_tijeras (`agua_de_tijeras, `fecha`, `turno`, `ficha`, `cuarto`, `perdida_pro`, `tiempo_perdido`, `descripcion_falla`, `diagnostico_falla`, `accion_correctiva`, `observacion`) VALUES (NULL,'".$fecha."','".$_GET["turno"]."','".$Ficha."','".$_GET["cuarto"]."','".$produccion."','".$tiempo_perdido."','".$_GET["des_falla"]."','".$_GET["diag_falla"]."','".$_GET["accion_correc"]."','".$_GET["observaciones"]."')";
	   
		mysqli_query($con, $sql);
 	    
		 echo "<script type='text/javascript'>
		    alert('Reporte Registrado Satisfactoriamnete');
		    window.location='contenido.php';
	    </script>";

	}
?>