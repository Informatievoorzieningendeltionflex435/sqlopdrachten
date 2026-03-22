# Sql basis

### Database 
Maak gebruik van het sql-bestand reisbureau.sql en voer hierop onderstaande opdrachten uit.
Theorie kun je vinden op: https://www.edutorial.nl/dbq/introductie/

### Queries reisbureau
* Geef de namen van de klanten die in Rotterdam wonen

███SELECT naam FROM `klanten` WHERE plaats = 'rotterdam';

* Geef de namen van de klanten die geen reis geboekt hebben.

███SELECT k.Naam FROM klanten k LEFT JOIN boekingen b ON k.Klantnummer = b.Klantnummer WHERE b.Klantnummer IS NULL;

* Hoeveel klanten komen er niet uit Rotterdam

███SELECT count(*) FROM klanten where not plaats = "rotterdam";

Dat zijn er 13

* Hoeveel reizen hebben als bestemming Afrika?

SELECT COUNT(*) AS TotaalReizen FROM reizen r JOIN bestemmingen b ON r.Bestemmingcode = b.Bestemmingcode WHERE b.Werelddeel = 'Afrika';

* Hoeveel moeten de klanten, die naar Azië gaan, in totaal betalen?

SELECT SUM(b.`Betaald bedrag`) AS Totaal FROM boekingen b JOIN reizen r ON b.Reisnummer = r.Reisnummer JOIN bestemmingen d ON r.Bestemmingcode = d.Bestemmingcode WHERE d.Werelddeel = 'Azie';

* Geef de namen van de klanten die met kinderen op reis gaan.

SELECT k.Naam FROM klanten k JOIN boekingen b ON k.Klantnummer = b.Klantnummer WHERE b.`Aantal kinderen` > 0;

* Hoeveel verschillende reizen kun je boeken bij dit reisbureau?

SELECT COUNT(*) FROM reizen;

* Geef de naam en postcode van de klanten die in een postcode gebied wonen dat begint met een 9.

SELECT Naam, Postcode FROM klanten WHERE Postcode LIKE '9%';

* Groepeer de klanten op woonplaats. Geef de woonplaats en het aantal klanten per woonplaats.

SELECT Plaats, COUNT(*) AS aantalklanten FROM klanten GROUP BY Plaats;

* Geef naam en datum van de klanten die voor de maand April een reis hebbben geboekt.

SELECT k.Naam, b.Boekdatum FROM klanten k JOIN boekingen b ON k.Klantnummer = b.Klantnummer WHERE MONTH(b.Boekdatum) = 4;

* Geef de namen van klanten, het werelddeel van de bestemming en het aantal dagen van de reis voor boekingen van minimaal 15 dagen.

SELECT k.Naam, d.Plaats, d.Werelddeel, r.`Aantal dagen` FROM boekingen b JOIN klanten k ON b.Klantnummer = k.Klantnummer JOIN reizen r ON b.Reisnummer = r.Reisnummer JOIN bestemmingen d ON r.Bestemmingcode = d.Bestemmingcode WHERE r.`Aantal dagen` >= 15;