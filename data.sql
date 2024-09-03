/* Populate database with sample data. */

INSERT INTO
    animals
VALUES (
        1,
        'Agumon',
        '2020-02-03',
        0,
        true,
        10.23
    ),
    animals (
        2,
        'Gabumon',
        '2018-11-15',
        2,
        true,
        8
    ),
    (
        3,
        'Pikachu',
        '2021-01-7',
        1,
        false,
        15.04
    ),
    (
        4,
        'Devimon',
        '2017-05-12',
        5,
        true,
        11
    );

INSERT INTO
    owners (id, full_name, age)
VALUES (1, 'Sam Smith', 34),
    (2, 'Jennifer Orwell', 19),
    (3, 'Bob', 45),
    (4, 'Melody Pond', 77),
    (5, 'Dean Winchester', 14),
    (6, 'Jodie Whittaker', 38);

-- Insert the following data into the species table
Insert into species Values (1, 'Pokemon'), (2, 'Digimon');

-- Modify your inserted animals so it includes the species_id value:
-- If the name ends in "mon" it will be Digimon
-- All other animals are Pokemon

UPDATE animals
SET species_id = 1
WHERE Not name Like '%mon';

UPDATE animals
SET species_id = 2
WHERE name Like '%mon';