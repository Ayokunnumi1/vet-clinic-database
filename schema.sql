/* Database schema to keep the structure of entire database. */
Create database vet_clinic_database;

Create table animals (
    id int GENERATED BY DEFAULT AS IDENTITY,
    name text,
    date_of_birth date,
    escape_attempts int,
    neutered boolean,
    weight_kg decimal
);

-- This schema is for the second project task
CREATE TABLE owners (
    ID int GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    full_name text NOT NULL,
    age int,
    PRIMARY KEY (ID)
);

CREATE TABLE species (
    ID int GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    name text NOT NULL,
    PRIMARY KEY (ID)
);

ALTER TABLE animals ADD PRIMARY KEY (id);

# Firstly
add a new column to the animals table,
then
add a foreign key constraint
ALTER TABLE animals ADD species_id int;

ALTER TABLE animals
ADD FOREIGN KEY (species_id) REFERENCES species (id);

-- Add column owner_id which is a foreign key referencing the owners table
ALTER TABLE animals ADD owner_id int;

ALTER TABLE animals
ADD FOREIGN KEY (owner_id) REFERENCES owners (id);

create table vets (
    id int GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    name text,
    age int,
    date_of_graduation date,
    PRIMARY KEY (id)
);

-- Create a "join table" called specializations to handle this relationship.
create table specialization (
    species_id INT,
    vets_id INT,
    Constraint fk_species Foreign key (species_id) references species (Id),
    Constraint fk_vets Foreign key (vets_id) references vets (id),
    PRIMARY KEY (species_id, vets_id)
);

-- Create a "join table" called visits to handle this relationship
create table visits (
    animals_id INT,
    vets_id INT,
    date_of_visits date,
    Constraint fk_animals Foreign key (animals_id) references animals (id),
    Constraint fk_vets Foreign key (vets_id) references vets (id),
    PRIMARY KEY (animals_id, vets_id)
);

-- An index is a structure that holds the field the index is sorting and a pointer from each record to their corresponding record in the original table where the data is actually stored. 
