<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="layout" content="main">
        <title>Aventon</title>
    </head>

<body>
	<br>
	<g:if test="${flash.message}">
        <div class="alert alert-${flash.messageType} alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <h4><i class="icon fa fa-${flash.icon}"></i>${flash.title}</h4>
            ${flash.message}
        </div>
    </g:if>
	<div class="container" >
         <h2 class="text-center">Lista de aventones dados</h2>
         <hr>
		<div class="row">
            <g:link class="text-left" action="create" controller="aventones" class="btn btn-primary col-md-5 col-sm-5">Crear aventón</g:link>
                
                <div class="clearfix col-md-2"></div>
                <button type="button" class="btn btn-success col-md-5 col-sm-5">Aceptar solicitudes de aventones
                </button>
    			<div class="col">


                <hr>

				<table class="table" id="aventonesDados">
				  <thead class="thead-dark">
				    <tr>
				      <th scope="col">Id</th>
				      <th scope="col">estado</th>
				      <th scope="col">Fecha</th>
				      <th scope="col">Hora</th>
				    </tr>
				  </thead>
				  <tbody>
                    <g:each in="${aventonesDados}">
    				    <tr>
    				      <th scope="row">${it.id}</th>
    				      <td>${it.estado}</td>
    				      <td>${it.fecha}</td>
    				      <td>${it.hora}</td>
    				    </tr>
			        </g:each>
				  </tbody>
				</table>
                <hr>
                <br>
                
                <h2 class="text-center">Lista de aventones pedidos</h2>
                <button type="button" class="btn btn-primary container-fluid">Solicitar un aventón</button>
                <table class="table" id="aventonesPedidos">
                  <thead class="thead-dark">
                    <tr>
                      <th scope="col">Id</th>
                      <th scope="col">estado</th>
                      <th scope="col">Fecha</th>
                      <th scope="col">Hora</th>
                    </tr>
                  </thead>
                  <tbody>
                    <g:each in="${aventonesPedidos}">
                        <tr>
                          <th scope="row">${it.id}</th>
                          <td>${it.estado}</td>
                          <td>${it.fecha}</td>
                          <td>${it.hora}</td>
                        </tr>
                    </g:each>
                  </tbody>
                </table>
			</div>
		</div>

	</div>
    %{--Oye khe :´v--}%
    <asset:javascript src="jquery.js"/>
	<script type="text/javascript">
       $(document).ready(function() {
            $('#aventonesDados').DataTable();
            $('#aventonesPedidos').DataTable();
        } );
        </script>

</body>
</html>