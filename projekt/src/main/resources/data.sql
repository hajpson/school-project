create database IF NOT EXISTS baza_na_zadanie;
use baza_na_zadanie;

create table IF NOT EXISTS Zamowienia (
    ID_zamowienia int primary key,
    Numer_zamowienia int NOT NULL,
    Data_zamowienia date NOT NULL
);
create table IF NOT EXISTS Artykuly (
    ID_artykulu int primary key,
    Numer_artykulu int NOT NULL,
    Cena_artykulu int NOT NULL
);
create table IF NOT EXISTS Artykuly_w_zamowieniu (
    ID int primary key,
    Numer_zamowienia int,
    Numer_artykulu int,
    Ilosc int NOT NULL,
    Cena int NOT NULL
);
ALTER TABLE Artykuly_w_zamowieniu drop constraint fk_ID_zamowienia;
ALTER TABLE Artykuly_w_zamowieniu drop constraint fk_ID_artykulu;
ALTER TABLE Artykuly_w_zamowieniu add constraint fk_ID_zamowienia foreign key
(Numer_zamowienia) references Zamowienia (ID_zamowienia);
ALTER TABLE Artykuly_w_zamowieniu add constraint fk_ID_artykulu foreign key
(Numer_artykulu) references Artykuly (ID_artykulu);