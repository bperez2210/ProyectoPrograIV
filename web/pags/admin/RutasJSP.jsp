<%-- 
    Document   : indexAdmin
    Created on : 06/05/2017, 08:06:52 PM
    Author     : lobo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>ReservacionesCR</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="../../css/estilos.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css?family=Satisfy" rel="stylesheet">
        <script src="../../js/RutasJS.js" type="text/javascript"></script>
        <script src="../../js/utils.js" type="text/javascript"></script>
        
    </head>
    <body>
        <!-- ********************************************************** -->
        <!-- MODAL PARA MOSTRAR MENSAJES  -->
        <!-- ********************************************************** -->

        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" id="myModalTitle">Modal Header</h4>
                    </div>
                    <div class="modal-body" id="myModalMessage">
                        <p>This is a small modal.</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- ********************************************************** -->
        <!-- ENCABEZADO -->
        <!-- ********************************************************** -->
        <div id="encabezado">
            <h3>Aero-Admin</h3>
            <img src="../../imagenes/inicio/avion.gif" alt=""/>
        </div>

        <!-- ********************************************************** -->
        <!-- MENU -->
        <!-- ********************************************************** -->

        <div id="navBar">
            <nav class="navbar navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Desplegar navegación</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">Administrador</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" >
                                Rutas <b class="caret"></b>
                            </a>
                            <ul class="navbar-nav navbar-inverse dropdown-menu">
                                <li><a href="UsuariosJSP.jsp">Usuarios</a></li>
                                <li><a href="AvionesJSP.jsp">Aviones</a></li>
                                <li><a href="BoletosJSP.jsp">Boletos</a></li>
                                <li><a href="AerolineasJSP.jsp">Aerolineas</a></li>
                            </ul>
                        </li>
                    </ul>             
                    <div class="nav navbar-nav navbar-right" id="menuLogSign">
                        <button type="button" class="btn btn-danger glyphicon glyphicon-log-in cerrar"><a href="../../InicioJSP.jsp"> Cerrar sesión</a></button>
                    </div>
                </div>
            </nav> <!--Navbar-->
        </div>

        <!-- ********************************************************** -->
        <!-- Tablas -->
        <!-- ********************************************************** -->
        
        <div align="center" id="panelRutas">
            <div class="panel panel-success">
                <div class="panel-heading">
                <div class="col-sm-12">
                        <form role="form" onsubmit="return false;" id="formRutas" class="form-horizontal centered">
                            <div class="form-group" id="groupNombreAero">
                                <div class="col-sm-4" style="text-align: right; vertical-align: middle;">
                                    <p><b>Buscar ruta por id:</b></p>
                                </div>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="buscarRuta" placeholder="Digite el id de la ruta">
                                </div>
                                <div class="col-sm-4">
                                    <button type="button" onclick="busquedaPersonas()" class="btn btn-info centered">
                                        Buscar <span class="glyphicon glyphicon-search"></span>
                                    </button>
                                    <button type="button" class="btn btn-info centered" data-toggle="modal" data-target="#myModalFormulario">
                                        Agregar <span class="glyphicon glyphicon-plus"  ></span>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="panel-body">
                    <table class="table table-hover table-condensed" id="tablaRutas">

                    </table>
                </div>
                <div class="panel-footer">
                    <ul class="pagination justify-content-center" id="paginacionOpcRutas"></ul>
                    <br>
                    Nota: Acciones validas dependeran del rol del usuario
                </div>
            </div>
        </div> 
        
        <!-- ********************************************************** -->
        <!-- formulario -->
        <!-- ********************************************************** -->
        
        <div class="modal fade" id="myModalFormulario" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" id="myModalTitle">Insertar Rutas
                    </div>
                    <div class="modal-body" id="myModalMessage">
                        <form role="form" onsubmit="return false;" id="formaddRutas">
                            <div class="form-group" id="groupidRuta">
                                <label for="iadRuta">ID_Ruta:</label>
                                <input type="text" class="form-control" id="idRuta" autofocus="true" placeholder="ID_Ruta">
                            </div>

                            <div class="form-group" id="groupidAvion">
                                <label for="idAvion">ID_Avion:</label>
                                <input type="text" class="form-control" id="idAvion" placeholder="ID_Avion" >
                            </div>

                            <div class="form-group" id="groupOrigen">
                                <label for="origen">Origen:</label>
                                <input type="text" class="form-control" id="apellido1" placeholder="Origen">
                            </div>

                            <div class="form-group" id="groupDestino">
                                <label for="destino">Destino:</label>
                                <input type="text" class="form-control" id="destino" placeholder="Destino">
                            </div>

                            <div class="form-group" id="groupFechaSalida">
                                <label for="dpFechaSalida">Fecha Salida:</label>
                                <div id="dpFechaNacimiento" class="input-group date form_date" data-date="" data-date-format="dd/mm/yyyy" data-link-field="dtp_input2" data-link-format="dd/mm/yyyy">
                                    <input class="form-control" type="text" value="" readonly placeholder="dd/mm/aaaa" id="dpFechaSalidaText">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>

                            <div class="form-group" id="groupDescuento">
                                <label for="descuento">Descuento:</label>
                                <input type="text" class="form-control" id="descuento" placeholder="Descuento">
                            </div>
                            
                            <div class="form-group" id="groupTarifa">
                                <label for="tarifa">Tarifa:</label>
                                <input type="text" class="form-control" id="tarifa" placeholder="Tarifa">
                            </div>
                            <div class="form-group" id="groupMinutos">
                                <label for="minutos">Minutos:</label>
                                <input type="text" class="form-control" id="minutos" placeholder="Minutos">
                            </div>
                            
                            <div class="form-group">
                                <input type="hidden" value="agregarPersona" id="personasAction"/>                       
                                    <button type="submit" class="btn btn-primary" id="enviar">Guardar</button>
                                <button type="reset" class="btn btn-danger" id="cancelar">Cancelar</button>
                            </div>

                            <div class="form-group height25" >
                                <div class="alert alert-success hiddenDiv" id="mesajeResult">
                                    <strong id="mesajeResultNeg">Info!</strong> 
                                    <span id="mesajeResultText">This alert box could indicate a neutral informative change or action.</span>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>