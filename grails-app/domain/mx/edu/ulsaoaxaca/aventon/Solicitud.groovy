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
    }
}
