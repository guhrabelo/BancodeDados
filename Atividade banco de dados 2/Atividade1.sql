create database rh;
use rh;

Create table tb_funcionarios(
id bigint(5) auto_increment,
nome varchar(30),
salario decimal(10,2),
sexo char(1) not null,
telefone int(9),
primary key (id)
);

insert into tb_funcionarios (nome, salario,sexo,telefone) Values ("João",5000.00,'M',985120507);
insert into tb_funcionarios (nome, salario,sexo,telefone) Values ("Maria",6000.00,'F',980551243);
insert into tb_funcionarios (nome, salario,sexo,telefone) Values ("Pedro",1500.00,'M',963554879);
insert into tb_funcionarios (nome, salario,sexo,telefone) Values ("Lais",1500.00,'F',996221345);
insert into tb_funcionarios (nome, salario,sexo,telefone) Values ("Barbara",8000.00,'F',990771245);

select * from tb_funcionarios;

select * from tb_funcionarios where salario > 2000;

select * from tb_funcionarios where salario < 2000;

update tb_funcionarios set nome = "Pedro", salario = 2000.00 where id = 3;