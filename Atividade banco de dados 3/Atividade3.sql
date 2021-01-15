create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint(99) auto_increment,
nome varchar(99) not null,
descricao varchar(99) not null,
primary key (id)
);

create table tb_produto(
id bigint(99) auto_increment,
nome varchar(99) not null,
valor decimal(10,2),
quantidade int(255),
marca varchar(255),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (nome, descricao) value ("Contusão","Dores");
insert into tb_categoria (nome, descricao) value ("Antialérgico","Alergias");
insert into tb_categoria (nome, descricao) value ("Resfriados","Tosse");
insert into tb_categoria (nome, descricao) value ("Infectologia","Dst");
insert into tb_categoria (nome, descricao) value ("Circulação","Arritmia");

insert into tb_produto (nome,valor,quantidade,marca,categoria_id) values ("Mucofan ",61.59,250,"União Química",1);
insert into tb_produto (nome,valor,quantidade,marca,categoria_id) values ("Alivium ",41.27,550,"Hypera",2);
insert into tb_produto (nome,valor,quantidade,marca,categoria_id) values ("Serenus ",73.95,850,"Biolab",3);
insert into tb_produto (nome,valor,quantidade,marca,categoria_id) values ("Vick Pyrena",3.10,300,"P&G",4);
insert into tb_produto (nome,valor,quantidade,marca,categoria_id) values ("Complexo B",21.05,150,"EMS",5);
insert into tb_produto (nome,valor,quantidade,marca,categoria_id) values ("Buscoveran ",10.70,500,"União Química",1);
insert into tb_produto (nome,valor,quantidade,marca,categoria_id) values ("Sabofen Sabonete",15.71,450,"Geyer",2);
insert into tb_produto (nome,valor,quantidade,marca,categoria_id) values ("Phosfoenema ",80.01,350,"Supera RX",3);

select * from tb_produto;

select * from tb_produto where valor > 50;

select * from tb_produto where valor > 3 and valor < 60;

select * from tb_produto where nome like "%b%";

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.classe = "Atirador";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.nome = "Resfriados";