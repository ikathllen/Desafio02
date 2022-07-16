CREATE DATABASE `db_faxinas` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE db_faxinas;

CREATE TABLE diarista(
iddiarista INT NOT NULL, PRIMARY KEY (iddiarista));

ALTER TABLE diarista ADD COLUMN cpf_diarista VARCHAR(11) NOT NULL AFTER iddiarista,
ADD COLUMN nome_diarista VARCHAR(45) NOT NULL AFTER cpf_diarista, 
CHANGE COLUMN iddiarista iddiarista INT NOT NULL AUTO_INCREMENT ;

CREATE TABLE proprietario(
cpf_proprietario VARCHAR(11) NOT NULL PRIMARY KEY,
nome_proprietario VARCHAR(45) NOT NULL);

CREATE TABLE casa(
id_casa INT(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
cidade VARCHAR(20),
bairro VARCHAR(20),
rua VARCHAR(20),
complemento VARCHAR(20),
num_casa INT(5), 
tam_casa VARCHAR(3));

CREATE TABLE agenda(
data_agenda DATE NOT NULL PRIMARY KEY,
preco DOUBLE NOT NULL,
id_casa_agenda INT(5));

CREATE TABLE casa_has_diarista(
id INT(5) NOT NULL AUTO_INCREMENT,
casa_idcasa INT(5),
diarista_iddiarista INT(5),
PRIMARY KEY(id),
FOREIGN KEY (casa_idcasa) REFERENCES casa(id_casa),
FOREIGN KEY (diarista_iddiarista) REFERENCES diarista(iddiarista));

CREATE TABLE feedback(
comentario VARCHAR(45),
diarista_id INT(5),
casa_id INT(5),
agenda_data DATE,
FOREIGN KEY (casa_id) REFERENCES casa(id_casa),
FOREIGN KEY (diarista_id) REFERENCES diarista(iddiarista),
FOREIGN KEY (agenda_data) REFERENCES agenda(data_agenda));
