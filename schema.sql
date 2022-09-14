/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id INTEGER PRIMARY KEY NOT NULL,
    name varchar(50),
    date_of_birth DATE,
    escape_attempts INTEGER,
    neutered BOOLEAN,
    weight_kg DECIMAL
);


ALTER TABLE animals
ADD species VARCHAR(50);

--DAY 3
CREATE TABLE owners (
    id INTEGER serial primary key,
    full_name VARCHAR(200),
    age INTEGER
);

CREATE TABLE species (
    id INTEGER serial primary key,
    name VARCHAR(200)
);

ALTER TABLE animals
MODIFY id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE animals 
DROP COLUMN species;

ALTER TABLE animals
ADD  CONSTRAINT species_id 
FOREIGN KEY (species_id)
REFERENCES species (parent_key_columns);

ALTER TABLE animals
ADD CONSTRAINT owner_id
FOREIGN KEY (owner_id)
REFERENCES owners (parent_key_columns);