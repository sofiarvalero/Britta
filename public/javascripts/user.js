// Hecho por José Correa

const cortina = document.getElementById('cortina');
const cortina_right = document.getElementById('cortina-right');
const home = document.getElementById('home-link');
const tapa = document.getElementById('tapa');
const buscar = document.getElementsByClassName('buscar')[0];
const publicaciones_barra = document.getElementsByClassName('publicacion-reciente');
const articulos = document.getElementsByClassName('articulos')[0];
const foto_usuario = document.getElementsByClassName('foto-usuario')[0].children[0].children[0];
const user = document.getElementsByClassName('datos')[0].children[0];
const hobbies = document.getElementsByClassName('datos')[0].children[1];
const cantidad = document.getElementsByClassName('cantidad-trabajos')[0];
const publicaciones_recientes = document.getElementsByClassName('publicaciones-barras')[0];

const url = new URL(window.location);


fetch(`http://localhost:3000/usuario/${ url.searchParams.get('user') }`)
    .catch(err => console.log(err))
    .then(data => data.json())
    .then(usuario => {
        foto_usuario.src = usuario.foto;
        user.textContent = usuario.nombre
        hobbies.textContent = usuario.hobbies;
    });

fetch(`http://localhost:3000/publicaciones/usuario/${ url.searchParams.get('user') }`)
    .catch(err => console.log(err))
    .then(data => data.json())
    .then(publicaciones => {
        cantidad.textContent = `Trabajos realizados (${ publicaciones.length })`;

        for (const publicacion of publicaciones) {
            const article = document.createElement('article');
            const figure = document.createElement('figure');
            const img = document.createElement('img');
            const div = document.createElement('div');
            const header = document.createElement('header');
            const h3 = document.createElement('h3');
            const p = document.createElement('p');

            article.classList.add('articulo');
            article.id = publicacion.id;
            img.src = publicacion.imagen;
            h3.textContent = publicacion.titulo;
            p.textContent = publicacion.informacion.substr(0, 127) + '...';

            article.addEventListener('click', () => {
                i = 1;
        
                const cortinaWidth = setInterval(() => {
                    cortina_right.style.setProperty('width', i + '%');
                    i += i/15;
                }, 10);
        
                setTimeout(() => {
                    clearInterval(cortinaWidth);
                    window.location.replace(`/document/?pub=${ article.id }`);
                }, 1000);
            });

            article.appendChild(figure);
            article.appendChild(div);
            figure.appendChild(img);
            div.appendChild(header);
            div.appendChild(p);
            header.appendChild(h3);

            articulos.appendChild(article);
        }

        for (const publicacion of publicaciones) {
            console.log('ADI');
            const article = document.createElement('article');
            const figure = document.createElement('figure');
            const img = document.createElement('img');
            const div = document.createElement('div');
            const header = document.createElement('header');
            const h3 = document.createElement('h3');

            article.classList.add('publicacion-reciente');
            img.src = publicacion.imagen;
            h3.textContent = publicacion.titulo;

            article.addEventListener('click', () => {
                i = 1;
        
                const cortinaWidth = setInterval(() => {
                    cortina_right.style.setProperty('width', i + '%');
                    i += i/15;
                }, 10);
        
                setTimeout(() => {
                    clearInterval(cortinaWidth);
                    window.location.replace(`/document/?pub=${ article.id }`);
                }, 1000);
            });

            article.appendChild(figure);
            article.appendChild(div);
            figure.appendChild(img);
            div.appendChild(header);
            header.appendChild(h3);

            if (publicacion === publicaciones[0] || publicacion === publicaciones[1] || publicacion === publicaciones[2]) {
                publicaciones_recientes.appendChild(article);
            }
        }
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


home.addEventListener('click', () => {
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

buscar.addEventListener('click', () => {
    i = 1;

    divHeight = setInterval(() => {
        if (i < 1000000000) {
            tapa.style.setProperty('height', i + 'px');
            i += i/5;
        }
    }, 10);

    setTimeout(() => {
        clearInterval(divHeight);
        window.location.replace('/search');
    }, 1000);
});

for (const publicacion of publicaciones_barra) {
    publicacion.addEventListener('click', () => {
        i = 1;

        const cortinaWidth = setInterval(() => {
            cortina_right.style.setProperty('width', i + '%');
            i += i/15;
        }, 10);

        setTimeout(() => {
            clearInterval(cortinaWidth);
            window.location.replace('/document');
        }, 1000);
    });
}
