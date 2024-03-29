--Vue des épisodes avec leurs informations de saison 

CREATE VIEW Vue_Episodes AS 
SELECT E.episode_id, E.titre_episode, E.note_episode, E.nombres_visionnages, E.duree_episode, E.Ordre_episode, S.saison_id, S.annee_diffusion, S.studio_production
FROM EPISODE E
JOIN SAISON S ON E.saison_id = S.saison_id;

--Vue des arcs narratifs avec les noms des épisodes de début et de fin :

CREATE VIEW Vue_ArcNarratif AS
SELECT A.arc_id, A.nom_arc, Edebut.titre_episode AS episode_debut, Efin.titre_episode AS episode_fin
FROM ArcNarratif A
JOIN EPISODE E ON A.id_episode_debut = E.episode_id
JOIN EPISODE E ON A.id_episode_fin = E.episode_id;

--Vue des personnages avec leurs informations de voix et de gang :

CREATE VIEW Vue_Personnage AS
SELECT P.PersonnageAnime_id, P.nomPersonnage, P.prenomPersonnage, P.genre, P.age, P.descriptionPersonnage, V.nom_voix, V.prenom_voix, G.nom_Gang
FROM PersonnageAnime P
JOIN Voix V ON P.PersonnageAnime_id = V.voix
JOIN Gang G ON P.Gang_id = G.Gang_id;
