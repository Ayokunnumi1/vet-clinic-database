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

SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;

SELECT * FROM animals WHERE neutered = true;

SELECT * FROM animals WHERE NOT name = 'Gabumon';

SELECT * FROM animals WHERE weight_kg between 10.4 and 17.3;

-- Queries for the second task

-- What animals belong to Melody Pond ?
SELECT name
FROM animals
    INNER JOIN owners ON animals.owner_id = owners.ID
WHERE
    owner_id = 4;

-- List of all animals that are pokemon (their type is Pokemon).
SELECT
    animals.name As "Animal Name",
    species.name As "Animal Specie"
FROM animals
    INNER JOIN species ON animals.species_id = species.ID
WHERE
    species.name = 'Pokemon';