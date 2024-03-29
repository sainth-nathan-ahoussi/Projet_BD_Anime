INSERT INTO SAISON (saison_id, annee_diffusion, studio_diffusion) 
VALUES (1, 2021, 'Liden Films');
INSERT INTO SAISON (saison_id, annee_diffusion, studio_diffusion) 
VALUES (2, 2023, 'Liden Films');


INSERT INTO Gang_1 (gang_id, nom_gang, ville, nombre_membre, personnage_id)
VALUES (1, 'Tokyo Manjikai', 'Tokyo (Shibuya)', 100, 2);
INSERT INTO Gang_1 (gang_id, nom_gang, ville, nombre_membre, personnage_id)
VALUES (2, 'Mœbius', 'Tokyo (Shinjuku)', 50, 20);
INSERT INTO Gang_1 (gang_id, nom_gang, ville, nombre_membre, personnage_id)
VALUES (3, 'Valhalla', 'Tokyo (Shibuya)', 300, 13);
INSERT INTO Gang_1 (gang_id, nom_gang, ville, nombre_membre, personnage_id)
VALUES (4, 'Black Dragons', 'Tokyo (Shibuya)', 100, 21);


INSERT INTO ArcNarratif (arc_id, nom_arc, episode_id, episode_id_1)
VALUES (1, 'arc Toman', 1, 5);
INSERT INTO ArcNarratif (arc_id, nom_arc, episode_id, episode_id_1)
VALUES (2, 'arc Mœbius', 6, 7);
INSERT INTO ArcNarratif (arc_id, nom_arc, episode_id, episode_id_1)
VALUES (3, 'arc Sanglant D Halloween (Valhalla)', 13, 12);
INSERT INTO ArcNarratif (arc_id, nom_arc, episode_id, episode_id_1)
VALUES (4, 'Arc De Confrontation De Noël (Black Dragons)', 25, 12);


INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES (1, 'Takemichi', 'Hanagaki', 'Masculin', 26, 'personnage principal, c est un jeune homme de 26 ans qui apprend par hasard qu il peut voyager dans le temps de 12 ans en arrière jour pour jour. Il utilise originellement ce pouvoir pour secourir son ancienne petite amie Tachibana Hinata', 1);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(2, 'Sano', 'Manjiro', 'Masculin', 15, 'Il est l un des membres fondateurs et le leader du gang Tokyo Manjikai', 1);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(3, 'Ryugoji', 'Ken', 'Masculin', 15, 'Il officie en tant que numéro 2 du Tokyo manjikai', 1);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(4, 'Tachibana', 'Hinata', 'Féminin', 26, 'elle était la petite amie d Hanagaki Takemichi au collège', NULL);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(5, 'Tachibana', 'Naoto', 'Masculin', 25, 'frère de Tachibana Hinata. Afin de sauver celle-ci, il est devenu lieutenant de police et s est allié avec Hanagaki Takemichi', NULL);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(6, 'Yamagishi', 'Kazushi', 'Masculin', 14, 'il était un élève du collège Mizo, il a depuis rejoint le gang Tokyo Manjikai', 1);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(7, 'Suzuki', 'Makoto', 'Masculin', 14, 'il était un élève du collège Mizo, il a depuis rejoint le gang Tokyo Manjikai', 1);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(8, 'Yamamoto', 'Takuya', 'Masculin', 14, 'il était un élève du collège Mizo, il a depuis rejoint le gang Tokyo Manjikai', 1);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(9, 'Sendo', 'Atsushi', 'Masculin', 14, 'il était un élève du collège Mizo, il a depuis rejoint le gang Tokyo Manjikai', 1);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(10, 'Masaru', NULL, 'Masculin', 15, 'le cousin à Takemichi', NULL);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(11, 'Akaishi', 'Jin', 'Masculin', 15, 'est un voyou membre du Gang de Kiyomasa et de la troisième division du Tokyo Manjikai', 1);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(12, 'Kiyomizu', 'Masataka', 'Masculin', 14, 'alias Kiyomasa est un voyou membre de la troisième division du Tokyo Manjikai', 1);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(13, 'Kisaki', 'Tetta', 'Masculin', 13, 'c est le principal antagoniste de Tokyo Revengers. Il est connu notamment pour avoir gravi à une vitesse folle les échelons du Toman et pour avoir organisé à de nombreuses reprises le meurtre de Tachibana Hinata', 3);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(14, 'Kojima', NULL, 'Masculin', 14, 'c est un collégien du collège Sakura', NULL);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(15, 'Choji', 'Ahane', 'Masculin', 17, 'est l un des capitaines de Valhalla et un sous-fifre de Kisaki Tetta', 3);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(16, 'Sano', 'Emma', 'Féminin', 14, 'était la demi-sœur de Shinichiro Sano et Mikey et la sœur adoptive d Izana Kurokawa', NULL);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(17, 'Mitsuya', 'Takashi', 'Masculin', 15, 'capitaine de la 2 ème division du Tokyo Manjikai', 1);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(18, 'Hayashida', 'Haruki', 'Masculin', 15, 'alias Pachin, capitaine de division du Tokyo Manjikai', 1);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(19, 'Hayashi', 'Ryohei', 'Masculin', 15, 'alias Payan, il est le vice-capitaine de troisième division du Tokyo Manjikai', 1);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(20, 'Osanai', 'Nobutaka', 'Masculin', 17, 'est le chef de Moebius', 2);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(21, 'Taiju', 'Shiba', 'Masculin', 16, 'le chef de gang Black Dragons 10eme génération', 4);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(22, 'Hanma', 'Shuji', 'Masculin', 16, 'un antagoniste secondaire de Tokyo Revengers. Il est le bras droit et confident de Tetta Kisaki', 2);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(23, 'Muto', 'Yasuhiro', 'Masculin', 18, 'est le capitaine de la 5eme division de Toman', 1);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(24, 'Kawata', 'Nahoya', 'Masculin', 16, 'aussi connu sous le surnom de Smiley, c est le capitaine de la 4eme division de Toman', 1);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(25, 'Baji', 'Keisuke', 'Masculin', 15, 'un membre fondateur de Toman', 1);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(26, 'Hanemiya', 'Kazutora', 'Masculin', 15, 'le numéro 3 de Valhalla', 3);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(27, 'Matsuno', 'Chifuyu', 'Masculin', 14, 'vice capitaine de la première division de Toman', 1);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(28, 'Chome', 'Kureji', 'Masculin', 18, 'est l un des capitaines du Valhalla et aussi l un de ses combattants experts', 3);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(29, 'Chonbo', 'Kureji', 'Masculin', 14, 'c est un capitaine de Valhalla', 3);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(30, 'Sano', 'Shinichiro', 'Masculin', 37, 'est une figure historique majeure de la série. Le chef et fondateur des Black Dragons et le frère aîné de Sano Manjiro et Sano Emma. Shinichiro était un délinquant au statut légendaire qui influence grandement les événements de l histoire à la fois lors de sa vie et lors de sa mort', 4);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(31, 'Haitani', 'Rindo', 'Masculin', 17, 'un membre de la Génération S62. Il était membre du Tenjiku avant sa dissolution', NULL);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(32, 'Haitani', 'Ran', 'Masculin', 18, 'fait partie de la Génération S62, un ancien roi céleste de Tenjiku', NULL);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(33, 'Hansen', NULL, 'Masculin', 17, 'est le chef des Ikebukuro Criminal Black Members, qui a supervisé le combat entre le Tokyo Manji Gang et le Valhalla', NULL);
INSERT INTO PersonnageAnime_1 (PersonnageAnime_id, nomPersonnage, prenomPersonnage, genre, age, descriptionPersonnage, Gang_id)
VALUES(34, 'Hasegawa', NULL, 'Feminin', 20, 'est une femme de 20 ans travaillant dans le même magasin de location de DVD que Takemichi', NULL);


INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(1, 'Resurrection', 4.5, 6000, 24, 1, 1);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(2, 'Reunion', 4.2, 5500, 24, 2, 1);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(3, 'Resolve', 4.7, 7000, 24, 3, 1);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(4, 'Return', 4.9, 4800, 24, 4, 1);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(5, 'Revenge', 4.6, 5200, 24, 5, 1);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(6, 'Regret', 4.1, 4500, 24, 6, 1);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(7, 'Revolution', 4.4, 6800, 24, 7, 1);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(8, 'Revival', 4.3, 5900, 24, 8, 1);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(9, 'Reborn', 4.7, 7200, 24, 9, 1);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(10, 'Redemption', 4.2, 6100, 24, 10, 1);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(11, 'Rhapsody', 4.5, 5400, 24, 11, 1);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(12, 'Resistance', 4.8, 6700, 24, 12, 1);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(13, 'Recall', 4.6, 6300, 24, 13, 1);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(14, 'Rescue', 4.3, 5000, 24, 14, 1);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(15, 'Reckoning', 4.2, 5800, 24, 15, 1);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(16, 'Revenge', 4.7, 6700, 24, 16, 1);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(17, 'Regret', 4.4, 7200, 24, 17, 1);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(18, 'Rebellion', 4.5, 5600, 24, 18, 1);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(19, 'Resurgence', 4.1, 4900, 24, 19, 1);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(20, 'Return', 4.9, 6900, 24, 20, 1);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(21, 'Rivalry', 4.3, 6200, 24, 21, 1);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(22, 'Remorse', 4.6, 5500, 24, 22, 1);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(23, 'Revelation', 4.8, 7400, 24, 23, 1);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(24, 'Reunion', 4.5, 6000, 24, 24, 1);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(25, 'Revival', 4.7, 7500, 24, 25, 2);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(26, 'Redemption', 4.0, 5000, 24, 26, 2);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(27, 'Resolution', 4.8, 9000, 24, 27, 2);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(28, 'Rebirth', 4.2, 5500, 24, 28, 2);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(29, 'Recollection', 4.6, 6300, 24, 29, 2);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(30, 'Reckoning', 4.8, 6700, 24, 30, 2);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(31, 'Rebellion', 4.5, 5600, 24, 31, 2);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(32, 'Revolution', 4.7, 7200, 24, 32, 2);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(33, 'Regret', 4.4, 6500, 24, 33, 2);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(34, 'Reunion', 4.2, 5800, 24, 34, 2);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(35, 'Recall', 4.6, 7200, 24, 35, 2);
INSERT INTO EPISODE (episode_id, titre_episode, note_episode, nombre_visionnages, duree_episode, ordre_episode, saispn_id)
VALUES(36, 'Revenge', 4.5, 6000, 24, 36, 2);


INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(1, 'Shin', 'Yuuki');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(2, 'Oosaka', 'Ryouta');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(3, 'Waki', 'Azumi');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(4, 'Hayashi', 'Yuu');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(5, 'Suzuki', 'Tatsuhisa');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(6, 'Mizunaka', 'Masaaki');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(7, 'Kimura', 'Subaru');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(8, 'Matsuoka', 'Yoshitsugu');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(9, 'Eguchi', 'Takuya');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(10, 'Terashima', 'Takuma');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(11, 'Hayama', 'Shouta');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(12, 'Hirose', 'Yuuya');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(13, 'Takeuchi', 'Shunsuke');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(14, 'Hino', 'Satoshi');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(15, 'Uchiyama', 'Yumi');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(16, 'Nozuyama', 'Yukihiro');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(17, 'Ono', 'Daisuke');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(18, 'Kawanishi', 'Kengo');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(19, 'Karino', 'Shou');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(20, 'Morikubo', 'Shoutarou');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(21, 'Hamazoe', 'Shin’ya');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(22, 'Miyashita', 'Eiji');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(23, 'Hirata', 'Mana');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(24, 'Abe', 'Daiki');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(25, 'Yanagita', 'Jun’ichi');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(26, 'Takeuchi', 'Eiji');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(27, 'Matsukaze', 'Masaya');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(28, 'Miyake', 'Jenta');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(29, 'Toki', 'Shun’ichi');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(30, 'Mizushima', 'Daichuu');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(31, 'Iwase', 'Shuuhei');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(32, 'Shimono', 'Hiro');
INSERT INTO Voix (voix_id, nom_voix, prenom_voix)
VALUES(33, 'Namikawa', 'Saiduke');


INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (1, 1);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (5, 2);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (4, 3);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (2, 4);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (3, 5);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (25, 6);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (18, 7);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (17, 8);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (22, 9);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (9, 10);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (6, 11);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (8, 12);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (7, 13);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (12, 14);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (16, 15);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (19, 16);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (23, 17);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (24, 18);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (27, 19);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (13, 20);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (10, 21);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (11, 22);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (34, 23);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (14, 24);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (15, 25);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (30, 27);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (33, 28);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (26, 29);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (28, 30);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (29, 31);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (31, 32);
INSERT INTO double_1 (PersonnageAnime_id, voix)
VALUES (32, 33);


INSERT INTO Est_dans_ (arc_id, saison_id)
VALUES (1,1);
INSERT INTO Est_dans_ (arc_id, saison_id)
VALUES (2,1);
INSERT INTO Est_dans_ (arc_id, saison_id)
VALUES (3,1);
INSERT INTO Est_dans_ (arc_id, saison_id)
VALUES (4,2);


INSERT INTO Participe_1 (gang_id, arc_id)
VALUES (1,1);
INSERT INTO Participe_1 (gang_id, arc_id)
VALUES (1,2);
INSERT INTO Participe_1 (gang_id, arc_id)
VALUES (2,2);
INSERT INTO Participe_1 (gang_id, arc_id)
VALUES (1,3);
INSERT INTO Participe_1 (gang_id, arc_id)
VALUES (3,3);
INSERT INTO Participe_1 (gang_id, arc_id)
VALUES (1,4);
INSERT INTO Participe_1 (gang_id, arc_id)
VALUES (4,4);



INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES (1,1);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES (6,1);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES (7,1);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES (8,1);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES (9,1);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES (10,1);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES (11,1);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES (12,1);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES (5,1);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES (4,1);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES (34,1);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES (1,2);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES (2,2);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES (4,2);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES (5,2);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES (6,2);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(7,2);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(8,2);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(9,2);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(11,2);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(12,2);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(13,2);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(1,3);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(2,3);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(3,3);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(4,3);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(5,3);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(6,3);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(7,3);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(8,3);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(9,3);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(11,3);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(12,3);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(13,3);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(1,4);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(2,4);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(3,4);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(4,4);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(5,4);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(9,4);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(13,4);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(1,5);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(2,5);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(3,5);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(4,5);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(5,5);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(16,5);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(17,5);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(18,5);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(19,5);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(24,5);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(25,5);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(34,5);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(1,6);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(2,6);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(3,6);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(4,6);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(16,6);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(18,6);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(19,6);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(20,6);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(1,7);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(2,7);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(3,7);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(4,7);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(6,7);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(7,7);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(8,7);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(9,7),
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(16,7);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(1,8);
INSERT INTO Apparition_1 (PersonnageAnime_id, episode_id)
VALUES(2,8);
