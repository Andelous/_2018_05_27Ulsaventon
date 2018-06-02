<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="layout" content="main">
        <title>Crear Aventon</title>
    </head>

<body>
	<br>
	<h2 class="text-center">Crear Aventón</h2>
	<hr>
	<div class="container">
		<div class="row">
			<div class="clearfix col-md-1"></div>
			<g:hasErrors bean="${this.aventon}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.aventon}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>

			<g:form class="col-md-10" method="POST" role="form" action="save" controller="aventones">
			<div class="form-group">
			    <label for="fecha">Fecha de salida: </label>
			    <div class="">
			    	<g:datePicker   name="fecha"  precision="day" value="${new Date()}" years="${(new Date().getYear()+1900)..(new Date().getYear()+1901)}" />
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="hora">Hora de salida:</label>
			    <input type="time" class="form-control" name="hora" >
			  </div>
			  

			  <div class="form-group">
			    <label for="limite">Limite de pasajeros:</label>
			    <input type="number" class="form-control" name="limite" max="10" min="1">
			  </div>
			  <button type="submit" class="btn btn-primary">Agregar</button>
			</g:form>

		</div>

	</div>
	

</body>
</html>