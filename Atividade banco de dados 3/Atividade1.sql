create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id bigint(99) auto_increment,
classe varchar(99) not null,
funcao varchar(99) not null,
primary key (id)
);

create table tb_personagem(
id bigint(99) auto_increment,
nome varchar(99) not null,
sexo char(1),
ataque int(255),
defesa int(255),
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe (id)
);

insert into tb_classe (classe, funcao) values ("Colosso","Tanque");
insert into tb_classe (classe, funcao) values ("Assassino","Exterminador");
insert into tb_classe (classe, funcao) values ("Mago","Obliterador");
insert into tb_classe (classe, funcao) values ("Atirador","Hypercarrie");
insert into tb_classe (classe, funcao) values ("Suporte","Utilidade");

insert into tb_personagem (nome,sexo,ataque,defesa,classe_id) values ("Aatrox",'M',2500,1500,1);
insert into tb_personagem (nome,sexo,ataque,defesa,classe_id) values ("Janna",'F',1000,1000,5);
insert into tb_personagem (nome,sexo,ataque,defesa,classe_id) values ("Jax",'M',5000,4000,2);
insert into tb_personagem (nome,sexo,ataque,defesa,classe_id) values ("Irelia",'F',8000,1000,2);
insert into tb_personagem (nome,sexo,ataque,defesa,classe_id) values ("Malzahar",'M',4500,3000,3);
insert into tb_personagem (nome,sexo,ataque,defesa,classe_id) values ("Miss Fortune",'F',3500,1000,4);
insert into tb_personagem (nome,sexo,ataque,defesa,classe_id) values ("Renekton",'M',5000,3000,1);
insert into tb_personagem (nome,sexo,ataque,defesa,classe_id) values ("Ashe",'F',6000,2000,4);

select * from tb_personagem;
select * from tb_classe;

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa >= 1000 and defesa < 2000;

select * from tb_personagem where nome like "%n%";

select tb_personagem.nome, tb_personagem.sexo, tb_personagem.ataque, tb_personagem.defesa, tb_classe.classe, tb_classe.funcao 
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.classe = "Atirador";






