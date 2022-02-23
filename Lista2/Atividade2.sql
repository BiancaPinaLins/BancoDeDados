create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias (
id bigint auto_increment,
dec30 boolean not null,
dec70 boolean not null,
dec50 boolean not null,
primary key (id)
);
    
insert into tb_categorias (dec30, dec70, dec50) values (false, false, true);
insert into tb_categorias (dec30, dec70, dec50) values (true, false, false);
insert into tb_categorias (dec30, dec70, dec50) values (false, true, false);

select * from tb_categorias;

create table tb_pizzas (
	id bigint auto_increment,
    nome varchar (50) not null,
	borda varchar (50) not null,
	tamanho varchar (50) not null,
	preco decimal (4,2) not null,
    categorias_id bigint, 
	primary key (id),
	FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);
    
insert into tb_pizzas (nome, borda, tamanho, preco, categorias_id) values ("Mussarela", "Sem borda recheada", "Broto", 30.00, 1);
insert into tb_pizzas (nome, borda, tamanho, preco, categorias_id) values ("Mussarela", "Sem borda recheada", "Broto", 60.00, null);
insert into tb_pizzas (nome, borda, tamanho, preco, categorias_id) values ("Margarita", "Sem borda recheada", "Média", 50.00, 2);
insert into tb_pizzas (nome, borda, tamanho, preco, categorias_id) values ("4 Queijos", "Com borda recheada", "Grande", 70.00, 3);
insert into tb_pizzas (nome, borda, tamanho, preco, categorias_id) values ("Vegetariana", "Sem borda recheada", "Broto", 65.00, 3);
insert into tb_pizzas (nome, borda, tamanho, preco, categorias_id) values ("Vegana", "Sem borda recheada", "Grande" , 70.00, 2);
insert into tb_pizzas (nome, borda, tamanho, preco, categorias_id) values ("Napolitana", "Com borda recheada", "Média", 80.00, 2);
insert into tb_pizzas (nome, borda, tamanho, preco, categorias_id) values ("À moda da casa", "Sem borda recheada", "Grande", 70.00, 3);

-- Faça um select que retorne as pizzas com o valor maior do que 45 reais --
select * from tb_pizzas where preco > 45;

-- Faça um select trazendo as pizzas com valor entre 29 e 60 reais --
select * from tb_pizzas where preco between 29 and 60;

-- Faça um select utilizando LIKE buscando as pizzas com a letra C --
select * from tb_pizzas where nome like "%c%";

-- Faça um select com Inner join entre tabelas categoria e pizza --
select * from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.categorias_id;

-- Faça um select onde traga todos as pizzas de uma categoria específica -- 
select * from tb_pizzas right join  tb_categorias on tb_categorias.id = tb_pizzas.categorias_id where tb_categorias.id = 1;




