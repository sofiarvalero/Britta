// Hecho por José Correa

const DocumentosModel = require('../models/documentos.model');


class DocumentosController {
    async mostrar() {
        return new Promise((resolve, reject) => {
            DocumentosModel.mostrar()
                .catch((err) => reject(err))
                .then((documentos) => resolve(documentos));
        });
    }

    async mostrarNuevasPublicaciones() {
        return new Promise((resolve, reject) => {
            DocumentosModel.mostrarNuevasPublicaciones()
                .catch((err) => reject(err))
                .then((documentos) => resolve(documentos));
        });
    }

    async mostrarPorCategoria(categoria) {
        return new Promise((resolve, reject) => {
            DocumentosModel.mostrarPorCategoria(categoria)
                .catch(err => reject(err))
                .then(documentos => resolve(documentos));
        })
    }

    async mostrarPorID(id) {
        return new Promise((resolve, reject) => {
            DocumentosModel.mostrarPorID(id)
                .catch(err => reject(err))
                .then(articulo => resolve(articulo));
        });
    }

    async mostrarPorUsuario(usuario) {
        return new Promise((resolve, reject) => {
            DocumentosModel.mostrarPorUsuario(usuario)
                .catch(err => reject(err))
                .then(articulos => resolve(articulos));
        });
    }
}


module.exports = new DocumentosController();
