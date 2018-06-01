package mx.edu.ulsaoaxaca.aventon

class Pasajero {
    static belongsTo = [usuario: Usuario]
    static hasMany = [solicitudes: Solicitud]

    Double obtenerPuntuacion() {

    }

    static constraints = {
    }
}
