<?php 
	session_start();
	if (isset ($_SESSION["ficha"]))
	{
		require_once("nombre.php");
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
<script>
$(function() {

$("#actividad").kendoComboBox();
$("#grupo").kendoComboBox();
$("#turno").kendoComboBox();
fecha ();

});

function fecha(){

var d = new Date();

var month = d.getMonth()+1;
var day = d.getDate();

var output = (day<10 ? '0' : '') + day + '/' +
    (month<10 ? '0' : '') + month + '/' +
    d.getFullYear();
	
var data = $('#fecha').text(output);
	
};

</script>
<title>..::Historial::..</title>
</head>
<body>
	<div id="cuerpo">
		<div id="contenido">
            <form name="form" action="insertar_trabajos.php" method="GET">
				<fieldset>
					<legend>Reporte De Actividades del Taller</legend>
					
					
					<label for="tecnico">Tecnico</label>
							<label name="tecnico" id="tecnico" ><?php echo $Nombre ?> <?php echo $Apellido ?></label>
							<br />
							<br />
							<label for="fecha">Fecha</label>
							<label name="fecha" id="fecha" ></label>
							<br />
							<br />
							<label for="turno">Turno</label>
							<select class="k-ComboBox" name="turno" id="turno" size="1">
								<option value="0" selected="selected">Escoge</option>
								<option value="Z">Z</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								</select>
							<br/>
							
							<label for="grupo">Grupo</label>							
							<select class="k-ComboBox" name="grupo" id="grupo" size="1">							
								<option value="0" selected="selected">Escoge</option>
								<option value="A">A</option>
								<option value="B">B</option>
								<option value="C">C</option>
								<option value="D">D</option>
								<option value="Z">Z</option>
							</select> <br/>
							
							<label for="actividad">Actividad</label>
							<select class="k-ComboBox" name="actividad" id="actividad" size="1">
								<option value="0" selected="selected">Escoge</option>
								<option value="Reparacion de Bloques de Valvulas">Reparacion de Bloques de Valvulas</option>
								<option value="Reparacion de COMSOC">Reparacion de COMSOC</option>
								<option value="Reparacion de tarjetas servo">Reparacion de tarjetas servo</option>
								<option value="Reparacion de paradas de emergencias">Reparacion de paradas de emergencias</option>
								<option value="Reparacion de servo tijeras">Reparacion de servo tijeras</option>
								<option value="Reparacion de servo scoop">Reparacion de servo scoop</option>
								<option value="Reparacion de cable de Valvulas ">Reparacion de cable de Valvulas </option>
								 <option value="Reparacion de Cables motores servo ">Reparacion de Cables motores servo</option> 
								 <option value="Reparacion y MTTO de valvulas ">Reparacion y MTTO de valvulas</option>
								 <option value="Reparacion de inversores ">Reparacion de inversores</option>
								 <option value="Reparcion de tarjetas reject laser">Reparcion de tarjetas reject laser </option>
								 <option value="Reparacion Back-up y sofwears silos">Reparacion Back-up y sofwears silos</option>
								 <option value="Reparacion  carrito dispenzador  de marco y cartones">Reparacion  carrito dispenzador  de marco y cartones</option>
								 <option value="Chequeo t-car">Chequeo t-car</option>
								 <option value="Chqueo paletizadores">Chqueo paletizadores</option>
								 <option value="Chqueo flejadora">Chqueo flejadora</option>
								 <option value="Chqueo forradora">Chqueo forradora</option>
								 <option value="Chequeo alimentadores">Chequeo alimentadores</option>
								 <option value="Chequeo alimetadores">Chequeo alimentadores</option>
								 <option value="Chequeo horno">Chequeo horno</option>
								 <option value="Chequeo archas">Chequeo archas</option>
								 <option value="Chequeo maquinas IS">Chequeo maquina IS</option>
								 <option value="Chequeo archas deco">Chequeo archas deco</option>
								 <option value="Chequeo silo">Chequeo silo</option>
								 <option value="Otros">Otros</option>
								 
								 
								 
								 </select>
					<br />
					<br />
					<label for="descripcion" >Descripcion</label>
					<textarea class="k-textbox"  cols="54" rows="4" name="observacion" id="observacion" ></textarea>
					<br />
					<input class="k-button" type="submit" name="botonEnviar" id="botonEnviar" value="Ingresar" /></td>
				</fieldset>
				</form>
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

