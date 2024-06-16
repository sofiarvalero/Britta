// Hecho por José Correa

const db = require('../db/connection');


class CategoriasModel {
    async mostrar() {
        return new Promise((resolve, reject) => {
            db.query(
                'SELECT * FROM Categoria;',
                (err, results) => {
                    if (err) reject(err);
                    resolve(results);
                });
        });
    }

    async mostrarPorDocumento(documento) {
        return new Promise((resolve, reject) => {
            db.query(
                `SELECT categoria FROM Documento_Categoria INNER JOIN Categoria ON Categoria.id = Documento_Categoria.id_cat WHERE Documento_Categoria.id_doc = ${ documento };`,
                (err, results) => {
                    if (err) reject(err);
                    resolve(results);
                });
        });
    }
}


module.exports = new CategoriasModel();
