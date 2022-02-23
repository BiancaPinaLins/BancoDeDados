create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categorias (
id bigint auto_increment,
marca varchar (50),
area varchar (50),
tipo varchar (50),
primary key (id)
);
    
insert into tb_categorias (marca, area, tipo) values ("Love beauty and planet", "Cabelo", "Vegano");
insert into tb_categorias (marca, area, tipo) values ("Nivea", "Mãos", "Não vegano");
insert into tb_categorias (marca, area, tipo) values ("Dove", "Corpo","Não vegano");
insert into tb_categorias (marca, area, tipo) values ("Pantene", "Cabelo", "Não vegano");
insert into tb_categorias (marca, area, tipo) values ("Truss", "Cabelo", "Não Vegano");

select * from tb_categorias;

create table tb_produtos (
	id bigint auto_increment,
    nome varchar (50) not null,
	quantidade int,
	tamanho varchar (50),
	preco decimal (4,2) not null,
    categorias_id bigint, 
	primary key (id),
	FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);
    
insert into tb_produtos (nome, quantidade, tamanho, preco, categorias_id) values ("Shampoo", 20, "300ml", 30.00, 4);
insert into tb_produtos (nome, quantidade, tamanho, preco, categorias_id) values ("Condicionador", 20, "250ml", 28.00, 4);
insert into tb_produtos (nome, quantidade, tamanho, preco, categorias_id) values ("Sabonete", 50, null, 7.00, 3);
insert into tb_produtos (nome, quantidade, tamanho, preco, categorias_id) values ("Hidratante", 15, "150ml", 7.00, 3);
insert into tb_produtos (nome, quantidade, tamanho, preco, categorias_id) values ("Mascára hidratante", 10, "150ml" , 27.00, 4);
insert into tb_produtos (nome, quantidade, tamanho, preco, categorias_id) values ("Sabonete Líquido", 10, "100ml", 28.00, 2);
insert into tb_produtos (nome, quantidade, tamanho, preco, categorias_id) values ("Reparador de pontas", 5, null, 17.00, 1);

select * from tb_produtos;

-- Faça um select que retorne os produtos com o valor maior do que 50 reais --
select * from tb_produtos where preco > 50;

-- Faça um select trazendo os produtos com valor entre 3 e 60 reais --
select * from tb_produtos where preco between 3 and 60;

-- Faça um select utilizando LIKE buscando os produtos com a letra C --
select * from tb_produtos where nome like "%c%";

-- Faça um select com Inner join entre tabelas categorias e produtos --
select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id;

-- Faça um select onde traga todos os produtos de uma categorias específica -- 
select * from tb_produtos right join  tb_categorias on tb_categorias.id = tb_produtos.categorias_id where tb_categorias.id = 3;





