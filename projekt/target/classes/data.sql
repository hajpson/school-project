create database IF NOT EXISTS baza_na_zadanie_test;
use baza_na_zadanie_test;
create table IF NOT EXISTS Persona (
    ID int NOT NULL,
    Ulica varchar(30),
    Nr_domu int NOT NULL,
    Nr_mieszkania int,
    Miasto varchar(30) NOT NULL,
    Kod_pocztowy varchar(6) NOT NULL,
    primary key (ID)
);