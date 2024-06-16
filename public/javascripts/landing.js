// Hecho por José Correa

const button = document.getElementsByClassName('buscar')[0];
const perfil = document.getElementById('perfil');
const tapa = document.getElementById('tapa');
const cortina = document.getElementById('cortina');
const publicaciones = document.getElementsByTagName('article');
const etiquetas = document.getElementsByClassName('etiquetas')[0];
const publicaciones_barra = document.getElementsByClassName('publicaciones-barra')[0];
const articulos_div = document.getElementsByClassName('articulos')[0];


fetch('http://localhost:3000/etiquetas')
    .catch(err => console.log(err))
    .then(data => data.json())
    .then(etiquetas_json => {
        for (const etiqueta of etiquetas_json) {
            const boton = document.createElement('button');

            boton.textContent = etiqueta.categoria;
            boton.name = etiqueta.id;

            boton.addEventListener('click', () => {
                fetch(`publicaciones/${ etiqueta.id }`)
                    .catch(err => console.log(err))
                    .then(data => data.json())
                    .then(articulos => {
                        for (const etiqueta of etiquetas.children) {
                            etiqueta.style.setProperty('color', '#FFFFFF');
                            etiqueta.style.setProperty('background-color', '#383838');
                        }

                        boton.style.setProperty('color', '#383838');
                        boton.style.setProperty('background-color', '#FFFFFF');

                        articulos_div.innerHTML = '';
        
                        for (const publicacion of articulos) {
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
                                    cortina.style.setProperty('width', i + '%');
                                    i += i/15;
                                }, 10);
                        
                                setTimeout(() => {
                                    clearInterval(cortinaWidth);
                                    window.location.replace(`/document/?pub=${ publicacion.id }`);
                                }, 1000);
                            });
                
                            article.appendChild(figure);
                            article.appendChild(div);
                            figure.appendChild(img);
                            div.appendChild(header);
                            div.appendChild(p);
                            header.appendChild(h3);
                
                            articulos_div.appendChild(article);
                        }
                    });
            });

            etiquetas.appendChild(boton);
        }
    });

fetch('http://localhost:3000/nuevas_publicaciones')
    .catch(err => console.log(err))
    .then(data => data.json())
    .then(nuevas_publicaciones => {
        for (const publicacion of nuevas_publicaciones) {
            const article = document.createElement('article');
            const figure = document.createElement('figure');
            const img = document.createElement('img');
            const div = document.createElement('div');
            const header = document.createElement('header');
            const h3 = document.createElement('h3');
            const p = document.createElement('p');

            article.classList.add('publicacion-reciente');
            article.id = publicacion.id;
            img.src = publicacion.imagen;
            h3.textContent = publicacion.titulo;
            p.textContent = publicacion.informacion.substr(0, 127) + '...';

            article.addEventListener('click', () => {
                i = 1;
        
                const cortinaWidth = setInterval(() => {
                    cortina.style.setProperty('width', i + '%');
                    i += i/15;
                }, 10);
        
                setTimeout(() => {
                    clearInterval(cortinaWidth);
                    window.location.replace(`/document/?pub=${ publicacion.id }`);
                }, 1000);
            });

            article.appendChild(figure);
            article.appendChild(div);
            figure.appendChild(img);
            div.appendChild(header);
            div.appendChild(p);
            header.appendChild(h3);

            publicaciones_barra.appendChild(article);
        }
    });

fetch('http://localhost:3000/publicaciones')
    .catch(err => console.log(err))
    .then(data => data.json())
    .then(articulos => {
        for (const publicacion of articulos) {
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
                    cortina.style.setProperty('width', i + '%');
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

            articulos_div.appendChild(article);
        }
    });


let i = 10000;

let divHeight = setInterval(() => {
    if (i > 0) {
        tapa.style.setProperty('height', i + 'px');
        i -= i/10;
    }
}, 10);

setTimeout(() => {
    tapa.style.setProperty('height', '0px');
    clearInterval(divHeight);
}, 1000);


button.addEventListener('click', () => {
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

perfil.addEventListener('click', () => {
    i = 1;

    const cortinaWidth = setInterval(() => {
        cortina.style.setProperty('width', i + '%');
        i += i/15;
    }, 10);

    setTimeout(() => {
        clearInterval(cortinaWidth);
        window.location.replace('/user/?user=1');
    }, 1000);
});
