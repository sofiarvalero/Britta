// Hecho por Samuel Castillo

const CategoriasModel = require('../models/categorias.model');


class CategoriasController {
    async mostrar() {
        return new Promise((resolve, reject) => {
            CategoriasModel.mostrar()
                .catch((err) => reject(err))
                .then((documentos) => resolve(documentos));
        });
    }

    async mostrarPorDocumento(documento) {
        return new Promise((resolve, reject) => {
            CategoriasModel.mostrarPorDocumento(documento)
                .catch(err => reject(err))
                .then(categorias => resolve(categorias));
        });
    }
}


module.exports = new CategoriasController();
