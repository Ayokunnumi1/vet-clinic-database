/* Populate database with sample data. */

INSERT INTO
    animals (
        name,
        date_of_birth,
        escape_attempts,
        neutered,
        weight_kg
    )
VALUES (
        'Agumon',
        '2020-02-03',
        0,
        true,
        10.23
    ),
    (
        'Gabumon',
        '2018-11-15',
        2,
        true,
        8
    ),
    (
        'Pikachu',
        '2021-01-7',
        1,
        false,
        15.04
    ),
    (
        'Devimon',
        '2017-05-12',
        5,
        true,
        11
    );

INSERT INTO
    animals (
        name,
        date_of_birth,
        escape_attempts,
        neutered,
        weight_kg
    )
VALUES (
        'Charmander',
        '2020-02-08',
        0,
        false,
        -11
    ),
    (
        'Plantmon',
        '2021-11-15',
        2,
        true,
        -5.7
    ),
    (
        'Squirtle',
        '1993-04-02',
        3,
        false,
        -12.13
    ),
    (
        'Angemon',
        '2005-06-12',
        1,
        true,
        -45
    ),
    (
        'Boarmon',
        '2005-06-07',
        7,
        true,
        20.4
    ),
    (
        'Blossom',
        '1998-10-13',
        3,
        true,
        17
    ),
    (
        'Ditto',
        '2022-05-14',
        4,
        true,
        22
    );

INSERT INTO
    owners (full_name, age)
VALUES ('Sam Smith', 34),
    ('Jennifer Orwell', 19),
    ('Bob', 45),
    ('Melody Pond', 77),
    ('Dean Winchester', 14),
    ('Jodie Whittaker', 38);

-- Insert the following data into the species table
Insert into species Values (1, 'Pokemon'), (2, 'Digimon');

-- Modify your inserted animals so it includes the species_id value:
-- If the name ends in "mon" it will be Digimon
-- All other animals are Pokemon

UPDATE animals SET species_id = 1 WHERE Not name Like '%mon';

UPDATE animals SET species_id = 2 WHERE name Like '%mon';

-- Modify your inserted animals to include owner information (owner_id):
UPDATE animals SET owner_id = 1 WHERE name = 'Agumon';

UPDATE animals
SET
    owner_id = 2
WHERE
    name = 'Gabumon'
    OR name = 'Pikachu';

UPDATE animals
SET
    owner_id = 3
WHERE
    name = 'Devimon'
    OR name = 'Plantmon';

UPDATE animals
SET
    owner_id = 4
WHERE
    name = 'Charmander'
    OR name = 'Squirtle'
    OR name = 'Blossom';

UPDATE animals
SET
    owner_id = 5
WHERE
    name = 'Angemon'
    OR name = 'Boarmon';

-- Insert the following data for vets
Insert into
    vets (name, age, date_of_graduation)
values (
        'William Tatcher',
        45,
        '2000-04-23'
    ),
    (
        'Maisy Smith',
        26,
        '2019-01-17'
    ),
    (
        'Stephanie Mendez',
        64,
        '1981-05-04'
    ),
    (
        'Jack Harkness',
        38,
        '2008-06-08'
    );
-- Insert the following data for specializations
Insert into
    specialization (species_id, vets_id)
values (1, 1),
    (1, 3),
    (2, 3),
    (2, 4);