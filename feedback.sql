SELECT * FROM db_faxinas.feedback;

INSERT INTO feedback(comentario, casa_id, diarista_id, agenda_data) VALUES ("Tarefa bem sucessedida", 1, 3, 20220713);
INSERT INTO feedback(comentario, casa_id, diarista_id, agenda_data) VALUES ("Tarefa mal sucessedida", 2, 4, 20220710);
INSERT INTO feedback(comentario, casa_id, diarista_id, agenda_data) VALUES ("Tarefa bem sucessedida", 3, 1, 20220701);
INSERT INTO feedback(comentario, casa_id, diarista_id, agenda_data) VALUES ("Tarefa bem sucessedida", 4, 2, 20220614);
INSERT INTO feedback(comentario, casa_id, diarista_id, agenda_data) VALUES ("Tarefa bem sucessedida", 5, 8, 20220628);
INSERT INTO feedback(comentario, casa_id, diarista_id, agenda_data) VALUES ("Tarefa mal sucessedida", 6, 5, 20220617);
INSERT INTO feedback(comentario, casa_id, diarista_id, agenda_data) VALUES ("Tarefa mal sucessedida", 7, 9, 20220513);
INSERT INTO feedback(comentario, casa_id, diarista_id, agenda_data) VALUES ("Tarefa bem sucessedida", 8, 10, 20220529);
INSERT INTO feedback(comentario, casa_id, diarista_id, agenda_data) VALUES ("Tarefa bem sucessedida", 9, 7, 20220612);
INSERT INTO feedback(comentario, casa_id, diarista_id, agenda_data) VALUES ("Tarefa bem sucessedida", 1, 3, 20220713);
INSERT INTO feedback(comentario, casa_id, diarista_id, agenda_data) VALUES ("Tarefa mal sucessedida", 10, 6, 20220702);

SELECT a.data_agenda, d.nome_diarista, comentario, c.cpf_dono FROM diarista d JOIN feedback f ON d.iddiarista = f.diarista_id
JOIN casa c ON c.id_casa = f.casa_id
JOIN agenda a ON a.data_agenda = f.agenda_data ORDER BY agenda_data;