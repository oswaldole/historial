<?php 
	session_start();
	if (isset ($_SESSION["ficha"]))
	{
		require_once ("nombre.php");
	?>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="styles/kendo.common.min.css" rel="stylesheet" />
<link href="styles/kendo.metro.min.css" rel="stylesheet" />
<link href="styles/formularios.css" rel="stylesheet" />
<link href="estilo.css" rel="stylesheet" />
<script src="js/jquery.min.js"></script>
<script src="js/kendo.web.min.js"></script>
<script src="js/funciones_js.js"></script>
<title>..::Historial::..</title>
</head>
<body>
	<div id="cuerpo">
		<div id="contenido">
		<h3 align="center">archas</h3>
           	<br />

        	<table id="Resultados" border="1" align="center">
                <thead>	
                    <tr style="background-color:#666; color:#fff"> 
						<th scope="col">nombre</th>
						<th scope="col">Fecha</th>
						<th scope="col">Turno</th>
						<th scope="col">cuarto</th>
						<th scope="col">Perdida</th>
						<th scope="col">Tiempo</th>
						<th scope="col">Descripcion</th>
						<th scope="col">Diagnostico</th>
						<th scope="col">Accion Correctiva</th>
						<th scope="col">Observacion</th>
					</tr>
				</thead>
				<tbody>
					<?php 
					$consulta="SELECT * FROM falla_aguat order by id_faguat Desc";
					$comprobar = mysqli_query($con, $consulta) or die ("Error en $consulta <br> MySQL dice: ".mysqli_error());
					while ($comp = mysqli_fetch_array($comprobar) ){
					?>
					<tr> 
						<td class="celda"><?php $consulta2 = "SELECT * FROM `usuario` WHERE num_ficha = '".$comp["ficha"]."'";
											$comprobar2 = mysql_query($consulta2) or die ("Error en $consulta2 <br> MySQL dice: ".mysql_error());
											$comp2 = mysql_fetch_array($comprobar2);
											$Nombre = $comp2["Nombre"];
											$Apellido = $comp2["Apellido"];?>
											<?php echo $Nombre ?> <?php echo $Apellido ?></td>
											
						<td class="celda"><?php echo $comp["fecha"] ?></td>
						<td class="celda"><?php echo $comp["turno"] ?></td>
						<td class="celda"><?php echo $comp["archas"] ?></td>
						<td class="celda"><?php echo $comp["perdida_pro"] ?></td>
						<td class="celda"><?php echo $comp["tiempo_perdido"] ?></td>
						<td class="celda"><?php echo $comp["descripcion_falla"] ?></td>
						<td class="celda"><?php echo $comp["diagnostico_falla"] ?></td>
						<td class="celda"><?php echo $comp["accion_correctiva"] ?></td>
						<td class="celda"><?php echo $comp["observacion"] ?></td>
					</tr>
					<?php } ?>
                </tbody>
			</table>	                
        </div>
    </div>
</body>
</html>
<?php 
}else{
		echo "<script type='text/javascript'>
		alert('Usted no esta logueado');
		window.location='logeo.html';
	</script>";
}
?>