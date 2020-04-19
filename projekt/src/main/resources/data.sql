create database IF NOT EXISTS baza_na_zadanie;
use baza_na_zadanie;

create table IF NOT EXISTS Zamowienia (
    ID_zamowienia int primary key,
    Numer_zamowienia int NOT NULL,
    Data_zamowienia date NOT NULL,
    IDKlient int,
    IDFaktury int
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
create table IF NOT EXISTS Klient (
    ID int primary key,
    Imie varchar(30),
    Nazwisko varchar(30),
    Pesel int(11),
    AdresID int
);
create table IF NOT EXISTS Adres (
    ID int primary key,
    Miasto varchar(30),
    Ulica varchar(30),
    Kod_pocztowy varchar(6)
);
create table IF NOT EXISTS Faktura (
    ID int primary key,
    Kwota int,
    Numer int
);



ALTER TABLE Artykuly_w_zamowieniu drop constraint fk_ID_zamowienia;
ALTER TABLE Artykuly_w_zamowieniu drop constraint fk_ID_artykulu;
ALTER TABLE Klient drop constraint fk_adres_id;
ALTER TABLE Zamowienia drop constraint fk_id_klienta;
ALTER TABLE Zamowienia drop constraint fk_id_faktury;
ALTER TABLE Artykuly_w_zamowieniu add constraint fk_ID_zamowienia foreign key
(Numer_zamowienia) references Zamowienia (ID_zamowienia);
ALTER TABLE Artykuly_w_zamowieniu add constraint fk_ID_artykulu foreign key
(Numer_artykulu) references Artykuly (ID_artykulu);
ALTER TABLE Klient add constraint fk_adres_id foreign key
(AdresID) references Adres (ID);
ALTER TABLE Zamowienia add constraint fk_id_klienta foreign key
(IDKlient) references Klient (ID);
ALTER TABLE Zamowienia add constraint fk_id_faktury foreign key
(IDFaktury) references Faktura (ID);
