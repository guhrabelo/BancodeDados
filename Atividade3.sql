create database escola;
use escola;

Create table tb_alunos(
id bigint(5) auto_increment,
nome varchar(30),
nota decimal(3,1) not null,
faltas int(255) not null,
sexo char(1),
primary key (id)
);

insert into tb_alunos (nome, nota, faltas, sexo) values ("Alana",7.0,0,'F');
insert into tb_alunos (nome, nota, faltas, sexo) values ("Carlos",8.0,10,'M');
insert into tb_alunos (nome, nota, faltas, sexo) values ("Larissa",8.0,15,'F');
insert into tb_alunos (nome, nota, faltas, sexo) values ("Eduardo",4.0,5,'M');
insert into tb_alunos (nome, nota, faltas, sexo) values ("Fabiana",9.0,7,'F');
insert into tb_alunos (nome, nota, faltas, sexo) values ("Rafael",5.0,8,'M');
insert into tb_alunos (nome, nota, faltas, sexo) values ("Jessica",7.5,3,'F');
insert into tb_alunos (nome, nota, faltas, sexo) values ("Patricia",6.0,1,'F');

select * from tb_alunos;

select * from tb_alunos where nota > 7;

select * from tb_alunos where nota < 7;

update tb_alunos set nota = 6.5 where id = 1;