/* EJERCICIOS EVALUACIÓN MÓDULO 2: SQL 
	CON BBDD SAKILA */
USE sakila;

-- 1. Selecciona todos los nombres de las películas sin que aparezcan duplicados.

SELECT DISTINCT title   	-- se usa distinct para que sea un valor único y evitar duplicados
FROM film; 

-- 2. Muestra los nombres de todas las películas que tengan una clasificación de "PG-13".

SELECT title, rating		-- se puede poner rating en el select para que en el output veamos si efectivamente es PG-13
FROM film
WHERE rating = 'PG-13';

-- 3. Encuentra el título y la descripción de todas las películas que contengan la palabra "amazing" en su descripción.

SELECT title, description
FROM film
WHERE description LIKE '%amazing%';	-- usando REGEX

-- 4. Encuentra el título de todas las películas que tengan una duración mayor a 120 minutos.

SELECT title, length 				-- de nuevo length lo podemos mostrar o no en el output
FROM film
WHERE length > 120;

-- 5. Recupera los nombres de todos los actores.

SELECT first_name, last_name
FROM actor; 