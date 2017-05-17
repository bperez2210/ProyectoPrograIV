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
        <script src="../../js/AvionJS.js" type="text/javascript"></script>
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
                                Aviones <b class="caret"></b>
                            </a>
                            <ul class="navbar-nav navbar-inverse dropdown-menu">
                                <li><a href="UsuariosJSP.jsp">Usuarios</a></li>
                                <li><a href="AerolineasJSP.jsp">Aerolineas</a></li>
                                <li><a href="BoletosJSP.jsp">Boletos</a></li>
                                <li><a href="RutasJSP.jsp">Rutas</a></li>
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
        
        <div align="center" id="panelAviones">
            <div class="panel panel-success">
                <div class="panel-heading">
                <div class="col-sm-12">
                        <form role="form" onsubmit="return false;" id="formAviones" class="form-horizontal centered">
                            <div class="form-group" id="groupNombreAvi">
                                <div class="col-sm-4" style="text-align: right; vertical-align: middle;">
                                    <p><b>Buscar por nombre de la Aerolinea:</b></p>
                                </div>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="buscarAvi" placeholder="Digite el nombre de la aerolinea">
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
                    <table class="table table-hover table-condensed" id="tablaAviones">

                    </table>
                </div>
                <div class="panel-footer">
                    <ul class="pagination justify-content-center" id="paginacionOpcAvi"></ul>
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
                                <label for="iadRuta">ID_Avion:</label>
                                <input type="text" class="form-control" id="idRuta" autofocus="true" placeholder="ID_Avion">
                            </div>

                            <div class="form-group" id="groupidAvion">
                                <label for="idAvion">ID_Aerolinea:</label>
                                <input type="text" class="form-control" id="idAvion" placeholder="ID_Aerolinea" >
                            </div>

                            <div class="form-group" id="groupOrigen">
                                <label for="origen">Marca:</label>
                                <input type="text" class="form-control" id="apellido1" placeholder="Marca">
                            </div>

                            <div class="form-group" id="groupDestino">
                                <label for="destino">Modelo:</label>
                                <input type="text" class="form-control" id="destino" placeholder="Modelo">
                            </div>


                            <div class="form-group" id="groupDescuento">
                                <label for="descuento">Año:</label>
                                <input type="text" class="form-control" id="descuento" placeholder="Año">
                            </div>
                            
                            <div class="form-group" id="groupTarifa">
                                <label for="tarifa">Cantidad Pasajeros:</label>
                                <input type="text" class="form-control" id="tarifa" placeholder="Cantidad Pasajeros">
                            </div>
                            <div class="form-group" id="groupMinutos">
                                <label for="minutos">Asientos por fila:</label>
                                <input type="text" class="form-control" id="minutos" placeholder="Cantidad de asientos por filas">
                            </div>
                            <div class="form-group" id="groupMinutos">
                                <label for="minutos">Cantidad de filas:</label>
                                <input type="text" class="form-control" id="minutos" placeholder="Cantidad de filas">
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