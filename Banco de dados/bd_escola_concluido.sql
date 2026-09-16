CREATE DATABASE bdEscola;
USE bdEscola;

CREATE TABLE alunos2 (
   idAluno INTEGER primary key auto_increment,
   nome VARCHAR(50),
   idade INT,
   curso VARCHAR(60),
   nota DECIMAL(3,1)
   );
 
INSERT INTO alunos2 (nome, idade, curso, nota) VALUES ('Ana', 20, 'Engenharia',8.5),
('Bruno', 22, 'Ciencia da Computacao', 9.2), 
('Carla', 19, 'Design', 7.8),
('Daniel', 21, 'Engenharia', 8.0),
('Eduarda', 20, 'Ciencia da Computacao',9.5), 
('Felipe', 23, 'Design', 6.9), 
('Gabriela', 18, 'Engenharia', 8.8),
('Henrique', 24, 'Ciencia da Computacao', 7.5),
('Isabela', 22, 'Design', 9.0),
('Joao', 21, 'Engenharia', 7.2), 
('Karen', 20, 'Administracao', 8.3), 
('Lucas',25, 'Administracao', 6.8), 
('Mariana', 19, 'Marketing', 9.1), 
('Nicolas', 23,'Marketing', 7.7), 
('Olivia', 21, 'Pedagogia', 8.9), 
('Paulo', 24, 'Pedagogia',7.0), 
('Quezia', 20, 'Administracao', 9.4), 
('Rafael', 22, 'Marketing', 8.1),
('Sabrina', 18, 'Pedagogia', 8.6), 
('Thiago', 26, 'Ciencia da Computacao', 9.3);

select nome from alunos2;
select  idaluno,nome , idade, curso, nota from alunos2;
select nome , curso from alunos2;
select nome, curso from alunos2 where curso = 'Engenharia';
select nome, nota from alunos2 where nota > '8';
select nome from alunos2 order by nome asc;
select nome, nota from alunos2 order by nota desc;
select nome, nota from alunos2 order by nota desc limit 3;
select nome, idade from alunos2 where idade >= '22';
select nome, curso, nota from alunos2 where curso = 'Design' and nota > '8';
select nome, curso from alunos2 where curso <> 'Engenharia';
select count(*) from alunos2;
select max(nota) from alunos2;
select AVG(nota) from alunos2;
select nome, nota from alunos2 order by nota desc limit 5;
select nome, curso, nota from alunos2 where nota >= '8' order by nota desc limit 5;

update alunos2
set nota = nota + 0.5
where nota <= 6;
set sql_safe_updates=0