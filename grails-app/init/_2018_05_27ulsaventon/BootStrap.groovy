package _2018_05_27ulsaventon

import mx.edu.ulsaoaxaca.aventon.*

class BootStrap {

    def init = { servletContext ->

        // -----------------
        // CÓDIGO ESENCIAL
        // -----------------

        // Roles
        def rolAdministrador = Rol.find { authority == Rol.ADMINISTRADOR }
        def rolBeneficiario = Rol.find { authority == Rol.BENEFICIARIO }

        if (!rolAdministrador) {
            rolAdministrador = new Rol(authority: Rol.ADMINISTRADOR).save()
        }

        if (!rolBeneficiario) {
            rolBeneficiario = new Rol(authority: Rol.BENEFICIARIO).save()
        }

        // Usuarios

        if (!Usuario.find { username == "root" }) {
            def personaAdministrador =
                new Persona(
                    nombres: "José Adrián",
                    apellidoPaterno: "Villanueva",
                    apellidoMaterno: "Ortiz")

            def usuarioAdministrador =
                new Usuario(
                    username: "root",
                    password: "Mexico.2018",
                    persona: personaAdministrador,
                    chofer: new Chofer(),
                    pasajero: new Pasajero()).save()

            println personaAdministrador
            println usuarioAdministrador

            UsuarioRol.create usuarioAdministrador, rolAdministrador
        }

        if (!Usuario.find { username == "014230035" }) {
            def personaBeneficiario1 =
                new Persona(
                    nombres: "Ángel Daniel",
                    apellidoPaterno: "Alonso",
                    apellidoMaterno: "Tovar")

            def usuarioBeneficiario1 =
                new Usuario(
                    username: "014230035",
                    password: "Mexico.2018",
                    persona: personaBeneficiario1,
                    chofer: new Chofer(),
                    pasajero: new Pasajero()).save()

            println personaBeneficiario1
            println usuarioBeneficiario1

            UsuarioRol.create usuarioBeneficiario1, rolBeneficiario
        }

        if (!Usuario.find { username == "014230001" }) {
            def personaBeneficiario2 =
                new Persona(
                    nombres: "Lino Alejandro",
                    apellidoPaterno: "Arango",
                    apellidoMaterno: "Cruz")

            def usuarioBeneficiario2 =
                new Usuario(
                    username: "014230001",
                    password: "Mexico.2018",
                    persona: personaBeneficiario2,
                    chofer: new Chofer(),
                    pasajero: new Pasajero()).save()

            println personaBeneficiario2
            println usuarioBeneficiario2

            UsuarioRol.create usuarioBeneficiario2, rolBeneficiario
        }

    }
    def destroy = {
    }
}
