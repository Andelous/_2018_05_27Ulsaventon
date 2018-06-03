<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="layout" content="main">
        <title>Aventon</title>
    </head>
<body>


	<div class="container">
		<br>
		<h2 class="text-center">Detalle del aventón #${aventon.id}</h2>
		<hr>
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10">
			<div class="card ">
				<g:if test="${aventon.estado=='En espera'}">
					<div class="card-header bg-secondary text-white text-center">
				    	Aventón en espera
				  </div>
                </g:if>
                <g:if test="${aventon.estado=='En curso'}">
					<div class="card-header bg-primary text-white text-center">
				    	Aventón en curso
				  </div>
                </g:if>
                <g:if test="${aventon.estado=='Terminado'}">
					<div class="card-header bg-success text-white text-center">
				    	Aventón terminado
				  </div>
                </g:if>
			  
			  <div class="card-body">
			    <h5 class="card-title text-center">Información general del aventón</h5>
				<table class="table-sm table-hover list-group list-group-flush">
					<tr class="list-group-item">
                            <th scope="row">Chofer: </th>
                            <td class="">
              					<g:link class="text-left" action="ver" controller="usuarios" id="${aventon.chofer.usuario.id}" class="">${aventon.chofer.usuario.username}</g:link>
                            </td>
                    </tr>
                    <tbody>
                    	<tr class="list-group-item">
                            <th scope="row">Chofer: </th>
                            <td class="">
              					<g:link class="text-left" action="ver" controller="usuarios" id="${aventon.chofer.usuario.id}" class="">${aventon.chofer.usuario.username}</g:link>
                            </td>
                        </tr>
                        <tr class="list-group-item">
                            <th scope="row">Fecha de salida: </th>
                            <td class="">
              					${aventon.fecha.getDate()}/${aventon.fecha.getMonth()}/${aventon.fecha.getYear()+1900}
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
                <h5 class="card-title text-center">Información de los pasajeros</h5>
                <table class="table-sm table-hover list-group list-group-flush">
                    <tbody>
                    	<tr class="list-group-item">
                            <th scope="row">Chofer: </th>
                            <td class="">
              					<g:link class="text-left" action="ver" controller="usuarios" id="${aventon.chofer.usuario.id}" class="">${aventon.chofer.usuario.username}</g:link>
                            </td>
                        </tr>
                        <tr class="list-group-item">
                            <th scope="row">Fecha de salida: </th>
                            <td class="">
              					${aventon.fecha.getDate()}/${aventon.fecha.getMonth()}/${aventon.fecha.getYear()+1900}
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
			    <h5 class="card-title text-center">Información de las paradas</h5>
                <table class="table-sm table-hover list-group list-group-flush">
                    <tbody>
                    	<tr class="list-group-item">
                            <th scope="row">Chofer: </th>
                            <td class="">
              					<g:link class="text-left" action="ver" controller="usuarios" id="${aventon.chofer.usuario.id}" class="">${aventon.chofer.usuario.username}</g:link>
                            </td>
                        </tr>
                        <tr class="list-group-item">
                            <th scope="row">Fecha de salida: </th>
                            <td class="">
              					${aventon.fecha.getDate()}/${aventon.fecha.getMonth()}/${aventon.fecha.getYear()+1900}
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