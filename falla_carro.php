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

$("#turno").kendoComboBox();
$("#maquina").kendoComboBox();
$("#grupo").kendoComboBox();
fecha ();
check ();

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


function check (){	
		
$('#produccion').click(function(){
    if($(this).is(':checked')){
        $('#falla').show("slow");
    } else {
        $('#falla').hide("slow");
    }
});
};

$(document).ready(function(){
	

  $("#hide").click(function(){
    $("#element").hide();
  });
  $("#show").click(function(){
    $("#element").show();
  });
 
 
 
  });


</script>
<title>..::Historial::..</title>
</head>
<body>
	<div id="cuerpo">
		<div id="contenido">
            <form name="form" action="insertar_carro.php" method="GET">
				<fieldset>
					<legend>Reporte Carro</legend>
					
					
					<label for="tecnico">Tecnico</label>
							<label name="tecnico" id="tecnico" /><?php echo $Nombre ?> <?php echo $Apellido ?></label>
							<br />
							<br />
							<label for="fecha">Fecha</label>
							<label name="fecha" id="fecha" /></label>
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
							
							
							<br />
							<label for="grupo">Grupo</label>
							<select class="k-ComboBox" name="grupo" id="grupo" size="1">
								<option value="0" selected="selected">Escoge</option>
								<option value="A">A</option>
								<option value="B">B</option>
								<option value="C">C</option>
								<option value="D">D</option>
								<option value="Z">Z</option>
							</select> 
							<br/>
							
					<br />
					<label for="maquina">maquina</label>
					<select class="k-ComboBox" name="maquina" id="maquina" size="1" >
						<option value="0" selected="selected">Escoge</option>
						<option value="A">A</option>
						<option value="B">B</option>
						<option value="C">Decoracion</option>
						
						
					</select>
							<br />
							<br />
							<label for="produccion">Se perdio Produccion? </label>
							<input type="checkbox" tabindex="4" id="produccion" name="produccion" value="1">
							<br />
							<br />
							<div class="oculto" id="falla">
							<label>Tiempo de Falla en minutos</label>
							<input class="k-input" type="text" id="tiempo_perdido" name="tiempo_perdido" size="5"/><br/>
							</div>
					<br />
					<label for="des_falla">Descripcion de la Falla</label>
					<textarea class="k-textbox" cols="50" rows="2" name="des_falla" id="des_falla" ></textarea>
					<br />
					<label for="diag_falla">Diagnostico de la Falla</label>
					<textarea class="k-textbox" cols="50" rows="2" name="diag_falla" id="diag_falla" ></textarea>
					<br />
					<label for="accion_correc">Accion Correctiva</label>
					<textarea class="k-textbox" cols="50" rows="2" name="accion_correc" id="accion_correc"></textarea>
					<br />
					<label for="observaciones">Observaciones y comentarios</label>
					<textarea class="k-textbox" cols="50" rows="2" name="observaciones" id="observaciones" ></textarea>
					<br />					
					<input class="k-button" type="submit" name="botonEnviar" id="botonEnviar" value="Ingresar" tabindex="9" />
					
				</fieldset>
				</form>
        </div>
    </div>

</body>
<?php 
	}else{
		echo "<script type='text/javascript'>
		alert('Usted no esta logueado');
		window.location='logeo.html';
		</script>";
	}
?>
</html>