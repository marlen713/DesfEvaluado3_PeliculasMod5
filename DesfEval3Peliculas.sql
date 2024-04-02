----2. Cargar ambos archivos a su tabla correspondiente.
CREATE TABLE peliculas (
	id serial primary key,
	pelicula varchar(80),
	Año_estreno int,
	Director varchar(60)
);

COPY peliculas FROM 'C:\desafio\peliculas.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM peliculas


--CREANDO LA TABLA DE REPARTO----
CREATE TABLE reparto (
	id_pelicula int,
	actor varchar(50) 
);

COPY reparto FROM 'C:\desafio\reparto.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM reparto


----3.Obtener el ID de la película “Titanic”.
SELECT id FROM peliculas WHERE pelicula = 'Titanic';


----4.Listar a todos los actores que aparecen en la película "Titanic".
SELECT actor FROM reparto WHERE id_pelicula = 2;


----5.Consultar en cuántas películas del top 100 participa Harrison Ford.
SELECT COUNT(*) FROM reparto WHERE actor = 'Harrison Ford';


----6.Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente.
SELECT * FROM peliculas WHERE Año_estreno BETWEEN 1990 AND 1999 ORDER BY pelicula ASC;


----7.Hacer una consulta SQL que muestre los títulos con su longitud, la longitud debe ser nombrado para la consulta como “longitud_titulo”.
SELECT Pelicula, LENGTH(Pelicula) AS longitud_titulo FROM peliculas;


----8.Consultar cual es la longitud más grande entre todos los títulos de las películas.
SELECT MAX(LENGTH(pelicula)) FROM peliculas;
