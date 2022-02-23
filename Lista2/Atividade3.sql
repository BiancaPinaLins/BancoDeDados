create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categorias(
id bigint not null auto_increment,
tipo varchar (30),
caracteristica varchar (30),
receita varchar (30), 
primary key (id)
);

insert into tb_categorias (tipo, caracteristica, receita) values ("Genérico", "Para dor de cabeça", "Não necessita de receita");
insert into tb_categorias (tipo, caracteristica, receita) values ("Genérico","Para dor de barriga","Não necessita de receita");
insert into tb_categorias (tipo, caracteristica, receita) values ("Genérico","Para gripe", "Não necessita de receita");
insert into tb_categorias (tipo, caracteristica, receita) values ("Original","Antitérmico","Não necessita de receita");
insert into tb_categorias (tipo, caracteristica, receita) values ("Original","Dermatológico", "Necessita de receita");

select * from tb_categorias;

create table tb_produtos(
id bigint not null auto_increment,
nome varchar(100) not null,
datacadastro timestamp,
validade date,
preco decimal (6,2),
categorias_id bigint,
primary key (id),
foreign key (categorias_id) references tb_categorias(id)
);

insert into tb_produtos(nome, datacadastro, validade, preco, categorias_id) 
values("Novalgina", current_date(), '2022-03-01', 25.90, 1);

insert into tb_produtos(nome, datacadastro, validade, preco, categorias_id) 
values("Roacutan", current_date(), '2022-05-01', 1000.00, 5);

insert into tb_produtos(nome, datacadastro, validade, preco, categorias_id) 
values("Neosaldina", current_date(), '2022-07-01', 3.90, 1);

insert into tb_produtos(nome, datacadastro, validade, preco, categorias_id) 
values("Tylenol", current_date(), '2022-03-07', 3.90, 1);

insert into tb_produtos(nome, datacadastro, validade, preco, categorias_id) 
values("Vitacid", current_date(), '2022-08-02', 80.90, 5);

insert into tb_produtos(nome, datacadastro, validade, preco, categorias_id) 
values("Estomazil", current_date(), '2022-09-07', 9.90, 2);

insert into tb_produtos(nome, datacadastro, validade, preco, categorias_id) 
values("Cimegripe", current_date(), '2022-04-09', 5.90, 3);

insert into tb_produtos(nome, datacadastro, validade, preco, categorias_id) 
values("Benegrip", current_date(), '2022-04-01', 7.90, 3);

select * from tb_produtos;

-- Faça um select que retorne os produtos com o valor maior do que 50 reais --
select * from tb_produtos where preco > 50;

-- Faça um select trazendo os produtos com  valor entre 3 e 60 reais --
select * from tb_produtos where preco between 3 and 60;

-- Faça um select utilizando LIKE buscando os produtos com a letra B --
select * from tb_produtos where nome like "%b%";

-- Faça um select com Inner join entre tabelas categorias e produtos --
select * from tb_produtos inner join tb_categorias
on tb_categorias.id = tb_produtos.categorias_id;

-- Faça um select onde traga todos os produtos de uma categoria especifica -- 
select * from tb_produtos inner join tb_categorias
on tb_categorias.id = tb_produtos.categorias_id
where tb_categorias.id = 2;





