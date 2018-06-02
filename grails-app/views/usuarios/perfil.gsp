<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="layout" content="main">
        <title>Mi perfil</title>
    </head>
    <body>

        <div class="row mt-3">
            <div class="col-md-4 mx-auto">
                <div class="card">
                    <div class="card-header">
                        <h5 class="mb-0">Informaci&oacute;n personal</h5>
                    </div>
                    <div class="card-body">
                        <div class="form-group row">
                            <label class="col-md-5 col-form-label">
                                <strong>Matr&iacute;cula</strong>
                            </label>
                            <div class="col-md">
                                <input type="text" readonly
                                    class="form-control-plaintext"
                                    style="color:darkcyan"
                                    value="${usuario.username}">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-5 col-form-label">
                                <strong>Nombre</strong>
                            </label>
                            <div class="col-md">
                                ${usuario.persona}
                            </div>
                        </div>

                        <g:if test="${usuario.chofer.vehiculo}">
                            <p class="text-center bg-dark text-white py-1">Tiene un <strong>veh&iacute;culo</strong> con las siguientes caracter&iacute;sticas:</p>

                            <div class="form-group row">
                                <label class="col-md-5 col-form-label">
                                    <strong>Placas</strong>
                                </label>
                                <div class="col-md">
                                    <input type="text" readonly
                                        class="form-control-plaintext"
                                        value="${usuario.chofer.vehiculo?.placas}">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-md-5 col-form-label">
                                    <strong>Modelo</strong>
                                </label>
                                <div class="col-md">
                                    <input type="text" readonly
                                        class="form-control-plaintext"
                                        value="${usuario.chofer.vehiculo?.modelo}">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-md-5 col-form-label">
                                    <strong>Color</strong>
                                </label>
                                <div class="col-md">
                                    <input type="text" readonly
                                        class="form-control-plaintext"
                                        value="${usuario.chofer.vehiculo?.color}">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-md-5 col-form-label">
                                    <strong>A&ntilde;o</strong>
                                </label>
                                <div class="col-md">
                                    <input type="text" readonly
                                        class="form-control-plaintext"
                                        value="${usuario.chofer.vehiculo?.ano}">
                                </div>
                            </div>
                        </g:if>
                    </div>
                </div>
            </div>

            <g:if test="${usuario.authorities[0].authority == 'ROLE_BENEFICIARIO'}">
                <div class="col-md">
                    <div class="card">
                        <div class="card-header">
                            <h5 class="mb-0">Perfil seg&uacute;n su actividad</h5>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md">
                                    <h5 class="text-center">Como chofer</h5>
                                    <hr />


                                </div>

                                <div class="col-md">
                                    <h5 class="text-center">Como pasajero</h5>
                                    <hr />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </g:if>
        </div>

    </body>
</html>