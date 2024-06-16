// Hecho por Samuel Castillo

const UsuariosModel = require('../models/usuario.model');


class UsuariosController {
    async mostrarPorID(id) {
        return new Promise((resolve, reject) => {
            UsuariosModel.mostrarPorID(id)
                .catch((err) => reject(err))
                .then((usuario) => resolve(usuario));
        });
    }
}


module.exports = new UsuariosController();
