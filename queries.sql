/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon';

SELECT name
FROM animals
WHERE
    date_of_birth BETWEEN '2016-01-01' AND '2019-01-01';

SELECT name
FROM animals
WHERE
    neutered = true
    AND escape_attempts < 3;

SELECT date_of_birth
FROM animals
WHERE
    name = 'Agumon'
    OR name = 'Pikachu';