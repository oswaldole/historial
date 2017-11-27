<?php 
  session_start ();

  if(isset($_SESSION['usuario'])){

    if ($_SESSION['usuario']['Grupo'] == "admin") {
      header('Location: admin/');

    } else if ($_SESSION['usuario']['Grupo'] == "usuario"){
      header('Location: usuario/');
    }   
   }
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Historial</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header text-center">Historial Sistemas Electronicos</div>
      <div class="card-body">
        <form id="login">
          <div class="form-group">
            <label for="usuario">Ficha</label>
            <input type="input" class="form-control" name="Usuario" id="Usuario" placeholder="Numero De Ficha" pattern="[0-9]{1,20}" required>
          </div>
          <div class="form-group">
            <label for="pwd">Cedula</label>
            <input class="form-control" type="password" name="pwd" id="pwd" placeholder="Numero de Cedula" pattern="[0-9]{1,20}" required>
            <br><hr>
          </div>
          <input type="submit" class="btn btn-primary btn-block" id="botonlg" value="Iniciar Sesion" />
        </form>
      </div>
    </div>
  </div>

  <div class="modal fade" id="error" role="dialog">
    <div class="modal-dialog">
       <div class="modal-content">
          <div class="modal-body">
            <p>Datos Invalidos Por Favor Ingrese los valores nuevamente</p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
          </div>
        </div>
      </div>
    </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
  <!-- Ajax para logeo -->
  <script src="js/ajax-login.js"></script>
</body>

</html>
