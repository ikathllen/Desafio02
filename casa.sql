SELECT * FROM db_faxinas.casa;

ALTER TABLE casa ADD COLUMN cpf_dono VARCHAR(11);

ALTER TABLE casa ADD CONSTRAINT FOREIGN KEY (cpf_dono) REFERENCES proprietario(cpf_proprietario);

INSERT INTO casa(cidade, bairro, rua, complemento, num_casa, tam_casa, cpf_dono) 
VALUES ("Santa Luzia", "Centro", "TV Manoel Gaia", "Proximo a Praça", 65, "M", "01785223656");
INSERT INTO casa(cidade, bairro, rua, complemento, num_casa, tam_casa, cpf_dono) 
VALUES ("Santa Luzia", "São Francisco", "Tiaga Ramos", " ", 310, "G", "06658923111");
INSERT INTO casa(cidade, bairro, rua, complemento, num_casa, tam_casa, cpf_dono) 
VALUES ("Santa Luzia", "Cohab", "Juscelino Kubitschek", "Proximo a Escola", 240, "P", "01785223656");
INSERT INTO casa(cidade, bairro, rua, complemento, num_casa, tam_casa, cpf_dono) 
VALUES ("Santa Luzia", "Centro", "João Pessoa", "Espaço mix", 82, "G", "04228665442");
INSERT INTO casa(cidade, bairro, rua, complemento, num_casa, tam_casa, cpf_dono) 
VALUES ("Santa Luzia", "Rocha", "Rua das flores", "", 441, "G", "01775532615");
INSERT INTO casa(cidade, bairro, rua, complemento, num_casa, tam_casa, cpf_dono) 
VALUES ("Santa Luzia", "Rocha", "Rua dos cravos", "Mercado Esperança", 486, "P", "74785442701");
INSERT INTO casa(cidade, bairro, rua, complemento, num_casa, tam_casa, cpf_dono) 
VALUES ("Santa Luzia", "São Francisca", "Tiaga Ramos", "", 297, "M", "48522114332");
INSERT INTO casa(cidade, bairro, rua, complemento, num_casa, tam_casa, cpf_dono) 
VALUES ("Santa Luzia", "Centro", "João Pessoa", "Espaço Mix", 91, "P", "01101256301");
INSERT INTO casa(cidade, bairro, rua, complemento, num_casa, tam_casa, cpf_dono) 
VALUES ("Santa Luzia", "Cohab", "Dom Pedro II", "Proximo a praça", 222, "G", "05884452545");
INSERT INTO casa(cidade, bairro, rua, complemento, num_casa, tam_casa, cpf_dono) 
VALUES ("Santa Luzia", "Santa Isabel", "Lauro Soudre", "Escadaria", 610, "G", "06584584110");

SELECT id_casa, cidade, bairro, rua, complemento, num_casa, tam_casa, cpf_dono, p.nome_proprietario 
FROM proprietario p JOIN casa c ON p.cpf_proprietario = c.cpf_dono ORDER BY id_casa;