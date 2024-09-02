/* Database schema to keep the structure of entire database. */
Create database vet_clinic_database;

Create table animals (
    id int,
    name text,
    date_of_birth date,
    escape_attempts int,
    neutered boolean,
    weight_kg decimal
);

CREATE TABLE owners (
    ID int NOT NULL,
    full_name text NOT NULL,
    age int,
    PRIMARY KEY (ID)
);

CREATE TABLE species (
    ID int NOT NULL,
    name text NOT NULL,
    PRIMARY KEY (ID)
);