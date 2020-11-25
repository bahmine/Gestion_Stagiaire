--Création de la database
DROP DATABASE IF EXISTS GestionStagiaire;
CREATE DATABASE IF NOT EXISTS GestionStagiaire;

use GestionStagiaire;

DROP TABLE IF EXISTS Filiere;
CREATE TABLE IF NOT EXISTS Filiere
(
    IdFiliere INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nomFiliere VARCHAR(100) NOT NULL,
    niveau VARCHAR(100) NOT NULL
);
DROP TABLE IF EXISTS Utilisateur;
CREATE TABLE IF NOT EXISTS Utilisateur
(
	login VARCHAR (50) NOT NULL,
	email VARCHAR (255) NOT NULL,
	role VARCHAR (255) NOT NULL,
	etat boolean NOT NULL,
	pwd VARCHAR (250) NOT NULL,
	CONSTRAINT PRIMARY KEY (login,email),
);
show tables;
DROP TABLE IF EXISTS Stagiaire;
CREATE TABLE IF NOT EXISTS Stagiaire
(
	IdStagiaire INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nom VARCHAR (100) NOT NULL,
	prenom VARCHAR (150) NOT NULL,
	civilite VARCHAR (1) NOT NULL,
	photo VARCHAR (100) NOT NULL,
	IdFiliere INT NOT NULL,
	CONSTRAINT FOREIGN KEY (IdFiliere) REFERENCES Filiere (IdFiliere)
);
show tables;
