# Sql basis

### Database
Maak gebruik van het sql-bestand flits.sql en voer hierop onderstaande opdrachten uit.
Theorie kun je vinden op: https://www.edutorial.nl/dbq/introductie/

### Queries flitspaal
* Welke cameras zijn er en waar staan ze (id, address, city, max_speed).

SELECT id, address, city, max_speed FROM `cameras`;

* Overzicht van boetes op 50km wegen

SELECT id, address, city, max_speed FROM `cameras`where max_speed = 50;

* Overzicht van overtredingen van 1 kenteken.

SELECT license, speed FROM `flashes` WHERE license = '01-fnp-1';

* N.a.w.-gegevens van de hardrijders die het meest in de fout zijn gegaan. (top 10)

SELECT license FROM flashes ORDER BY license desc;

* Welke camera’s (id, address, city) meten de meeste snelheidsovertredingen (top 10)

SELECT id, address, city, max_speed FROM `cameras` order by max_speed desc;

* Welke auto’s (kenteken, merk, type) zijn het meeste geflitst

geen merk/type in de database
SELECT license FROM `flashes` order by license DESC;

* Welke flitspaal (=camera met id, address, city) flitst het meest (top 10)

Zit niet in de database

* Kentekens van auto’s die het hoogste bedrag aan boetes hebben gekregen (top 10)

zit niet in de opdracht

* Overzicht van auto’s (kenteken, merk, type) waarvan het kenteken overeenkomt met sitecode 10 (zoals X-999-XX) https://nl.wikipedia.org/wiki/Nederlands_kenteken.

SELECT license FROM licenses WHERE license REGEXP '^[A-Z]-[0-9]{3}-[A-Z]{2}$';

d