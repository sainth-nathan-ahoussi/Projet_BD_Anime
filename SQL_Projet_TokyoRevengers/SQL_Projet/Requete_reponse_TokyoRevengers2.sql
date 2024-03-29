-- Compter le nombre d'apparitions des personnages appartenant à chaque gang, en les regroupant par nom de gang et identifiant de saison :
SELECT COUNT(*) AS NbApparition, NomGang, Saison_id
FROM Apparition A
INNER JOIN PersonnageAnime PA ON A.PersonnageAnime_id = PA.PersonnageAnime_id
INNER JOIN Episode E ON A.Episode_id = E.Episode_id
INNER JOIN Saison S ON E.Saison_id = S.Saison_id
GROUP BY NomGang, Saison_id;

-- Calculer le nombre total de membres pour chaque gang dans la table Gang:
SELECT gang_id, nom_gang, COUNT(*) AS nombre_membres
FROM PersonnageAnime
GROUP BY gang_id, nom_gang;

-- Sélectionner les épisodes dans lesquels un personnage spécifique apparaît:
SELECT e.titre_episode
FROM Episode e
INNER JOIN Apparition a ON e.episode_id = a.episode_id
INNER JOIN PersonnageAnime p ON a.personnageanime_id = p.personnageanime_id
WHERE p.nom_personnage = 'Nom du personnage';


--Afficher les chefs de gangs ainsi que leur nombre d'apparitions dans les deux saisons
SELECT PA.nom_personnage, G.nom_gang, COUNT(*) AS nombre_apparitions
FROM PersonnageAnime PA
JOIN Gang G ON PA.gang_id = G.gang_id
JOIN Apparition A ON PA.personnageanime_id = A.personnageanime_id
JOIN Episode E ON A.episode_id = E.episode_id
JOIN Saison S ON E.saison_id = S.saison_id
WHERE S.saison_id IN (1, 2)
GROUP BY PA.personnageanime_id, PA.nom_personnage, G.nom_gang;

--Afficher le protagoniste de l'œuvre ainsi que son gang
SELECT PA.nom_personnage AS protagoniste, G.nom_gang
FROM PersonnageAnime PA
JOIN Gang G ON PA.gang_id = G.gang_id
WHERE PA.personnageanime_id = (SELECT personnageanime_id FROM PersonnageAnime WHERE nom_personnage = 'Nom du protagoniste');

--Donner le nombre de personnages qui n'appartiennent pas à un gang
SELECT COUNT(*) AS nombre_personnages_sans_gang
FROM PersonnageAnime
WHERE gang_id IS NULL;

--Donner la liste des épisodes dans lesquels Mickey et Draken n'apparaissent pas
SELECT E.titre_episode
FROM Episode E
WHERE E.episode_id NOT IN (
        SELECT A.episode_id 
        FROM Apparition A JOIN PersonnageAnime PA 
        ON A.personnageanime_id = PA.personnageanime_id 
        WHERE PA.nom_personnage IN ('Mickey', 'Draken')
);
