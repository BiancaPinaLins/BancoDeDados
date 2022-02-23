create database db_ex3_lista1;

use db_ex3_lista1;
-- Crie  uma tabela co 5 atributos dos estudantes --
create table tb_estudantes(
		id bigint auto_increment,
    nome varchar (200) not null,
    periodo varchar (50) not null,
    turma int not null, 
    nota decimal (3,1) not null,
    primary key (id)
);

-- Popule esta tabela com até 8 dados --
INSERT INTO tb_estudantes (nome, periodo, turma, nota) VALUES ("Beatriz", "Manhã", 41, 10.0);
INSERT INTO tb_estudantes (nome, periodo, turma, nota) VALUES ("Pedro", "Tarde", 42, 9.0);
INSERT INTO tb_estudantes (nome, periodo, turma, nota) VALUES ("Fábio", "Tarde", 42, 8.5);


-- Faça um select que retorne os estudantes com a nota > 7 --
select  id, nome, nota from tb_estudantes where nota > 7 ;

-- Faça um select que retorne os estudantes com a nota < 7 --
select id, nome, nota from tb_estudantes where nota < 7;

-- Atualize um dado desta tabela através de uma query de atualização --
update tb_estudantes set nota = 9 where id = 3;




