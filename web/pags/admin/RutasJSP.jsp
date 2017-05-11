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
    </head>
    <body>
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
                        <a class="navbar-brand" href="#">Opciones de Administrador</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                Consulta de datos <b class="caret"></b>
                            </a>
                            <ul class="navbar-nav navbar-inverse dropdown-menu">
                                <li><a href="#">Usuarios</a></li>
                                <li><a href="#">Vuelos</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                Administración <b class="caret"></b>
                            </a>
                            <ul class="navbar-nav navbar-inverse dropdown-menu">
                                <li><a href="#">Promociones</a></li>
                                <li><a href="#">Aerolineas</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                Gestión de Datos <b class="caret"></b>
                            </a>
                            <ul class="navbar-nav navbar-inverse dropdown-menu">
                                <li><a href="#">Rutas</a></li>
                                <li><a href="#">Aviones</a></li>
                                <li><a href="#">Tipo de aviones</a></li>
                                <li><a href="#">Horarios</a></li>
                            </ul>
                        </li>
                    </ul>
                    <div class="nav navbar-nav navbar-right" id="menuLogSign">
                        <button type="button" class="btn btn-danger glyphicon glyphicon-log-in" data-toggle="modal" data-target="#"> Cerrar sesión</button>
                    </div>
                </div>
            </nav> <!--Navbar-->
        </div>
        <!-- ********************************************************** -->
        <!-- ENCABEZADO -->
        <!-- ********************************************************** -->
    </body>
</html>