/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(function () {
    //Genera el datapicker
    $('#dpFechaNacimiento').datetimepicker({
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 2,
        forceParse: 0
    });
});

$(document).ready(function () {
    $("#mesajeResult").removeClass();
    $("#mesajeResult").hide();
});

function logueo(){
    mostrarModal("myModal", "Espere por favor..", "Cargando información de Usuario");
    $.ajax({
       url: 'UsuariosServlet',
       data: {
           accion: "loginUsuario",
           nombreUsuario: $("#user_sign").val(),
           contrasena: $("#contras_sign").val()
       },
       error: function () { //si existe un error en la respuesta del ajax
                mostrarMensaje("alert alert-danger", "Se genero un error, contacte al administrador (Error del ajax)", "Error!");
       },
       success: function (data) { //si todo esta correcto en la respuesta del ajax, la respuesta queda en el data
            // se cambia el mensaje del modal por la respuesta del ajax
            ocultarModal("myModal");
            var respuestaTxt = data.substring(2);
            var tipoRespuesta = data.substring(0, 2);
            if (tipoRespuesta === "E~") {
                mostrarMensaje("alert alert-danger", respuestaTxt , "Error!");
            }else{
                window.location.pathname = respuestaTxt;
            }
        },
        type: 'POST',
        dataType: "text"
    });
}

function registro(){
    mostrarModal("myModal", "Espere por favor..", "Registrando información de Usuario");
}

//******************************************************************************
//******************************************************************************

function mostrarMensaje(classCss, msg, neg) {
    //se le eliminan los estilos al mensaje
    $("#mesajeResult").removeClass();

    //se setean los estilos
    $("#mesajeResult").addClass(classCss);

    //se muestra la capa del mensaje con los parametros del metodo
    $("#mesajeResult").fadeIn("slow");
    $("#mesajeResultNeg").html(neg);
    $("#mesajeResultText").html(msg);
    $("#mesajeResultText").html(msg);
}
