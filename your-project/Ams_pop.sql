CREATE DATABASE Ams_pop;
USE Ams_pop;
CREATE TABLE Population (
    idPopulation int NOT NULL UNIQUE AUTO_INCREMENT,
    Neighborhood_code VARCHAR(45),
    Neighborhood_name VARCHAR(45),
    Population_male INT,
    Population_female INT,
    idHouseholds int NOT NULL UNIQUE,
    idFelonies int NOT NULL UNIQUE,
    PRIMARY KEY (idPopulation)
);
CREATE TABLE Households (
    idHouseholds int NOT NULL UNIQUE AUTO_INCREMENT,
    Neighborhood_code VARCHAR(45),
    Neighborhood_name VARCHAR(45),
    Households_except_couple_with_kids INT,
    Couples_with_children INT,
    idPopulation int NOT NULL UNIQUE,
    idFelonies int NOT NULL UNIQUE,
    PRIMARY KEY (idHouseholds)
);

CREATE TABLE Felonies (
    idFelonies int NOT NULL UNIQUE AUTO_INCREMENT ,
    Neighborhood_code VARCHAR(45),
    Neighborhood_name VARCHAR(45),
    Sum_felonies INT,
    Crimes_against_property INT,
    Theft INT,
    Vandalism_agression_against_law_enforcement INT,
    Violence_SexualAssault INT,
    idPopulation int NOT NULL UNIQUE,
    idHouseholds int NOT NULL UNIQUE,
    PRIMARY KEY (idFelonies)
);
ALTER TABLE Population
    ADD FOREIGN KEY
    (idHouseholds)
    REFERENCES Households (idHouseholds),
ADD FOREIGN KEY
(idFelonies)
REFERENCES Felonies (idFelonies);

ALTER TABLE Households
    ADD FOREIGN KEY
    (idPopulation)
    REFERENCES Population (idPopulation),
ADD FOREIGN KEY
(idFelonies)
REFERENCES Felonies (idFelonies);

ALTER TABLE Felonies
    ADD FOREIGN KEY
    (idPopulation)
    REFERENCES Population (idPopulation),
ADD FOREIGN KEY
    (idHouseholds)
    REFERENCES Households (idHouseholds)





























