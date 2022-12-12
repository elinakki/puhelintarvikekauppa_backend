drop database if exists puhelintarvikekauppa;

create database puhelintarvikekauppa;

use puhelintarvikekauppa;

create table tuoteryhma (
  trnro int primary key auto_increment,
  trnimi varchar(50) not null);
insert into tuoteryhma (trnimi) value ('Kuulokkeet');
insert into tuoteryhma (trnimi) value ('Laturit');
insert into tuoteryhma (trnimi) value ('Suojakuoret');
insert into tuoteryhma (trnimi) value ('Puhelin');

create table tuote (
  tuotenro int primary key auto_increment,
  tuotenimi varchar(100) not null,
  hinta double (10,2) not null,
  image varchar(50),
  trnro int not null,
  kuvaus varchar(200));

INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
	VALUES ("Nokia 3110", 100, "Nokia_3110.jpg", "Nokia 3110 on Nokian vuonna 1997 julkaistu matkapuhelin. Sen muotoilusta vastasi yhtiön silloinen muotoilujohtaja Frank Nuovo", 4);
INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
	VALUES ("iPhone 14 Pro Max", 1999, "iPhone_14.png", "Apple iPhone 14 Pro Max -älypuhelimessa on häkellyttävä 6,7” OLED-kosketusnäyttö muuttuvalla 120 Hz virkistystaajuudella sekä tehokas 5G-yhteyksiä tukeva A16 Bionic -prosessori. Lisäksi laitteella on markkinoiden johtava IP68-vedenkestävyysluokitus.", 4);
 INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
  VALUES ("Samsung s22", 999, "Samsung_S22.jpeg", "Samsung Galaxy S22 5G -älypuhelin on täydellinen valinta jokapäiväiseen käyttöön. Se on varustettu sujuvalla ja mukautuvalla 120 Hz näytöllä, 8-ytimisellä Exynos 2200 -prosessorilla, pitkäkestoisella akulla ja tekoälyavusteisella kolmoiskameralla.", 4);
INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
  VALUES ("Nokia 3310", 129,"Nokia_3310.png", "Klassikko on palannut! Nokia 3310 tarjoaa hieman uudistetun muotoilun ja nykyaikaistetun käyttöjärjestelmän. Matkapuhelimessa on musiikkisoitin, FM-radio, takakamera sekä matopeli.",4);
 INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
  VALUES ("OnePlus Nord 2T 5G", 999, "Nord_2T.jpeg", "OnePlus Nord 2T 5G -älypuhelimessa on 6,43 näyttö ja 5G-Yhteys", 4);
INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
 VALUES ("Samsung Galaxy S20", 599, "Samsung_S20.avif", "Samsung Galaxy S20 FE -älypuhelimessa on upea 6,5-tuumainen Infinity-O-kosketusnäyttö 120 Hz virkistystaajuudella, joka takaa huippulaatuisen peli- ja mediakokemuksen. Siinä on myös 4500 mAh akku.", 4);
INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
 VALUES ("Nokia X30 5G", 599, "Nokia_X30.png", "Nokia X30 5G -älypuhelin tarjoaa 5G-yhteyden, suuren 6,43 tuuman FHD+-näytön ja korkean 90 Hz virkistystaajuuden", 4);
INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
 VALUES ("iPhone 13 Pro Max", 999, "iPhone_promax.jpeg", "iPhone 13 Pro Max. Kaikkien aikojen suurin ammattitason kamerajärjestelmän päivitys. Kolme täysin uutta kameraa tarjoavat vaikuttavat kuvat ja videot hämärässä, makrokuvauksen ja ProRes-videon.", 4);
INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
 VALUES ("Samsung Galaxy S21", 799, "Samsung Galaxy S21 -älypuhelimessa on 6,2 Dynamic AMOLED- näyttö 120Hz virkistystaajuudella", 4);