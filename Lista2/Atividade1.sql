create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
	id bigint auto_increment,
	bom varchar(50) not null,
    mau varchar(50) not null,
    planta varchar(50) not null,
    primary key (id)
);
    
insert into tb_classe (bom, mau,planta) values ("100%", "0%","0%");
insert into tb_classe (bom, mau,planta) values ("0%", "100%", "0%");
insert into tb_classe (bom, mau,planta) values ("0%","0%","100%");
insert into tb_classe (bom, mau,planta) values ("20%", "20%", "60%");
insert into tb_classe (bom, mau,planta) values ("10%", "70%","20%");

select * from tb_classe;

create table tb_personagens (
	id bigint auto_increment,
	nome varchar (50) not null,
	habilidade varchar (50) not null,
	poderAtaq int not null,
	poderDef int not null,
    classe_id bigint, 
	primary key (id),
	FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);
    
insert into tb_personagens (nome, habilidade, poderAtaq, poderDef, classe_id) value ("Panda", "Rodopia", 1000, 2500, 2);
insert into tb_personagens (nome, habilidade, poderAtaq, poderDef, classe_id) value ("Preguiça", "Pula", 800, 2000, 3);
insert into tb_personagens (nome, habilidade, poderAtaq, poderDef, classe_id) value ("Tartaruga", "Voa", 2500, 800, 1);
insert into tb_personagens (nome, habilidade, poderAtaq, poderDef, classe_id) value ("Coelho", "Pula", 100, 7000, 1);
insert into tb_personagens (nome, habilidade, poderAtaq, poderDef, classe_id) value ("Girafa", "Rodopia", 500, 1000, 4);
insert into tb_personagens (nome, habilidade, poderAtaq, poderDef, classe_id) value ("Porco", "Rodopia", 400 , 800, 2);
insert into tb_personagens (nome, habilidade, poderAtaq, poderDef, classe_id) value ("Galinha", "Voa", 700, 400, 2);
insert into tb_personagens (nome, habilidade, poderAtaq, poderDef, classe_id) value ("Elefante", "Rodopia", 800, 1500, 5);

select * from tb_personagens;

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000 --
select * from tb_personagens where poderAtaq > 2000;

-- Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000 --
select * from tb_personagens where poderDef between 1000 and 2000;

-- Faça um select utilizando LIKE buscando os personagens com a letra C --
select * from tb_personagens where nome like "%c%";

-- Faça um select com Inner join entre tabelas classe personagem --
select * from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id;

-- Faça um select onde traga todos os personagens de uma classe específica -- 
select * from tb_personagens right join tb_classe on tb_classe.id = tb_personagens.classe_id where tb_classe.id = 1;