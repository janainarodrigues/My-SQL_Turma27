
/*create table tb_personagens  (
id int not null auto_increment,
personagem varchar (20) not null,
defesa bigint not null,
ataque bigint not null,
hp int (10) not null,
habilidade varchar (100) not null,
classe_id int not null,
primary key (id),
foreign key (classe_id) references tb_classe (id)
)
insert into tb_personagem (personagem, defesa, ataque, hp, habilidade,classe_id)
values 
("Ricardo",2000,1500,50,"deslizar",1),
("Rodrigo",5000,1800,100,"super força",2),
("Clara",4000,2500,30,"fogo",3),
("Maria",2000,3500,80,"invisibilidade",4),
("Pedro",1200,2500,10," raio de luz",5),
("Giovanna",5000,7500,50,"eletriciddade",1),
("Theo",3000,5500,20,"cura",2),
("Valentina",3000,5500,30,"voar",3);*/

insert into tb_classe (raca,classe)
values 
