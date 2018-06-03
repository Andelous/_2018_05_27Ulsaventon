package mx.edu.ulsaoaxaca.aventon

class Aventon {
    static belongsTo = [chofer: Chofer]

    String estado
    Integer limite
    String hora
    Date fecha

    static hasMany = [solicitudes: Solicitud]

    static constraints = {
        limite min: 1, max: 10
        hora min: "05:30", max: "21:30"
        fecha min: new Date(), validator: { val, obj ->
            return val[Calendar.DAY_OF_WEEK] != Calendar.SUNDAY
        }
    }
}
