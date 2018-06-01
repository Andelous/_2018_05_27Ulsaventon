package mx.edu.ulsaoaxaca.aventon

class Chofer {
    static belongsTo = [usuario: Usuario]

    Vehiculo vehiculo
    Ruta ruta

    static hasMany = [aventones: Aventon]

    Double obtenerPuntuacion() {

    }

    static constraints = {
        vehiculo nullable: true
        ruta nullable: true
    }
}
