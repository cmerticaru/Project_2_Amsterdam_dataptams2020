CREATE DATABASE Ams_pop;
USE Ams_pop;
CREATE TABLE Population (
    idPopulation int NOT NULL UNIQUE AUTO_INCREMENT,
    Neighborhood_code VARCHAR(45),
    Neighborhood_name VARCHAR(45),
    Population_male INT,
    Population_female INT,
    PRIMARY KEY (idPopulation)
CREATE TABLE Households (
    idHouseholds int NOT NULL UNIQUE AUTO_INCREMENT,
    Total VARCHAR(45),
    Neighborhood_code VARCHAR(45),
    Neighborhood_name VARCHAR(45),
    Households_except_couple_with_kids INT,
    Couples_with_children INT,
    PRIMARY KEY (idHouseholds)
);
CREATE TABLE Felonies (
    idFelonies int NOT NULL UNIQUE AUTO_INCREMENT ,
    Neighborhood_code VARCHAR(45),
    Neighborhood_name VARCHAR(45),
    Total_population INT,
    Sum_felonies INT,
    Counterfeiting INT,
    Crimes_against_property INT,
    Theft INT,
    Vandalism_agression_against_law_enforcement INT,
    Violence_SexualAssault INT,
    PRIMARY KEY (idFelonies)
);


























