--Fonction pour calculer le nombre total de visionnages pour une saison spécifique :
CREATE FUNCTION GetTotalVisionnages(saisonId INT) 
RETURN INT;
BEGIN
    DECLARE totalVisionnages INT;
    SELECT COUNT(*) INTO totalVisionnages
    FROM Episode
    WHERE saison_id = saisonId;
    RETURN totalVisionnages;
END;

--Procédure pour afficher les personnages qui ont participé à des épisodes avec une note supérieure à une valeur donnée :
CREATE PROCEDURE GetPersonnagesAvecNoteSup(intervalleNote INT)
BEGIN
    SELECT DISTINCT PA.nomPersonnage
    FROM PersonnageAnime PA
    JOIN Apparition A ON PA.PersonnageAnime_id = A.PersonnageAnime_id
    JOIN Episode E ON A.episode_id = E.episode_id
    WHERE E.note_episode > intervalleNote;
END;

--Procédure pour afficher le nombre moyen de visionnages par épisode pour chaque gang :
CREATE PROCEDURE GetNombreMoyenVisionnagesParGang()
BEGIN
    SELECT G.nom_Gang, AVG(E.nombres_visionnages) AS nombre_moyen_visionnages
    FROM Gang G
    JOIN PersonnageAnime PA ON G.Gang_id = PA.Gang_id
    JOIN Apparition A ON PA.PersonnageAnime_id = A.PersonnageAnime_id
    JOIN Episode E ON A.episode_id = E.episode_id
    GROUP BY G.nom_Gang;
END;