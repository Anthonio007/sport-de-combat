
SELECT nom_sport, description, origine, techniques_principales
FROM SportsCombat;


SELECT C.nom, C.prenom, C.age, C.poids, C.taille, C.categorie, S.nom_sport
FROM Combattants C
JOIN SportsCombat S ON C.id_sport = S.id_sport;


SELECT Com.date_combat, Com.lieu, C1.nom AS combattant1, C2.nom AS combattant2, Com.resultat
FROM Combats Com
JOIN Combattants C1 ON Com.id_combattant1 = C1.id_combattant
JOIN Combattants C2 ON Com.id_combattant2 = C2.id_combattant
WHERE Com.lieu = 'Bangkok';


SELECT C.nom, C.prenom,
       (SELECT COUNT(*) FROM Combats Com WHERE Com.id_combattant1 = C.id_combattant) AS combats_comme_combattant1,
       (SELECT COUNT(*) FROM Combats Com WHERE Com.id_combattant2 = C.id_combattant) AS combats_comme_combattant2
FROM Combattants C;


SELECT Com.date_combat, Com.lieu, C1.nom AS combattant1, C2.nom AS combattant2, Com.duree_combat, Com.methode_victoire
FROM Combats Com
JOIN Combattants C1 ON Com.id_combattant1 = C1.id_combattant
JOIN Combattants C2 ON Com.id_combattant2 = C2.id_combattant
WHERE Com.duree_combat > '00:10:00';


SELECT C.nom, C.prenom, C.poids, S.nom_sport, C.categorie
FROM Combattants C
JOIN SportsCombat S ON C.id_sport = S.id_sport
WHERE C.poids > 70;


SELECT nom, prenom, 
       SUBSTRING_INDEX(palmares, ' ', 1) AS nombre_de_victoires
FROM Combattants;


SELECT nom_sport, origine, techniques_principales
FROM SportsCombat
WHERE origine IN ('Japon', 'Thaïlande');


SELECT Com.date_combat, C1.nom AS combattant1, C2.nom AS combattant2, S.nom_sport
FROM Combats Com
JOIN Combattants C1 ON Com.id_combattant1 = C1.id_combattant
JOIN Combattants C2 ON Com.id_combattant2 = C2.id_combattant
JOIN SportsCombat S ON C1.id_sport = S.id_sport
WHERE C1.id_sport = C2.id_sport;


SELECT C.nom, C.prenom, S.nom_sport, C.palmares
FROM Combattants C
JOIN SportsCombat S ON C.id_sport = S.id_sport;
