CREATE DATABASE IF NOT EXISTS SportsDeCombats;
USE SportsDeCombats;


CREATE TABLE SportsCombat (
    id_sport INT PRIMARY KEY AUTO_INCREMENT,       
    nom_sport VARCHAR(50) NOT NULL,                
    description TEXT,                              
    origine VARCHAR(50),                           
    techniques_principales TEXT                    
);


INSERT INTO SportsCombat (nom_sport, description, origine, techniques_principales) VALUES
('Boxe', 'Sport de combat où seuls les coups de poing sont autorisés, avec gants', 'Angleterre', 'Crochet, uppercut, jab, direct'),
('Judo', 'Art martial japonais basé sur les projections et contrôles au sol', 'Japon', 'Projection, immobilisation, étranglement, clé articulaire'),
('Muay Thai', 'Art martial thaïlandais utilisant les poings, coudes, genoux et pieds', 'Thaïlande', 'Coup de poing, coup de coude, coup de genou, coup de pied circulaire');


CREATE TABLE Combattants (
    id_combattant INT PRIMARY KEY AUTO_INCREMENT,  
    nom VARCHAR(50) NOT NULL,                      
    prenom VARCHAR(50) NOT NULL,                   
    age INT CHECK (age >= 18),                     
    poids DECIMAL(5, 2),                           
    taille DECIMAL(4, 2),                          
    categorie VARCHAR(30),                         
    id_sport INT,                                  
    palmares TEXT,                                 
    FOREIGN KEY (id_sport) REFERENCES SportsCombat(id_sport) ON DELETE CASCADE
);


INSERT INTO Combattants (nom, prenom, age, poids, taille, categorie, id_sport, palmares) VALUES
('Tyson', 'Mike', 58, 100.0, 1.78, 'Poids lourd', 1, '56 victoires, 6 défaites'),
('Mayweather', 'Floyd', 46, 68.0, 1.73, 'Welter', 1, '50 victoires, 0 défaite'),
('Gracie', 'Royce', 56, 85.0, 1.80, 'Poids moyen', 2, '15 victoires, 2 défaites'),
('Yamaguchi', 'Takanori', 45, 70.5, 1.73, 'Léger', 2, '20 victoires, 5 défaites'),
('Saenchai', 'PKSaenchai', 43, 65.0, 1.74, 'Léger', 3, '67 victoires, 23 défaites'),
('Rodtang', 'Jitmuangnon', 26, 61.0, 1.65, 'Léger', 3, '278 victoires, 42 défaites');


CREATE TABLE Combats (
    id_combat INT PRIMARY KEY AUTO_INCREMENT,      
    date_combat DATE NOT NULL,                     
    lieu VARCHAR(100) NOT NULL,                    
    id_combattant1 INT,                            
    id_combattant2 INT,                            
    resultat VARCHAR(100),                         
    duree_combat TIME,                             
    methode_victoire VARCHAR(50),                  
    FOREIGN KEY (id_combattant1) REFERENCES Combattants(id_combattant) ON DELETE CASCADE,
    FOREIGN KEY (id_combattant2) REFERENCES Combattants(id_combattant) ON DELETE CASCADE
);


INSERT INTO Combats (date_combat, lieu, id_combattant1, id_combattant2, resultat, duree_combat, methode_victoire) VALUES
('2015-09-12', 'Las Vegas', 2, 1, 'Victoire de Floyd Mayweather', '00:36:00', 'Décision unanime'),
('1993-11-12', 'Denver', 3, 4, 'Victoire de Royce Gracie', '00:04:59', 'Soumission'),
('2022-11-05', 'Bangkok', 6, 5, 'Victoire de Rodtang Jitmuangnon', '00:10:30', 'KO');
