$(document).on('submit', '#login' , function(event) {
	event.preventDefault();

	$.ajax({
		url: 'login.php',
		type: 'POST',
		dataType: 'JSON',
		data: $(this).serialize(),
		beforeSend: function(){
			$('#botonlg').val('Validando ...');
			$('#botonlg').prop('disabled', true);

		}

	})
	.done(function(respuesta){

		console.log(respuesta);
		if (!respuesta.error) {
			if (respuesta.tipo == 'admin') {
				location.href = 'admin/';

			}
			else if (respuesta.tipo == 'usuario'){
				location.href = 'usuario/';	
				}

		}else{

			$("#error").modal();
			$('#botonlg').val('Iniciar Sesion');
			$('#botonlg').prop('disabled',false);
			$("#Usuario").val('');
			$("#pwd").val('');
		}

	})
	.fail(function(resp){

		console.log(resp.responseText);
	})
	.always(function(){

		console.log("Completo");
	})
})