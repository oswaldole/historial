	//*************************************************************************************************************************************
	//Limpia Campos del formulario	
	
	function clearField (obj){
		if (obj.defaultValue == obj.value) obj.value = ''}
		
	//**************************************************************************************************************************************
	//valida números
	function valida_numero(numero){
		if (!/^([0-9])*$/.test(numero)){
			return false;
		}else{
			return true;
		}
	}
	
	//***************************************************************************************************************************************
	//Valida correo
	function valida_correo(correo) {
		if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(correo)){
			return (true)
		} else {
			return (false);
		}
	}
	
	//****************************************************************************************************************************************
	//función para validar cadenas de solo letras
	function valida_cadena(texto){
		var RegExPattern = "[1-9]";
		if (texto.match(RegExPattern)){
		 	return false;
		}else{
		 	return true;
		}
	}
	
	//*****************************************************************************************************************************************
	//validacion formulario ingresar empresa
	
	function validar_empresa (){
		var form = document.form;
		
		if (form.nombre.value == 0){
			alert("Por favor ingrese el nombre de la empresa");
			form.nombre.value = "";
			form.nombre.focus();
			return false;
		}
		if (form.direccion.value == 0){
			alert("Por favor ingrese el direccion de la empresa");
			form.direccion.value = "";
			form.direccion.focus();
			return false;
		}
		if (form.telefono.value == 0){
			alert("Por favor ingrese el telefono de la empresa");
			form.telefono.value = "";
			form.telefono.focus();
			return false;
		}
		if (valida_numero(form.telefono.value)== false){
			alert("Por favor solo ingrese numeros en el campo telefono");
			form.telefono.value = "";
			form.telefono.focus();
			return false;
		}
		
		document.form.submit();
	}
	
	//***************************************************************************************************************************************
	//validacion formulario ingresar alumno
	
	function validar_alumno (){
		var form = document.form;
		
		if (form.cedula.value == 0){
			alert("Por favor ingrese la cedula del alumno");
			form.cedula.value = "";
			form.cedula.focus();
			return false;
		}
		if (valida_numero(form.cedula.value)== false){
			alert("Por favor solo ingrese numeros en el cedula");
			form.cedula.value = "";
			form.cedula.focus();
			return false;
		}
		if (form.nombre.value == 0){
			alert("Por favor ingrese el nombre del alumno");
			form.nombre.value = "";
			form.nombre.focus();
			return false;
		}
		if (valida_cadena(form.nombre.value)== false){
			alert("Por favor solo ingrese letras en el nombre");
			form.nombre.value = "";
			form.nombre.focus();
			return false;
		}
		if (form.apellido.value == 0){
			alert("Por favor ingrese el apellido del alumno");
			form.apellido.value = "";
			form.apellido.focus();
			return false;
		}
		if (valida_cadena(form.apellido.value)== false){
			alert("Por favor solo ingrese letras en el apellido");
			form.apellido.value = "";
			form.apellido.focus();
			return false;
		}
		if (form.uc.value == 0){
			alert("Por favor ingrese el unidades de credito");
			form.uc.value = "";
			form.uc.focus();
			return false;
		}
		if (valida_numero(form.uc.value)== false){//aqui falta la validacion de unidades de credito minimas 
			alert("Por favor solo ingrese numeros en el campo unidades de credito");
			form.uc.value = "";
			form.uc.focus();
			return false;
		}
		if (form.carrera.value == 0){
			alert("Por favor seleccione una carrera");
			form.carrera.focus();
			return false;
		}
		if (form.telefono.value == 0){
			alert("Por favor ingrese el telefono del alumno");
			form.telefono.value = "";
			form.telefono.focus();
			return false;
		}
		if (valida_numero(form.telefono.value)== false){
			alert("Por favor solo ingrese numeros en el campo telefono");
			form.telefono.value = "";
			form.telefono.focus();
			return false;
		}
		if (form.correo.value == 0){
			alert("Por favor ingrese direccion de correo");
			form.correo.value="";
			form.correo.focus();
			return false;
		}
		if (valida_correo(form.correo.value )== false){
			alert ("Por favor ingrese direccion de correo valida");
			form.correo.value="";
			form.correo.focus();
			return false;
		}
		document.form.submit();
	}

	//***************************************************************************************************************************************
	//validacion formulario ingresar Profesor
	
	function validar_profesor (){
		var form = document.form;
		
		if (form.cedula.value == 0){
			alert("Por favor ingrese la cedula del Profesor");
			form.cedula.value = "";
			form.cedula.focus();
			return false;
		}
		if (valida_numero(form.cedula.value)== false){
			alert("Por favor solo ingrese numeros en el cedula");
			form.cedula.value = "";
			form.cedula.focus();
			return false;
		}
		if (form.nombre.value == 0){
			alert("Por favor ingrese el nombre del Profesor");
			form.nombre.value = "";
			form.nombre.focus();
			return false;
		}
		if (valida_cadena(form.nombre.value)== false){
			alert("Por favor solo ingrese letras en el nombre");
			form.nombre.value = "";
			form.nombre.focus();
			return false;
		}
		if (form.apellido.value == 0){
			alert("Por favor ingrese el apellido del Profesor");
			form.apellido.value = "";
			form.apellido.focus();
			return false;
		}
		if (valida_cadena(form.apellido.value)== false){
			alert("Por favor solo ingrese letras en el apellido");
			form.apellido.value = "";
			form.apellido.focus();
			return false;
		}
		if (form.alumnos.value == 0){
			alert("Por favor ingrese el numero de alumnos asociados");
			form.alumnos.value = "";
			form.alumnos.focus();
			return false;
		}
		if (valida_numero(form.alumnos.value)== false){
			alert("Por favor solo ingrese numeros en el campo alumnos asociados");
			form.alumnos.value = "";
			form.alumnos.focus();
			return false;
		}
		if (form.carrera.value == 0){
			alert("Por favor seleccione una carrera");
			form.carrera.focus();
			return false;
		}
		if (form.telefono.value == 0){
			alert("Por favor ingrese el telefono del Profesor");
			form.telefono.value = "";
			form.telefono.focus();
			return false;
		}
		if (valida_numero(form.telefono.value)== false){
			alert("Por favor solo ingrese numeros en el campo telefono");
			form.telefono.value = "";
			form.telefono.focus();
			return false;
		}
		if (form.correo.value == 0){
			alert("Por favor ingrese direccion de correo");
			form.correo.value="";
			form.correo.focus();
			return false;
		}
		if (valida_correo(form.correo.value )== false){
			alert ("Por favor ingrese direccion de correo valida");
			form.correo.value="";
			form.correo.focus();
			return false;
		}
		document.form.submit();
	}
	
	//***************************************************************************************************************************************
	//validacion formulario ingresar Trabajo
	
	function validar_trabajo (){
		var form = document.form;
		
		if (form.cedula_alum.value == 0){
			alert("Por favor ingrese la cedula del alumno");
			form.cedula_alum.value = "";
			form.cedula_alum.focus();
			return false;
		}
		if (valida_numero(form.cedula_alum.value)== false){
			alert("Por favor solo ingrese numeros en el cedula");
			form.cedula_alum.value = "";
			form.cedula_alum.focus();
			return false;
		}
		if (form.ci_tut_aca.value == 0){
			alert("Por favor ingrese la cedula del tutor");
			form.ci_tut_aca.value = "";
			form.ci_tut_aca.focus();
			return false;
		}
		if (valida_numero(form.ci_tut_aca.value)== false){
			alert("Por favor solo ingrese numeros en el cedula");
			form.ci_tut_aca.value = "";
			form.ci_tut_aca.focus();
			return false;
		}
		if ((form.fecha_ini.value == 0)||(form.fecha_ini.value == "AAAA-MM-DD")){
			alert("Por favor ingrese fecha de incio de pasantia");
			form.fecha_ini.value = "";
			form.fecha_ini.focus();
			return false;
		}
	/*	if ((form.fecha_final.value == 0)||(form.fecha_final.value == "AAAA-MM-DD")){
			alert("Por favor ingrese la fecha de conclucion de pasantia");
			form.fecha_final.value = "";
			form.fecha_final.focus();
			return false;
		}*/
		if (form.cod_emp.value == 0){
			alert("Por favor ingrese el codigo de la empresa");
			form.cod_emp.value = "";
			form.cod_emp.focus();
			return false;
		}
		if (valida_numero(form.cod_emp.value)== false){
			alert("Por favor solo ingrese numeros en el codigo de la empresa");
			form.cod_emp.value = "";
			form.cod_emp.focus();
			return false;
		}
		if (form.tipo_trabajo.value== 0){
			alert ("Seleccione el tipo de trabajo");
			form.tipo_trabajo.focus();
			return false;
		}
		if (form.titulo.value == 0){
			alert ("Por favor colque el titulo del trabajo");
			form.titulo.value == "";
			form.titulo.focus();
			return false;
		}
		document.form.submit();
	}
	
	//***************************************************************************************************************************************
	//Para mostrar el menu una vez que se deslogea sin AJAX
	
	function inicio(){
		top.frames["menu"].location.href = "menu.html"; 
	};
	
	//***************************************************************************************************************************************
	//Eliminacion de registro en Alumno
	
	function eliminar_alumno(id){
		if(confirm("Realmente desea eliminar el registro?") ){
			window.location = "eliminar_alumno.php?ci_alum="+id;
		}
	}
	
	//***************************************************************************************************************************************
	//Eliminacion de registro en Profesor
	
	function eliminar_profesor(id){
		if(confirm("Realmente desea eliminar el registro?") ){
			window.location = "eliminar_profesor.php?ci_prof="+id;
		}
	}	//***************************************************************************************************************************************
	//validacion formulario ingresar Trabajo
	
	function eliminar_trabajo(id){
		if(confirm("Realmente desea eliminar el registro?") ){
			window.location = "eliminar_trabajo.php?cod_trabajo="+id;
		}
	}	//***************************************************************************************************************************************
	//validacion formulario ingresar Empresa
	
	function eliminar_empresa(id){
		if(confirm("Realmente desea eliminar el registro?") ){
			window.location = "eliminar_empresa.php?cod_empresa="+id;
		}
	}
	//************************************************************************************************************************************************


