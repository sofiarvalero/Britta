// Hecho por José Correa

const express = require('express');
const router = express.Router();

const CategoriasController = require('../controllers/categorias.controller');
const DocumentosController = require('../controllers/documentos.controller');
const UsuariosController = require('../controllers/usuarios.controller');


router.get('/', (req, res) => {
    res.render('landing');
});

router.get('/search', (req, res) => {
    res.render('search');
});

router.get('/document', (req, res) => {
    res.render('document');
});

router.get('/user', (req, res) => {
    res.render('user');
});


router.get('/etiquetas', async (req, res) => {
    await CategoriasController.mostrar()
        .catch((err) => res.send(err))
        .then((categorias) => res.status(200).json(categorias));
});

router.get('/nuevas_publicaciones', async (req, res) => {
    await DocumentosController.mostrarNuevasPublicaciones()
        .catch((err) => res.send(err))
        .then((publicaciones) => res.status(200).json(publicaciones));
});

router.get('/publicaciones', async (req, res) => {
    await DocumentosController.mostrar()
        .catch((err) => res.send(err))
        .then((publicaciones) => res.status(200).json(publicaciones));
});

router.get('/publicaciones/:categoria', async (req, res) => {
    await DocumentosController.mostrarPorCategoria(req.params.categoria)
        .catch(err => res.send(err))
        .then(publicaciones => res.status(200).json(publicaciones));
});

router.get('/publicaciones/usuario/:usuario', async (req, res) => {
    await DocumentosController.mostrarPorUsuario(req.params.usuario)
        .catch(err => res.send(err))
        .then(articulos => res.status(200).json(articulos));
});

router.get('/publicacion/:id', async (req, res) => {
    await DocumentosController.mostrarPorID(req.params.id)
        .catch(err => res.send(err))
        .then(articulo => res.status(200).json(articulo[0]));
});

router.get('/usuario/:id', async (req, res) => {
    await UsuariosController.mostrarPorID(req.params.id)
        .catch(err => res.send(err))
        .then(usuario => res.status(200).json(usuario[0]));
});

router.get('/categorias/:documento', async (req, res) => {
    await CategoriasController.mostrarPorDocumento(req.params.documento)
        .catch(err => res.send(err))
        .then(categorias => res.status(200).json(categorias));
});


module.exports = router;
