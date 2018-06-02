package mx.edu.ulsaoaxaca.aventon

import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
import grails.converters.JSON

@Secured(Rol.BENEFICIARIO)
@Transactional(readOnly = false)
class AventonesController {
    def springSecurityService

    // Preguntar qué desea hacer...
    def index() {

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

    // Para crear un aventón
    def crear() {

    }
}
