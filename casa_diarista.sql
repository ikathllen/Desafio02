SELECT * FROM db_faxinas.casa_has_diarista;

INSERT INTO casa_has_diarista(casa_idcasa, diarista_iddiarista) VALUES (1, 3);
INSERT INTO casa_has_diarista(casa_idcasa, diarista_iddiarista) VALUES (2, 4);
INSERT INTO casa_has_diarista(casa_idcasa, diarista_iddiarista) VALUES (3, 1);
INSERT INTO casa_has_diarista(casa_idcasa, diarista_iddiarista) VALUES (4, 2);
INSERT INTO casa_has_diarista(casa_idcasa, diarista_iddiarista) VALUES (5, 8);
INSERT INTO casa_has_diarista(casa_idcasa, diarista_iddiarista) VALUES (6, 5);
INSERT INTO casa_has_diarista(casa_idcasa, diarista_iddiarista) VALUES (7, 9);
INSERT INTO casa_has_diarista(casa_idcasa, diarista_iddiarista) VALUES (8, 10);
INSERT INTO casa_has_diarista(casa_idcasa, diarista_iddiarista) VALUES (9, 7);
INSERT INTO casa_has_diarista(casa_idcasa, diarista_iddiarista) VALUES (10, 6);

SELECT cd.id, c.cidade, c.tam_casa, c.cpf_dono, d.nome_diarista FROM casa c JOIN casa_has_diarista cd ON c.id_casa = cd.casa_idcasa
JOIN diarista d ON d.iddiarista = cd.diarista_iddiarista order by id;