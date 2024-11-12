# sport-de-combat
# Sports de Combat - Base de Données SQL

## Description du Projet
Ce projet SQL consiste à créer et gérer une base de données pour des sports de combat. Il inclut des tables pour stocker des informations détaillées sur différents sports de combat, les combattants associés et les combats qui se sont déroulés entre eux. 

## Structure des Scripts

Ce dépôt contient deux scripts SQL principaux :

1. Création de la base de données et insertion des données : Ce script crée la base de données, les tables nécessaires et insère des données d'exemple.
2. Requêtes SQL : Ce script exécute 10 requêtes SQL pour extraire des informations spécifiques et pertinentes à partir de la base de données.

## Détails des Tables

### 1. SportsCombat
Cette table contient les informations de base pour chaque sport de combat :
   - id_sport : Identifiant unique du sport.
   - nom_sport : Nom du sport (par exemple, Boxe, Judo, Muay Thai).
   - description : Description du sport.
   - origine : Origine géographique du sport.
   - techniques_principales : Techniques principales utilisées dans le sport.

### 2. Combattants
Cette table enregistre les informations personnelles et professionnelles de chaque combattant :
   - id_combattant : Identifiant unique du combattant.
   - nom et prenom : Nom et prénom du combattant.
   - age : Âge du combattant.
   - poids et taille : Poids et taille du combattant.
   - categorie : Catégorie de poids.
   - id_sport : Référence au sport pratiqué, liée à la table `SportsCombat`.
   - palmares : Palmarès du combattant sous forme de texte (ex : "15 victoires, 3 défaites").

### 3. Combats
Cette table enregistre les combats ayant eu lieu entre les combattants :
   - id_combat : Identifiant unique du combat.
   - date_combat et lieu : Date et lieu du combat.
   - id_combattant1 et id_combattant2 : Références vers les combattants impliqués, liées à la table `Combattants`.
   - resultat : Résultat du combat.
   - duree_combat : Durée du combat.
   - methode_victoire : Méthode de victoire (ex : KO, décision unanime).

## Requêtes SQL
Le second script exécute 10 requêtes SQL pour extraire des informations utiles de la base de données.Je vous laisse quelque exemple parmi les 10 

1. Liste de tous les sports de combat avec leurs techniques principales.
2. Informations complètes sur les combattants et leur sport respectif.
3. Historique des combats dans un lieu spécifique (ex : Bangkok).
4. Liste des combats ayant duré plus de 10 minutes avec la méthode de victoire.
5. Nombre total de combats par combattant.

Ces requêtes permettent d'explorer différentes perspectives : caractéristiques des sports, données détaillées sur les combattants, analyse des combats.

## Comment Utiliser

1. Exécuter le script de création de base de données : Lancez ce script pour créer la base de données, les tables, et insérer les données d'exemple.
2. Exécuter le script de requêtes : Lancez le second script pour obtenir des résultats selon les besoins d'analyse.

## Remarques

- Les données insérées sont basées sur des combattants célèbres et des statistiques fictives à des fins d'exemple.



