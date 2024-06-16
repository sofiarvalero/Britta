// Hecho por José Correa

const db = require('../db/connection');


class DocumentosModel {
    async mostrar() {
        return new Promise((resolve, reject) => {
            db.query(
                'SELECT * FROM Documento;',
                (err, results) => {
                    if (err) reject(err);
                    resolve(results);
                });
        });
    }

    async mostrarNuevasPublicaciones() {
        return new Promise((resolve, reject) => {
            db.query(
                'SELECT * FROM Documento ORDER BY fecha DESC LIMIT 5;',
                (err, results) => {
                    if (err) reject(err);
                    resolve(results);
                });
        });
    }

    async mostrarPorCategoria(categoria) {
        return new Promise((resolve, reject) => {
            db.query(
                `SELECT Documento.id, titulo, imagen, informacion FROM Documento_Categoria INNER JOIN Documento ON Documento.id = Documento_Categoria.id_doc WHERE Documento_Categoria.id_cat = ${ categoria };`,
                (err, results) => {
                    if (err) reject(err);
                    resolve(results);
                });
        });
    }

    async mostrarPorID(id) {
        return new Promise((resolve, reject) => {
            db.query(
                `SELECT * FROM Documento WHERE id = ${ id }`,
                (err, results) => {
                    if (err) reject(err);
                    resolve(results);
                });
        });
    }

    async mostrarPorUsuario(usuario) {
        return new Promise((resolve, reject) => {
            db.query(
                `SELECT * FROM Documento WHERE id_usu = ${ usuario } ORDER BY fecha DESC;`,
                (err, results) => {
                    if (err) reject(err);
                    resolve(results);
                });
        });
    }
}


module.exports = new DocumentosModel();
