create database db_cidade_das_carnes;

create table tb_categoria (
  
  id bigint auto_increment,
  tipo varchar (50) not null,
  peso decimal (5,2) not null,
  
  primary key	(id)
  );
  insert tb_categoria (tipo, peso)
values 
("Carne vermelha",5.00),
("Aves",50.00),
("Peixe",10.00),
("Suino",4.00),
("Tempero",1.00);

create table tb_produto (
id bigint auto_increment not null,
nome varchar (50) not null, 
valor decimal(5,2) not null,
marca varchar (50) not null,
id_produto  bigint, -- faz referência na tabela de cima

primary key (id),
foreign key (id_produto) references  tb_categoria (id)
);

insert tb_produto (nome, valor, marca, id_produto)
values 
("Picanha", 50.00,"Friboi",1),
("Frango",20.00,"Seara",2),
("Merluza",25.00,"Qualita",3),
("Salmao",70.00,"Qualita",3),
("Calabresa", 10.00,"Sadia",4),
("Linguiça", 10.49,"Sadia",4),
("Tempero Baino",2.50,"Sazom",5),
("Coloral",3.93,"Qualita",5);

select * from tb_produto where valor > 50.00;
select * from tb_produto where valor between 3.00 and 60.00;   -- valores entre 3 a 60 reias
select * from tb_produto where nome like "%c%";

select * from tb_categoria inner join tb_produto on tb_categoria.id=tb_produto.id_produto;
select * from tb_categoria inner join tb_produto on tb_categoria.id=tb_produto.id_produto
where  tb_categoria.tipo= "Suino";
