// Hecho por Samuel Castillo

const header = document.getElementsByClassName('encabezado')[0];
const body = document.getElementsByTagName('body')[0];
const button = document.getElementById('regresar');
const cortina = document.getElementById('cortina');
const publicaciones = document.getElementsByTagName('article');
const articulos_div = document.getElementsByClassName('articulos')[0];
const buscar = document.getElementsByClassName('buscar-input')[0];
const cerrar = document.getElementsByClassName('cerrar')[0];


fetch('http://localhost:3000/publicaciones')
    .catch(err => console.log(err))
    .then(data => data.json())
    .then(publicaciones => {
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


let i = 1;
let j = 1;

let heightBody = setInterval(() => {
    body.style.setProperty('height', i + 'vh');
    i += i/10;
}, 10);

let opacityHeader = setInterval(() => {
    header.style.setProperty('opacity', j + '%');
    j += j/15;
}, 10);

setTimeout(() => {
    clearInterval(opacityHeader);
    clearInterval(heightBody);
    body.style.setProperty('height', '97vh');
    header.style.setProperty('opacity', '100%');
}, 1000);


button.addEventListener('click', () => {
    i = 97;
    j = 100;

    heightBody = setInterval(() => {
        body.style.setProperty('height', i + 'vh');
        i -= i/15;
    }, 10);

    opacityHeader = setInterval(() => {
        header.style.setProperty('opacity', j + '%');
        j -= j/10;
    }, 10);

    setTimeout(() => {
        clearInterval(opacityHeader);
        clearInterval(heightBody);
        body.style.setProperty('height', '0vh');
        header.style.setProperty('opacity', '0%');
        window.location.replace('/');
    }, 1000);
});


buscar.addEventListener('input', () => {
    setTimeout(() => {
        fetch('http://localhost:3000/publicaciones')
            .catch(err => console.log(err))
            .then(data => data.json())
            .then(publicaciones => {
                articulos_div.innerHTML = '';

                for (const publicacion of publicaciones) {
                    if (publicacion.titulo.toLowerCase().includes(buscar.value.toLowerCase())) {
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
                }
            });
    }, 500);
});

cerrar.addEventListener('click', () => {
    buscar.value = '';

    fetch('http://localhost:3000/publicaciones')
        .catch(err => console.log(err))
        .then(data => data.json())
        .then(publicaciones => {
            articulos_div.innerHTML = '';

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
});
