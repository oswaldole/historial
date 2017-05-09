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
$("#cuarto").kendoComboBox();
$("#bomba").kendoComboBox();
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
            <form name="form" action="insertar_gas.php" method="GET">
				<fieldset>
					<legend>Reporte Rutinario gas</legend>
					
					
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
					<label for="cuarto">Cuarto</label>
					<select class="k-ComboBox" name="cuarto" id="cuarto" size="1" >
						<option value="0" selected="selected">Escoge</option>
						<option value="ABC">ABC</option>
						<option value="DEF">DEF</option>
					</select>
					<br />
					<label for="bomba">Bomba</label>
					<select class="k-ComboBox" name="bomba" id="bomba" size="1" >
						<option value="0" selected="selected">Escoge</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
					</select>
					<br />
					<label for="lec_inicial">Lectura Inicial</label>
					<input class="k-input" type="text" name="lec_inicial" id="lec_inicial" size="15" maxlength="12"  />
					<br />
					<label for="lec_final" >Lectura Final</label>
					<input class="k-input" type="text" name="lec_final" id="lec_final" size="15" maxlength="12"  />
					<br />					
					<label for="cant_aceite">Cantidad de Aceite</label>
					<input class="k-input" type="text" name="cant_aceite" id="cant_aceite" size="15" maxlength="12" />
					<br />
					<label for="cant_agua">Cantidad de Agua</label>
					<input class="k-input" type="text" name="cant_agua" id="cant_agua" size="15" maxlength="12"  />
					<br />
					<label for="ratio">Ratio</label>
					<input class="k-input" type="text" name="ratio" id="ratio" size="15" maxlength="12"  />
					<br />
					<label for="Observacion" >Observacion</label>
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

