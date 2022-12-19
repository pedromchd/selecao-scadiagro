-- SGBD ESCOLHIDO: POSTGRESQL

DROP TABLE IF EXISTS alunos;

CREATE TABLE alunos
(
  id INTEGER NOT NULL,
  nome VARCHAR(50) NOT NULL UNIQUE,
  PRIMARY KEY (id)
);

INSERT INTO alunos (id, nome) VALUES
(1, 'João Francisco da Silva'),
(2, 'Maria Aparecida Soares'),
(3, 'Eurico de Souza'),
(4, 'Manoel Pereira'),
(5, 'Joaquim dos Santos');

DROP TABLE IF EXISTS boletins;

CREATE TABLE boletins
(
  aluno INTEGER NOT NULL,
  bimestre INTEGER NOT NULL,
  nota FLOAT NOT NULL,
  faltas INTEGER NOT NULL
);

INSERT INTO boletins (aluno, bimestre, nota, faltas) VALUES
(1, 1, 67, 3), (1, 2, 88, 0), (1, 3, 90, 1), (1, 4, 81, 4),
(2, 1, 75, 0), (2, 2, 70, 0), (2, 3, 72, 1), (2, 4, 60, 2),
(3, 1, 90, 0), (3, 2, 92, 1), (3, 3, 95, 0), (3, 4, 75, 1),
(4, 1, 100, 2), (4, 2, 81, 3), (4, 3, 85, 2), (4, 4, 90, 3),
(5, 1, 50, 1), (5, 2, 57, 0), (5, 3, 68, 1), (5, 4, 79, 0);


SELECT *, (CASE WHEN "Total Faltas" > 15 THEN 'Reprovado' WHEN "Total Faltas" > 7 THEN 'Em recuperação' WHEN "Média Geral" >= 70 THEN 'Aprovado' ELSE 'Em recuperação' END) AS "Situação", (CASE WHEN "Total Faltas" > 15 THEN 'Reprovado' WHEN "Total Faltas" > 7 AND "Média Geral" >= 70 THEN '50' WHEN "Total Faltas" > 7 AND "Média Geral" < 70 THEN CAST ((100 - ("Média Geral" * 0.7) + ("Total Faltas" * 0.1)) AS VARCHAR(8)) WHEN "Média Geral" >= 70 THEN 'Aprovado' ELSE CAST ((100 - ("Média Geral" * 0.7) + ("Total Faltas" * 0.1)) AS VARCHAR(8)) END) AS "Nota Mínima Recuperação" FROM (SELECT "Bimestre1"."Nome do Aluno", "Nota 1ºB", "Faltas 1ºB", "Nota 2ºB", "Faltas 2ºB", "Nota 3ºB", "Faltas 3ºB", "Nota 4ºB", "Faltas 4ºB", ("Nota 1ºB" + "Nota 2ºB" + "Nota 3ºB" + "Nota 4ºB")/4 AS "Média Geral", ("Faltas 1ºB" + "Faltas 2ºB" + "Faltas 3ºB" + "Faltas 4ºB") AS "Total Faltas" FROM (SELECT alunos.nome AS "Nome do Aluno", boletins.nota AS "Nota 1ºB", boletins.faltas AS "Faltas 1ºB" FROM alunos FULL OUTER JOIN boletins ON alunos.id = boletins.aluno WHERE boletins.bimestre = 1) AS "Bimestre1" FULL OUTER JOIN (SELECT alunos.nome AS "Nome do Aluno", boletins.nota AS "Nota 2ºB", boletins.faltas AS "Faltas 2ºB" FROM alunos JOIN boletins ON alunos.id = boletins.aluno WHERE boletins.bimestre = 2) AS "Bimestre2" ON "Bimestre1"."Nome do Aluno" = "Bimestre2"."Nome do Aluno" FULL OUTER JOIN (SELECT alunos.nome AS "Nome do Aluno", boletins.nota AS "Nota 3ºB", boletins.faltas AS "Faltas 3ºB" FROM alunos JOIN boletins ON alunos.id = boletins.aluno WHERE boletins.bimestre = 3) AS "Bimestre3" ON "Bimestre2"."Nome do Aluno" = "Bimestre3"."Nome do Aluno" FULL OUTER JOIN (SELECT alunos.nome AS "Nome do Aluno", boletins.nota AS "Nota 4ºB", boletins.faltas AS "Faltas 4ºB" FROM alunos JOIN boletins ON alunos.id = boletins.aluno WHERE boletins.bimestre = 4) AS "Bimestre4" ON "Bimestre3"."Nome do Aluno" = "Bimestre4"."Nome do Aluno") AS "Boletim";
