# Sql basis

### Database gegevens aanpassen
Maak gebruik van het sql-bestand idscan.sql en voer hierop onderstaande opdrachten uit.
Theorie kun je vinden op: https://www.edutorial.nl/dbq/introductie/

### Queries winkelketen
* Welke medewerkers (id, voornaam, achternaam)zijn er in dienst van de winkelketen.

geen winkelketen in de database

* Hoeveel medewerkers hebben dezelfde functie (jobtitle)

SELECT jobtitle, COUNT(*) AS Totaal FROM persons GROUP BY jobtitle ORDER BY Totaal DESC;

* Hoeveel medewerkers zijn professor of ingenieur (title = prof, ir of ing)

geen prof ir of ing titel

* Overzicht van medewerkers (id, voornaam, tussenvoegsel, achternaam) die op een *  * bepaalde datum in gebouw met id 1 waren (buildingname, 

SELECT DISTINCT p.firstname, p.lastname FROM scans s, persons p WHERE p.id = s.person_id AND s.building_id = 1 AND s.scandate = '2023-09-15';

* Overzicht van medewerkers die op diezelfde datum vergeten zijn om uit te checken

SELECT DISTINCT p.firstname, p.lastname FROM scans i, persons p WHERE p.id = i.person_id AND i.in_out = 'in' AND i.scandate = '2023-09-15' AND NOT EXISTS ( SELECT 1 FROM scans o WHERE o.person_id = i.person_id AND o.scandate = i.scandate AND o.in_out = 'out' );

* Overzicht van het aantal medewerker per gebouw op 13 september 2023.

SELECT building_id, COUNT(DISTINCT person_id) AS aantal_medewerkers FROM scans WHERE scandate = '2023-09-13' GROUP BY building_id ORDER BY aantal_medewerkers DESC;
