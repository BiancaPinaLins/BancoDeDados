create database db_ex2_lista1;
use db_ex2_lista1;

-- Crie uma tabela com 5 atributos dos produtos--
create table tb_produtos(
	id bigint auto_increment,
	nome varchar (50) not null,
    tipo varchar (50) not null,
    cor varchar (50) not null,
    preco decimal (5,2) not null, 
    primary key (id)
);

-- Popule esta tabela com até 8 dados --
INSERT INTO tb_produtos (nome, tipo, cor, preco) VALUES ("Bolsa", "De colo", "amarela", 100.00); 
INSERT INTO tb_produtos (nome, tipo, cor, preco) VALUES ("Mochila", "Sem rodinhas", "verde", 500.00);
INSERT INTO tb_produtos (nome, tipo, cor, preco) VALUES ("Bolsa de praia", "Palha", "azul", 100.00);
INSERT INTO tb_produtos (nome, tipo, cor, preco) VALUES ("Mala", "de viagem", "preta", 500.00);

-- Faça um select que retorne os produtos com o valor maior que 500 --
select id, nome, tipo, cor, preco from tb_produtos where preco > 500.00;

-- Faça um select que retorne os produtos com o valor menor que 500 --
select id, nome, tipo, cor, preco from tb_produtos where preco < 500;

-- Atualize um dado desta tabela através de uma query de atualização -- 
update tb_produtos set preco = 100.00 where id = 4;
