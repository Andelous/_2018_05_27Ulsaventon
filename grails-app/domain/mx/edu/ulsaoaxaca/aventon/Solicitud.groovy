package mx.edu.ulsaoaxaca.aventon

class Solicitud {
    static belongsTo = [pasajero: Pasajero, aventon: Aventon]
    Parada parada

    String estado
    Date fechaRealizacion

    Integer puntuacionParaChofer
    Integer puntuacionParaPasajero

    static constraints = {
        puntuacionParaChofer nullable:true, min: 1, max: 5
        puntuacionParaPasajero nullable: true, min: 1, max: 5
        estado validator: { val, obj ->
            if (val == "Aceptada") {

                println ""
                println "Entramos a validación"
                println ""

                def solicitudesAceptadas = []

                for (solicitud in obj.aventon.solicitudes) {
                    def ide = obj.id ?: 0
                    if (
                        solicitud.id != ide &&
                        solicitud?.estado == "Aceptada"
                    ) {
                        println "Encontramos una!"
                        solicitudesAceptadas.add(solicitud)
                    }
                }

                println ""
                println solicitudesAceptadas
                println ""

                return solicitudesAceptadas.size() < obj.aventon.limite
            }

            return true
        }
        fechaRealizacion validator: { val, obj ->
            def ide = obj.id ?: 0
            def solicitudesCoincidentes = Solicitud.where {
                id != ide &&
                pasajero.id == obj.pasajero.id &&
                aventon.fecha == obj.aventon.fecha
            }.list()

            return solicitudesCoincidentes.size() < 2
        }
        pasajero validator: { val, obj ->
            return !val.isBaneado()
        }
    }
}
