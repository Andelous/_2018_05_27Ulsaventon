<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <meta charset="utf-8">
        <title>Solicitudes de tu aventón</title>
    </head>
    <body>
        <g:each in="${aventon.solicitudes}">
            ${it}
            <br />
            ${it.pasajero}
        </g:each>
    </body>
</html>
