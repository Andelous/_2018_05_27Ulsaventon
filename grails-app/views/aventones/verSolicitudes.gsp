<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <meta charset="utf-8">
        <title>Solicitudes de tu aventón</title>
    </head>
    <body>
        <br />
        <h3>Aprueba las solicitudes de tu aventón</h3>
        <hr />

        <div class="row">
            <g:each in="${aventon.solicitudes}">
                    <div class="col-md-6 mx-auto">
                        <div class="card mb-3">
                            <div class="card-header">
                                <g:link action="perfil" controller="usuarios" id="${it.pasajero.usuario.id}">
                                    <strong>${it.pasajero.usuario.username}</strong> - ${it.pasajero.usuario.persona}

                                    <span class="float-right">
                                        <span class="badge badge-pill badge-${
                                            it.estado == 'Aceptada' ?
                                                'success' :
                                            it.estado == 'Rechazada' ?
                                                'danger' : 'warning'
                                        }">${it.estado}</span>
                                    </span>
                                </g:link>
                            </div>
                            <div class="card-body">
                                <h4 class="card-title mb-0">${it.parada.calle}</h4>
                                <p class="mb-0">${it.parada.colonia}, ${it.parada.descripcion}</p>
                            </div>
                            <div class="card-footer btn-group">
                                <g:link action="cambiarEstadoSolicitud" controller="aventones" params="[id: it.id, estado: 'Aceptada']" class="btn btn-link btn-sm text-dark">
                                    <span class="oi oi-check text-success"></span>
                                    Aprobar
                                </g:link>

                                <g:link action="cambiarEstadoSolicitud" controller="aventones" params="[id: it.id, estado: 'Rechazada']" class="btn btn-link btn-sm text-dark">
                                    <span class="oi oi-circle-x text-danger"></span>
                                    Rechazar
                                </g:link>
                            </div>
                        </div>
                    </div>
            </g:each>
        </div>
    </body>
</html>
