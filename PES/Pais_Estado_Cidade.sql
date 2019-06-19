create database exe1;

use exe1;

create table tb_pais (
cd_pais int auto_increment primary key,
nm_pais varchar(40) not null
);

create table tb_estado (
cd_estado int auto_increment primary key,
nm_estado varchar(40) not null,
id_pais int not null,
foreign key (id_pais) references tb_pais (cd_pais)
);

create table tb_cidade (
cd_cidade int auto_increment primary key,
nm_cidade varchar(40) not null,
id_estado int not null,
foreign key (id_estado) references tb_estado (cd_estado)
);

select * from tb_pais;

insert tb_pais (nm_pais) values 
("Brasil"),
("México"),
("Chile");

insert tb_estado (nm_estado,id_pais) values
("São Paulo",1),
("Rio de Janeiro",1),
("Paraná",1);

select * from tb_estado;

insert tb_cidade (nm_cidade,id_estado) values
("São Paulo",1),
("Itanhaém",1),
("Rio de Janeiro",2),
("Parati",2),
("Curitiba",3),
("Maringá",3);

select * from tb_cidade;

select nm_cidade,nm_estado,nm_pais
from tb_cidade,tb_estado,tb_pais
where tb_cidade.id_estado=tb_estado.cd_estado
and tb_estado.id_pais=tb_pais.cd_pais;

insert tb_cidade (nm_cidade,id_estado) values
("Peruíbe",1),
("Santos",1);

select * from tb_cidade;

select nm_cidade,nm_estado,nm_pais
from tb_cidade,tb_estado,tb_pais
where tb_cidade.id_estado=tb_estado.cd_estado
and tb_estado.id_pais=tb_pais.cd_pais;