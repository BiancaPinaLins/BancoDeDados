create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categorias (
id bigint auto_increment,
teorcal varchar (50),
nivelDoce varchar (50),
nivelAmarga varchar (50),
primary key (id)
);
    
insert into tb_categorias (teorcal, nivelDoce, nivelAmarga) values ("Baixo", "Médio", "Baixo");
insert into tb_categorias (teorcal, nivelDoce, nivelAmarga) values ("Baixo", "Baixo", "Alto");
insert into tb_categorias (teorcal, nivelDoce, nivelAmarga) values ("Médio", "Alto","Baixo");
insert into tb_categorias (teorcal, nivelDoce, nivelAmarga) values ("Baixo", "Baixo", "Médio");
insert into tb_categorias (teorcal, nivelDoce, nivelAmarga) values ("Alto", "Baixo", "Alto");

select * from tb_categorias;

create table tb_produtos (
	id bigint auto_increment,
    nome varchar (50) not null,
	cor varchar (50) not null,
	tamanho varchar (50) not null,
	precokg decimal (4,2) not null,
    categorias_id bigint, 
	primary key (id),
	FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);
    
insert into tb_produtos (nome, cor, tamanho, precokg, categorias_id) values ("Maça", "Vermelha", "Média", 3.0, 3);
insert into tb_produtos (nome, cor, tamanho, precokg, categorias_id) values ("Morango", "Vermelha", "Pequena", 8.0, 1);
insert into tb_produtos (nome, cor, tamanho, precokg, categorias_id) values ("Melancia", "Vermelha", "Grande", 7.00, 1);
insert into tb_produtos (nome, cor, tamanho, precokg, categorias_id) values ("Tomate", "Vermelha", "Média", 6.00, 4);
insert into tb_produtos (nome, cor, tamanho, precokg, categorias_id) values ("Pêssego", "Amarelo", "Médio" , 7.00, 3);
insert into tb_produtos (nome, cor, tamanho, precokg, categorias_id) values ("Ameixa", "Roxa", "Pequena", 8.00, 4);
insert into tb_produtos (nome, cor, tamanho, precokg, categorias_id) values ("Limão", "Verde", "Média", 7.00, 2);

select * from tb_produtos;

-- Faça um select que retorne os produtos com o valor maior do que 50 reais --
select * from tb_produtos where precokg > 50;

-- Faça um select trazendo os produtos com valor entre 3 e 60 reais --
select * from tb_produtos where precokg between 3 and 60;

-- Faça um select utilizando LIKE buscando os produtos com a letra C --
select * from tb_produtos where nome like "%c%";

-- Faça um select com Inner join entre tabelas categorias e produtos --
select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id;

-- Faça um select onde traga todos os produtos de uma categoria específica -- 
select * from tb_produtos right join  tb_categorias on tb_categorias.id = tb_produtos.categorias_id where tb_categorias.id = 1;










