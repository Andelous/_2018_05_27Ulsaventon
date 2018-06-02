package mx.edu.ulsaoaxaca.aventon

import grails.validation.ValidationException
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
import grails.converters.JSON


@Secured(Rol.BENEFICIARIO)
@Transactional(readOnly = false)
class AventonesController {
    def springSecurityService

    // Preguntar qué desea hacer...
    def index() {

        return misAventones()
    }

    // Ver todos los aventones que he dado y he pedido
    def misAventones() {    
        def u = springSecurityService.currentUser

        def aventonesDados = Aventon.where {
            chofer.id == u.chofer.id
        }.list()

        def aventonesPedidos = Solicitud.where {
            pasajero.id == u.pasajero.id
        }.list()

        [
            aventonesDados: aventonesDados,
            aventonesPedidos: aventonesPedidos
        ]
    }

    // Para solicitar un aventón
    def buscar(String q) {

    }

    def ver(Aventon a) {

    }

    def solicitar(Aventon a) {

    }

    def save(Aventon aventon){

        print(params.fecha)
        if (aventon == null) {
            notFound()
            return
        }
        def u = springSecurityService.currentUser
        aventon.chofer=u.chofer
        aventon.estado="En espera"

        try {
            aventon.save(failOnError: true, flush:true)
        } catch (ValidationException e) {
            println e
            respond aventon.errors, view:'create'
            return
        }

        flash.icon = "check"
        flash.messageType = "success"
        flash.title = "Aventón Registrado!"
        flash.message = "El aventón ha sido registrado correctamente"

        redirect(action: "index", params:[aventon: aventon])
    }

    // Para crear un aventón
    def create() {
        respond new Aventon(params)
    }
}
