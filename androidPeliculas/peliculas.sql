-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-03-2023 a las 11:20:59
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `peliculas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cine`
--

CREATE TABLE `cine` (
  `idCine` int(4) NOT NULL,
  `direccion` varchar(40) DEFAULT NULL,
  `capacidad` int(4) DEFAULT NULL,
  `butacasLibres` int(2) DEFAULT NULL,
  `butacasOcupadas` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cine`
--

INSERT INTO `cine` (`idCine`, `direccion`, `capacidad`, `butacasLibres`, `butacasOcupadas`) VALUES
(1, 'Puerto Venecia, Av. de Puerto Venecia, 3', 2200, 2200, 0),
(2, 'Cines Aragonia, Av. de Juan Pablo II, 43', 3300, 3300, 0),
(3, 'Cines Palafox, P.º de la Independencia, ', 2768, 2768, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_Genero` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_Genero`, `nombre`) VALUES
(1, 'Drama'),
(2, 'Deportes'),
(3, 'Biográfica'),
(4, 'Épica'),
(5, 'Bélica'),
(6, 'Comedia'),
(7, 'Accion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero_peliculas`
--

CREATE TABLE `genero_peliculas` (
  `id_PeliGenero` int(11) NOT NULL,
  `Peliculas` int(11) DEFAULT NULL,
  `Genero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `genero_peliculas`
--

INSERT INTO `genero_peliculas` (`id_PeliGenero`, `Peliculas`, `Genero`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 2, 3),
(6, 3, 1),
(7, 3, 4),
(8, 3, 5),
(9, 4, 1),
(10, 4, 6),
(11, 5, 6),
(12, 5, 7),
(13, 6, 7),
(14, 7, 7),
(15, 7, 6),
(16, 8, 7),
(17, 8, 6),
(18, 9, 2),
(19, 9, 3),
(20, 10, 1),
(21, 10, 6),
(22, 11, 6),
(23, 12, 6),
(24, 13, 1),
(25, 14, 3),
(26, 15, 4),
(27, 16, 6),
(28, 17, 7),
(29, 18, 7),
(30, 19, 6),
(31, 20, 2),
(32, 22, 2),
(33, 23, 1),
(34, 24, 4),
(35, 25, 5),
(36, 26, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id_Pelicula` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `duracion` int(11) DEFAULT NULL,
  `clasificacion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `director` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `interprete` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `trailer` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `musica` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `año` int(11) DEFAULT NULL,
  `distribuidora` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `comentarios` varchar(150) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `presupuesto` int(11) DEFAULT NULL,
  `imagen` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `valoracion` int(1) DEFAULT NULL,
  `sinopsis` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `pais` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id_Pelicula`, `nombre`, `duracion`, `clasificacion`, `director`, `interprete`, `trailer`, `musica`, `año`, `distribuidora`, `comentarios`, `presupuesto`, `imagen`, `valoracion`, `sinopsis`, `pais`) VALUES
(1, 'CREED III', 116, 'No recomendada para menores de 12 años', ' Michael B. Jordan', ' Michael B. Jordan, Tessa Thompson, Phylicia Rasha', 'https://youtu.be/IeZ5xDv3w6A', 'Joe Shirley', 2023, 'Metro-Goldwyn-Mayer\r\nWarner Bros', 'De lo mejor que vi en años. La calidad de las tomas, los detalles, la música. Todo acorde a cada momento. Te hace sentir como si estuvieras dentro de ', 75, 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/pu5u25f2enavdf7ojppu3hf7zq-1666108043.jpeg', 3, 'Adonis Creed está prosperando en su carrera y en su vida familiar. Cuando un amigo de la infancia y antiguo prodigio del boxeo reaparece tras cumplir condena en la cárcel, está ansioso por demostrar q', 'Estados Unidos'),
(2, '	El método Williams', 144, 'No recomendado menores de 12 años', 'Reinaldo Marcus Gree', 'Will Smith,Aunjanue Ellis,Saniyya Sidney,Demi Sing', 'https://www.youtube.com/watch?v=b8HNgVtpuV0', 'Kris Bowers', 2021, 'Warner Bros. Pictures', 'Extraordinaria película... con grandiosos valores y la historia es emotiva sin ninguna dificultad. En realidad me encanto la película y el final es sa', 50, 'https://www.lavanguardia.com/peliculas-series/images/movie/poster/2021/11/w1280/p9v8y0f95KG2gxNiNckRQ22AeV7.jpg', 5, 'Richard Williams ayudó a criar a dos de las deportistas más extraordinarias de todos los tiempos, dos atletas que acabarían cambiando para siempre el deporte del tenis. Sirviéndose de métodos poco con', 'Estados Unidos'),
(3, '1917', 119, 'No recomendado menores de 12 años', 'Sam Mendes', 'George MacKay,Dean-Charles Chapman,Benedict Cumber', 'https://www.youtube.com/watch?v=YrbdN5zaouU', 'Thomas Newman', 2019, 'Universal Pictures', 'Tuve el corazón en un puño desde el minuto uno hasta el final con esa trama y esa impresionante BSO que me hacía tener en todo momento los sentimiento', 100, 'https://es.web.img3.acsta.net/pictures/20/01/09/15/10/0234685.jpg', 3, 'La película sigue a dos jóvenes soldados británicos a lo largo de un único día en lo más crudo de la Primera Guerra Mundial.', 'Reino Unido'),
(4, 'Green Book', 130, 'No recomendado menores de 13 años', 'Peter Farrelly', 'Viggo Mortensen,Mahershala Ali,Linda Cardellini', 'https://www.youtube.com/watch?v=eQQp_tXjP2U', 'Kris Bowers', 2018, 'Universal Pictures', 'Excelente película, las actuaciones son estupendas. La dignidad por sobretodo basada en la cultura, aguantando pero también poniendo las cosas en su l', 23, 'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/91PWXIp8FOL._SL1500_.jpg', 4, 'Años 60. Tony Lip, un rudo italoamericano del Bronx, es contratado como chófer del virtuoso pianista negro Don Shirley. Ambos emprenderán un viaje para una gira de conciertos por el Sur de Estados Uni', 'Estados Unidos'),
(5, 'Uncharted', 116, 'No recomendado menores de 13 años', 'Ruben Fleischer', 'Tom Holland,Mark Wahlberg,Sophia Ali', 'https://www.youtube.com/watch?v=62bKO3LP6HA', 'Ramin Djawadi', 2022, 'Sony Pictures Releasing', 'Es una peli bastante entretenida y personalmente la considero como otra de las mejores adaptaciones de videojuegos. Si bien, la historia tiene cambios', 120, 'https://www.lahiguera.net/cinemania/pelicula/9741/uncharted-cartel-10299p.jpg', 5, 'Nathan Drake y su compañero Victor Sullivan se adentran en la peligrosa búsqueda del \"mayor tesoro jamás encontrado\". Al mismo tiempo, rastrean pistas que puedan conducir al hermano perdido de Drake.', 'Estados Unidos'),
(6, 'Objetivo: Washington', 121, 'No recomendado menores de 16 años', 'Ric Roman Waugh', 'Gerard Butler,Morgan Freeman,Danny Huston', 'https://www.youtube.com/watch?v=isVtXH7n9lI', 'David Buckley', 2019, 'Lionsgate Films', 'Muy buena película. Interesante y te atrapa. Aunque hay gente que siempre critica todo y no sabe ver el lado positivo de las cosas, esta película está', 40, 'https://es.web.img3.acsta.net/pictures/19/07/30/11/37/2253538.jpg', 3, 'Tras unos acontecimientos del pasado, el agente Mike Banning es acusado de tratar de asesinar al presidente de los Estados Unidos. Sin embargo Banning consigue escapar de su agencia y del FBI, y se ve', 'Estados Unidos'),
(7, 'The Kings Man: La pr', 131, 'Película no recomendada a menores de 16 años', 'Matthew Vaughn', 'Daniel Brühl,Rhys Ifans,Matthew Goode', 'https://www.youtube.com/watch?v=57-NJbPxFdU', 'Henry Jackman', 2021, 'Walt Disney Studios Motion Pictures', 'Para mi es mucho mejor q las otras 2, explican muy bien su origen y como se da la sutiliza de las acciones ya que es una organización secreta. Los rec', 100, 'https://cdn.sortiraparis.com/images/80/69688/569647-the-king-s-man-premiere-mission-bandes-annonces-et-nouvelle-date-de-sortie.jpg', 3, 'Un grupo formado por los tiranos y las mentes criminales más malvadas de la historia se une para desencadenar una guerra que matará a millones de personas. Un hombre tendrá que luchar contra reloj par', 'Reino Unido'),
(8, 'Spider-Man: No Way H', 148, 'Recomendada para mayores de 13 años', 'Jon Watts', 'Tom Holland,Zendaya,Benedict Cumberbatch', 'https://www.youtube.com/watch?v=SkmRT3M4Vx4', 'Michael Giacchino', 2021, 'Sony Pictures Releasing', 'UNA PURA MARAVILLA Realmente una pasada total, ha sido alucinante, ya no se hacen películas de superhéroes como esta. Todos sabíamos que el final de F', 200, 'https://www.ecartelera.com/carteles/15800/15882/005_m.jpg', 4, 'Esta versión extendida cuenta con más de 11 minutos contenido extra, incluyendo escenas eliminadas.Por primera vez en la historia cinematográfica de Spider-Man, nuestro héroe, vecino y amigo es desenm', 'Estados Unidos'),
(9, 'American Underdog', 112, 'Recomendada para Todos los Publicos', 'Jon Erwin', 'Zachary Levi,Anna Paquin,Dennis Quaid', 'https://www.youtube.com/watch?v=_6rn-6lKBJ8', 'John Debney', 2021, 'Lionsgate Films', 'Maravillosa y esperanzadora. Necesitas tener el corazón muy duro para no conmoverte. Ligera al mismo tiempo, fácil de digerir. No hay que pedirle arte', 25, 'https://lionsgate.brightspotcdn.com/24/f3/73928fc04b2585292f075821d66b/american-underdog-shareimage-nowavailable.jpg', 4, 'Basado en la inspiradora historia real de Kurt Warner, quien pasó de abastecer los estantes de un supermercado a convertirse en dos veces MVP de la NFL, campeón del Super Bowl y quarterback del Salón ', 'Estados Unidos'),
(10, 'Campeones', 124, 'Recomendada para Todos los Publicos', 'Javier Fesser', 'Javier Gutiérrez,Juan Margallo,Jesús Vidal', 'https://www.youtube.com/watch?v=a3e0hWT09YY', 'Rafael Arnau', 2018, 'Universal Pictures España', 'Es una película hermosa, con toques de comedia que ayudan a evitar el aburrimiento o monotonía del argumento lineal en ciertas partes. Ayuda mucho a e', 4, 'https://s2.ppllstatics.com/larioja/www/multimedia/201812/27/media/cortadas/campeones-khHE-U7087378160wQC-624x600@La%20Rioja.jpg', 5, 'Marcos es el segundo entrenador de un equipo de baloncesto profesional. Tras una trifulca, Marcos es despedido y obligado a cumplir 90 días de trabajos sociales entrenando a un equipo de personas con ', 'España'),
(11, 'Free Guy', 115, 'No recomendada para menores de 13 años', 'Shawn Levy', 'Ryan Reynolds,Jodie Comer,Lil Rel Howery', 'https://www.youtube.com/watch?v=4y4bEdfqfSM', 'Christophe Beck', 2021, '20th Century Studios', 'Me acabo de ver la película y wow, es bastante buena. La comedia con ese toque de acción y romanticismo es excelente. Es bastante entretenida aunque u', 100, 'https://es.web.img3.acsta.net/pictures/21/06/14/11/47/2960546.jpg', 5, 'Un cajero de un banco descubre que en realidad es un personaje sin papel dentro de un brutal videojuego de mundo interactivo.', 'Estados Unidos'),
(12, 'Resacón en Las Vegas', 100, 'No recomendada para menores de 18 años', 'Todd Phillips', 'Bradley Cooper,Ed Helms,Zach Galifianakis', 'https://www.youtube.com/watch?v=tcdUhdOlz9M', 'Christophe Beck', 2009, 'Warner Bros.', 'Si lo que buscas es una buena película de Comedia sin todos los elementos básicos que la distinguen de muchas otros filmes de comedia no dudes en verl', 35, 'https://www.lavanguardia.com/peliculas-series/images/movie/poster/2009/6/w1280/rqeim09TdaflSvPNVnCTBjUHlKu.jpg', 5, 'Cuatro amigos celebran la despedida de soltero de uno de ellos en Las Vegas. Pero, cuando a la mañana siguiente no pueden encontrar al novio y no recuerdan nada, deberán intentar volver sobre sus paso', 'Estados Unidos'),
(13, 'Avatar', 162, 'PG-13', 'James Cameron', 'Sam Worthington, Zoe Saldana', 'https://www.youtube.com/watch?v=5PSNL1qE6VY', 'James Horner', 2009, '20th Century Fox', 'Una historia de amor y lucha en un planeta lejano', 237000000, 'https://www.eluniversal.com.co/binrepository/598x700/0c0/0d0/none/13704/AWAX/avatar-secuela_6938871_20221102140111.jpg', 5, 'En el futuro un ex marine se encuentra atrapado en una guerra entre dos razas alienígenas', 'Estados Unidos'),
(14, 'El Caballero de la N', 152, 'PG-13', 'Christopher Nolan', 'Christian Bale, Heath Ledger', 'https://www.youtube.com/watch?v=EXeTwQWrcwY', 'Hans Zimmer', 2008, 'Warner Bros. Pictures', 'Batman lucha contra el Joker para salvar Gotham City', 185000000, 'https://static.wikia.nocookie.net/doblaje/images/9/9c/Batman_el_Caballero_de_la_Noche.png/revision/latest/scale-to-width-down/350?cb=20110602012240&path-prefix=es', 5, 'Batman se enfrenta a su archienemigo el Joker en una batalla épica por el destino de Gotham City', 'Estados Unidos'),
(15, 'El Padrino', 175, 'R', 'Francis Ford Coppola', 'Marlon Brando, Al Pacino', 'https://www.youtube.com/watch?v=sY1S34973zA', 'Nino Rota', 1972, 'Paramount Pictures', 'La historia de una familia de la mafia en Nueva York', 7000000, 'https://static.wikia.nocookie.net/doblaje/images/9/9a/Elpadrino.jpg/revision/latest/scale-to-width-down/350?cb=20211023042804&path-prefix=es', 4, 'El patriarca de una poderosa familia de la mafia lucha por mantener el poder mientras su hijo menor toma las riendas', 'Estados Unidos'),
(16, 'El Señor de los Anil', 201, 'PG-13', 'Peter Jackson', 'Elijah Wood, Ian McKellen', 'https://www.youtube.com/watch?v=r5X-hFf6Bwo', 'Howard Shore', 2003, 'New Line Cinema', 'La última parte de la saga de fantasía épica de J.R.R. Tolkien', 94000000, 'http://www.elfenomeno.com/imag/merchandising/dvdespanol2.jpg', 5, 'La batalla final por la Tierra Media tiene lugar mientras Frodo y Sam luchan por destruir el Anillo Único', 'Estados Unidos'),
(17, 'El Gran Hotel Budape', 100, 'R', 'Wes Anderson', 'Ralph Fiennes, Tony Revolori', 'https://www.youtube.com/watch?v=1Fg5iWmQjwk', 'Alexandre Desplat', 2014, 'Fox Searchlight Pictures', 'Una película de comedia sobre un conserje y un joven botones que se convierten en amigos durante una aventura en el hotel Budapest', 25000000, 'https://www.blogartesvisuales.net/wp-content/uploads/2014/05/grand-budapest-hotel-poster-371x550.jpg', 3, 'En la década de 1930, en Europa, el Gran Hotel Budapest es un famoso hotel europeo, que es muy popular entre los ricos. El dueño del hotel, el Sr. Gustave H., es un conserje del hotel que tiene una am', 'Estados Unidos'),
(18, 'La Red Social', 120, 'PG-13', 'David Fincher', 'Jesse Eisenberg, Andrew Garfield', 'https://www.youtube.com/watch?v=lB95KLmpLR4', 'Trent Reznor, Atticus Ross', 2010, 'Columbia Pictures', 'Una película sobre el inicio de Facebook', 40000000, 'https://pics.filmaffinity.com/the_social_network-421032493-mmed.jpg', 3, 'La historia de cómo Mark Zuckerberg creó la red social más grande del mundo, Facebook, y cómo su éxito afectó sus relaciones personales.', 'Estados Unidos'),
(19, 'Forrest Gump', 142, 'PG-13', 'Robert Zemeckis', 'Tom Hanks, Robin Wright', 'https://www.youtube.com/watch?v=bLvqoHBptjg', 'Alan Silvestri', 1994, 'Paramount Pictures', 'Una película sobre la vida de un hombre con discapacidad intelectual', 55000000, 'https://e00-marca.uecdn.es/assets/multimedia/imagenes/2019/09/23/15692538225902.jpg', 4, 'La historia de Forrest Gump, un hombre con discapacidad intelectual que vive una vida increíblemente interesante.', 'Estados Unidos'),
(20, 'La La Land', 128, 'PG-13', 'Damien Chazelle', 'Ryan Gosling, Emma Stone', 'https://www.youtube.com/watch?v=0pdqf4P9MB8', 'Justin Hurwitz', 2016, 'Summit Entertainment', 'Un musical romántico sobre dos artistas en Los Ángeles', 30, 'https://pics.filmaffinity.com/la_la_land-262021831-mmed.jpg', 4, 'Un pianista de jazz y una aspirante a actriz se enamoran mientras persiguen sus sueños en Los Ángeles', 'Estados Unidos'),
(22, 'El Club de la Pelea', 139, 'R', 'David Fincher', 'Brad Pitt, Edward Norton', 'https://www.youtube.com/watch?v=SUXWAEX2jlg', 'The Dust Brothers', 1999, '20th Century Fox', 'Un hombre aburrido y desilusionado comienza un club de pelea clandestino', 63, 'https://static.wikia.nocookie.net/doblaje/images/e/e0/El_club_de_la_pelea.jpg/revision/latest/scale-to-width-down/333?cb=20220103235426&path-prefix=es', 4, 'Un hombre sin nombre encuentra un nuevo sentido en la vida cuando comienza un club de pelea clandestino', 'Estados Unidos'),
(23, 'Interestelar', 169, 'PG-13', 'Christopher Nolan', 'Matthew McConaughey, Anne Hathaway', 'https://www.youtube.com/watch?v=0vxOhd4qlnA', 'Hans Zimmer', 2014, 'Paramount Pictures', 'Un grupo de astronautas busca un nuevo hogar para la humanidad', 165, 'https://m.media-amazon.com/images/I/A1JVqNMI7UL._SY445_.jpg', 4, 'Un grupo de astronautas viaja a través de un agujero de gusano en busca de un nuevo hogar para la humanidad', 'Estados Unidos'),
(24, 'El Silencio de los I', 118, 'R', 'Jonathan Demme', 'Jodie Foster, Anthony Hopkins', 'https://www.youtube.com/watch?v=W6Mm8Sbe__o', 'Howard Shore', 1991, 'Orion Pictures', 'Una agente del FBI busca la ayuda de un psicópata encarcelado para atrapar a otro asesino en serie', 19, 'https://es.web.img3.acsta.net/c_310_420/medias/nmedia/18/74/29/15/19757760.jpg', 3, 'Una agente del FBI busca la ayuda de un psicópata encarcelado para atrapar a otro asesino en serie', 'Estados Unidos'),
(25, 'Kill Bill Vol. 1', 111, 'R', 'Quentin Tarantino', 'Uma Thurman, Lucy Liu', 'https://www.youtube.com/watch?v=ot6C1ZKyiME', 'RZA', 2003, 'Miramax Films', 'Una novia busca venganza contra sus antiguos colegas del mundo del crimen', 30, 'https://es.web.img3.acsta.net/c_310_420/pictures/14/05/07/12/38/160972.jpg', 3, 'Una novia busca venganza contra sus antiguos colegas del mundo del crimen', 'Estados Unidos'),
(26, 'La Naranja Mecánica', 136, 'R', 'Stanley Kubrick', 'Malcolm McDowell', 'https://www.youtube.com/watch?v=G7fO3bzPeBQ', 'Wendy Carlos', 1971, 'Warner Bros.', 'La historia de un joven delincuente y su reinserción en la sociedad', 2, 'https://images.ecestaticos.com/WV-I-6zh7ynyq0IVvzvoId52jS4=/24x0:767x1004/560x747/filters:fill(white):format(jpg)/f.elconfidencial.com%2Foriginal%2F162%2F275%2F162%2F162275162220ac1229eb6e4685a0fcf4.j', 4, 'La historia de un joven delincuente y su reinserción en la sociedad', 'Reino Unido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ver`
--

CREATE TABLE `ver` (
  `idCine` int(4) DEFAULT NULL,
  `idPelicula` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ver`
--

INSERT INTO `ver` (`idCine`, `idPelicula`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 22),
(3, 23),
(3, 24),
(3, 25),
(3, 26);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cine`
--
ALTER TABLE `cine`
  ADD PRIMARY KEY (`idCine`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_Genero`);

--
-- Indices de la tabla `genero_peliculas`
--
ALTER TABLE `genero_peliculas`
  ADD PRIMARY KEY (`id_PeliGenero`),
  ADD KEY `FK_genero` (`Genero`),
  ADD KEY `FK_peliculas` (`Peliculas`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id_Pelicula`);

--
-- Indices de la tabla `ver`
--
ALTER TABLE `ver`
  ADD KEY `FK_contener_cine` (`idCine`),
  ADD KEY `FK_contener_pelicula` (`idPelicula`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_Genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `genero_peliculas`
--
ALTER TABLE `genero_peliculas`
  MODIFY `id_PeliGenero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id_Pelicula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `genero_peliculas`
--
ALTER TABLE `genero_peliculas`
  ADD CONSTRAINT `FK_genero` FOREIGN KEY (`Genero`) REFERENCES `genero` (`id_Genero`),
  ADD CONSTRAINT `FK_peliculas` FOREIGN KEY (`Peliculas`) REFERENCES `peliculas` (`id_Pelicula`);

--
-- Filtros para la tabla `ver`
--
ALTER TABLE `ver`
  ADD CONSTRAINT `FK_contener_cine` FOREIGN KEY (`idCine`) REFERENCES `cine` (`idCine`),
  ADD CONSTRAINT `FK_contener_pelicula` FOREIGN KEY (`idPelicula`) REFERENCES `peliculas` (`id_Pelicula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
