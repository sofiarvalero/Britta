// Hecho por José Correa

const db = require('../db/connection');


class UsuariosModel {
    async mostrarPorID(id) {
        return new Promise((resolve, reject) => {
            db.query(
                `SELECT * FROM Usuario WHERE id = ${ id };`,
                (err, results) => {
                    if (err) reject(err);
                    resolve(results);
                });
        });
    }
}


module.exports = new UsuariosModel();
