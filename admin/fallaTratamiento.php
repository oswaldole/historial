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

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="index.php">Historial</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="Acordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Inicio">
          <a class="nav-link" href="index.php">
            <i class="fa fa-fw fa-home"></i>
            <span class="nav-link-text">Inicio</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Rutina">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#componentesRutina" data-parent="#Acordion">
            <i class="fa fa-fw fa-clock-o"></i>
            <span class="nav-link-text">Rutina</span>
          </a>
          <ul class="sidenav-second-level collapse" id="componentesRutina">
            <li>
              <a href="rutinaAguaTijeras.php">Agua de Tijeras</a>
            </li>
            <li>
              <a href="rutinaArchas.php">Archas</a>
            </li>
            <li>
              <a href="rutinaChiller.php">Sistema Chiller</a>
            </li>
          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Falla Zona Caliente">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#componentesZonaC" data-parent="#Acordion">
            <i class="fa fa-fw fa-fire"></i>
            <span class="nav-link-text">Falla Zona Caliente</span>
          </a>
          <ul class="sidenav-second-level collapse" id="componentesZonaC">
            <li>
              <a href="fallaSilo.php">Silo</a>
            </li>
            <li>
              <a href="fallaHornos.php">Hornos</a>
            </li>
            <li>
              <a href="fallaAlimentadores.php">Alimentadores</a>
            </li>
            <li>
              <a href="fallaIs.php">Maquina IS</a>
            </li>
            <li>
              <a href="fallaAguaTijeras.php">Agua de Tijeras</a>
            </li>
            <li>
              <a href="fallaHornosPre.php">Hornos Precalentamiento</a>
            </li>
            <li>
              <a href="fallaArchasFormacion.php">Archas de Formacion</a>
            </li>
          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Falla Zona Fria">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#componentesZonaF" data-parent="#Acordion">
            <i class="fa fa-fw fa-leaf"></i>
            <span class="nav-link-text">Falla Zona Fria</span>
          </a>
          <ul class="sidenav-second-level collapse" id="componentesZonaF">
            <li>
              <a href="fallaTransportadoras.php">Transportadoras</a>
            </li>
            <li>
              <a href="fallaPaletizador.php">Paletizador</a>
            </li>
            <li>
              <a href="fallaDespaletizador.php">Despaletizador</a>
            </li>
            <li>
              <a href="fallaTratamiento.php">Tratamiento</a>
            </li>
            <li>
              <a href="fallaDecoradora.php">Maquina Decoradora</a>
            </li>
            <li>
              <a href="fallaTwister.php">Twister</a>
            </li>
            <li>
              <a href="fallaFlejadora.php">Flejadora</a>
            </li>
            <li>
              <a href="fallaArchasDecoracion.php">Archa de Decoracion</a>
            </li>
            <li>
              <a href="fallaTcar.php">TransferCar</a>
            </li>
            <li>
              <a href="fallaEtiquetadora.php">Etiquetadora</a>
            </li>
          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Trabajos del Taller">
          <a class="nav-link" href="trabajosDeTaller.php">
            <i class="fa fa-fw fa-wrench"></i>
            <span class="nav-link-text">Trabajos de Taller </span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Reportes">
          <a class="nav-link" href="reportes.php">
            <i class="fa fa-fw fa-table"></i>
            <span class="nav-link-text">Reportes</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Archas">
          <a class="nav-link" href="archas.php">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text">Archas</span>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-envelope"></i>
            <span class="d-lg-none">Messages
              <span class="badge badge-pill badge-primary">12 New</span>
            </span>
            <span class="indicator text-primary d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
            <h6 class="dropdown-header">New Messages:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>David Miller</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">Hey there! This new version of SB Admin is pretty awesome! These messages clip off when they reach the end of the box so they don't overflow over to the sides!</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>Jane Smith</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">I was wondering if you could meet for an appointment at 3:00 instead of 4:00. Thanks!</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>John Doe</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">I've sent the final files over to you for review. When you're able to sign off of them let me know and we can discuss distribution.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all messages</a>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>Salir</a>
        </li>
      </ul>
    </div>
  </nav>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.php">Inicio</a>
        </li>
        <li class="breadcrumb-item">
          <a href="#">Falla Zona Fria</a>
        </li>
        <li class="breadcrumb-item active">Tratamiento</li>
      </ol>
      <div class="row">
        <div class="col-lg-12">
          <div class="card mb-3">
            <div class="card-header">
              <i class="fa fa-leaf"> Falla Tratamiento</i>
            </div>
            <div class="card-body text-center">
              <form class="form-horizontal" id="rutina_agua">
                <div class="row mb-3">
                  <label class="control-label col-sm-2" for="Tecnico">Tecnico</label>
                  <div class="col-sm-4">
                    <input class="form-control" id="tecnico" type="text" name="tecnico" disabled value="Oswaldo Lezama">
                  </div>
                  <label class="control-label col-sm-2" for="Fecha">Fecha</label>
                  <div class="col-sm-4">
                    <input class="form-control" id="Fecha" type="text" name="Fecha" disabled value="">
                  </div>
                </div>
                <div class="row mb-3">
                  <label class="control-label col-sm-2" for="turno">Turno</label>
                  <div class="col-sm-4">
                    <select class="form-control" id="turno" name="turno">
                      <option value="0" selected>Seleccione</option>
                      <option value="1">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="Z">Z</option>
                    </select>
                  </div>
                  <label class="control-label col-sm-2" for="grupo">Grupo</label>
                  <div class="col-sm-4">
                    <select class="form-control" id="grupo" name="grupo">
                      <option value="0" selected>Seleccione</option>
                      <option value="A">A</option>
                      <option value="B">B</option>
                      <option value="C">C</option>
                      <option value="D">D</option>
                      <option value="Z">Z </option>
                    </select>
                  </div>
                </div>
                <div class="row mb-3">
                  <label class="control-label col-sm-2" for="tratamiento">Tratamiento</label>
                  <div class="col-sm-4">
                    <select class="form-control" id="tratamiento" name="tratamiento">
                      <option value="0" selected>Seleccione</option>
                      <option value="A1">A1</option>
                      <option value="B1">B1</option>
                      <option value="C1">C1</option>
                      <option value="C2">C2</option>
                      <option value="C3">C3</option>
                      <option value="D1">D1</option>
                      <option value="D1">D2 </option>
                      <option value="E1">E1</option>
                      <option value="E1">E2</option>
                      <option value="E1">E3</option>
                      <option value="F1">F1</option>
                    </select>
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="descripcion">Descripcion de la falla:</label>
                  <textarea class="form-control" id="descripcion" name="descripcion" rows="2"></textarea>
                </div>
                <div class="row mb-3">
                  <label for="diagnostico">Diagnostico de la falla:</label>
                  <textarea class="form-control" id="diagnostico" name="diagnostico" rows="2"></textarea>
                </div>
                <div class="row mb-3">
                  <label for="accion">Accion Correctiva:</label>
                  <textarea class="form-control" id="accion" name="accion" rows="2"></textarea>
                </div>
                <div class="row mb-3">
                  <label for="comentario">Comentario:</label>
                  <textarea class="form-control" id="comentario" name="comentario" rows="2"></textarea>
                </div>
                <div class="row mb-3">
                  <div class="col-sm-12 text-right">
                    <input class="btn btn-primary" id="enviar" type="button" value="Enviar">
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Intendencia de Sistemas Electricos y Electronicos</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">¿Ya terminaste?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Selecciona Salir para cerrar tu Cesion</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
            <a class="btn btn-primary" href="../salir.php">Salir</a>
          </div>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
    <!-- Custom scripts para Agua de Tijeras-->
    <script src="js/sb-admin-fecha.min.js"></script>
  </div>
</body>

</html>
