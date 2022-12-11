drop database if exists puhelintarvikekauppa;

create database puhelintarvikekauppa;

use puhelintarvikekauppa;

create table tuoteryhma (
  trnro int primary key auto_increment,
  trnimi varchar(50) not null
  constraint trnimi_uniikki unique (trnimi));
insert into tuoteryhma (trnimi) value ('Kuulokkeet');
insert into tuoteryhma (trnimi) value ('Laturit');
insert into tuoteryhma (trnimi) value ('Suojakuoret');


create table tuote (
  tuotenro int primary key auto_increment,
  tuotenimi varchar(100) not null,
  hinta double (10,2) not null,
  image varchar(50),
  trnro int not null,
  constraint trnro_viite foreign key (trnro) references tuoteryhma (trnro));

INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
	VALUES ("Nokia 3110", 100, "Nokia_3110.jpg", "Nokia 3110 on Nokian vuonna 1997 julkaistu matkapuhelin. Sen muotoilusta vastasi yhtiön silloinen muotoilujohtaja Frank Nuovo", 3);