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
INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
 VALUES ("Nokia-pikalaturi 33 W", 29, "Nokia_pikalaturi.webp", "Nokia-pikalaturi lataa laitteesi vikkelästi. 33 W:n laturissa on USB-C-latausportti, joka tukee huippunopeaa PowerDelivery 3.0 -pikalatausta. Pieni ja tyylikäs seinälaturi kulkee kevyesti mukanasi.", 2);
INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
 VALUES ("Samsung Adapter USB-C", 39, "Samsung_laturi.jpg", "Alkuperäinen Samsung 45W teholaturi on pikalatausominaisuudella varustettu laadukas ja kompakti laturi, joka kulkee helposti mukanasi mihin vain.", 2);
INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
 VALUES ("Spigen PF2004 langaton laturi", 29, "Spigen_laturi.jpg", "Kätevä Spigen PF2004 PowerArc 15W -langaton laturi on Wireless Qi teknologialla varustettu laturi, joka tehokkaasti lataa laitteen kuin laitteen.", 2);
INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
 VALUES ("Celly USB-matkalaturi", 19, "Celly_matkalaturi.png", "Italialaisen Cellyn laadukas, tehokas ja kompakti verkkovirtalaturi neljällä USB-portilla. Kaksi porttia normaaliin lataukseen 1A ja vihreällä merkityt kaksi porttia TURBOlataukseen 2.4A.", 2);
INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
 VALUES ("Suunto Spartan Magnetic kaapeli", 29, "Suunto_kaapeli.jpg", "Suunto Spartan Magnetic lataus- ja datakaapeli.", 2);
INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
 VALUES ("Apple AirPods Max", 9, "aple_airpods.jpg", "Apple AirPods Max pehmeät TPU-kuoret, Kirkas, on suunniteltu suojaamaan Apple AirPods Maxien korvakuppeja.", 1);
INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
 VALUES ("Jabra Elite 3 Langattomat napit", 39, "Jabra.avif", "Hienosäädä neljän mikrofonin tekniikkaa ja kaiutinelementtejä Jabra Sound+ -sovelluksessa.", 1);
INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
 VALUES ("Marshall Major IV", 79, "Marshall_Major.avif", "Langaton musiikkielämys neljännen sukupolven Marshall Major -kuulokkeilla, joissa on ikoninen rokahtava design.", 1);
INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
 VALUES ("JBL JR310 Lasten kuulokkeet", 19, "JBL_JR310.avif", "JBL:n lasten kuulokkeet hienoissa väreissä. Mukana tulee tarroja, joilla kuulokkeista saa tehtyä omannäköiset.", 1);
INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
 VALUES ("Langattomat napit Exibel", 9, "Exibel.avif", "Huippukevyet langattomat nappikuulokkeet, joissa on Bluetooth 5.0.", 1);
INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
 VALUES ("Huawei Honor 20", 19, "Honor_suojakuori.jpg","Inkit Style -suojakuori on täydellinen valinta sinulle, kun haluat suojata puhelimesi arjen kolhuilta ja naarmuilta.", 3);
INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
 VALUES ("Apple iPhone 14 Pro Max", 19, "Apple_suojakuori.jpg", "Kuori suojaa puhelimesi reunat sekä takaosan persoonallisella tavalla pitäen puhelimesi profiilin silti ohuena.", 3);
INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
 VALUES ("Samsung Galaxy A72 / A72", 19, "Samsung_suojakuori.jpg", "Pehmeistä TPU-muovisista reunoista saat tukevan otteen puhelimestasi, eikä se pääse luiskahtamaan kädestäsi.", 3);
INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
 VALUES ("Nahkainen Puhelinlompakko", 29, "Puhelinlompakko_musta1.jpg", "Musta laadukkaasta ja kestävästä keinonahkasta tehty puhelinlompakko sulkeutuu magneeteilla ja toimii kuin käsilaukku.", 3);
INSERT INTO tuote (tuotenimi, hinta, image, kuvaus, trnro)
 VALUES ("Vetoketjullinen Puhelinlompakko", 29, "Vetoketjullinen_Puhelinlompakko.jpg", "Koteloon mahtuu yleisesti ottaen kaikki alle 6,5 tuuman näytöllä varustetut puhelimet.", 3);

 create table asiakas (
  asnro int primary key auto_increment,
  asnimi varchar(100) not null,
  email varchar(30) UNIQUE,
  salasana varchar(100),
  lahiosoite varchar(30),
  postinro char(5),
  astili_luotu TIMESTAMP
  DEFAULT CURRENT_TIMESTAMP not null, --constraint
        email_uniikki unique (email));


  create table yllapitaja (
	 yllnro int primary key auto_increment,
	 sukunimi varchar(30) not null,
	 etunimi varchar(30) not null,
	 email varchar(30) not null,
	 salasana varchar(100) not null,
	 tunnus_luotu TIMESTAMP DEFAULT CURRENT_TIMESTAMP not null,
	 constraint yllnro_uniikki unique (yllnro),
	 constraint email_uniikki unique (email));

INSERT INTO yllapitaja (sukunimi, etunimi, email, salasana)
 VALUES ("Sepponen", "Seppo", "seppo.yllapitaja@puhelintarvikekauppa.fi", "5eee07f847b11df294c4f7a6177ca7b0c7d524e7626c2bf3902caca9bb276f46");
  DEFAULT CURRENT_TIMESTAMP not null);

CREATE TABLE tilaus (
 tilausnro INTEGER PRIMARY KEY auto_increment,
 asnro INTEGER,
 tilauspvm DATETIME NOT NULL,
 tapa CHAR(1) NOT NULL,
 tila CHAR(1),
 tallennuspvm DATETIME,
 FOREIGN KEY (asnro)
 REFERENCES asiakas (asnro));


-- en saanu muokattua tähän tota tuotenimee viiteavaimeks??
CREATE TABLE tilausrivi (
 tilausnro INTEGER,
 rivinro SMALLINT,
 tuotenimi VARCHAR(100) NOT NULL,
 kpl INTEGER NOT NULL,
 PRIMARY KEY (tilausnro, rivinro));

ALTER TABLE tilausrivi
  ADD FOREIGN KEY (tilausnro) REFERENCES tilaus(tilausnro); 


