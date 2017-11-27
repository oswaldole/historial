$("document").ready(function(){
    
    var d = new Date();
    var month = d.getMonth()+1;
    var day = d.getDate();

    var fecha = (day<10 ? '0' : '') + day + '/' +
        (month<10 ? '0' : '') + month + '/' +
        d.getFullYear();
                 
    var data = $('#Fecha').val(fecha);
});

$( ".calculo" ).change(function() {            

    if ($("#lec_final").val() !="" && $("#lec_inicial").val() !="" ) {
      var c_agua = (($("#lec_final").val() - $("#lec_inicial").val())*3.78541) ;
      $("#c_agua").val(Math.round(c_agua *100) /100);

      if ($("#biosol").val() !="" ) {
        var ratio = ( c_agua / $("#biosol").val())*1000;
        $("#ratio").val(Math.round(ratio *100) /100);        
      }
    }

   });
