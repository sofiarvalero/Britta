// Hecho por Samuel Castillo

const cortina = document.getElementById('cortina');
const button = document.getElementById('regresar');
const cortina_derecha = document.getElementById('cortina-derecha');
const usuario = document.getElementsByClassName('autor')[0];
const h1 = document.getElementsByTagName('h1')[0];
const titulo = document.getElementsByClassName('titulo')[0];
const imagen = document.getElementsByTagName('main')[0].children[0].children[0];
const autor_div = document.getElementsByClassName('autor')[0];
const autor = document.getElementsByClassName('autor')[0].children[1];
const autor_img = document.getElementsByClassName('autor')[0].children[0].children[0];
const fecha = document.getElementsByClassName('fecha')[0].children[0];
const informacion = document.getElementsByClassName('parrafos')[0];
const etiquetas = document.getElementsByClassName('etiquetas')[0];

const url = new URL(window.location);


fetch(`http://localhost:3000/publicacion/${ url.searchParams.get('pub') }`)
    .catch(err => console.log(err))
    .then(data => data.json())
    .then(articulo => {
        h1.textContent = articulo.titulo;
        titulo.textContent = articulo.titulo;
        imagen.src = articulo.imagen;
        fecha.textContent = new Date(articulo.fecha).toLocaleString('es-US', { year: 'numeric', month: 'long', day: 'numeric' });
        informacion.textContent = articulo.informacion;

        autor_div.addEventListener('click', () => {
            i = 1;
        
            const cortinaWidth = setInterval(() => {
                cortina_derecha.style.setProperty('width', i + '%');
                i += i/15;
            }, 10);
        
            setTimeout(() => {
                clearInterval(cortinaWidth);
                window.location.replace(`/user/?user=${ articulo.id_usu }`);
            }, 1000);
        });

        fetch(`http://localhost:3000/categorias/${ articulo.id }`)
            .catch(err => console.log(err))
            .then(data => data.json())
            .then(categorias => {
                for (const categoria of categorias) {
                    const boton = document.createElement('button');

                    boton.textContent = categoria.categoria;

                    etiquetas.appendChild(boton);
                }
            });

        fetch(`/usuario/${ articulo.id_usu }`)
            .catch(err => console.log(err))
            .then(data => data.json())
            .then(usuario => {
                autor.textContent = usuario.nombre;
                autor_img.src = usuario.foto;
            });
    });


let i = 100;

let cortinaWidth = setInterval(() => {
    cortina.style.setProperty('width', i + '%');
    i -= i/15;
}, 10);


setTimeout(() => {
    clearInterval(cortinaWidth);
    cortina.style.setProperty('width', '0%');
    i = 0;
}, 1000);


button.addEventListener('click', () => {
    i = 1;

    cortinaWidth = setInterval(() => {
        cortina.style.setProperty('width', i + '%');
        i += i/15;
    }, 10);

    setTimeout(() => {
        clearInterval(cortinaWidth);
        cortina.style.setProperty('width', '100%');
        window.location.replace('/');
    }, 1000);
});

usuario.addEventListener('click', () => {
    i = 1;

    const cortinaWidth = setInterval(() => {
        cortina_derecha.style.setProperty('width', i + '%');
        i += i/15;
    }, 10);

    setTimeout(() => {
        clearInterval(cortinaWidth);
        window.location.replace('/user');
    }, 1000);
});
