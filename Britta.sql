-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 16-06-2024 a las 07:49:36
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Britta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Categoria`
--

CREATE TABLE `Categoria` (
  `id` int(32) NOT NULL,
  `categoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Categoria`
--

INSERT INTO `Categoria` (`id`, `categoria`) VALUES
(6, 'Criptografia'),
(4, 'Crucigramas'),
(8, 'Fisica'),
(11, 'Física Teorica'),
(9, 'Ingenieria en Computacion'),
(5, 'Linguistica'),
(2, 'Magia'),
(3, 'Magia Negra'),
(10, 'Matematica Pura'),
(7, 'Relatividad'),
(1, 'Teoría musical');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Documento`
--

CREATE TABLE `Documento` (
  `id` int(32) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `imagen` varchar(500) NOT NULL,
  `informacion` text NOT NULL,
  `id_usu` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Documento`
--

INSERT INTO `Documento` (`id`, `titulo`, `fecha`, `imagen`, `informacion`, `id_usu`) VALUES
(1, 'Intercambio Modal', '2020-01-20', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Acordes_de_IM.jpg/350px-Acordes_de_IM.jpg', 'Dentro del denominado período musical de la práctica común (1600-1900), los modos eclesiásticos, un legado de la música pre-tonal, se encuentran casi exclusivamente como una variante del sistema mayor-menor, con diferentes efectos armónicos en su aplicación. En ese sentido, las escalas modales eran empleadas para reflejar alguna sonoridad arcaica y en algunos casos para expandir las posibilidades armónicas. Pero es indudable que hacia finales del siglo xix, se produce un creciente uso de la armonía modal, debido también al empleo de estas sonoridades en la música folklórica de diferentes países, que ha tenido gran influencia en los llamados compositores nacionalistas, sobre todo en los rusos (Mussorsgky, Balakiev, Rimski-Kórsakov, etc.). La música francesa de fines del siglo xix (Ravel, Debussy, Saint-Saëns) también se caracteriza por un fuerte uso de armonías modales, paralelas y del empleo de escalas simétricas. Por otro lado, la fluctuación entre los modos mayor y menor fue siempre frecuente entre las composiciones desde el inicio del período tonal. Ambas tonalidades no son tan diferentes en la práctica como sus respectivas escalas parecen indicar. Es normal además que, como parte de la evolución de la música, el desarrollo de la tonalidad se ampliara con el empleo de acordes diferentes a los siete generados por la propia escala o el uso de los dominantes secundarios. Todo esto se produce dentro de un mismo marco o tonalidad, originando una pequeña desviación armónica, pero dentro del mismo centro tonal. Indudablemente con el tiempo y el empleo cada vez más profuso - como ya se ha mencionado - de las escalas modales, la mayor interacción entre los modos mayor y menor se vio reflejada en un uso cada vez mayor de estos acordes prestados. El cambio de modo se percibe realmente cuando el acorde de tónica es el que cambia. Sin embargo si se emplean los demás grados de la tonalidad opuesta, la sensación es solo temporal. Por ejemplo el IV grado menor, dentro de la tonalidad mayor es una progresión muy frecuente en la práctica común. Los acordes de sexta napolitana pertenecen al mismo ámbito de intercambio. Con el surgir del jazz y otras músicas que fusionaron estilos afroamericanos con europeos, y de la mano de compositores del siglo xx como Bartok, Schönberg, Gershwin, Gil Evans, Miles Davis, entre otros, el Intercambio Modal se afianza como técnica y entra en los libros, sistematizando el uso de un solo modo dentro de un sencillo esquema armónico repetitivo.1​', 1),
(2, 'Polirritmia', '2020-01-30', 'https://imgv2-2-f.scribdassets.com/img/document/427454156/original/f94bbf0921/1717726575?v=1', 'El concepto fue planteado inicialmente por el poeta africano Léopold Sédar Senghor para referirse al contrapunto rítmico existente entre el ritmo de la palabra y el ritmo de los tambores, presente en la música africana. El musicólogo de jazz Alfons M. Dauer lo define con más precisión como un sistema rítmico en el que, sobre un mismo sistema de medida (es decir, sobre un esquema de compases permanente), se utilizan acentuaciones rítmicas diferentes, combinadas y/o superpuestas para las distintas voces. En una partitura, las líneas divisorias de los compases serían, en sentido vertical, paralelas unas a otras, como en la música europea, pero la forma de marcar el ritmo sería diferente para las distintas voces.​', 1),
(3, 'Polimetria', '2020-02-01', 'https://ariondrums.wordpress.com/wp-content/uploads/2020/06/screenshot_2020-06-28-23-09-597808216026423819570.jpg?w=514', 'En la polimetría, suenan al mismo tiempo varios metros fundamentales de diverso tipo. Por ejemplo, un tambor suena en compás de 4/4, otro en 3/4 y un tercero en 2/4. Las entradas de los distintos tambores no deben coincidir. En representación de partitura, las líneas divisorias de los compases no pueden trazarse rectas atravesando toda la partitura, como es usual en la música occidental. No obstante, la duración de los metros es la misma, es decir, la secuencia de líneas divisorias del compás cada cierto número de compases coincide y se repite regularmente.​', 1),
(4, '¿Por qué Música es una Carrera Universitaria?', '2020-02-10', 'https://www.unir.net/wp-content/uploads/2022/02/Musica_carrousell_desk-_1920x1080.jpg', 'En las clases de teoría musical aprenderás que se conoce como música al conjunto de sonidos y silencios que pueden ser registrados en un pentagrama (esos papeles donde el compositor musical, mediante símbolos llamados corcheas y semicorcheas, puede plasmar la armonía, el ritmo, la melodía; las notas y los acordes de una canción o pieza instrumental) o que puedes escuchar en la radio, la televisión, o en los conciertos, manifestando la sensibilidad y la emoción que caracteriza al ser humano en presencia del arte. Al ser la música un arte que te ayuda a expresar y transmitir los sentimientos, las sensaciones, sensibilidades y estados de ánimo; alegrando la vida de las personas con un sentido armónico y lleno de esperanzas, podrías considerar los motivos para estudiar licenciatura en música: Favorece la capacidad de aprender matemáticas: A través de la solución de problemas. Estimula la creatividad: Las personas que generan nuevas ideas a través de la música son mejores que los que no lo hacen. Brinda beneficios para ser empáticos socialmente: Los músicos son clave importante de los fenómenos culturales y sociales por su sensibilidad artística. Fortalece el aprendizaje de la memoria: la música fortalece el aprendizaje a través de las hormonas relacionadas con el estrés. Permite invocar experiencias y recuerdos: ya que incide sobre los latidos del corazón y modula la velocidad de las ondas cerebrales. Desarrolla la inteligencia: Estimula la activación de la corteza cerebral, sobre todo en las zonas frontales, por lo que es útil para la salud, la educación, y la musicoterapia es de gran utilidad.', 1),
(5, 'Black holes', '2000-01-20', 'https://cdn.mos.cms.futurecdn.net/HsDtpFEHbDpae6wBuW5wQo.jpg', 'A black hole is a region of spacetime where gravity is so strong that nothing, not even light and other electromagnetic waves, is capable of possessing enough energy to escape it. Einsteins theory of general relativity predicts that a sufficiently compact mass can deform spacetime to form a black hole. The boundary of no escape is called the event horizon. A black hole has a great effect on the fate and circumstances of an object crossing it, but it has no locally detectable features according to general relativity. In many ways, a black hole acts like an ideal black body, as it reflects no light. Quantum field theory in curved spacetime predicts that event horizons emit Hawking radiation, with the same spectrum as a black body of a temperature inversely proportional to its mass. This temperature is of the order of billionths of a kelvin for stellar black holes, making it essentially impossible to observe directly. Objects whose gravitational fields are too strong for light to escape were first considered in the 18th century by John Michell and Pierre-Simon Laplace.[8] In 1916, Karl Schwarzschild found the first modern solution of general relativity that would characterize a black hole. David Finkelstein, in 1958, first published the interpretation of \"black hole\" as a region of space from which nothing can escape. Black holes were long considered a mathematical curiosity; it was not until the 1960s that theoretical work showed they were a generic prediction of general relativity. The discovery of neutron stars by Jocelyn Bell Burnell in 1967 sparked interest in gravitationally collapsed compact objects as a possible astrophysical reality. The first black hole known was Cygnus X-1, identified by several researchers independently in 1971.[9][10] Black holes of stellar mass form when massive stars collapse at the end of their life cycle. After a black hole has formed, it can grow by absorbing mass from its surroundings. Supermassive black holes of millions of solar masses (M☉) may form by absorbing other stars and merging with other black holes, or via direct collapse of gas clouds. There is consensus that supermassive black holes exist in the centres of most galaxies. The presence of a black hole can be inferred through its interaction with other matter and with electromagnetic radiation such as visible light. Any matter that falls toward a black hole can form an external accretion disk heated by friction, forming quasars, some of the brightest objects in the universe. Stars passing too close to a supermassive black hole can be shredded into streamers that shine very brightly before being \"swallowed.\"[11] If other stars are orbiting a black hole, their orbits can be used to determine the black holes mass and location. Such observations can be used to exclude possible alternatives such as neutron stars. In this way, astronomers have identified numerous stellar black hole candidates in binary systems and established that the radio source known as Sagittarius A*, at the core of the Milky Way galaxy, contains a supermassive black hole of about 4.3 million solar masses.', 2),
(6, 'Entropia de los Agujeros Negros', '2000-01-30', 'https://www.researchgate.net/publication/308980984/figure/fig8/AS:473944387002368@1490008555147/Black-Hole-entropy-and-Bekeinstein-Hawking-idea.png', 'Según Stephen Hawking, en los agujeros negros se fusionan el segundo principio de la termodinámica, lo que dio pie a especulaciones sobre viajes en el espacio-tiempo y agujeros de gusano. El tema está siendo motivo de revisión; Hawking se retractó de su teoría inicial y admitió que la entropía de la materia se conserva en el interior de un agujero negro (véase enlace externo). Según Hawking, a pesar de la imposibilidad física de escape de un agujero negro, estos pueden terminar evaporándose por la llamada radiación de Hawking, una fuente de rayos X que escapa del horizonte de sucesos. La hipótesis de que los agujeros negros contienen una entropía y que, además, esta es finita, requiere para ser consecuente que tales agujeros emitan radiaciones térmicas, lo que al principio parece increíble. La explicación es que la radiación emitida escapa del agujero negro, de una región de la que el observador exterior no conoce más que su masa, su momento angular y su carga eléctrica. Eso significa que son igualmente probables todas las combinaciones o configuraciones de radiaciones de partículas que tengan energía, momento angular y carga eléctrica iguales. Son muchas las posibilidades de entes, si se quiere hasta de los más exóticos, que pueden ser emitidos por un agujero negro, pero ello corresponde a un número reducido de configuraciones. El número mayor de configuraciones corresponde con mucho a una emisión con un espectro que es casi térmico. Físicos como Jacob D. Bekenstein han relacionado los agujeros negros y su entropía con la teoría de la información. Los trabajos de Bekenstein sobre teoría de la información y agujeros negros sugirieron que la segunda ley seguiría siendo válida si se introducía una entropía generalizada (Sgen) que sumara a la entropía convencional (Sconv), la entropía atribuible a los agujeros negros que depende del área total (A) de agujeros negros en el universo. Concretamente esta entropía generalizada debe definirse como', 2),
(7, 'Agujeros Negros, Clasificacion Segun la Masa', '2000-02-01', 'https://paolera.wordpress.com/wp-content/uploads/2022/03/image-2.png', 'Agujeros negros supermasivos: con varios millones de masas solares. Se hallarían en el centro de varias galaxias, por ejemplo en la nuestra, llamado Sagitario A*. Se forman en el mismo proceso que da origen a los componentes esféricos de las galaxias. Agujeros negros de masa intermedia: (IMBH) es una clase de agujero negro con una masa en el rango de 100 a un millón de masas solares, significativamente más que los agujeros negros estelares, pero menos que los agujeros negros supermasivos. Agujeros negros de masa estelar: Se forman cuando una estrella de más de 30-70 masas solares se convierte en supernova e implosiona. Tienen más de tres masas solares. Su núcleo se concentra en un volumen muy pequeño que cada vez se va reduciendo más. Este es el tipo de agujeros negros postulados por primera vez dentro de la teoría de la relatividad general. Micro agujeros negros: Son objetos hipotéticos, algo más pequeños que los estelares. Si son suficientemente pequeños, pueden llegar a evaporarse en un período relativamente corto mediante emisión de radiación de Hawking. Este tipo de entidades físicas es postulado en algunos enfoques de la gravedad cuántica, pero no pueden ser generados por un proceso convencional de colapso gravitatorio, el cual requiere masas superiores a la del Sol.', 2),
(8, 'Historia de los Agujeros Negros', '2000-02-10', 'https://www.bbvaopenmind.com/wp-content/uploads/2016/01/BBVA-OpenMind-1-hawking-1-1.jpg', 'El concepto de un cuerpo tan denso que ni siquiera la luz puede escapar de él fue descrito en un artículo enviado en 1783 a la Royal Society por el geólogo y clérigo inglés John Michell. Por aquel entonces la teoría de Newton de la gravitación y el concepto de velocidad de escape eran muy conocidas. Michell calculó que un cuerpo con una densidad 500 veces mayor a la del Sol, pero con su mismo radio, tendría, en su superficie, una velocidad de escape igual a la de la luz y sería invisible. En 1796, el matemático francés Pierre-Simon Laplace explicó en las dos primeras ediciones de su libro Exposition du Systeme du Monde la misma idea, aunque, al ganar terreno la idea de que la luz era una onda sin masa, en el siglo xix fue descartada en ediciones posteriores. En 1915, Einstein desarrolló la relatividad general y demostró que la luz era influida por la interacción gravitatoria. Unos meses después, Karl Schwarzschild encontró una solución a las ecuaciones de Einstein, donde un cuerpo pesado absorbería la luz. Se sabe ahora que el radio de Schwarzschild es el radio del horizonte de sucesos de un agujero negro que no gira, pero esto no era bien entendido en aquel entonces. El propio Schwarzschild pensó que no era más que una solución matemática, no física. En 1930, Subrahmanyan Chandrasekhar demostró que un cuerpo con una masa crítica (ahora conocida como límite de Chandrasekhar) y que no emitiese radiación, colapsaría por su propia gravedad porque no habría nada que se conociera que pudiera frenarla (para dicha masa la fuerza de atracción gravitatoria sería mayor que la proporcionada por el principio de exclusión de Pauli). Sin embargo, Eddington se opuso a la idea de que la estrella alcanzara un tamaño nulo, lo que implicaría una singularidad desnuda de materia, y que debería haber algo que inevitablemente pusiera freno al colapso, línea adoptada por la mayoría de los científicos. En 1939, Robert Oppenheimer predijo que una estrella masiva podría sufrir un colapso gravitatorio y, por tanto, los agujeros negros podrían ser formados en la naturaleza. Esta teoría no fue objeto de mucha atención hasta los años 60, porque, después de la Segunda Guerra Mundial se tenía más interés en lo que sucedía a escala atómica. En 1967, Stephen Hawking y Roger Penrose probaron que los agujeros negros son soluciones a las ecuaciones de Einstein y que en determinados casos no se podría impedir que se crease un agujero negro a partir de un colapso. La idea de agujero negro tomó fuerza con los avances científicos y experimentales que llevaron al descubrimiento de los púlsares. Poco después, en 1969, John Wheeler10​ acuñó la locución «agujero negro» durante una reunión de cosmólogos en Nueva York, para designar lo que anteriormente se llamó «estrella en colapso gravitatorio completo». El 10 de abril de 2019, el consorcio internacional Telescopio del Horizonte de Sucesos presentó la primera imagen jamás capturada de un agujero negro supermasivo ubicado en el centro de la galaxia M87. Se esperaba a su vez el anuncio de otra imagen real de un agujero negro en Sagitario A*; sin embargo, aclararon que no se había obtenido porque la fuente era muy variable durante los periodos de observación, resolviéndose en un futuro.8​9​', 2),
(9, 'Magia', '2000-03-20', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRN8oZwMOX0XM_Pwfz3xQWYjIKWpQ3Yh5Gq1A&s', 'La magia, entendida como arte o ciencia oculta, es la creencia y prácticas que buscan producir resultados sobrenaturales mediante rituales, conjuros e invocaciones. La magia es un concepto amplio y puede tener diferentes significados dependiendo del contexto en el que se use. En términos generales, la magia se refiere a la creencia en el poder sobrenatural para producir efectos que van más allá de las leyes cotidianas de la naturaleza. El término magia también se usa para referirse al arte del ilusionismo, el cual se vale de técnicas o trucos utilizados para crear ilusiones o efectos especiales en espectáculos de entretenimiento. En resumen, la magia implica la creencia en el uso de habilidades sobrenaturales para producir efectos cuya correlación no son explicables por la ciencia o la razón. Etimología Proviene del latín magīa,1​ derivado a su vez del griego μαγεία mageia (‘cualidad de sobrenatural’),2​ y del griego magiké (que presumiblemente se utilizaba en el término «artes mágicas» junto con la palabra tekhné, ‘artes’), el cual es el femenino de magikós (‘mágico’) que proviene de magos (‘uno de los miembros de la clase sacerdotal y erudita’).[cita requerida] Este término proviene del antiguo persa maguš (mágush), que posiblemente proviene de una raíz protoindoeuropea *magh-, ‘ser capaz’, ‘tener la capacidad’.3​ Desde esa antiquísima palabra protoindoeuropea (de mediados y fines del III milenio a. C.) se produjo también el sánscrito māiā (‘ilusión’, ‘irrealidad’, ‘engaño’, ‘fraude’, ‘truco’, ‘hechicería’, ‘brujería’),4​ que se menciona por primera vez en el Rig-veda (el texto más antiguo de la India, de mediados del II milenio a. C.). Esa palabra proviene de la raíz sánscrita māi (‘obrar’, ‘mover’). Contextualización de la magia Inversamente a la teología, a la filosofía y a las ciencias ortodoxas que versan e importan sobre las causas, la magia, para autoformularse y autodefinirse, se define como la manifestación de la supuesta veracidad maravillante de algunos efectos que no requiere averiguar sus causas. Conocer las causas o que el efecto no sea maravilloso extingue la magia y el pensamiento mágico migra a otros tipos de pensamiento, (de los supuestos «efectos mágicos» se deriva la metonimia histórica con la medicina y la farmacología).[cita requerida] A través de la aceptación de la existencia de la magia, se acepta implícitamente a esta como la causa abstracta o seudoabstracta del efecto mágico, como un principio o verdad primaria a partir del cual se desarrolla toda la parafernalia seudológica. Desde tiempos muy remotos, se aspira a develar, a conocer y a usar lo que presumiblemente estaría oculto a los sentidos (cognición), oculto a la percepción sensorial clásica, a la lógica, a la razón y al criterio. Estos son, como mínimo, los tres elementos esenciales a la magia genérica: Un «efecto» que se percibe como «maravilloso» cuya causa sea desconocida e «inexplicable» en el momento considerado. La magia no busca axiomas imperativos, una antonomasia de la magia es el tópico del «objeto que aparece de la nada» o por arte de magia, la magia es la causa misma. Entre sus atribuciones funcionales más antiguas y características (arquetipo) estaría la facultad de la adivinación, que no se debe conceptualizar junto con la profecía.[cita requerida] La magia, en su acepción más arcaica, es disidente del axioma racional que afirmaría que el universo estaría exclusivamente gobernado por las «leyes naturales o materiales» conocidas o por conocer y habitado solo por la materia. Esta magia arcaica, con un criterio inherente de dualidad espíritu-materia, dio origen al pensamiento mágico y en el entorno de las primeras civilizaciones, a dos clasificaciones evolutivas de la magia, historialmente llamadas «magia natural» y «magias no naturales o filosofías ocultas».', 3),
(10, 'Hisotria de la Magia', '2000-03-30', 'https://i0.wp.com/tiendatrucosmagia.com/wp-content/uploads/2017/11/Historia-de-la-Magia.-Desde-sus-Or%C3%ADgenes-hasta-la-Magia-en-la-actualidad.jpg?resize=1068%2C601&ssl=1', 'La evidencia más antigua de pensamiento mágico que se conoce se encuentran en las pinturas rupestres halladas en cuevas como la de Lascaux, en el sudoeste de Francia La relación entre estas pinturas y la magia fue señalada por primera vez en 1865 por el antropología Edward Burnnett Tylor. Por su parte el arqueólogo francés Abbé Breuil describió estas pinturas como \"magia de caza\", ya que proporcionaban \"poder sobre la presa\". Estas pinturas se encuentran en lugares reconditos a los que es difícil acceder, por lo que las pinturas rupestres se han interpretado como una forma de conexión con otro mundo secreto. En este sentido, son signos de un chamanismo temprano. Por lo que se puede conjeturar que la magia es algo arraigado históricamente al ser humano. El término magia deriva de magi, uno de los elementos religiosos incorporados por los magos en la antigua Babilonia. En el antiguo Egipto el mago \"hekai\" palabra que procede de \"heka\", \"poder mágico o activación del alma\", era la persona encargada de la administración y el ejercicio de la magia, muchos de ellos eran sacerdotes sais. El hijo de Ramsés II , Setna Khaemuaset, sumo sacerdote, tenía fama de gran mago. En el papiro Westcar, el sacerdote-lector, personaje principal de la narración, es un gran mago. Hubo magos en Roma, donde Zatchlas es un mago al que se le atribuye la resurrección de un muerto; en Grecia y en casi todo el mundo occidental y oriental de la Antigüedad, cuando la magia o hechicería populares estaban relacionadas con antiguos ritos de fertilidad e iniciación en el conocimiento en los pueblos llamados bárbaros, principalmente los chinos. La magia y la hechicería estaban ligadas también a las creencias de pueblos orientales muy antiguos, en los que el mago o brujo era a la vez un sanador y un conocedor del mundo invisible de los espíritus y desempeñaba un papel preponderante en la comunidad. En Grecia y Roma los adivinos y magos no tenían ya nada que ver con los chamanes, aunque eran consultados sobre todo por los poderes de adivinación de los que se creía estaban dotados. En la Europa medieval la magia estuvo relacionada con la alquimia y la astrología, actividades ocultas consideradas demoníacas por la Iglesia católica, y que fueron objeto de persecución especialmente durante la Baja Edad Media y la Era Moderna. Unas 500.000 personas [cita requerida] resultaron procesadas y gran parte ejecutadas por tribunales civiles y religiosos, acusadas de brujería, a lo largo de casi cinco siglos. Debe señalarse que ninguna de las grandes religiones acepta las prácticas de la magia (sí consideran que la magia existe como tal), tampoco otras creencias cristianas. En lo que respecta a las religiones judeocristianas en particular, se encuentran bastantes referencias negativas a los magos en el Antiguo y Nuevo Testamento aunque hayan magos celebres como La Bruja de Endor (Samuel I 28,7-14), Los Reyes Magos (Mateo 2,1-12) y los Genios (Corán, 15, 26-27). El hermetismo (llamado la antigua ciencia en el medievo) influyó en el pensamiento del Renacimiento. Esta pseudociencia se vincula, en algunos aspectos, con el mantenimiento de antiguas creencias que, como la magia, conducían al conocimiento y manejo de las leyes espirituales del universo. En 1463, Cosme de Médici encargó la traducción de la obra de Hermes Trimegisto, que se suponía escrita en el antiguo Egipto pero que, para muchos, data de los primeros siglos de la era cristiana y que es la piedra angular del movimiento hermético o gnóstico (de gnosis, conocimiento). La adivinación mediante el tarot fue una actividad frecuente en el nacimiento de la Era Moderna y los sistemas de símbolos desarrollados por los cartománticos para el conocimiento de la realidad presente y futura son claramente deudores de otros métodos de adivinación practicados por los magos, entre ellos la lectura del vuelo de las aves y de las entrañas de los animales sacrificados. Prácticas de simple hechicería, adivinación, astrología, lectura de barajas y de libros oraculares como el antiquísimo I Ching de los chinos, o el alfabeto rúnico de los escandinavos, magia wiccana con las runas brujas o wicca y la magia alquímica con las runas de los sabios magia rúnica. aspectos del hinduismo, el yoga y hasta la creencia en la divinidad de civilizaciones extraterrestres y su presencia entre los humanos constituyeron desde mediados del siglo xx un conglomerado poco articulado que se conoce como movimiento de la Nueva Era (en inglés New Age).', 3),
(11, 'Tipos de Magias', '2000-04-01', 'https://static.wixstatic.com/media/e91097_939a2c416a24495bbb380fc7829480dd.jpg/v1/fill/w_900,h_600,al_c,q_85,enc_auto/e91097_939a2c416a24495bbb380fc7829480dd.jpg', 'Las santerías Es de relevancia mencionar la consecuencia colonial del mestizaje, que no solo es de manera racial, como se abordaría en el punto de vista biológico, sino que ante todo responde al intercambio sociocultural. A manera de ejemplo podemos tomar a la llamada santería que, a rasgos generales, es considerada como un conjunto de elementos que componen al catolicismo y a las tradiciones yorubas que importaron los esclavos negros capturados en Nigeria y trasladados a Cuba13​. Esta conjugación de sistemas religiosos sigue siendo practicada hasta nuestros días en diversas partes de Latinoamérica, y no solo es regida por la devoción a los santos identificados con los orishas, sino que implica una jerarquía sacerdotal. Un ejemplo claro de la magia contaminante es cuando, para la iniciación de un sacerdote, le es entregada cierta cantidad de collares durante el rito, que le permitirán representar a cierta cantidad de orishas y estar en contacto con ellos a través del sacrificio de cabras u otro animal. Estas creencias y prácticas también implican que la resolución de ciertos problemas, como devolver la salud a alguien que lo solicitó, se deben a que se invocó al espíritu de sus ancestros y se llevó la ofrenda al orishá indicado. Esto es magia imitativa e implica creencias animistas. Magia blanca Artículo principal: Magia blanca La magia blanca, en oposición a la magia negra, busca la prosperidad del individuo y es benéfica. Este tipo de magia incluye hechizos y sortilegios de distintos tipos para mejorar las cosechas, atraer las lluvias, hierbas buenas para mantener la salud o atraer las curaciones de enfermedades, amuletos protectores y talismanes. Se recurre a ella para ahuyentar la mala suerte. Fue una magia oficial en muchas épocas históricas. Magia negra Artículo principal: Magia negra El Código Teodosiano promulga, por primera vez, una ley en contra del ejercicio de la magia, en 429. En 534, el segundo Código de Justiniano prohíbe consultar a los astrólogos, magos y adivinos por ser la magia una «profesión depravada». El Concilio de Ancira o Concilio de Elvira, en 306, declara que matar a través de un conjuro es un pecado y la obra del demonio. El Concilio de Laodicea solicita, en 360, la excomunión de todo aquel que practique la brujería, la adivinación, la astrología y la magia. Es con el cristianismo que la manipulación de las fuerzas ocultas, tradicionalmente en manos masculinas - las únicas con el poder suficiente como para realizar hechizos benéficos-, pasan a ser consagradas a las manos femeninas, las únicas capacez de realizar maleficios malignos, lo que abre las puertas para que Europa entre, en la Edad Media, en la época de la caza de brujas, ya que las brujas son las únicas capaces de realizar la magia negra al haber pactado con el Diablo.14​', 3),
(12, 'Magia en la Actualidad', '2000-04-10', 'https://www.elcorteingles.es/entradas/blog/wp-content/uploads/2022/05/mago.jpg', 'Actualmente, en el mundo moderno, es muy común encontrar personas que aún creen en la existencia de la magia. Comúnmente se usa la idea de la magia en muchos sitios, principalmente libros, historias, cuentos, animación u otros, en los que la magia aparece como un extraordinario poder de modificar o manipular la naturaleza a voluntad propia. Así mismo, desde el siglo xix, los espectáculos de magos e ilusionistas son una constante en las artes escénicas, donde se establece un pacto tácito entre espectadores y artistas mediante el que este \"hace como que\" tiene poderes sobrenaturales con los que impresiona, mediante trucos, a una audiencia presuntamente crédula. El día 31 de enero se declaró como el día del mago, escogido por ser la fecha en que falleció San Juan Bosco, patrón de los magos, en el año 1888 en Turín.15​', 3),
(13, '¿Por qué Música es una Carrera Universitaria', '2017-02-10', 'https://www.unir.net/wp-content/uploads/2022/02/Musica_carrousell_desk-_1920x1080.jpg', 'En las clases de teoría musical aprenderás que se conoce como música al conjunto de sonidos y silencios que pueden ser registrados en un pentagrama (esos papeles donde el compositor musical, mediante símbolos llamados corcheas y semicorcheas, puede plasmar la armonía, el ritmo, la melodía; las notas y los acordes de una canción o pieza instrumental) o que puedes escuchar en la radio, la televisión, o en los conciertos, manifestando la sensibilidad y la emoción que caracteriza al ser humano en presencia del arte. Al ser la música un arte que te ayuda a expresar y transmitir los sentimientos, las sensaciones, sensibilidades y estados de ánimo; alegrando la vida de las personas con un sentido armónico y lleno de esperanzas, podrías considerar los motivos para estudiar licenciatura en música: Favorece la capacidad de aprender matemáticas: A través de la solución de problemas. Estimula la creatividad: Las personas que generan nuevas ideas a través de la música son mejores que los que no lo hacen. Brinda beneficios para ser empáticos socialmente: Los músicos son clave importante de los fenómenos culturales y sociales por su sensibilidad artística. Fortalece el aprendizaje de la memoria: la música fortalece el aprendizaje a través de las hormonas relacionadas con el estrés. Permite invocar experiencias y recuerdos: ya que incide sobre los latidos del corazón y modula la velocidad de las ondas cerebrales. Desarrolla la inteligencia: Estimula la activación de la corteza cerebral, sobre todo en las zonas frontales, por lo que es útil para la salud, la educación, y la musicoterapia es de gran utilidad.', 1),
(14, '¿Por qué Música es una Carrera Universitari', '2018-02-10', 'https://www.unir.net/wp-content/uploads/2022/02/Musica_carrousell_desk-_1920x1080.jpg', 'En las clases de teoría musical aprenderás que se conoce como música al conjunto de sonidos y silencios que pueden ser registrados en un pentagrama (esos papeles donde el compositor musical, mediante símbolos llamados corcheas y semicorcheas, puede plasmar la armonía, el ritmo, la melodía; las notas y los acordes de una canción o pieza instrumental) o que puedes escuchar en la radio, la televisión, o en los conciertos, manifestando la sensibilidad y la emoción que caracteriza al ser humano en presencia del arte. Al ser la música un arte que te ayuda a expresar y transmitir los sentimientos, las sensaciones, sensibilidades y estados de ánimo; alegrando la vida de las personas con un sentido armónico y lleno de esperanzas, podrías considerar los motivos para estudiar licenciatura en música: Favorece la capacidad de aprender matemáticas: A través de la solución de problemas. Estimula la creatividad: Las personas que generan nuevas ideas a través de la música son mejores que los que no lo hacen. Brinda beneficios para ser empáticos socialmente: Los músicos son clave importante de los fenómenos culturales y sociales por su sensibilidad artística. Fortalece el aprendizaje de la memoria: la música fortalece el aprendizaje a través de las hormonas relacionadas con el estrés. Permite invocar experiencias y recuerdos: ya que incide sobre los latidos del corazón y modula la velocidad de las ondas cerebrales. Desarrolla la inteligencia: Estimula la activación de la corteza cerebral, sobre todo en las zonas frontales, por lo que es útil para la salud, la educación, y la musicoterapia es de gran utilidad.', 1),
(15, '¿Por qué Música es una Carrera Universitar', '2019-02-10', 'https://www.unir.net/wp-content/uploads/2022/02/Musica_carrousell_desk-_1920x1080.jpg', 'En las clases de teoría musical aprenderás que se conoce como música al conjunto de sonidos y silencios que pueden ser registrados en un pentagrama (esos papeles donde el compositor musical, mediante símbolos llamados corcheas y semicorcheas, puede plasmar la armonía, el ritmo, la melodía; las notas y los acordes de una canción o pieza instrumental) o que puedes escuchar en la radio, la televisión, o en los conciertos, manifestando la sensibilidad y la emoción que caracteriza al ser humano en presencia del arte. Al ser la música un arte que te ayuda a expresar y transmitir los sentimientos, las sensaciones, sensibilidades y estados de ánimo; alegrando la vida de las personas con un sentido armónico y lleno de esperanzas, podrías considerar los motivos para estudiar licenciatura en música: Favorece la capacidad de aprender matemáticas: A través de la solución de problemas. Estimula la creatividad: Las personas que generan nuevas ideas a través de la música son mejores que los que no lo hacen. Brinda beneficios para ser empáticos socialmente: Los músicos son clave importante de los fenómenos culturales y sociales por su sensibilidad artística. Fortalece el aprendizaje de la memoria: la música fortalece el aprendizaje a través de las hormonas relacionadas con el estrés. Permite invocar experiencias y recuerdos: ya que incide sobre los latidos del corazón y modula la velocidad de las ondas cerebrales. Desarrolla la inteligencia: Estimula la activación de la corteza cerebral, sobre todo en las zonas frontales, por lo que es útil para la salud, la educación, y la musicoterapia es de gran utilidad.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Documento_Categoria`
--

CREATE TABLE `Documento_Categoria` (
  `id` int(32) NOT NULL,
  `id_doc` int(32) NOT NULL,
  `id_cat` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Documento_Categoria`
--

INSERT INTO `Documento_Categoria` (`id`, `id_doc`, `id_cat`) VALUES
(481, 1, 2),
(482, 1, 3),
(483, 1, 4),
(484, 1, 5),
(485, 1, 7),
(486, 1, 8),
(487, 1, 9),
(488, 1, 10),
(489, 1, 11),
(490, 2, 2),
(491, 2, 3),
(492, 2, 4),
(493, 2, 5),
(494, 2, 6),
(495, 2, 8),
(496, 2, 9),
(497, 2, 10),
(498, 2, 11),
(499, 3, 1),
(500, 3, 3),
(501, 3, 4),
(502, 3, 5),
(503, 3, 6),
(504, 3, 8),
(505, 3, 9),
(506, 3, 10),
(507, 3, 11),
(508, 4, 1),
(509, 4, 3),
(510, 4, 4),
(511, 4, 5),
(512, 4, 6),
(513, 4, 7),
(514, 4, 9),
(515, 4, 10),
(516, 4, 11),
(517, 5, 1),
(518, 5, 2),
(519, 5, 4),
(520, 5, 5),
(521, 5, 6),
(522, 5, 7),
(523, 5, 9),
(524, 5, 10),
(525, 5, 11),
(526, 6, 1),
(527, 6, 2),
(528, 6, 4),
(529, 6, 5),
(530, 6, 6),
(531, 6, 7),
(532, 6, 8),
(533, 6, 10),
(534, 6, 11),
(535, 7, 1),
(536, 7, 2),
(537, 7, 3),
(538, 7, 5),
(539, 7, 6),
(540, 7, 7),
(541, 7, 8),
(542, 7, 10),
(543, 7, 11),
(544, 8, 1),
(545, 8, 2),
(546, 8, 3),
(547, 8, 5),
(548, 8, 6),
(549, 8, 7),
(550, 8, 8),
(551, 8, 10),
(552, 8, 11),
(553, 9, 1),
(554, 9, 2),
(555, 9, 3),
(556, 9, 4),
(557, 9, 6),
(558, 9, 7),
(559, 9, 8),
(560, 9, 9),
(561, 9, 11),
(562, 10, 1),
(563, 10, 2),
(564, 10, 3),
(565, 10, 4),
(566, 10, 6),
(567, 10, 7),
(568, 10, 8),
(569, 10, 9),
(570, 10, 11),
(571, 11, 1),
(572, 11, 2),
(573, 11, 3),
(574, 11, 4),
(575, 11, 5),
(576, 11, 7),
(577, 11, 8),
(578, 11, 9),
(579, 11, 10),
(580, 12, 1),
(581, 12, 2),
(582, 12, 3),
(583, 12, 4),
(584, 12, 5),
(585, 12, 7),
(586, 12, 8),
(587, 12, 9),
(588, 12, 10),
(589, 13, 1),
(590, 13, 2),
(591, 13, 3),
(592, 13, 4),
(593, 13, 5),
(594, 13, 7),
(595, 13, 8),
(596, 13, 9),
(597, 13, 10),
(598, 14, 1),
(599, 14, 2),
(600, 14, 3),
(601, 14, 4),
(602, 14, 5),
(603, 14, 7),
(604, 14, 8),
(605, 14, 9),
(606, 14, 10),
(607, 15, 1),
(608, 15, 2),
(609, 15, 3),
(610, 15, 4),
(611, 15, 5),
(612, 15, 7),
(613, 15, 8),
(614, 15, 9),
(615, 15, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario`
--

CREATE TABLE `Usuario` (
  `id` int(32) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `hobbies` varchar(150) NOT NULL,
  `foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Usuario`
--

INSERT INTO `Usuario` (`id`, `nombre`, `hobbies`, `foto`) VALUES
(1, 'Jose Correa', 'Musica, guitarra, piano, cuatro, dibujo', 'https://media.cdnws.com/_i/253556/2016/3384/16/disque-vinyle-eric-clapton-album-cover.jpeg'),
(2, 'Jose Garcia', 'Ciclismo, Física, Computación, Matemáticas', 'https://cache.tradeinn.com/images/categorias_hp/4011-grande.jpg'),
(3, 'Samuel Castillo', 'Magia', 'https://static.guiainfantil.com/uploads/ocio/nino-magia-conejo-peluche-p.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Categoria`
--
ALTER TABLE `Categoria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categoria` (`categoria`);

--
-- Indices de la tabla `Documento`
--
ALTER TABLE `Documento`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `titulo` (`titulo`),
  ADD KEY `id_usu` (`id_usu`);

--
-- Indices de la tabla `Documento_Categoria`
--
ALTER TABLE `Documento_Categoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_doc` (`id_doc`),
  ADD KEY `id_cat` (`id_cat`);

--
-- Indices de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `foto` (`foto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Categoria`
--
ALTER TABLE `Categoria`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `Documento`
--
ALTER TABLE `Documento`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `Documento_Categoria`
--
ALTER TABLE `Documento_Categoria`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=616;

--
-- AUTO_INCREMENT de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Documento`
--
ALTER TABLE `Documento`
  ADD CONSTRAINT `Documento_ibfk_1` FOREIGN KEY (`id_usu`) REFERENCES `Usuario` (`id`);

--
-- Filtros para la tabla `Documento_Categoria`
--
ALTER TABLE `Documento_Categoria`
  ADD CONSTRAINT `Documento_Categoria_ibfk_1` FOREIGN KEY (`id_doc`) REFERENCES `Documento` (`id`),
  ADD CONSTRAINT `Documento_Categoria_ibfk_2` FOREIGN KEY (`id_cat`) REFERENCES `Categoria` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
