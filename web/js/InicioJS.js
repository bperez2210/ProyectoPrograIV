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
});

function logueo(){
    mostrarModal("myModal", "Espere por favor..", "Cargando información de Usuario");
}

function registro(){
    mostrarModal("myModal", "Espere por favor..", "Registrando información de Usuario");
}


