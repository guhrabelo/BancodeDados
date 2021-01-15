create database e_commerce;
use e_commerce;

Create table tb_produtos(
id bigint(5) auto_increment,
nome varchar(30),
preco decimal(10,2) not null,
quantidade int(255) not null,
marca varchar(30),
primary key (id)
);

insert into tb_produtos (nome, preco, quantidade, marca) values ("Caderno",19.99,500,"Tilibra");
insert into tb_produtos (nome, preco, quantidade, marca) values ("Notebook",4999.99,2552,"Dell");
insert into tb_produtos (nome, preco, quantidade, marca) values ("TV",2999.99,2269,"Samsung");
insert into tb_produtos (nome, preco, quantidade, marca) values ("PS5",4499.99,2500,"Sony");
insert into tb_produtos (nome, preco, quantidade, marca) values ("PS4",2499.99,2400,"Sony");
insert into tb_produtos (nome, preco, quantidade, marca) values ("Memória Ram",349.99,276,"HyperX");
insert into tb_produtos (nome, preco, quantidade, marca) values ("Cadeira Gamer",799.99,550,"Fortrek");
insert into tb_produtos (nome, preco, quantidade, marca) values ("SSD 240gb",229,90,2115,"Kingston");

select * from tb_produtos;

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

update tb_produtos set preco = 499.99 where id = 7;