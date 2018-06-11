package mx.edu.ulsaoaxaca.aventon

import grails.plugin.springsecurity.annotation.Secured
import grails.converters.JSON

@Secured('permitAll')
class AjaxController {
    def usuarioMock () {
        def user = Usuario.find {
            id == -1
        }

        user = user ?: [:]

        render user as JSON
    }

    def fechaMock() {
        def miau = [fecha: new Date()]

        render miau as JSON
    }

    def verRutas() {
        def rutas = Ruta.list()

        def rutasArr = [:]
        def cont = 0

        rutas.each {
            def mapaRuta = [:]

            mapaRuta.ruta = it
            mapaRuta.paradas = []

            it.paradas.each {
                mapaRuta.paradas.add(it)
            }

            def str = "pos" + cont++

            rutasArr[str] = mapaRuta
        }

        render rutasArr as JSON
    }
}
