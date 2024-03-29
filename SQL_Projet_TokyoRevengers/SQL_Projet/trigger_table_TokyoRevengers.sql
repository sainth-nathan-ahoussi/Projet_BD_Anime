--Trigger pour mettre à jour le nombre de membres d'un gang lorsque des personnages y sont ajoutés ou supprimés :
CREATE TRIGGER MiseAJourNombreMembres
AFTER INSERT OR DELETE ON PersonnageAnime
FOR EACH ROW
BEGIN
    DECLARE gangId INT;
    SET gangId = NEW.Gang_id;
    IF gangId IS NOT NULL THEN
        UPDATE Gang
        SET nombre_membres = (SELECT COUNT(*) FROM PersonnageAnime WHERE Gang_id = gangId)
        WHERE Gang_id = gangId;
    END IF;
END;

--Trigger pour empêcher la suppression d'une saison ayant des épisodes non terminés :
CREATE TRIGGER EmpecherSuppressionSaison
BEFORE DELETE ON Saison FOR EACH ROW
BEGIN
    DECLARE episodeNonTermine INT;
    SELECT COUNT(*) INTO episodeNonTermine
    FROM Episode
    WHERE saison_id = OLD.saison_id AND id_episode_fin IS NULL;
    IF episodeNonTermine > 0 THEN
         SIGNAL SQLSTATE '45000'
         SET MESSAGE_TEXT = 'Impossible de supprimer la saison. Des épisodes sont en cours.';
    END IF;
END;

--Trigger pour mettre à jour la durée totale d'un arc narratif lorsque des épisodes y sont ajoutés ou supprimés :
CREATE TRIGGER MiseAJourDureeArcNarratif
AFTER INSERT OR DELETE ON Episode FOR EACH ROW
BEGIN
    DECLARE arcId INT;
    SET arcId = NEW.arc_id;
    IF arcId IS NOT NULL THEN
        UPDATE ArcNarratif
        SET duree_totale = (SELECT SUM(duree_episode) FROM Episode WHERE arc_id = arcId)
        WHERE arc_id = arcId;
    END IF;
END;

--Trigger pour mettre à jour le nombre moyen de visionnages par épisode d'un gang lorsque des personnages y sont ajoutés ou supprimés :
CREATE TRIGGER MiseAJourNombreMoyenVisionnagesParGang
AFTER INSERT OR DELETE ON PersonnageAnime FOR EACH ROW
BEGIN
    DECLARE gangId INT;
    SET gangId = NEW.Gang_id;
    IF gangId IS NOT NULL THEN
        UPDATE Gang
        SET nombre_moyen_visionnages = (SELECT AVG(E.nombres_visionnages)
                                        FROM Episode E
                                        JOIN Apparition A ON E.episode_id = A.episode_id
                                        JOIN PersonnageAnime PA ON A.PersonnageAnime_id = PA.PersonnageAnime_id
                                        WHERE PA.Gang_id = gangId)
        WHERE Gang_id = gangId;
    END IF;
END;

--Trigger pour mettre à jour la liste des personnages qui ont participé à des épisodes avec une note supérieure à 4 :
CREATE TRIGGER MiseAJourPersonnagesNoteSuperieure
AFTER INSERT OR UPDATE OF note_episode ON Episode FOR EACH ROW
BEGIN
    IF NEW.note_episode > 4 THEN
        INSERT INTO PersonnagesNoteSuperieure (PersonnageAnime_id)
        VALUES (NEW.PersonnageAnime_id)
        ON DUPLICATE KEY UPDATE PersonnageAnime_id = NEW.PersonnageAnime_id;
    ELSE
        DELETE FROM PersonnagesNoteSuperieure
        WHERE PersonnageAnime_id = NEW.PersonnageAnime_id;
    END IF;
END;

--Trigger pour mettre à jour la liste des arcs narratifs ayant des épisodes avec une note moyenne supérieure à 4 :
CREATE TRIGGER MiseAJourArcsNoteMoyenneSuperieure
AFTER INSERT OR UPDATE OF note_episode ON Episode FOR EACH ROW
BEGIN
    IF NEW.note_episode > 4 THEN
        INSERT INTO ArcsNoteMoyenneSuperieure (arc_id)
        VALUES (NEW.arc_id)
        ON DUPLICATE KEY UPDATE arc_id = NEW.arc_id;
    ELSE
        DELETE FROM ArcsNoteMoyenneSuperieure
        WHERE arc_id = NEW.arc_id;
    END IF;
END;

--Trigger pour mettre à jour le nombre d'épisodes impliquant un personnage spécifique dans une saison :
CREATE TRIGGER MiseAJourNombreEpisodesPersonnageSaison
AFTER INSERT OR DELETE ON Apparition FOR EACH ROW
BEGIN
    DECLARE personnageId INT;
    DECLARE saisonId INT;
    SET personnageId = NEW.PersonnageAnime_id;
    SET saisonId = NEW.saison_id;
    IF personnageId IS NOT NULL AND saisonId IS NOT NULL THEN
        UPDATE Saison
        SET nombre_episodes_personnage = (SELECT COUNT(*)
                                          FROM Apparition
                                          WHERE PersonnageAnime_id = personnageId AND saison_id = saisonId)
        WHERE saison_id = saisonId;
    END IF;
END;

--Trigger pour mettre à jour le nombre d'épisodes dans la saison avec le plus grand nombre de visionnages :
CREATE TRIGGER MiseAJourSaisonPlusVisionnees
AFTER INSERT ON Episode FOR EACH ROW
BEGIN
    DECLARE saisonId INT;
    SET saisonId = NEW.saison_id;
    IF saisonId IS NOT NULL THEN
        UPDATE Saison
        SET nombre_episodes_plus_visionnes = (SELECT COUNT(*)
                                              FROM Episode
                                              WHERE saison_id = saisonId
                                              GROUP BY saison_id
                                              ORDER BY SUM(nombres_visionnages) DESC
                                              LIMIT 1)
        WHERE saison_id = saisonId;
    END IF;
END;