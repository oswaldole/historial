<?php 
	session_start();
	if ($_SESSION["ficha"])
	{
		require_once ("nombre.php")
	?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<LINK REL="STYLESHEET" TYPE="text/css" href="estilo.css">
<title>..::Historial::..</title>
</head>
<body>
<div id="cuerpo">
		<div id="contenido">
        	<h3 id="titulo1">BIENVENIDO</h3>
			<P>Bienvenido <?php echo $Nombre ?> <?php echo $Apellido?> , Esta pagina da acceso al sistema de reportes e historial de las actividades, por favor elija una de las opciones en el menu para continuar </P>
        
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