package mx.edu.ulsaoaxaca.aventon

class Solicitud {
    static belongsTo = [pasajero: Pasajero, aventon: Aventon]
    Parada parada

    String estado
    Date fechaRealizacion

    Double puntuacionParaChofer
    Double puntuacionParaPasajero

    static constraints = {
        puntuacionParaChofer min: 0, max: 10
        puntuacionParaPasajero min: 0, max: 10
    }
}
