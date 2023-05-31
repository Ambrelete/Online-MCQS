-- QUESTIONNAIRE

INSERT INTO Questionnaires (id_questionnaire, tally_id_questionnaire, name_questionnaire, date_creation_questionnaire) VALUES (1, 1001, 'My self, My mind, My work', '2023-05-20');

-- QUESTION
INSERT INTO Questions (id_question, tally_id_question, label_question, type_question, is_mandatory) VALUES (1, 1001, 'Quel est ton niveau détudes ?', 'Text', TRUE);
INSERT INTO Questions (id_question, tally_id_question, label_question, type_question, is_mandatory) VALUES (2,1002, 'Souhaites-tu répondre au sondage anonymement ?', 'Text', TRUE);
INSERT INTO Questions (id_question, tally_id_question, label_question, type_question, is_mandatory) VALUES (3, 1003, 'Est-ce que je me sens écouté(e) par le personne de lécole ?', 'Text', TRUE);
INSERT INTO Questions (id_question, tally_id_question, label_question, type_question, is_mandatory) VALUES (4, 1004, 'Est-ce que je me sens en confiance vis-à-vis du personne de lécole ?', 'Text', TRUE);
INSERT INTO Questions (id_question, tally_id_question, label_question, type_question, is_mandatory) VALUES (5, 1005, 'Est-ce que me sens en sécurité au sein de létablisement ?', 'Text', TRUE);
INSERT INTO Questions (id_question, tally_id_question, label_question, type_question, is_mandatory) VALUES (6, 1006, 'Je suis tréssé(e) en étant à lécole ou en pensant à lécole.', 'Text', TRUE);
INSERT INTO Questions (id_question, tally_id_question, label_question, type_question, is_mandatory) VALUES (7, 1007, 'Je subis de la pression venant de mes professeurs.', 'Text', TRUE);
INSERT INTO Questions (id_question, tally_id_question, label_question, type_question, is_mandatory) VALUES (8, 1008, 'Lécole me provoque des maux de tête ou de ventre.', 'Text', TRUE);
INSERT INTO Questions (id_question, tally_id_question, label_question, type_question, is_mandatory) VALUES (9, 1009, 'Je me sens intégré(e) dans ma classe.', 'Text', TRUE);
INSERT INTO Questions (id_question, tally_id_question, label_question, type_question, is_mandatory) VALUES (10, 1010, 'Mes camarades/professeurs me font me sentir inférieur/sans qualités.', 'Text', TRUE);
INSERT INTO Questions (id_question, tally_id_question, label_question, type_question, is_mandatory) VALUES (11, 1011, 'Mes camarades/professeurs mont déjà jugé(e). Je me suis senti(e) ridiculisé(e)/rabaissé(e).', 'Text', TRUE);
INSERT INTO Questions (id_question, tally_id_question, label_question, type_question, is_mandatory) VALUES (12, 1012, 'Quel est ton prénom ?', 'Text', FALSE);
INSERT INTO Questions (id_question, tally_id_question, label_question, type_question, is_mandatory) VALUES (13, 1013, 'Quel est ton nom ?', 'Text', FALSE);
INSERT INTO Questions (id_question, tally_id_question, label_question, type_question, is_mandatory) VALUES (14, 1014, 'Souhaites-tu être contacté(e) ?', 'Text', FALSE);
INSERT INTO Questions (id_question, tally_id_question, label_question, type_question, is_mandatory) VALUES (15, 1015, 'Ton adresse e-mail :', 'Text', FALSE);
INSERT INTO Questions (id_question, tally_id_question, label_question, type_question, is_mandatory) VALUES (16, 1016, 'Ton numéro de téléphone :', 'Text', FALSE);

