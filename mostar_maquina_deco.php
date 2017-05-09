<?php 
	session_start();
	if (isset ($_SESSION["ficha"]))
	{
		require_once ("nombre.php");
	$consulta="SELECT * FROM maquinas_deco order by id_fmaquinad Desc";
	
	$comprobar = mysqli_query($con, $consulta) or die ("Error en $consulta <br> MySQL dice: ".mysqli_error());
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
	<body>
	<div id="cuerpo">
		<div id="contenido">
		<h3 align="center">Historial Maquinas decoradoras</h3>
           	<br />
			<?php while ($comp = mysqli_fetch_array($comprobar) ){ ?>
        	<table id="Resultados" border="1" align="center">
                <tbody>	
                    <tr> 
						<td>Nombre</td>
						<td>Fecha</td>
						<td>Turno</td>
						<td>Maquina</td>
						
					</tr>
					
					<tr> 
					<td><?php $consulta2 = "SELECT * FROM `usuario` WHERE num_ficha = '".$comp["ficha"]."'";
											$comprobar2 = mysqli_query($con, $consulta2) or die ("Error en $consulta2 <br> MySQL dice: ".mysqli_error());
											$comp2 = mysqli_fetch_array($comprobar2);
											$Nombre = $comp2["Nombre"];
											$Apellido = $comp2["Apellido"];?>
											<?php echo $Nombre ?> <?php echo $Apellido ?></td>
											
						
						<td><?php echo $comp["fecha"] ?></td>
						<td><?php echo $comp["turno"] ?></td>
						<td><?php echo $comp["maquina_deco"] ?></td>
						
					</tr>						
					<tr>
					<td colspan="4"> TRABAJO</td>
					</tr>
					<tr>
					<td colspan ="4">Descripcion de falla</td>
					</tr>
					<tr>
					<td colspan ="4"><?php echo $comp["descripcion_falla"] ?></td>
					</tr>
					<tr>
					<td colspan ="4">Diagnostico de falla</td>
					</tr>
					<tr>
					<td colspan ="4"><?php echo $comp["diagnostico_falla"] ?></td>
					</tr>
					<tr>
					<td colspan ="4">Accion Correctiva</td>
					</tr>
					<tr>
					<td colspan ="4"><?php echo $comp["accion_correctiva"] ?></td>
					</tr>
					<tr>
					<td colspan ="4">Observacion</td>
					</tr>
					<tr>
					<td colspan ="4"><?php echo $comp["observacion"] ?></td>
					</tr>
					<tr>
					<td>Perdida de Produccion</td>
					<td><?php if ($comp["perdida_pro"]== 0) {
						echo "NO";
						}
						else{
						echo "SI";
						}?></td>
					<td>Tiempo</td>
					<td><?php echo $comp["tiempo_perdido"] ?></td>
					</tr>
					<br/>
					<br/>
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