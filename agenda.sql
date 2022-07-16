SELECT * FROM db_faxinas.agenda;

ALTER TABLE agenda ADD COLUMN log BOOLEAN;
ALTER TABLE agenda ADD COLUMN diarista INT(5);
ALTER TABLE agenda ADD CONSTRAINT FOREIGN KEY (diarista) REFERENCES diarista(iddiarista);
ALTER TABLE agenda ADD CONSTRAINT FOREIGN KEY (id_casa_agenda) REFERENCES casa(id_casa);
ALTER TABLE agenda DROP COLUMN preco;

INSERT INTO agenda(log, id_casa_agenda, diarista, data_agenda) VALUES (1, 1, 3, 20220713);
INSERT INTO agenda(log, id_casa_agenda, diarista, data_agenda) VALUES (0, 2, 4, 20220710);
INSERT INTO agenda(log, id_casa_agenda, diarista, data_agenda) VALUES (1, 3, 1, 20220701);
INSERT INTO agenda(log, id_casa_agenda, diarista, data_agenda) VALUES (1, 4, 2, 20220614);
INSERT INTO agenda(log, id_casa_agenda, diarista, data_agenda) VALUES (1, 5, 8, 20220628);
INSERT INTO agenda(log, id_casa_agenda, diarista, data_agenda) VALUES (0, 6, 5, 20220617);
INSERT INTO agenda(log, id_casa_agenda, diarista, data_agenda) VALUES (0, 7, 9, 20220513);
INSERT INTO agenda(log, id_casa_agenda, diarista, data_agenda) VALUES (1, 8, 10, 20220529);
INSERT INTO agenda(log, id_casa_agenda, diarista, data_agenda) VALUES (1, 9, 7, 20220612);
INSERT INTO agenda(log, id_casa_agenda, diarista, data_agenda) VALUES (0, 10, 6, 20220702);

SELECT data_agenda, id_casa_agenda, c.tam_casa, d.nome_diarista,
IF(log = 1, CASE 
WHEN c.tam_casa = "P" THEN 250
WHEN c.tam_casa = "M" THEN 350
ELSE 500 END, "FALTOU")
AS valor FROM casa c JOIN agenda a ON c.id_casa = a.id_casa_agenda 
JOIN diarista d ON d.iddiarista = a.diarista order by data_agenda;