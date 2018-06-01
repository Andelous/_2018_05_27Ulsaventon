package mx.edu.ulsaoaxaca.aventon

class Aventon {
    static belongsTo = [chofer: Chofer]

    String estado
    Integer limite
    Date fecha

    static hasMany = [solicitudes: Solicitud]

    static constraints = {
        limite min: 1, max: 10
    }
}
