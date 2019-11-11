CREATE TABLE categoria
(id_categoria NUMBER CONSTRAINT pk_categoria PRIMARY KEY,
nome VARCHAR2(10)
);

CREATE TABLE narrador
(id_narrador NUMBER CONSTRAINT pk_narrador PRIMARY KEY,
nome VARCHAR2(10)
);

CREATE TABLE audiobook
(id_audiobook NUMBER CONSTRAINT pk_audiobook PRIMARY KEY,
idioma VARCHAR2(10),
duracao NUMBER
);

CREATE TABLE autor
(id_autor NUMBER CONSTRAINT pk_autor PRIMARY KEY,
nome VARCHAR2(10)
);

CREATE TABLE usuario
(id_usuario NUMBER CONSTRAINT pk_usuario PRIMARY KEY,
nome VARCHAR2(10),
data_nascimento DATE,
email VARCHAR2(10) CONSTRAINT unique_usuario UNIQUE,
pais VARCHAR2(10),
telefone VARCHAR2(10),
senha VARCHAR2(10)
);

CREATE TABLE pertence
(id_categoria NUMBER,
id_audiobook NUMBER,
CONSTRAINT pk_pertence PRIMARY KEY(id_categoria, id_audiobook)
);

CREATE TABLE narra
(id_narrador NUMBER,
id_audiobook NUMBER,
CONSTRAINT pk_narra PRIMARY KEY(id_narrador, id_audiobook)
);

CREATE TABLE ouviu
(id_audiobook NUMBER,
id_usuario NUMBER,
total_escutado NUMBER,
data_hora DATE,
CONSTRAINT pk_ouviu PRIMARY KEY(id_audiobook, id_usuario)
);

CREATE TABLE escreveu
(id_autor NUMBER,
id_audiobook NUMBER,
CONSTRAINT pk_escreveu PRIMARY KEY(id_autor, id_audiobook)
);

ALTER TABLE pertence ADD
(CONSTRAINT fk_pertence_id_categoria FOREIGN KEY(id_categoria) REFERENCES categoria,
CONSTRAINT fk_pertence_id_audiobook FOREIGN KEY(id_audiobook) REFERENCES audiobook);

ALTER TABLE narra ADD
(CONSTRAINT fk_narra_id_narrador FOREIGN KEY(id_narrador) REFERENCES narrador,
CONSTRAINT fk_narra_id_audiobook FOREIGN KEY(id_audiobook) REFERENCES audiobook);

ALTER TABLE escreveu ADD
(CONSTRAINT fk_escreveu_id_audiobook FOREIGN KEY(id_audiobook) REFERENCES audiobook,
CONSTRAINT fk_escreveu_id_autor FOREIGN KEY(id_autor) REFERENCES autor);

ALTER TABLE ouviu add
(CONSTRAINT fk_ouviu_id_audiobook FOREIGN KEY(id_audiobook) REFERENCES audiobook,
CONSTRAINT fk_ouviu_id_usuario FOREIGN KEY(id_usuario) REFERENCES usuario);

CREATE SEQUENCE s_categoria NOCACHE;

CREATE SEQUENCE s_narrador NOCACHE;

CREATE SEQUENCE s_audiobook NOCACHE;

CREATE SEQUENCE s_autor NOCACHE;

CREATE SEQUENCE s_usuario NOCACHE;