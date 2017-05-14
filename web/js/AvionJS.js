/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function (){
    consultarAviones(1);
});


function consultarAviones(numpag) {
    mostrarModal("myModal", "Espere por favor..", "Consultando la información de Aviones en la base de datos");
    //Se envia la información por ajax
    $.ajax({
        url: '../../AvionServlet',
        data: {
            accion: "consultarAviones"
        },
        error: function () { //si existe un error en la respuesta del ajax
            alert("Se presento un error a la hora de cargar la información de los aviones en la base de datos");
        },
        success: function (data) { //si todo esta correcto en la respuesta del ajax, la respuesta queda en el data
            ocultarModal("myModal");
            dibujarTablaAvi(numpag,data);
            // se oculta el modal esta funcion se encuentra en el utils.js
        },
        type: 'POST',
        dataType: "json"
    });
}

//******************************************************************************
//******************************************************************************
//METODOS DE ADMINISTRADOR, PARA MANTENIMIENTO DE USUARIOS
//******************************************************************************
//******************************************************************************



function dibujarTablaAvi(numpag,dataJson) {
    //limpia la información que tiene la tabla
    $("#tablaAviones").html(""); 
    
    //muestra el enzabezado de la tabla
    var head = $("<thead />");
    var row = $("<tr />");
    head.append(row);
    $("#tablaAviones").append(head); 
    row.append($("<th><b>ID_Avion</b></th>"));
    row.append($("<th><b>ID_Aerolinea</b></th>"));
    row.append($("<th><b>MARCA</b></th>"));
    row.append($("<th><b>MODELO</b></th>"));
    row.append($("<th><b>AÑO</b></th>"));
    row.append($("<th><b>CANT_PASAJEROS</b></th>"));
    row.append($("<th><b>ASI_FILAS</b></th>"));
    row.append($("<th><b>CANT_FILAS</b></th>"));
    row.append($("<th><b>FECHA_INGRESO</b></th>"));
    row.append($("<th><b>AGREGADO</b></th>"));
    row.append($("<th><b>ACCIÓN</th>"));
    
    //carga la tabla con el json devuelto
    var cont = 0;
    var i = 10 * (numpag-1);
    for (; i < dataJson.length && (cont<10); i++, cont++) {
        dibujarFilaAvi(dataJson[i]);
    }
}

function dibujarFilaAvi(rowData) {
    //Cuando dibuja la tabla en cada boton se le agrega la funcionalidad de cargar o eliminar la informacion
    //de una persona
    
    var row = $('<tr />');
    $("#tablaAviones").append(row); 
    row.append($("<td>" + rowData.pkaIdAvion + "</td>"));
    row.append($("<td>" + rowData.aerolinea + "</td>"));
    row.append($("<td>" + rowData.anno + "</td>"));
    row.append($("<td>" + rowData.modelo+ "</td>"));
    row.append($("<td>" + rowData.marca+ "</td>"));
    row.append($("<td>" + rowData.cantPasajeros+ "</td>"));
    row.append($("<td>" + rowData.cantAsientosPorFila+ "</td>"));
    row.append($("<td>" + rowData.cantFilas+ "</td>"));
    row.append($("<td>" + rowData.ultimaFecha + "</td>"));
    row.append($("<td>" + rowData.ultimoUsuario + "</td>"));
    row.append($('<td><button type="button" class="btn btn-default btn-xs" aria-label="Left Align" onclick="alert(\'modificar\');">'+
                        '<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>'+
                    '</button>'+
                    '<button type="button" class="btn btn-default btn-xs" aria-label="Left Align" onclick="validaEliminacion('+ "'"+ rowData.nombre + "'" +','+rowData.pkCedula+')" data-target="#confirm-delete" data-toggle="modal">'+
                        '<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>'+
                    '</button></td>'));

}