-- USER
INSERT INTO Users (id_user, tally_id_user, firstname_user, lastname_user, is_admin) VALUES (1, 1001, 'Maelys', 'Very', 1);
INSERT INTO Users (id_user, tally_id_user, firstname_user, lastname_user, is_admin) VALUES (2, 1002, 'Yacine', 'Brahim', 0);
INSERT INTO Users (id_user, tally_id_user, firstname_user, lastname_user, is_admin) VALUES (3, 1003, 'Rayan', 'Brahim', 0);
INSERT INTO Users (id_user, tally_id_user, firstname_user, lastname_user, is_admin) VALUES (4, 1004, 'Ambre', 'Letellier', 1);
INSERT INTO Users (id_user, tally_id_user, firstname_user, lastname_user, is_admin) VALUES (5, 1005, 'Julie', 'Picamal', 0);
INSERT INTO Users (id_user, tally_id_user, firstname_user, lastname_user, is_admin) VALUES (6, 1006, 'Camille', 'Heitzmann', 0);
INSERT INTO Users (id_user, tally_id_user, firstname_user, lastname_user, is_admin) VALUES (7, 1007, 'Théo', 'Ruhlmann', 0);

-- RESPONSES
INSERT INTO Responses (id_response, tally_id_responses, date_soumission, id_user, id_questionnaire) VALUES (1, 1001, '2023-05-31', 2, 1);
INSERT INTO Responses (id_response, tally_id_responses, date_soumission, id_user, id_questionnaire) VALUES (2, 1002, '2023-05-31', 3, 1);
INSERT INTO Responses (id_response, tally_id_responses, date_soumission, id_user, id_questionnaire) VALUES (3, 1001, '2023-05-31', 5, 1);
INSERT INTO Responses (id_response, tally_id_responses, date_soumission, id_user, id_questionnaire) VALUES (4, 1001, '2023-05-31', 6, 1);
INSERT INTO Responses (id_response, tally_id_responses, date_soumission, id_user, id_questionnaire) VALUES (5, 1001, '2023-05-31', 7, 1);

-- HAVE ACCES
INSERT INTO have_access (id_questionnaire, id_user) VALUES (1, 1);
INSERT INTO have_access (id_questionnaire, id_user) VALUES (1,4);


-- OWN
INSERT INTO own (id_questionnaire, id_question) VALUES (1, 1);
INSERT INTO own (id_questionnaire, id_question) VALUES (1, 2);
INSERT INTO own (id_questionnaire, id_question) VALUES (1, 3);
INSERT INTO own (id_questionnaire, id_question) VALUES (1, 4);
INSERT INTO own (id_questionnaire, id_question) VALUES (1, 5);
INSERT INTO own (id_questionnaire, id_question) VALUES (1, 6);
INSERT INTO own (id_questionnaire, id_question) VALUES (1, 7);
INSERT INTO own (id_questionnaire, id_question) VALUES (1, 8);
INSERT INTO own (id_questionnaire, id_question) VALUES (1, 9);
INSERT INTO own (id_questionnaire, id_question) VALUES (1, 10);
INSERT INTO own (id_questionnaire, id_question) VALUES (1, 11);
INSERT INTO own (id_questionnaire, id_question) VALUES (1, 12);
INSERT INTO own (id_questionnaire, id_question) VALUES (1, 13);
INSERT INTO own (id_questionnaire, id_question) VALUES (1, 14);
INSERT INTO own (id_questionnaire, id_question) VALUES (1, 15);
INSERT INTO own (id_questionnaire, id_question) VALUES (1, 16);

-- RESULTS
-- Pour id_response = 1
INSERT INTO results (id_question, id_response, results) VALUES (1, 1, 'Terminale');
INSERT INTO results (id_question, id_response, results) VALUES (2, 1, 'Oui');
INSERT INTO results (id_question, id_response, results) VALUES (3, 1, '3');
INSERT INTO results (id_question, id_response, results) VALUES (4, 1, '5');
INSERT INTO results (id_question, id_response, results) VALUES (5, 1, '4');
INSERT INTO results (id_question, id_response, results) VALUES (6, 1, '1');
INSERT INTO results (id_question, id_response, results) VALUES (7, 1, '2');
INSERT INTO results (id_question, id_response, results) VALUES (8, 1, '1');
INSERT INTO results (id_question, id_response, results) VALUES (9, 1, '4');
INSERT INTO results (id_question, id_response, results) VALUES (10, 1, '1');
INSERT INTO results (id_question, id_response, results) VALUES (11, 1, '1');

