<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Bienvenido</title>
</head>
<body>

    <br />

    <div class="row">
        <div class="col-md">
            <h4>Acceso r&aacute;pido</h4>
            <hr />

            <div class="row">
                <div class="col-md-6 mb-3">
                    <a href="#" class="btn btn-light btn-block">
                        <br />
                        <br />
                        <span class="oi oi-location text-success" style="font-size:4em"></span>
                        <br />
                        <br />
                        <strong style="font-size:1em">Mis aventones</strong>
                    </a>
                </div>

                <div class="col-md-6 mb-3">
                    <g:link controller="usuarios" action="perfil" class="btn btn-light btn-block">
                        <br />
                        <br />
                        <span class="oi oi-person text-info" style="font-size:4em"></span>
                        <br />
                        <br />
                        <strong style="font-size:1em">Mi perfil</strong>
                    </g:link>
                </div>

                <div class="col-md-6 mb-3">
                    <g:link controller="vehiculo" class="btn btn-light btn-block">
                        <br />
                        <br />
                        <span class="oi oi-key p-2 rounded ml-2"
                            style="font-size:3em; color:goldenrod;">
                        </span>
                        <br />
                        <br />
                        <strong style="font-size:1em">Mi veh&iacute;culo</strong>
                    </g:link>
                </div>

                <div class="col-md-6 mb-3">
                    <g:link controller="ruta" class="btn btn-light btn-block">
                        <br />
                        <br />
                        <span class="oi oi-map p-2 rounded ml-2"
                            style="font-size:3.2em; color:rgb(230, 50, 0);">
                        </span>
                        <br />
                        <br />
                        <strong style="font-size:1em">Mi ruta</strong>
                    </g:link>
                </div>
            </div>
        </div>

        <div class="col-md">
            <h4 class="text-center">Los mejores <strong>choferes</strong></h4>
            <hr />
        </div>

        <div class="col-md">
            <h4 class="text-center">Los mejores <strong>pasajeros</strong></h4>
            <hr />
        </div>
    </div>



</body>
</html>
