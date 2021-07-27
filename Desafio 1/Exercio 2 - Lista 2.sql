/*
create database db_pizzaria_legal;

use db_pizzaria_legal;

create table  tb_categoria (
id int(5) not null auto_increment,
tipo_pizza varchar (50),
tamanho varchar (10),
primary	key (id)	
);

create table  tb_pizza(
id int (5) not null auto_increment,
valor decimal (3,2) not null,
sabor varchar (50) not null,
borda_recheada boolean not null,
adicional_recheio boolean not null,
categoria_id int (5),

primary key (id),
foreign key (categoria_id) references tb_categoria (id)
) 
insert into tb_categoria (tipo_pizza, tamanho) 
values 
("Salgada","Grande"),
("Salgada","Média"),
("Salgada","Mista"),
("Doce","Broto"),
("Doce","Média");
alter table tb_pizza modify column valor decimal(5,2);
insert into tb_pizza  (valor, sabor, borda_recheada,adicional_recheio,categoria_id)
values
(29.30, "Calabresa",true, false,2),
(45.00, "Portuguesa",false, false,2),
(50.00, "Brigadeiro",false, false,5),
(55.00, "Vegetariana e Mussarela",false, false,3),
(44.00, "Moda da casa",true, true,1),
(25.50, "Prestigio",true, true,4),
(60.00, "Frango e catupiry",true, true,2),
(28.00, "Atum",false, false,2);

select * from tb_pizza where valor > 45.00;
select * from tb_pizza where valor between 29.00 and 60.00;
select * from tb_pizza where sabor like "%C%";
select  * from  tb_pizza
inner join  tb_categoria on categoria_id = tb_pizza.categoria_id;
select  * from  tb_pizza;
select  * from tb_categoria;*/

select  * from  tb_pizza
inner join  tb_ca	tegoria on categoria_id = tb_pizza.categoria_id
where  tb_categoria.tipo_pizza ="Doce";
