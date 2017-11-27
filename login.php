<?php

if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
	
	require_once 'link.php';
	sleep(1);
	session_start();

	$link->set_charset('utf8');

	$user = $link->real_escape_string($_POST['Usuario']);
	$pass = $link->real_escape_string($_POST['pwd']);

	if ($nueva_consulta = $link->prepare("Select * from usuario where num_ficha = ? and pass = ? ")) {

		$nueva_consulta->bind_param('ss', $user, $pass);

		$nueva_consulta->execute();

		$resultado = $nueva_consulta->get_result();

		if ($resultado->num_rows == 1) {
				$datos = $resultado->fetch_assoc();

				$_SESSION['usuario'] = $datos;
				echo json_encode(array('error' => false,'tipo' => $datos['Grupo'] ));
			}else{

				echo json_encode(array('error' => true ));
			}	
			$nueva_consulta->close();
	}
	$link->close();
}

?>