package mx.edu.ulsaoaxaca.aventon

class Solicitud {
    static belongsTo = [pasajero: Pasajero, aventon: Aventon]

    String estado
    Date fechaRealizacion

    Double puntuacionParaChofer
    Double puntuacionParaPasajero

    static constraints = {
        puntuacionParaChofer min: 0, max: 10
        puntuacionParaPasajero min: 0, max: 10
    }
}
