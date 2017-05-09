<?php 

session_start ();

unset($_SESSION["ficha"]);

unset($ficha);


echo "<script type='text/javascript'>
top.frames['contenido'].location.href = 'logeo.html'; 
</script>";

echo "<script type='text/javascript'>
top.frames['menu'].location.href = 'menu.html'; 
</script>";
?>