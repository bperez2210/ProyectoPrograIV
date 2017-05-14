<%-- 
    Document   : QuienesSomosJSP
    Created on : 11/05/2017, 05:17:11 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quienes Somos</title>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Satisfy" rel="stylesheet">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <link href="css/datetimepicker.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/datetimepicker.js" type="text/javascript"></script>
        <script src="js/utils.js" type="text/javascript"></script>
        <script src="js/PublicoJS.js" type="text/javascript"></script>
    </head>
    <body class="bg-success">
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
            <h3>Aero-Tickets</h3>
            <img src="imagenes/inicio/avion.gif" alt=""/>
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
                    <ul class="nav navbar-nav">
                        <li><a href="InicioJSP.jsp">Inicio</a></li>
                        <li><a href="#">Vuelos</a></li>
                        <li><a href="QuienesSomosJSP.jsp">Quiénes Somos</a></li>
                        <li><a href="#">Referencias</a></li>
                        <li><a href="ContactenosJSP.jsp">Contacto</a></li>
                    </ul>
                    <form class="navbar-form navbar-left">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Buscar">
                        </div>
                        <button type="submit" class="btn btn-default">Buscar</button>
                    </form>
                    <div class="nav navbar-nav navbar-right" id="menuLogSign">
                        <button type="button" class="btn btn-info glyphicon glyphicon-user" data-toggle="modal" data-target="#myModalRegistro"> Registrarse</button>
                        <button type="button" class="btn btn-success glyphicon glyphicon-log-in" data-toggle="modal" data-target="#myModalIngreso"> Entrar</button>
                    </div>
                </div>
            </nav> <!--Navbar-->
        </div>

        <!-- ********************************************************** -->
        <!-- MODAL FORMULARIO REGISTRO -->
        <!-- ********************************************************** -->

        <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="myModalRegistro" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" onclick="limpiarForm()">&times;</button>
                            <h4 class="modal-title">Inscripción Usuario</h4>
                        </div>
                        <div class="modal-body" id="modalForm">
                            <form class="form-horizontal" role="form" id="formRegistro">
                                <div class="form-group" id="groupusuario">
                                    <label for="usuario" class="col-lg-2 control-label">Usuario</label>
                                    <div class="col-lg-2">
                                        <input type="text" class="form-control" id="usuario_sign"
                                               placeholder="Usuario">
                                    </div>
                                </div>
                                <div class="form-group" id="groupcorreo">
                                    <label for="correo" class="col-lg-2 control-label">Correo</label>
                                    <div class="col-lg-2">
                                        <input type="email" class="form-control" id="correo_sign"
                                               placeholder="Email">
                                    </div>
                                </div>
                                <div class="form-group" id="grouppassword">
                                    <label for="password" class="col-lg-2 control-label">Contraseña</label>
                                    <div class="col-lg-2">
                                        <input type="password" class="form-control" id="password_sign"
                                               placeholder="Contraseña">
                                    </div>
                                </div>
                                <div class="form-group" id="grouppasswordConfirm">
                                    <label for="password_confirm" class="col-lg-2 control-label">Confirmar contraseña</label>
                                    <div class="col-lg-2">
                                        <input type="password" id="password_confirm_sign" 
                                               class="form-control" placeholder="Contraseña">
                                    </div>
                                </div>
                                <div class="form-group" id="inputAux">
                                    <label for="nombre_apellidos" class="col-xs-1 control-label">Nombre</label>
                                    <div class="col-xs-3" id="groupprimerApellido">
                                        <input type="text" id="primer_ap_sign" class="form-control" placeholder="Primer Apellido">
                                    </div>
                                    <div class="col-xs-3" id="groupsegundoApellido">
                                        <input type="text" id="segundo_ap_sign" class="form-control" placeholder="Segundo Apellido">
                                    </div>
                                    <div class="col-xs-3" id="groupnombre">
                                        <input type="text" id="nombre_sign" class="form-control" placeholder="Nombre">
                                    </div>
                                </div>
                                <div class="form-group" id="groupnacionalidad">
                                    <label for="pais" class="col-lg-2 control-label">Nacionalidad</label>
                                    <div class="col-xs-4" >
                                        <select class="form-control" id="nacionalidad_sign">
                                            <option value="AFG">Afghanistan</option>
                                            <option value="ALA">Åland Islands</option>
                                            <option value="ALB">Albania</option>
                                            <option value="DZA">Algeria</option>
                                            <option value="ASM">American Samoa</option>
                                            <option value="AND">Andorra</option>
                                            <option value="AGO">Angola</option>
                                            <option value="AIA">Anguilla</option>
                                            <option value="ATA">Antarctica</option>
                                            <option value="ATG">Antigua and Barbuda</option>
                                            <option value="ARG">Argentina</option>
                                            <option value="ARM">Armenia</option>
                                            <option value="ABW">Aruba</option>
                                            <option value="AUS">Australia</option>
                                            <option value="AUT">Austria</option>
                                            <option value="AZE">Azerbaijan</option>
                                            <option value="BHS">Bahamas</option>
                                            <option value="BHR">Bahrain</option>
                                            <option value="BGD">Bangladesh</option>
                                            <option value="BRB">Barbados</option>
                                            <option value="BLR">Belarus</option>
                                            <option value="BEL">Belgium</option>
                                            <option value="BLZ">Belize</option>
                                            <option value="BEN">Benin</option>
                                            <option value="BMU">Bermuda</option>
                                            <option value="BTN">Bhutan</option>
                                            <option value="BOL">Bolivia, Plurinational State of</option>
                                            <option value="BES">Bonaire, Sint Eustatius and Saba</option>
                                            <option value="BIH">Bosnia and Herzegovina</option>
                                            <option value="BWA">Botswana</option>
                                            <option value="BVT">Bouvet Island</option>
                                            <option value="BRA">Brazil</option>
                                            <option value="IOT">British Indian Ocean Territory</option>
                                            <option value="BRN">Brunei Darussalam</option>
                                            <option value="BGR">Bulgaria</option>
                                            <option value="BFA">Burkina Faso</option>
                                            <option value="BDI">Burundi</option>
                                            <option value="KHM">Cambodia</option>
                                            <option value="CMR">Cameroon</option>
                                            <option value="CAN">Canada</option>
                                            <option value="CPV">Cape Verde</option>
                                            <option value="CYM">Cayman Islands</option>
                                            <option value="CAF">Central African Republic</option>
                                            <option value="TCD">Chad</option>
                                            <option value="CHL">Chile</option>
                                            <option value="CHN">China</option>
                                            <option value="CXR">Christmas Island</option>
                                            <option value="CCK">Cocos (Keeling) Islands</option>
                                            <option value="COL">Colombia</option>
                                            <option value="COM">Comoros</option>
                                            <option value="COG">Congo</option>
                                            <option value="COD">Congo, the Democratic Republic of the</option>
                                            <option value="COK">Cook Islands</option>
                                            <option value="CRI">Costa Rica</option>
                                            <option value="CIV">Côte d'Ivoire</option>
                                            <option value="HRV">Croatia</option>
                                            <option value="CUB">Cuba</option>
                                            <option value="CUW">Curaçao</option>
                                            <option value="CYP">Cyprus</option>
                                            <option value="CZE">Czech Republic</option>
                                            <option value="DNK">Denmark</option>
                                            <option value="DJI">Djibouti</option>
                                            <option value="DMA">Dominica</option>
                                            <option value="DOM">Dominican Republic</option>
                                            <option value="ECU">Ecuador</option>
                                            <option value="EGY">Egypt</option>
                                            <option value="SLV">El Salvador</option>
                                            <option value="GNQ">Equatorial Guinea</option>
                                            <option value="ERI">Eritrea</option>
                                            <option value="EST">Estonia</option>
                                            <option value="ETH">Ethiopia</option>
                                            <option value="FLK">Falkland Islands (Malvinas)</option>
                                            <option value="FRO">Faroe Islands</option>
                                            <option value="FJI">Fiji</option>
                                            <option value="FIN">Finland</option>
                                            <option value="FRA">France</option>
                                            <option value="GUF">French Guiana</option>
                                            <option value="PYF">French Polynesia</option>
                                            <option value="ATF">French Southern Territories</option>
                                            <option value="GAB">Gabon</option>
                                            <option value="GMB">Gambia</option>
                                            <option value="GEO">Georgia</option>
                                            <option value="DEU">Germany</option>
                                            <option value="GHA">Ghana</option>
                                            <option value="GIB">Gibraltar</option>
                                            <option value="GRC">Greece</option>
                                            <option value="GRL">Greenland</option>
                                            <option value="GRD">Grenada</option>
                                            <option value="GLP">Guadeloupe</option>
                                            <option value="GUM">Guam</option>
                                            <option value="GTM">Guatemala</option>
                                            <option value="GGY">Guernsey</option>
                                            <option value="GIN">Guinea</option>
                                            <option value="GNB">Guinea-Bissau</option>
                                            <option value="GUY">Guyana</option>
                                            <option value="HTI">Haiti</option>
                                            <option value="HMD">Heard Island and McDonald Islands</option>
                                            <option value="VAT">Holy See (Vatican City State)</option>
                                            <option value="HND">Honduras</option>
                                            <option value="HKG">Hong Kong</option>
                                            <option value="HUN">Hungary</option>
                                            <option value="ISL">Iceland</option>
                                            <option value="IND">India</option>
                                            <option value="IDN">Indonesia</option>
                                            <option value="IRN">Iran, Islamic Republic of</option>
                                            <option value="IRQ">Iraq</option>
                                            <option value="IRL">Ireland</option>
                                            <option value="IMN">Isle of Man</option>
                                            <option value="ISR">Israel</option>
                                            <option value="ITA">Italy</option>
                                            <option value="JAM">Jamaica</option>
                                            <option value="JPN">Japan</option>
                                            <option value="JEY">Jersey</option>
                                            <option value="JOR">Jordan</option>
                                            <option value="KAZ">Kazakhstan</option>
                                            <option value="KEN">Kenya</option>
                                            <option value="KIR">Kiribati</option>
                                            <option value="PRK">Korea, Democratic People's Republic of</option>
                                            <option value="KOR">Korea, Republic of</option>
                                            <option value="KWT">Kuwait</option>
                                            <option value="KGZ">Kyrgyzstan</option>
                                            <option value="LAO">Lao People's Democratic Republic</option>
                                            <option value="LVA">Latvia</option>
                                            <option value="LBN">Lebanon</option>
                                            <option value="LSO">Lesotho</option>
                                            <option value="LBR">Liberia</option>
                                            <option value="LBY">Libya</option>
                                            <option value="LIE">Liechtenstein</option>
                                            <option value="LTU">Lithuania</option>
                                            <option value="LUX">Luxembourg</option>
                                            <option value="MAC">Macao</option>
                                            <option value="MKD">Macedonia, the former Yugoslav Republic of</option>
                                            <option value="MDG">Madagascar</option>
                                            <option value="MWI">Malawi</option>
                                            <option value="MYS">Malaysia</option>
                                            <option value="MDV">Maldives</option>
                                            <option value="MLI">Mali</option>
                                            <option value="MLT">Malta</option>
                                            <option value="MHL">Marshall Islands</option>
                                            <option value="MTQ">Martinique</option>
                                            <option value="MRT">Mauritania</option>
                                            <option value="MUS">Mauritius</option>
                                            <option value="MYT">Mayotte</option>
                                            <option value="MEX">Mexico</option>
                                            <option value="FSM">Micronesia, Federated States of</option>
                                            <option value="MDA">Moldova, Republic of</option>
                                            <option value="MCO">Monaco</option>
                                            <option value="MNG">Mongolia</option>
                                            <option value="MNE">Montenegro</option>
                                            <option value="MSR">Montserrat</option>
                                            <option value="MAR">Morocco</option>
                                            <option value="MOZ">Mozambique</option>
                                            <option value="MMR">Myanmar</option>
                                            <option value="NAM">Namibia</option>
                                            <option value="NRU">Nauru</option>
                                            <option value="NPL">Nepal</option>
                                            <option value="NLD">Netherlands</option>
                                            <option value="NCL">New Caledonia</option>
                                            <option value="NZL">New Zealand</option>
                                            <option value="NIC">Nicaragua</option>
                                            <option value="NER">Niger</option>
                                            <option value="NGA">Nigeria</option>
                                            <option value="NIU">Niue</option>
                                            <option value="NFK">Norfolk Island</option>
                                            <option value="MNP">Northern Mariana Islands</option>
                                            <option value="NOR">Norway</option>
                                            <option value="OMN">Oman</option>
                                            <option value="PAK">Pakistan</option>
                                            <option value="PLW">Palau</option>
                                            <option value="PSE">Palestinian Territory, Occupied</option>
                                            <option value="PAN">Panama</option>
                                            <option value="PNG">Papua New Guinea</option>
                                            <option value="PRY">Paraguay</option>
                                            <option value="PER">Peru</option>
                                            <option value="PHL">Philippines</option>
                                            <option value="PCN">Pitcairn</option>
                                            <option value="POL">Poland</option>
                                            <option value="PRT">Portugal</option>
                                            <option value="PRI">Puerto Rico</option>
                                            <option value="QAT">Qatar</option>
                                            <option value="REU">Réunion</option>
                                            <option value="ROU">Romania</option>
                                            <option value="RUS">Russian Federation</option>
                                            <option value="RWA">Rwanda</option>
                                            <option value="BLM">Saint Barthélemy</option>
                                            <option value="SHN">Saint Helena, Ascension and Tristan da Cunha</option>
                                            <option value="KNA">Saint Kitts and Nevis</option>
                                            <option value="LCA">Saint Lucia</option>
                                            <option value="MAF">Saint Martin (French part)</option>
                                            <option value="SPM">Saint Pierre and Miquelon</option>
                                            <option value="VCT">Saint Vincent and the Grenadines</option>
                                            <option value="WSM">Samoa</option>
                                            <option value="SMR">San Marino</option>
                                            <option value="STP">Sao Tome and Principe</option>
                                            <option value="SAU">Saudi Arabia</option>
                                            <option value="SEN">Senegal</option>
                                            <option value="SRB">Serbia</option>
                                            <option value="SYC">Seychelles</option>
                                            <option value="SLE">Sierra Leone</option>
                                            <option value="SGP">Singapore</option>
                                            <option value="SXM">Sint Maarten (Dutch part)</option>
                                            <option value="SVK">Slovakia</option>
                                            <option value="SVN">Slovenia</option>
                                            <option value="SLB">Solomon Islands</option>
                                            <option value="SOM">Somalia</option>
                                            <option value="ZAF">South Africa</option>
                                            <option value="SGS">South Georgia and the South Sandwich Islands</option>
                                            <option value="SSD">South Sudan</option>
                                            <option value="ESP">Spain</option>
                                            <option value="LKA">Sri Lanka</option>
                                            <option value="SDN">Sudan</option>
                                            <option value="SUR">Suriname</option>
                                            <option value="SJM">Svalbard and Jan Mayen</option>
                                            <option value="SWZ">Swaziland</option>
                                            <option value="SWE">Sweden</option>
                                            <option value="CHE">Switzerland</option>
                                            <option value="SYR">Syrian Arab Republic</option>
                                            <option value="TWN">Taiwan, Province of China</option>
                                            <option value="TJK">Tajikistan</option>
                                            <option value="TZA">Tanzania, United Republic of</option>
                                            <option value="THA">Thailand</option>
                                            <option value="TLS">Timor-Leste</option>
                                            <option value="TGO">Togo</option>
                                            <option value="TKL">Tokelau</option>
                                            <option value="TON">Tonga</option>
                                            <option value="TTO">Trinidad and Tobago</option>
                                            <option value="TUN">Tunisia</option>
                                            <option value="TUR">Turkey</option>
                                            <option value="TKM">Turkmenistan</option>
                                            <option value="TCA">Turks and Caicos Islands</option>
                                            <option value="TUV">Tuvalu</option>
                                            <option value="UGA">Uganda</option>
                                            <option value="UKR">Ukraine</option>
                                            <option value="ARE">United Arab Emirates</option>
                                            <option value="GBR">United Kingdom</option>
                                            <option value="USA">United States</option>
                                            <option value="UMI">United States Minor Outlying Islands</option>
                                            <option value="URY">Uruguay</option>
                                            <option value="UZB">Uzbekistan</option>
                                            <option value="VUT">Vanuatu</option>
                                            <option value="VEN">Venezuela, Bolivarian Republic of</option>
                                            <option value="VNM">Viet Nam</option>
                                            <option value="VGB">Virgin Islands, British</option>
                                            <option value="VIR">Virgin Islands, U.S.</option>
                                            <option value="WLF">Wallis and Futuna</option>
                                            <option value="ESH">Western Sahara</option>
                                            <option value="YEM">Yemen</option>
                                            <option value="ZMB">Zambia</option>
                                            <option value="ZWE">Zimbabwe</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group " id="groupfechaNacimiento">
                                    <label for="dpFechaNacimiento" class="col-xs-4">Fecha Nacimiento:</label>
                                    <div id="dpFechaNacimiento" class="input-group date form_date sizeLabel" data-date="" data-date-format="dd/mm/yyyy" data-link-field="dtp_input2" data-link-format="dd/mm/yyyy">
                                        <input class="form-control sizeLabel" type="text" value="" readonly placeholder="dd/mm/aaaa" id="dpFechaNacimientoText">
                                        <span class="input-group-addon buttonDate">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>
                                <div class="form-group" id="groupdireccion">
                                    <label for="direccion" class="col-xs-2 control-label">Dirección</label>
                                    <div class="col-xs-3" >
                                        <input type="text" id="direccion_sign" class="form-control" placeholder="Ciudad">
                                    </div>
                                </div>
                                <div class="modal-footer buttonOpt" >
                                    <button type="button" class="btn btn-default" data-dismiss="modal" onclick="limpiarForm()">Cerrar</button>
                                    <button type="button" class="btn btn-primary"  onclick="registro()">Registrarse</button>
                                </div>
                                <div class="form-group" >
                                    <div class="alert alert-success" id="mesageRegistro">
                                        <strong class="mesajeResultNeg">Info!</strong> 
                                        <span class="mesajeResultText">This alert box could indicate a neutral informative change or action.</span>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>  <!--Registro-->

        <!-- ********************************************************** -->
        <!-- MODAL INGRESO LOGIN -->
        <!-- ********************************************************** -->


        <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="myModalIngreso" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" onclick="limpiarForm()">&times;</button>
                            <h4 class="modal-title">Ingreso Usuario</h4>
                        </div>
                        <div class="modal-body" id="modalForm">
                            <form class="form-horizontal" role="form" id="formLogin">
                                <div class="form-group">
                                    <div>
                                        <img src="imagenes/inicio/user-login-man-person-512.png" alt="" class="userIngreso"/>
                                    </div>
                                    <label for="usuario" class="col-lg-2 control-label">Usuario</label>
                                    <div class="col-lg-2">
                                        <input type="text" class="form-control " id="usuario_login" placeholder="Usuario">
                                        <div class="glyphicon glyphicon-user glyphiconIngreso" ></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="password" class="col-lg-2 control-label">Contraseña</label>
                                    <div class="col-lg-2">
                                        <input type="password" class="form-control glyphicon glyphicon-lock" id="password_login" placeholder="Contraseña">    
                                        <div class="glyphicon glyphicon-lock glyphiconIngreso" ></div>
                                    </div>
                                </div><div class="modal-footer buttonOpt" >
                                    <button type="button" class="btn btn-default" data-dismiss="modal" onclick="limpiarForm()">Cerrar</button>
                                    <button type="button" class="btn btn-primary" onclick="logueo()" data-dismiss="modal">Ingresar</button>
                                </div>
                                <div class="form-group" >
                                    <div class="alert alert-success " id="mesajeLogin">
                                        <strong class="mesajeResultNeg">Info!</strong> 
                                        <span class="mesajeResultText">This alert box could indicate a neutral informative change or action.</span>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>     
        
        <!-- ********************************************************** -->
        <!-- INFO  -->
        <!-- ********************************************************** -->
        
        
        <div class="col-sm-6 col-md-6 col-lg-6 espacio1 bg-success">
            <p class="titulos1">Visión</p>
            <p class="texto">
                Ser la empresa emblema y orgullo a nivel mundial,
                reconocida por su gestión pública eficiente y transparente.</p>
        </div>

        <div class="col-sm-6 col-md-6 col-lg-6 espacio1 bg-success">
            <p class="titulos1">Misión</p>
            <p class="texto">
                Conectar a las personas y contribuir a la integración y al desarrollo 
                económico y social de los países, promoviendo los territorios como 
                destino turístico, cultural y de negocios</p>
        </div>
        <br></br>
        <div class="col-sm-4 col-md-4 col-lg-4 espacio2 bg-success" >
            <img class="img-rounded center-block" src="imagenes/Extras/imagen3.jpg" alt=""/>
        </div>
        <div class="col-sm-4 col-md-4 col-lg-4 espacio2 bg-success">
            <p class="titulos2">Quiénes somos</p>
            <p class="texto">   
                Aero Tickets, nace con la clara vocación de dar el mejor servicio 
                a sus clientes, tanto para las agencias de viajes, como para nuestros 
                clientes finales. La gestación del proyecto es fruto de meses de trabajo, 
                de horas pensando que es lo que le hace falta al mercado y con las expectativas 
                puestas, entre otras, en mejorar el servicio a todos los profesionales del 
                sector que hasta ahora se está dando y presentar un página fresca y sencilla 
                para todos nuestros clientes.</p>
        </div>
        <div class="col-sm-4 col-md-4 col-lg-4 espacio2 bg-success" >
            <img class="img-rounded center-block" src="imagenes/Extras/imagen1.jpg" alt=""/>
        </div>
        <br></br>
        <div class="col-sm-4 col-md-4 espacio3 col-lg-4 bg-success">
            <p class="titulos1">De dónde venimos</p>
            <p class="texto">   
                Nuestra experiencia en el sector nos ha llevado a arrancar este nuevo proyecto, 
                en el cual participamos profesionales de probada experiencia en prácticamente 
                todas las secciones que conforman el amplio sector del turismo, y mas concretamente 
                dentro de las agencias de viajes, tales como venta tradicional de paquetes vacacionales, 
                centros de empresas, venta de billetes on-line y lo más importante para nosotros: 
                la atención al cliente. Queremos y creemos que estamos en condiciones de hacerlo.</p>
        </div>
        <div class="col-sm-4 col-md-4 espacio3 col-lg-4 bg-success">
            <p class="titulos1">A dónde vamos</p>
            <p class="texto">   
                Nuestra meta es, conseguir que nuestros clientes repitan en la compra de billetes, 
                hoteles y coches mediante nuestra pàgina. Eso será el mayor éxito que podemos conseguir. 
                Nos debemos a nuestros clientes y por ellos las mejoras en nuestra página serán 
                constantes.</p>
            <img class="img-rounded center-block" src="imagenes/Extras/imagen2.jpg" alt=""/> 
        </div>
        <div class="col-sm-4 col-md-4 espacio3 col-lg-4 bg-success">
            <p class="titulos1">Cómo lo hacemos</p>
            <p class="texto">   
                Aero Tickets, cuenta con un buscador diseñado por Travelloop, y que nos permite 
                ofrecer en todo momento las mejores tarifas de vuelos, hoteles y coches que existen 
                en el mercado. La negociación con nuestros proveedores, para conseguir las mejores 
                tarifas existentes, será algo que revisaremos a diario, para que siempre tengas lo 
                mejor. RoundTrip Viajes ha implementado algo nuevo en las agencias que arrancan, 
                como nosotros, que es el buscador de vuelo + hotel (llamado tambien dynamic packaging), 
                importante herramienta que también hemos implementado con Travelloop.</p>
        </div>
        <div class="col-sm-3 col-md-3 col-lg-3 espacio4 bg-success" ></div>
        <div class="col-sm-6 col-md-6 col-lg-6 espacio4 bg-success">
            <p class="titulos2">Atención al cliente</p>
            <p class="texto">   
                Para Aero Tickets, el cliente es el centro de las preocupaciones para intentar 
                ofrecerle diariamente todo aquello que necesite y poder llegar asi a la excelencia. 
                El 100% de la plantilla de RoundTrip Viajes se dedica a sus clientes para procurar 
                que tenga la mejor información antes, durante y después de haber reservado sus 
                vacaciones. La comunicación con nuestros clientes es casi permanente y eso ha sido 
                posible gracias al conocimiento y manejo, por parte de nuestro equipo, de la 
                opciones de comunicacion con las que cuenta nuestra sociedad, ya sea mediante chat 
                en directo, correo electrónico, Facebook o Tweeter. Cada semana nuestros clientes 
                reciben una newsletter o boletín de ofertas, que le informan de las mejores ofertas 
                del momento seleccionadas por nuestro Dpto. de producto, de manera gratuita.</p>
        </div>
        <div class="col-sm-3 col-md-3 col-lg-3 espacio4 bg-success" ></div>
       <div class="col-sm-12 col-md-12 col-lg-12 espacio1 bg-success">
            <p class="titulos1">Dónde estámos</p>
            <p class="texto1">   
                Nuestra oficina se encuentra en un lugar privilegiado y tranquilo, muy cerca del 
                Aeropuerto Internacional Juan Santamaría en la provincia de Alajuela, San José, Costa Rica.</p>
        </div>

    </body>
</html>
