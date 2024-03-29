CREATE TABLE SAISON (
    saison_id INT PRIMARY KEY NOT NULL,
    annee_diffusion INT,
    studio_production VARCHAR(255)
);

CREATE TABLE EPISODE (
    episode_id INT PRIMARY KEY NOT NULL,
    titre_episode VARCHAR(255),
    note_episode INT,
    nombres_visionnages INT,
    duree_episode INT,
    Ordre_episode INT,
    saison_id INT,
    FOREIGN KEY (saison_id ) REFERENCES SAISON(saison_id )
);

CREATE TABLE ArcNarratif (
    arc_id INT PRIMARY KEY NOT NULL,
    nom_arc VARCHAR(255),
    id_episode_debut INT,
    id_episode_fin INT,
    episode_id INT,
    FOREIGN KEY (id_episode_debut) REFERENCES EPISODE(episode_id),
    FOREIGN KEY (id_episode_fin) REFERENCES EPISODE(episode_id)
);

CREATE TABLE Est_dans_ (
    arc_id INT,
    saison_id INT,
    PRIMARY KEY (arc_id,saison_id),
    FOREIGN KEY (saison_id ) REFERENCES SAISON(saison_id ),
    FOREIGN KEY (arc_id) REFERENCES ArcNarratif (arc_id)
);

CREATE TABLE Voix (
    voix INT PRIMARY KEY NOT NULL,
    nom_voix VARCHAR(255),
    prenom_voix VARCHAR(255)
);

CREATE TABLE Gang_1(
    Gang_id INT PRIMARY KEY NOT NULL,
    nom_Gang VARCHAR(255),
    PersonnageAnime_id INT
--    FOREIGN KEY (PersonnageAnime_id ) REFERENCES PersonnageAnime(PersonnageAnime_id )
);

CREATE TABLE Participe_1(
    Gang_id INT,
    arc_id INT,
    PRIMARY KEY (Gang_id,arc_id),
    FOREIGN KEY (Gang_id) REFERENCES Gang_1(Gang_id),
    FOREIGN KEY (arc_id) REFERENCES ArcNarratif (arc_id)
);

CREATE TABLE PersonnageAnime_1(
    PersonnageAnime_id INT PRIMARY KEY NOT NULL,
    nomPersonnage VARCHAR(255),
    prenomPersonnage VARCHAR(255),
    genre VARCHAR(55),
    age INT,
    descriptionPersonnage VARCHAR(255),
    Gang_id INT,
    FOREIGN KEY (Gang_id) REFERENCES Gang_1(Gang_id)
);

CREATE TABLE double_1(
    PersonnageAnime_id INT,
    voix INT,
    PRIMARY KEY (PersonnageAnime_id,voix),
    FOREIGN KEY (PersonnageAnime_id ) REFERENCES PersonnageAnime_1(PersonnageAnime_id ),
    FOREIGN KEY (voix) REFERENCES Voix(voix)
);

CREATE TABLE Apparition_1 (
    PersonnageAnime_id INT,
    episode_id INT,
    PRIMARY KEY (PersonnageAnime_id,episode_id),
    FOREIGN KEY (PersonnageAnime_id ) REFERENCES PersonnageAnime_1(PersonnageAnime_id ),
    FOREIGN KEY (episode_id) REFERENCES EPISODE(episode_id)
);

CREATE TABLE est_present_1(
    PersonnageAnime_id INT,	
    arc_id INT,
    PRIMARY KEY (PersonnageAnime_id,arc_id),
    FOREIGN KEY (PersonnageAnime_id ) REFERENCES PersonnageAnime_1(PersonnageAnime_id ),
    FOREIGN KEY (arc_id) REFERENCES ArcNarratif (arc_id)
);

--ALTER TABLE Gang_1 MODIFY PersonnageAnime_id REFERENCES PersonnageAnime_1(PersonnageAnime_id );