-- Pour id_response = 2
INSERT INTO results (id_question, id_response, results) VALUES (1, 2, '6e');
INSERT INTO results (id_question, id_response, results) VALUES (2, 2, 'Oui');
INSERT INTO results (id_question, id_response, results) VALUES (3, 2, '5');
INSERT INTO results (id_question, id_response, results) VALUES (4, 2, '4');
INSERT INTO results (id_question, id_response, results) VALUES (5, 2, '5');
INSERT INTO results (id_question, id_response, results) VALUES (6, 2, '1');
INSERT INTO results (id_question, id_response, results) VALUES (7, 2, '1');
INSERT INTO results (id_question, id_response, results) VALUES (8, 2, '1');
INSERT INTO results (id_question, id_response, results) VALUES (9, 2, '5');
INSERT INTO results (id_question, id_response, results) VALUES (10, 2, '1');
INSERT INTO results (id_question, id_response, results) VALUES (11, 2, '1');

-- Pour id_response = 3
INSERT INTO results (id_question, id_response, results) VALUES (1, 3, 'Terminale');
INSERT INTO results (id_question, id_response, results) VALUES (2, 3, 'Non');
INSERT INTO results (id_question, id_response, results) VALUES (12, 3, 'Julie');
INSERT INTO results (id_question, id_response, results) VALUES (13, 3, 'Picamal');
INSERT INTO results (id_question, id_response, results) VALUES (14, 3, 'Oui');
INSERT INTO results (id_question, id_response, results) VALUES (15, 3, 'julie.pic@hotmail.fr');
INSERT INTO results (id_question, id_response, results) VALUES (16, 3, '0645956371');
INSERT INTO results (id_question, id_response, results) VALUES (3, 3, '1');
INSERT INTO results (id_question, id_response, results) VALUES (4, 3, '2');
INSERT INTO results (id_question, id_response, results) VALUES (5, 3, '1');
INSERT INTO results (id_question, id_response, results) VALUES (6, 3, '4');
INSERT INTO results (id_question, id_response, results) VALUES (7, 3, '5');
INSERT INTO results (id_question, id_response, results) VALUES (8, 3, '4');
INSERT INTO results (id_question, id_response, results) VALUES (9, 3, '1');
INSERT INTO results (id_question, id_response, results) VALUES (10, 3, '5');
INSERT INTO results (id_question, id_response, results) VALUES (11, 3, '5');

-- Pour id_response = 4
INSERT INTO results (id_question, id_response, results) VALUES (1, 4, '2nd');
INSERT INTO results (id_question, id_response, results) VALUES (2, 4, 'Oui');
INSERT INTO results (id_question, id_response, results) VALUES (3, 4, '2');
INSERT INTO results (id_question, id_response, results) VALUES (4, 4, '3');
INSERT INTO results (id_question, id_response, results) VALUES (5, 4, '2');
INSERT INTO results (id_question, id_response, results) VALUES (6, 4, '2');
INSERT INTO results (id_question, id_response, results) VALUES (7, 4, '3');
INSERT INTO results (id_question, id_response, results) VALUES (8, 4, '3');
INSERT INTO results (id_question, id_response, results) VALUES (9, 4, '2');
INSERT INTO results (id_question, id_response, results) VALUES (10, 4, '3');
INSERT INTO results (id_question, id_response, results) VALUES (11, 4, '2');

-- Pour id_response = 5
INSERT INTO results (id_question, id_response, results) VALUES (1, 5, '5e');
INSERT INTO results (id_question, id_response, results) VALUES (2, 5, 'Oui');
INSERT INTO results (id_question, id_response, results) VALUES (3, 5, '3');
INSERT INTO results (id_question, id_response, results) VALUES (4, 5, '2');
INSERT INTO results (id_question, id_response, results) VALUES (5, 5, '3');
INSERT INTO results (id_question, id_response, results) VALUES (6, 5, '2');
INSERT INTO results (id_question, id_response, results) VALUES (7, 5, '3');
INSERT INTO results (id_question, id_response, results) VALUES (8, 5, '2');
INSERT INTO results (id_question, id_response, results) VALUES (9, 5, '3');
INSERT INTO results (id_question, id_response, results) VALUES (10, 5, '3');
INSERT INTO results (id_question, id_response, results) VALUES (11, 5, '3');
