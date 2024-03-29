--Quel est le nombre total de visionnages pour chaque saison de l'anime "Tokyo Revengers" ?
SELECT S.saison_id, S.annee_diffusion, SUM(E.nombres_visionnages) AS total_visionnages
FROM Saison S
JOIN Episode E ON S.saison_id = E.saison_id
GROUP BY S.saison_id, S.annee_diffusion;

--Quel est le nombre d'épisodes dans la saison avec le plus grand nombre de visionnages ?
SELECT saison_id, COUNT(*) AS nombre_episodes
FROM Episode
WHERE saison_id = (
        SELECT saison_id
        FROM Episode
        GROUP BY saison_id
        ORDER BY SUM(nombres_visionnages) DESC
        LIMIT 1
)GROUP BY saison_id;

--Quels sont les personnages qui ont participé à des épisodes ayant une note supérieure à 4 ?
SELECT PA.nomPersonnage, PA.prenomPersonnage
FROM PersonnageAnime PA
JOIN Apparition A ON PA.PersonnageAnime_id = A.PersonnageAnime_id
JOIN Episode E ON A.episode_id = E.episode_id
WHERE E.note_episode > 4;


--Quel est le nombre moyen de visionnages par épisode pour chaque gang de l'anime "Tokyo Revengers" ?
SELECT G.nom_Gang, AVG(E.nombres_visionnages) AS nombre_moyen_visionnages
FROM Gang G
JOIN PersonnageAnime PA ON G.Gang_id = PA.Gang_id
JOIN Apparition A ON PA.PersonnageAnime_id = A.PersonnageAnime_id
JOIN Episode E ON A.episode_id = E.episode_id
GROUP BY G.Gang_id, G.nom_Gang;

--Quel est le personnage qui a la plus haute note moyenne pour ses apparitions dans les épisodes ?
SELECT PA.nomPersonnage, PA.prenomPersonnage
FROM PersonnageAnime PA
WHERE PA.PersonnageAnime_id = (
    SELECT A.PersonnageAnime_id
    FROM Apparition A
    JOIN Episode E ON A.episode_id = E.episode_id
    GROUP BY A.PersonnageAnime_id
    ORDER BY AVG(E.note_episode) DESC
    LIMIT 1
);

--Quels sont les arcs narratifs qui ont des épisodes avec une note moyenne supérieure à 4?
SELECT AN.nom_arc
FROM ArcNarratif AN
JOIN Episode E ON AN.arc_id = E.arc_id
GROUP BY AN.arc_id, AN.nom_arc
HAVING AVG(E.note_episode) > 4;


--Quels sont les personnages qui n'ont jamais été visionnés dans un épisode ?
SELECT PA.nomPersonnage, PA.prenomPersonnage
FROM PersonnageAnime PA
WHERE PA.PersonnageAnime_id NOT IN (
    SELECT DISTINCT A.PersonnageAnime_id
    FROM Apparition A
);

--Quelle est la saison avec le plus grand nombre d'épisodes impliquant un personnage spécifique ?
SELECT saison_id, COUNT(*) AS nombre_episodes
FROM Apparition
WHERE PersonnageAnime_id = (
    SELECT PersonnageAnime_id 
    FROM PersonnageAnime 
    WHERE nomPersonnage = 'Nom du personnage'
    )
GROUP BY saison_id
ORDER BY COUNT(*) DESC
LIMIT 1;

--Quel est le personnage qui a joué le plus grand nombre d'épisodes dans un arc narratif donné ?
SELECT PA.nomPersonnage, PA.prenomPersonnage
FROM PersonnageAnime PA
WHERE PA.PersonnageAnime_id = (
    SELECT A.PersonnageAnime_id
    FROM Apparition A
    JOIN Episode E ON A.episode_id = E.episode_id
    WHERE A.arc_id = (
        SELECT arc_id 
        FROM ArcNarratif
        WHERE nom_arc = "Nom de l'arc narratif")
        
    GROUP BY A.PersonnageAnime_id
    ORDER BY COUNT(*) DESC
    LIMIT 1
);

--Quelle est la voix du personnage principal dans l'anime "Tokyo Revengers" ?
SELECT V.nom_voix, V.prenom_voix
FROM Voix V
JOIN Double D ON V.voix = D.voix
JOIN PersonnageAnime PA ON D.PersonnageAnime_id = PA.PersonnageAnime_id
WHERE PA.nomPersonnage = 'Hanagaki';

--Quels personnages sont apparus dans plus d'un arc ?
SELECT PA.nomPersonnage, PA.prenomPersonnage
FROM PersonnageAnime PA
JOIN Apparition A ON PA.PersonnageAnime_id = A.PersonnageAnime_id
JOIN ArcNarratif AN ON A.arc_id = AN.arc_id
GROUP BY PA.PersonnageAnime_id, PA.nomPersonnage, PA.prenomPersonnage
HAVING COUNT(DISTINCT AN.arc_id) > 1;


--Trier les gangs par taille de leur nombre de membres dans l'ordre croissant.
SELECT nom_gang, nombre_membre
FROM Gang
ORDER BY nombre_membre ASC;

--Quels sont les épisodes où le personnage principal n'apparaît pas ?
SELECT E.titre_episode
FROM Episode E
WHERE E.episode_id NOT IN (
    SELECT A.episode_id
    FROM Apparition A
    JOIN PersonnageAnime PA ON A.PersonnageAnime_id = PA.PersonnageAnime_id
WHERE PA.nomPersonnage = 'Hanagaki'
);




