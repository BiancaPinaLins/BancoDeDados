create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categorias (
id bigint auto_increment,
tipo varchar (50),
duracao varchar (50),
regiao varchar (50),
primary key (id)
);
    
insert into tb_categorias (tipo, duracao, regiao) values ("Curso Online", "3 meses", "Recife");
insert into tb_categorias (tipo, duracao, regiao) values ("Curso Online", "3 meses", "São Paulo");
insert into tb_categorias (tipo, duracao, regiao) values ("Curso Online", "2 meses","São Paulo");
insert into tb_categorias (tipo, duracao, regiao) values ("Curso Online", "2 meses", "Recife");
insert into tb_categorias (tipo, duracao, regiao) values ("Curso Online", "3 meses", "Minas Gerais");

select * from tb_categorias;

create table tb_cursos (
id bigint auto_increment,
nome varchar (50) not null,
professore varchar (50) not null,
instrutore varchar (50) not null,
valor decimal (5,2) not null,
categorias_id bigint, 
primary key (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);
    
insert into tb_cursos (nome, professore, instrutore, valor, categorias_id) values ("Desenvolvedor Full Stack Java Júnior", "Júlio", "Paula", 800.00, 1);
insert into tb_cursos (nome, professore, instrutore, valor, categorias_id) values ("Desenvolvedor Full Stack Java Júnior", "Pedro", "Fernanda", 800.00, 2);
insert into tb_cursos (nome, professore, instrutore, valor, categorias_id) values ("Desenvolvedor Full Stack Java Júnior", "Maria", "Marisa", 700.00, 3);
insert into tb_cursos (nome, professore, instrutore, valor, categorias_id) values ("Desenvolvedor Mobile", "Larissa", "Camila", 750.00, 4);
insert into tb_cursos (nome, professore, instrutore, valor, categorias_id) values ("Desenvolvedor Mobile", "Maria" , "Fábio", 750.00, 5);

select * from tb_cursos;

-- Faça um select que retorne os cursos com o valor maior do que 50 reais --
select * from tb_cursos where valor > 50;

-- Faça um select trazendo os cursos com valor entre 3 e 60 reais --
select * from tb_cursos where valor between 3 and 60;

-- Faça um select utilizando LIKE buscando os cursos com a letra C --
select * from tb_cursos where nome like "%c%";

-- Faça um select com Inner join entre tabelas categoria e cursos --
select * from tb_cursos inner join tb_categorias on tb_categorias.id = tb_cursos.categorias_id;

-- Faça um select onde traga todos os cursos de uma categoria específica -- 
select * from tb_cursos right join  tb_categorias on tb_categorias.id = tb_cursos.categorias_id where tb_categorias.id = 3;













