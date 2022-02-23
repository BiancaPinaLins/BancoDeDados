create database db_ex1_lista1;

use db_ex1_lista1;

-- Tabela com 5 dados --
create table tb_funcionaries(
	id bigint auto_INCREMENT,
    nome varchar(200) not null,
    cargo varchar(200) not null,
    cargahoraria decimal (3,2) not null,
    salario decimal (7,2) not null,
    primary key (id)
);

INSERT INTO tb_funcionaries(nome,cargo,cargahoraria,salario) VALUES ("Maria", "Analista", 8.00, 6000.00);
INSERT INTO tb_funcionaries(nome,cargo,cargahoraria,salario) VALUES ("Fernanda", "Assistente", 8.00, 5000.00);
INSERT INTO tb_funcionaries(nome,cargo,cargahoraria,salario) VALUES ("Paula", "Estagiário", 6.00, 2000.00);
INSERT INTO tb_funcionaries(nome,cargo,cargahoraria,salario) VALUES ("José", "Engenheiro Júnior", 8.00, 7000.00);
INSERT INTO tb_funcionaries(nome,cargo,cargahoraria,salario) VALUES ("Otávio", "Engenheiro Pleno", 8.00, 10000.00);

-- Faça um select que retorne os funcionários com salário maior do que 2000 --
select id, nome, cargo from tb_funcionaries where salario > 2000.00;

-- Faça um select que retorne os funcionários com salários menor do que 2000 --
select id, nome,cargo from tb_funcionaries where salario < 2000.00;

-- Atualize um dado desta tabela através de uma query de atualização -- 
update tb_funcionaries set salario = 1000.00 where id = 5;

