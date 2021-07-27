 create  database db_farmacia_do_bem;	
 use db_farmacia_do_bem;
  create table tb_categoria (
  
  id bigint auto_increment,
  tipo varchar (50) not null,
  quant int not null,
  
  primary key (id)
  );

insert tb_categoria (tipo, quant)
values 
("Genérico", 1000),                   -- 1
("Anti-inflamatório",5000),           -- 2
("Para Alergias",1500),				  -- 3
("Para Tosse",2500),				  -- 4
("Primeiros Socorros",2000);		  -- 5

create table tb_produto (
id bigint auto_increment not null,
medicamento varchar (50) not null, 
valor decimal(5,2) not null,
laboratorio varchar (50) not null,
id_produto  bigint, -- faz referência na tabela de cima

primary key (id),
foreign key (id_produto) references  tb_categoria (id)
);
 
insert tb_produto (medicamento, valor, laboratorio, id_produto)
values 
("Dispirenona", 44.80,"EMS",1),
("Nimesuliuna",8.75,"Eurofarma",2),
("Allegra D",53.89,"Sanofi Aventins",3),
("Betametasona",49.00,"Eurofarma",3),
("Expec", 16.79,"Legrand",4),
("Pastilha", 10.49,"Strepils",4),
("Esparadrapo 8 Industrial",229.54,"Missner",5),
("Esparadrapo_branco",3.93,"Missner",5);

select * from tb_produto where valor > 50.00;
select * from tb_produto where valor between 3.00 and 60.00;   -- valores entre 3 a 60 reias
select * from tb_produto where medicamento like "%b%";

select * from tb_categoria inner join tb_produto on tb_categoria.id=tb_produto.id_produto;
select * from tb_categoria inner join tb_produto on tb_categoria.id=tb_produto.id_produto
where  tb_categoria.tipo= "Para tosse";
