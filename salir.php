<<<<<<< HEAD
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
=======
<?php 
session_start();

session_destroy();

header('Location: index.php');

>>>>>>> e123bf3af129d98318ee796b564b96c170d8e0d9
?>