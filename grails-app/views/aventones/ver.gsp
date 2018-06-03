<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="layout" content="main">
        <title>Aventon</title>
    </head>
<body>
    <br>
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">Inicio</a></li>
        <li class="breadcrumb-item" aria-current="page">
            <g:link class="text-left" action="index" controller="aventones"class="">Aventones</g:link>
        </li>
        <li class="breadcrumb-item active" aria-current="page">Detalle</li>
      </ol>
    </nav>
	<div class="container">

		<h2 class="text-center">Detalle del aventón #${aventon.id}</h2>
		<hr>
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10">
			<div class="card ">
				<g:if test="${aventon.fecha.format('dd/MM/yyyy') > (new Date()).format('dd/MM/yyyy')}">
					<div class="card-header bg-secondary text-white text-center">
				    	Aventón en espera
				  </div>
                </g:if>
                <g:if test="${aventon.fecha.format('dd/MM/yyyy') == (new Date()).format('dd/MM/yyyy')}">
					<div class="card-header bg-primary text-white text-center">
				    	Aventón en curso
				  </div>
                </g:if>
                <g:if test="${aventon.fecha.format('dd/MM/yyyy') < (new Date()).format('dd/MM/yyyy')}">
					<div class="card-header bg-success text-white text-center">
				    	Aventón terminado
				  </div>
                </g:if>

			  <div class="card-body">
			    <h5 class="card-title text-center">Información general del aventón</h5>
				<table class="table-sm table-hover list-group list-group-flush">
                    <tbody>
                    	<tr class="list-group-item">
                            <th scope="row">Chofer: </th>
                            <td class="">
              					<g:link class="text-left" action="perfil" controller="usuarios" id="${aventon.chofer.usuario.id}" class="">${aventon.chofer.usuario.persona}, ${aventon.chofer.usuario.username}</g:link>
                            </td>
                        </tr>
                        <tr class="list-group-item">
                            <th scope="row">Fecha de salida: </th>
                            <td class="">
              					${aventon.fecha.format("dd/MM/yyyy")}
                            </td>
                        </tr>
                        <tr class="list-group-item">
                            <th scope="row">Hora de salida:</th>
                            <td>
                                ${aventon.hora}
                            </td>
                        </tr>
                    </tbody>
                </table>
                <br>
                <h5 class="card-title text-center">Información de la ruta</h5>
                <table class="table-sm table-hover list-group list-group-flush">
                    <tbody>
                        <tr class="list-group-item">
                            <th scope="row">Nombre de la ruta: </th>
                            <td class="">
                                ${aventon.chofer.ruta!=null?aventon.chofer.ruta.nombre:"No existe la ruta"}
                            </td>
                        </tr>
                        <tr class="list-group-item">
                            <th scope="row">Descripción</th>
                            <td class="">
                                 ${aventon.chofer.ruta!=null?aventon.chofer.ruta.nombre:"No hay descripción de la ruta"}
                            </td>
                        </tr>
                    </tbody>
                </table>
                <br>
                <h5 class="card-title text-center">Paradas</h5>
                <table class="table-sm table-hover list-group list-group-flush">
                    <tbody>
                        <g:if test="${aventon.chofer.ruta==null}">
                            <tr class="list-group-item">
                                <th scope="row">No hay paradas</th>
                            </tr>
                        </g:if>
                        <g:else>
                            <g:if test="${aventon.chofer.ruta.paradas==null}">
                                <tr class="list-group-item">
                                    <th scope="row">No hay paradas</th>
                                </tr>
                            </g:if>
                            <g:else>
                                <g:each in="${aventon.chofer.ruta.paradas}">
                                    <tr class="list-group-item">
                                        <td><strong>${it.calle}</strong>,
                                        Col. ${it.colonia}
                                        <small>
                                            (${it.descripcion})
                                        </small></td>
                                    </tr>
                                </g:each>

                            </g:else>

                        </g:else>

                    </tbody>
                </table>
                <br>
                <h5 class="card-title text-center">Información de los pasajeros</h5>
                <table class="table-sm table-hover list-group list-group-flush">
                    <tbody>
                        <tr class="list-group-item">
                            <th scope="row">Número de pasajeros disponibles: </th>
                            <td class="">
                                ${aventon.limite - solicitudesAceptadas.size()}
                            </td>
                        </tr>
                        <g:if test="${aventon.solicitudes.size()==0}">
                            <tr>
                                <th scope="row">No hay pasajeros</th>
                            </tr>
                        </g:if>
                        <g:each in="${aventon.solicitudes}">
                        	<tr class="list-group-item">
                                <g:if test="${it.estado=='Aceptada'}">
                                    <td scope="row">
                                        <g:link class="text-left" action="perfil" controller="usuarios" id="${it.pasajero.usuario.id}" class="">
                                            ${it.pasajero.usuario.persona},
                                            ${it.pasajero.usuario.username}
                                        </g:link>
                                        sube en <strong>${it.parada.calle}</strong>, ${it.parada.colonia} (<small>${it.parada.descripcion}</small>)
                                    </td>
                                </g:if>
                            </tr>
                        </g:each>
                    </tbody>
                </table>


			  </div>

			  <div class="card-footer text-muted">
			    2 days ago
			  </div>
			</div>
			</div>
			<div class="col-md-1"></div>


		</div>

	</div>

</body>
</html>
