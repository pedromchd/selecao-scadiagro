-- SGBD ESCOLHIDO: POSTGRESQL

DROP TABLE IF EXISTS alunos;

CREATE TABLE
    alunos (
        id INTEGER NOT NULL,
        nome VARCHAR(50) NOT NULL UNIQUE,
        PRIMARY KEY (id)
    );

INSERT INTO alunos (id, nome)
VALUES (1, 'João Francisco da Silva'), (2, 'Maria Aparecida Soares'), (3, 'Eurico de Souza'), (4, 'Manoel Pereira'), (5, 'Joaquim dos Santos');

DROP TABLE IF EXISTS boletins;

CREATE TABLE
    boletins (
        aluno INTEGER NOT NULL,
        bimestre INTEGER NOT NULL,
        nota FLOAT NOT NULL,
        faltas INTEGER NOT NULL
    );

INSERT INTO
    boletins (aluno, bimestre, nota, faltas)
VALUES (1, 1, 67, 3), (1, 2, 88, 0), (1, 3, 90, 1), (1, 4, 81, 4), (2, 1, 75, 0), (2, 2, 70, 0), (2, 3, 72, 1), (2, 4, 60, 2), (3, 1, 90, 0), (3, 2, 92, 1), (3, 3, 95, 0), (3, 4, 75, 1), (4, 1, 100, 2), (4, 2, 81, 3), (4, 3, 85, 2), (4, 4, 90, 3), (5, 1, 50, 1), (5, 2, 57, 0), (5, 3, 68, 1), (5, 4, 79, 0);
