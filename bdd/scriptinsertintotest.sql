-- QUESTIONNAIRE

INSERT INTO Questionnaires (id_questionnaire, tally_id_questionnaire, name_questionnaire, date_creation_questionnaire)
VALUES (1, 1001, 'Questionnaire 1', '2023-01-01');

INSERT INTO Questionnaires (id_questionnaire, tally_id_questionnaire, name_questionnaire, date_creation_questionnaire)
VALUES (2, 1002, 'Questionnaire 2', '2023-02-15');

INSERT INTO Questionnaires (id_questionnaire, tally_id_questionnaire, name_questionnaire, date_creation_questionnaire)
VALUES (3, 1003, 'Questionnaire 3', '2023-03-10');

-- QUESTION
INSERT INTO Questions (id_question, tally_id_question, label_question, type_question, is_mandatory)
VALUES (1, 1001, 'Est-ce que vous êtes une femme ou un homme?', 'Choice', TRUE);

INSERT INTO Questions (id_question, label_question, type_question, is_mandatory)
VALUES (2, 'Est-ce que vous vous sentez bien à lécole?', 'Text', FALSE);

INSERT INTO Questions (id_question, tally_id_question, label_question, type_question)
VALUES (3, 1002, 'Est-ce que les locaux vous semble agréables?', 'Text');

-- USER
INSERT INTO Users (id_user, tally_id_user, firstname_user, lastname_user, is_admin)
VALUES (1, 1001, 'Maelys', 'Very', 1);

INSERT INTO Users (id_user, tally_id_user, firstname_user, lastname_user, is_admin)
VALUES (2, 1002, 'Jeanne', 'Descourtis', 0);

INSERT INTO Users (id_user, tally_id_user, firstname_user, lastname_user, is_admin)
VALUES (3, 1003, 'Chloe', 'Anglard', 0);

INSERT INTO Users (id_user, tally_id_user, firstname_user, lastname_user, is_admin)
VALUES (4, 1004, 'Ambre', 'Letellier', 1);

INSERT INTO Users (id_user, tally_id_user, firstname_user, lastname_user, is_admin)
VALUES (5, 1005, 'Emmie', 'Kieffer', 0);

INSERT INTO Users (id_user, tally_id_user, firstname_user, lastname_user, is_admin)
VALUES (6, 1006, 'Antoine', 'Aouat', 0);

INSERT INTO Users (id_user, tally_id_user, firstname_user, lastname_user, is_admin)
VALUES (7, 1007, 'Thomas', 'Gendron', 0);

-- RESPONSES
INSERT INTO Responses (id_response, tally_id_responses, date_soumission, id_user, id_questionnaire)
VALUES (1, 2001, '2023-04-01', 1, 1);

INSERT INTO Responses (id_response, tally_id_responses, date_soumission, id_user, id_questionnaire)
VALUES (2, 2002, '2023-04-03', 2, 2);

INSERT INTO Responses (id_response, tally_id_responses, date_soumission, id_user, id_questionnaire)
VALUES (3, 2003, '2023-04-05', 3, 1);

INSERT INTO Responses (id_response, tally_id_responses, date_soumission, id_user, id_questionnaire)
VALUES (4, 2004, '2023-04-08', 1, 3);

INSERT INTO Responses (id_response, tally_id_responses, date_soumission, id_user, id_questionnaire)
VALUES (5, 2005, '2023-04-10', 2, 1);


-- HAVE ACCES
INSERT INTO have_access (id_questionnaire, id_user)
VALUES (1, 1);

INSERT INTO have_access (id_questionnaire, id_user)
VALUES (2, 2);

INSERT INTO have_access (id_questionnaire, id_user)
VALUES (1, 3);

-- OWN
INSERT INTO own (id_questionnaire, id_question)
VALUES (1, 1);

INSERT INTO own (id_questionnaire, id_question)
VALUES (1, 2);

INSERT INTO own (id_questionnaire, id_question)
VALUES (2, 1);

INSERT INTO own (id_questionnaire, id_question)
VALUES (2, 2);

INSERT INTO own (id_questionnaire, id_question)
VALUES (3, 3);


-- RESULTS
-- Pour id_response = 1
INSERT INTO results (id_question, id_response, results)
VALUES (1, 1, 'femme');

INSERT INTO results (id_question, id_response, results)
VALUES (2, 1, 'oui');

INSERT INTO results (id_question, id_response, results)
VALUES (3, 1, 'oui');

-- Pour id_response = 2
INSERT INTO results (id_question, id_response, results)
VALUES (1, 2, 'homme');

INSERT INTO results (id_question, id_response, results)
VALUES (2, 2, 'oui');

INSERT INTO results (id_question, id_response, results)
VALUES (3, 2, 'oui');

-- Pour id_response = 3
INSERT INTO results (id_question, id_response, results)
VALUES (1, 3, 'femme');

INSERT INTO results (id_question, id_response, results)
VALUES (2, 3, 'oui');

INSERT INTO results (id_question, id_response, results)
VALUES (3, 3, 'non');

-- Pour id_response = 4
INSERT INTO results (id_question, id_response, results)
VALUES (1, 4, 'homme');

INSERT INTO results (id_question, id_response, results)
VALUES (2, 4, 'oui');

INSERT INTO results (id_question, id_response, results)
VALUES (3, 4, 'non');

-- Pour id_response = 5
INSERT INTO results (id_question, id_response, results)
VALUES (1, 5, 'femme');

INSERT INTO results (id_question, id_response, results)
VALUES (2, 5, 'non');

INSERT INTO results (id_question, id_response, results)
VALUES (3, 5, 'non');


