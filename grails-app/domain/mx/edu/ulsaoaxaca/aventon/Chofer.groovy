package mx.edu.ulsaoaxaca.aventon

class Chofer {
    static belongsTo = [usuario: Usuario]

    Vehiculo vehiculo
    Ruta ruta

    static hasMany = [aventones: Aventon]

    Double obtenerPuntuacion() {
        def total = 0
        def contador = 0

        for (aventon in aventones) {
            def val = aventon.obtenerPuntuacionAventon()
            if (val) {
                total += val
                contador++
            }
        }

        if (contador > 0) {
            return total / contador
        }

        return null
    }

    Boolean isBaneado() {
        def contador = 0

        for (aventon in aventones) {
            def val = aventon.obtenerPuntuacionAventon()
            if (val && val < 2) {
                contador++
            }
        }

        return contador >= 5
    }

    static constraints = {
        vehiculo nullable: true
        ruta nullable: true
    }
}
